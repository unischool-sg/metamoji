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
    device_id: String,
    device_code: String,
}

impl ClassroomState {
    /// `device_id`/`device_code` are stable per install — the original keeps
    /// the same pair in user defaults and the relay uses them to recognise a
    /// reconnecting device rather than treating it as a second participant.
    pub fn new(device_id: String, device_code: String) -> Self {
        Self {
            active: Mutex::new(None),
            device_id,
            device_code,
        }
    }

    pub fn rest<'a>(&self, cloud: &'a CloudClient) -> CollaboRest<'a> {
        CollaboRest::new(cloud, self.device_id.clone(), self.device_code.clone())
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
            .rest(cloud)
            .login_room(room_id, room_password)
            .await?;

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
                drive_id: drive_id.to_string(),
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
