//! Staying in the room while a note is open.
//!
//! `pull` joins, replays, and leaves — enough to open a note, and useless
//! afterwards. This keeps the socket, so an edit made anywhere else in the
//! class shows up here as it happens.
//!
//! No polling, but not one push either. The relay will not send a user their
//! own posts, so a second device signed in as the same person hears nothing
//! about what the first one writes — which is exactly the case here, the same
//! student in this app and in the original. What it *will* do is say a booth
//! moved, if asked: `AddNotifyBoothUpdated` registers the interest and
//! `BoothUpdated` arrives when the booth passes the sequence given. The reply
//! to that is to re-attach the booth from where this note left off, which
//! replays only what is new.
//!
//! So: attach, register, and then wait. A timer would add nothing — the relay
//! already says when there is something, and says it immediately.
//!
//! What goes to the webview is the *decoded* change, not the Direction: the
//! payload is a serialised model and there is no reader for it up there.

use std::collections::HashMap;
use std::sync::{Arc, Mutex};

use serde::Serialize;
use tauri::{AppHandle, Emitter};

use super::apply::{self, Change};
use super::session::ClassroomState;
use super::socket::{self, CollaboEvent, Command, Connection};
use tokio::sync::mpsc;
use crate::cloud::CloudClient;
use crate::error::AppResult;
use crate::model::GenericModel;

/// One decoded change, on its way to the editor.
pub const EVENT: &str = "classnote://change";
/// The connection went away. Whoever asked for the watch has to ask again;
/// this does not reconnect on its own, because only the caller knows whether
/// the note is still open.
pub const EVENT_ENDED: &str = "classnote://ended";

#[derive(Debug, Clone, Serialize)]
#[serde(tag = "kind", rename_all = "camelCase")]
pub enum WireChange {
    /// A stroke, in the shape the app's own model stores.
    Stroke { id: String, stroke: serde_json::Value },
    /// A unit, as models for the converter to turn into one.
    Unit {
        unit_id: String,
        models: Vec<GenericModel>,
    },
    /// Something is gone. The id is the room's, and the note may know it by
    /// its own — the editor looks for both.
    Remove { id: String },
    /// Bytes that arrived with the change; already in the note's asset store.
    Asset { ticket: String },
}

#[derive(Debug, Clone, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct NoteChange {
    pub note_id: String,
    pub booth_id: String,
    pub sequence: i64,
    /// The page the booth belongs to, as the classroom names it.
    pub page_id: String,
    /// The layer, likewise, or `None` for a booth that is the page itself.
    pub layer_id: Option<String>,
    pub layer_type: Option<String>,
    pub changes: Vec<WireChange>,
}

/// A room this app is sitting in on behalf of an open note.
pub struct Watch {
    pub note_id: String,
    connection: Connection,
    pub room_id: String,
    /// The id the room gave us when we logged in. It goes on every element we
    /// send, and only the room knows it.
    room_user_id: Arc<Mutex<Option<String>>>,
}

impl Watch {
    /// Sends through the connection this note already has.
    ///
    /// The alternative — a second connection, post, `LogoutRoom` — ends the
    /// room session for the whole device, and takes this watch down with it.
    /// That is what made updates stop arriving after the first send.
    pub async fn post(&self, frames: Vec<super::pull::Frame>) {
        for (booth_id, payload) in frames {
            super::pull::post(&self.connection, &booth_id, payload).await;
        }
        // The writer task is a queue; give the acknowledgements a moment.
        tokio::time::sleep(std::time::Duration::from_millis(300)).await;
    }

    pub fn room_user_id(&self) -> String {
        self.room_user_id.lock().unwrap().clone().unwrap_or_default()
    }
}

impl Watch {
    pub async fn stop(self) {
        let _ = self
            .connection
            .commands
            .send(Command::Logout {
                room_id: self.room_id,
            })
            .await;
        let _ = self.connection.commands.send(Command::Disconnect).await;
    }
}

/// Joins the room and stays, emitting every change that arrives.
///
/// `marks` is where each booth was left off; a booth with no mark starts from
/// the beginning.
#[allow(clippy::too_many_arguments)]
pub async fn start(
    app: &AppHandle,
    cloud: &CloudClient,
    classroom: &ClassroomState,
    room_id: &str,
    note_id: &str,
    booths: &[String],
    marks: &HashMap<String, i64>,
    store: Arc<Mutex<crate::storage::NoteStore>>,
) -> AppResult<Watch> {
    let session = cloud
        .session()
        .ok_or_else(|| crate::error::AppError::other("サインインしていません"))?;
    let device_id = classroom.device_id(cloud).await?;
    let relay = classroom.rest(cloud).await?.login_room(room_id, None).await?;

    let emitter = app.clone();
    let note = note_id.to_string();
    let sink = Arc::clone(&store);
    let room_user_id: Arc<Mutex<Option<String>>> = Arc::new(Mutex::new(None));
    let identity = Arc::clone(&room_user_id);
    // Filled the moment `connect` returns. The handler needs to answer
    // `BoothUpdated` with an `AttachBooth`, and the sender only exists once the
    // socket does.
    let commands: Arc<Mutex<Option<mpsc::Sender<Command>>>> = Arc::new(Mutex::new(None));
    let replies = Arc::clone(&commands);

    let connection = socket::connect(&relay.host, relay.port, move |event| {
        if let CollaboEvent::LoggedIn { user_id, .. } = &event {
            *identity.lock().unwrap() = user_id.clone();
            return;
        }
        if let CollaboEvent::Disconnected { reason } = &event {
            let _ = emitter.emit(
                EVENT_ENDED,
                serde_json::json!({ "noteId": note, "reason": reason }),
            );
            return;
        }
        // "That booth has something new." The relay says this instead of
        // pushing, for anything this user posted from somewhere else.
        if let CollaboEvent::BoothUpdated { booth_id } = &event {
            let from = sink
                .lock()
                .unwrap()
                .booth_marks()
                .unwrap_or_default()
                .into_iter()
                .find(|(id, _)| id == booth_id)
                .map(|(_, sequence)| sequence)
                .unwrap_or(0);
            if let Some(sender) = replies.lock().unwrap().as_ref() {
                let _ = sender.try_send(Command::AttachBooth {
                    booth_id: booth_id.clone(),
                    last_sequence: from,
                });
            }
            return;
        }

        let CollaboEvent::Direction {
            booth_id,
            sequence,
            payload,
            own_echo,
            ..
        } = event
        else {
            return;
        };
        // Our own post coming back. The note already has it.
        if own_echo {
            return;
        }
        // Recorded before anything else: a direction that reached the editor
        // and not the mark would arrive twice on the next connection.
        let _ = sink.lock().unwrap().mark_booth(&booth_id, sequence);

        let Ok(direction) = apply::decode(&payload) else {
            return;
        };
        let place = apply::placement_of(&booth_id);
        let changes = wire_changes(direction.changes, &sink);
        if changes.is_empty() {
            return;
        }

        let _ = emitter.emit(
            EVENT,
            NoteChange {
                note_id: note.clone(),
                booth_id,
                sequence,
                page_id: place.page_id,
                layer_id: place.layer_id,
                layer_type: place.layer_type,
                changes,
            },
        );
    })
    .await?;

    connection
        .commands
        .send(Command::Login {
            room_id: room_id.to_string(),
            device_id,
            session_id: relay.session_id.clone(),
            nickname: session.name.clone(),
        })
        .await
        .ok();
    tokio::time::sleep(std::time::Duration::from_millis(1200)).await;

    for booth in booths {
        connection
            .commands
            .send(Command::AttachBooth {
                booth_id: booth.clone(),
                // Where this note left off. The relay sends what came after.
                last_sequence: marks.get(booth).copied().unwrap_or(0),
            })
            .await
            .ok();
    }

    // And ask to be told about the ones it will not push.
    connection
        .commands
        .send(Command::NotifyBoothUpdated {
            marks: booths
                .iter()
                .map(|booth| (booth.clone(), marks.get(booth).copied().unwrap_or(0)))
                .collect(),
        })
        .await
        .ok();

    *commands.lock().unwrap() = Some(connection.commands.clone());

    Ok(Watch {
        note_id: note_id.to_string(),
        connection,
        room_id: room_id.to_string(),
        room_user_id,
    })
}

/// Turns decoded changes into what the editor can act on, putting any bytes
/// into the note's own store on the way past — the editor asks for them by
/// ticket and never sees them here.
fn wire_changes(
    changes: Vec<Change>,
    store: &Arc<Mutex<crate::storage::NoteStore>>,
) -> Vec<WireChange> {
    let known: std::collections::HashSet<String> = store
        .lock()
        .unwrap()
        .room_strokes()
        .unwrap_or_default()
        .into_iter()
        .map(|entry| entry.element_id)
        .collect();

    let mut out = Vec::new();
    for change in changes {
        match change {
            Change::Stroke { id, stroke } => {
                // Our own, coming back because re-attaching replays the booth.
                // The note already has it under its own id, and adding it
                // again would draw the user's stroke twice.
                if known.contains(&id) {
                    continue;
                }
                out.push(WireChange::Stroke { id, stroke })
            }
            Change::Unit { unit_id, models } => out.push(WireChange::Unit { unit_id, models }),
            Change::Remove { id } => out.push(WireChange::Remove { id }),
            Change::Asset {
                ticket,
                mime,
                bytes,
            } => {
                let stored = store.lock().unwrap().put_asset(&ticket, &mime, &bytes);
                if stored.is_ok() {
                    out.push(WireChange::Asset { ticket });
                }
            }
            // Nothing to do and nothing useful to say to the editor about it;
            // the count is already reported when the note is opened.
            Change::Unsupported { .. } => {}
        }
    }
    out
}

#[cfg(test)]
mod tests {
    use super::*;
    use serde_json::json;

    fn store() -> Arc<Mutex<crate::storage::NoteStore>> {
        let dir = std::env::temp_dir().join(format!("watch-{}", uuid::Uuid::new_v4()));
        std::fs::create_dir_all(&dir).unwrap();
        Arc::new(Mutex::new(
            crate::storage::NoteStore::open(&dir.join("n.mmnote")).unwrap(),
        ))
    }

    #[test]
    fn bytes_go_to_the_note_and_the_editor_is_told_the_ticket() {
        let store = store();
        let out = wire_changes(
            vec![Change::Asset {
                ticket: "t-1".into(),
                mime: "image/png".into(),
                bytes: vec![1, 2, 3],
            }],
            &store,
        );
        assert!(matches!(&out[0], WireChange::Asset { ticket } if ticket == "t-1"));
        let (mime, bytes) = store.lock().unwrap().get_asset("t-1").unwrap();
        assert_eq!(mime, "image/png");
        assert_eq!(bytes, vec![1, 2, 3]);
    }

    #[test]
    fn a_kind_this_build_does_not_act_on_is_not_sent_up() {
        let out = wire_changes(
            vec![Change::Unsupported {
                kind: "D ROTATE".into(),
            }],
            &store(),
        );
        assert!(out.is_empty());
    }

    #[test]
    fn a_stroke_keeps_the_shape_the_editor_draws() {
        let out = wire_changes(
            vec![Change::Stroke {
                id: "el 1".into(),
                stroke: json!({ "id": "el 1", "color": "#000000" }),
            }],
            &store(),
        );
        match &out[0] {
            WireChange::Stroke { id, stroke } => {
                assert_eq!(id, "el 1");
                assert_eq!(stroke["color"], json!("#000000"));
            }
            other => panic!("{other:?}"),
        }
    }
}

#[cfg(test)]
mod echo_tests {
    use super::*;
    use serde_json::json;

    #[test]
    fn a_stroke_this_note_sent_is_not_taken_back_in() {
        // Answering `BoothUpdated` re-attaches, which replays the booth — our
        // own posts included. The note already has them, under its own ids;
        // taking them again would draw every stroke the user made twice.
        let dir = std::env::temp_dir().join(format!("watch-{}", uuid::Uuid::new_v4()));
        std::fs::create_dir_all(&dir).unwrap();
        let store = Arc::new(Mutex::new(
            crate::storage::NoteStore::open(&dir.join("n.mmnote")).unwrap(),
        ));
        store
            .lock()
            .unwrap()
            .remember_room_stroke("local-1", "el 1", "L1")
            .unwrap();

        let out = wire_changes(
            vec![
                Change::Stroke {
                    id: "el 1".into(),
                    stroke: json!({ "id": "el 1" }),
                },
                Change::Stroke {
                    id: "el 2".into(),
                    stroke: json!({ "id": "el 2" }),
                },
            ],
            &store,
        );
        assert_eq!(out.len(), 1, "only the one that came from elsewhere");
        assert!(matches!(&out[0], WireChange::Stroke { id, .. } if id == "el 2"));
    }
}
