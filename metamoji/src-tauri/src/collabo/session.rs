//! The live classroom session.
//!
//! Owns the one thing that has to survive across IPC calls: the relay socket.
//! Entering a room is three steps that only make sense together —
//!
//! ```text
//!   cosmos/LoginRoom   → relay address + sessionID
//!   TLS connect        → a socket with no session on it yet
//!   socket LoginRoom   → the session actually begins
//! ```
//!
//! — so `enter` does all three, and a failure anywhere leaves nothing behind.
//!
//! Events go to the frontend as a Tauri event rather than a return value:
//! they arrive when the relay decides, not when the UI asks.

use std::sync::Mutex;

use tauri::{AppHandle, Emitter};

use super::rest::{CollaboRest, Member, RelayInfo, Room};
use super::socket::{self, CollaboEvent, Command, Connection};
use crate::cloud::CloudClient;
use crate::error::{AppError, AppResult};

/// The Tauri event name the frontend listens on.
pub const EVENT: &str = "classroom://event";

struct Active {
    room_id: String,
    drive_id: String,
    connection: Connection,
}

pub struct ClassroomState {
    active: Mutex<Option<Active>>,
    /// The room being watched on behalf of an open note, if any. Separate from
    /// `active`: the classroom screen and the editor want different rooms, and
    /// one closing must not take the other's connection with it.
    watching: tokio::sync::Mutex<Option<super::watch::Watch>>,
    /// Ours to invent, and the seed for the registration below.
    device_code: String,
    /// The service's answer to that code. `None` until we have asked.
    device_id: Mutex<Option<String>>,
    /// Where the pair is kept, so we register once per install.
    store_path: Option<std::path::PathBuf>,
}

impl ClassroomState {
    /// `device_code` is ours; `device_id` is the collabo service's answer to it
    /// and cannot be invented — every command carries both in its `authInfo`
    /// and an unregistered pair is refused with "bad user".
    pub fn new(
        device_code: String,
        device_id: Option<String>,
        store_path: Option<std::path::PathBuf>,
    ) -> Self {
        Self {
            active: Mutex::new(None),
            watching: tokio::sync::Mutex::new(None),
            device_code,
            device_id: Mutex::new(device_id),
            store_path,
        }
    }

    /// Registers this install if it has not been, and returns its device id.
    pub async fn device_id(&self, cloud: &CloudClient) -> AppResult<String> {
        if let Some(id) = self.device_id.lock().unwrap().clone() {
            return Ok(id);
        }
        let id = CollaboRest::new(cloud, String::new(), self.device_code.clone())
            .create_unique_id()
            .await?;
        *self.device_id.lock().unwrap() = Some(id.clone());
        self.persist(&id);
        Ok(id)
    }

    fn persist(&self, device_id: &str) {
        let Some(path) = self.store_path.as_ref() else {
            return;
        };
        let json = serde_json::json!({
            "deviceId": device_id,
            "deviceCode": self.device_code,
        });
        if let Ok(bytes) = serde_json::to_vec_pretty(&json) {
            let _ = std::fs::write(path, bytes);
        }
    }

    pub async fn rest<'a>(&self, cloud: &'a CloudClient) -> AppResult<CollaboRest<'a>> {
        let device_id = self.device_id(cloud).await?;
        Ok(CollaboRest::new(cloud, device_id, self.device_code.clone()))
    }

    /// Forgets the registration, so the next call asks for a new one.
    ///
    /// The service refuses a pair it does not know — a device id from an older
    /// build that invented one, or one it has since dropped — and the message
    /// says so. Registering again costs one request and is the only way out;
    /// without this the classroom stays unreachable until the file is deleted
    /// by hand.
    pub fn forget_device(&self) {
        *self.device_id.lock().unwrap() = None;
    }

    /// Runs a cosmos call, registering again if the device pair was refused.
    async fn with_device<'a, T, F, Fut>(&self, cloud: &'a CloudClient, call: F) -> AppResult<T>
    where
        F: Fn(CollaboRest<'a>) -> Fut,
        Fut: std::future::Future<Output = AppResult<T>>,
    {
        let first = call(self.rest(cloud).await?).await;
        match first {
            Err(err) if mentions_device(&err) => {
                self.forget_device();
                call(self.rest(cloud).await?).await
            }
            other => other,
        }
    }

    /// Replaces whatever note was being watched. Returns nothing: a watch that
    /// could not be stopped is one whose socket is already gone.
    pub async fn set_watch(&self, next: Option<super::watch::Watch>) {
        let previous = std::mem::replace(&mut *self.watching.lock().await, next);
        if let Some(previous) = previous {
            previous.stop().await;
        }
    }

    pub async fn watched_note(&self) -> Option<String> {
        self.watching.lock().await.as_ref().map(|w| w.note_id.clone())
    }

    pub fn room_id(&self) -> Option<String> {
        self.active.lock().unwrap().as_ref().map(|a| a.room_id.clone())
    }

    /// Enters a room: REST login, socket, then the socket's own `LoginRoom`.
    pub async fn enter(
        &self,
        app: &AppHandle,
        cloud: &CloudClient,
        room_id: &str,
        drive_id: &str,
        nickname: &str,
        room_password: Option<&str>,
    ) -> AppResult<RelayInfo> {
        // Leaving first makes entering idempotent; two sockets to two rooms is
        // a state the rest of the app has no way to represent.
        self.leave().await;

        let relay = self
            .with_device(cloud, |rest| async move {
                rest.login_room(room_id, room_password).await
            })
            .await?;
        // After `with_device`, which is where a stale registration is replaced.
        let device_id = self.device_id(cloud).await?;

        let emitter = app.clone();
        let connection = socket::connect(&relay.host, relay.port, move |event| {
            // A failed emit means the window is gone, which the socket will
            // discover on its own; there is nothing useful to do about it here.
            let _ = emitter.emit(EVENT, &event);
        })
        .await?;

        connection
            .commands
            .send(Command::Login {
                room_id: room_id.to_string(),
                device_id: device_id.clone(),
                session_id: relay.session_id.clone(),
                nickname: nickname.to_string(),
            })
            .await
            .map_err(|_| AppError::other("教室サーバーへの送信に失敗しました"))?;

        *self.active.lock().unwrap() = Some(Active {
            room_id: room_id.to_string(),
            drive_id: drive_id.to_string(),
            connection,
        });
        Ok(relay)
    }

    /// Leaves cleanly if possible, and unconditionally locally.
    pub async fn leave(&self) {
        let Some(active) = self.active.lock().unwrap().take() else {
            return;
        };
        // Best-effort: `LogoutRoom`'s reply is not handled by the original
        // either, so there is nothing to wait for.
        let _ = active
            .connection
            .commands
            .send(Command::Logout {
                room_id: active.room_id.clone(),
            })
            .await;
        let _ = active.connection.commands.send(Command::Disconnect).await;
    }

    async fn send(&self, command: Command) -> AppResult<()> {
        let sender = {
            let active = self.active.lock().unwrap();
            active
                .as_ref()
                .ok_or_else(|| AppError::other("教室に参加していません"))?
                .connection
                .commands
                .clone()
        };
        sender
            .send(command)
            .await
            .map_err(|_| AppError::other("教室サーバーとの接続が切れています"))
    }

    /// Subscribes to a booth. `last_sequence` is where we left off, so the
    /// relay can replay what was missed rather than starting from now.
    pub async fn attach_booth(&self, booth_id: &str, last_sequence: i64) -> AppResult<()> {
        self.send(Command::AttachBooth {
            booth_id: booth_id.to_string(),
            last_sequence,
        })
        .await
    }

    pub async fn detach_booth(&self, booth_id: &str) -> AppResult<()> {
        self.send(Command::DetachBooth {
            booth_id: booth_id.to_string(),
        })
        .await
    }

    /// Posts an edit. The payload is a serialised `direction` model — see the
    /// note in `commands.rs` about what still has to exist before this can be
    /// called with anything the server will accept.
    pub async fn post_direction(
        &self,
        booth_id: &str,
        payload: Vec<u8>,
        send_back: bool,
        save: bool,
    ) -> AppResult<()> {
        self.send(Command::PostData {
            booth_id: booth_id.to_string(),
            payload,
            send_back,
            save,
            rip_off_size: "0".to_string(),
        })
        .await
    }

    pub fn drive_id(&self) -> Option<String> {
        self.active.lock().unwrap().as_ref().map(|a| a.drive_id.clone())
    }
}

/// Re-exported so `commands.rs` has one import.
pub use super::rest::{Member as CollaboMember, Room as CollaboRoom};
pub type EnterResult = RelayInfo;
pub type RoomInfo = Room;
pub type MemberInfo = Member;
pub type Event = CollaboEvent;

/// Whether the server's complaint is about the device rather than the user.
fn mentions_device(err: &AppError) -> bool {
    err.to_string().to_ascii_lowercase().contains("device")
}
