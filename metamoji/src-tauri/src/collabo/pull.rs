//! Fetching what a note's room already holds.
//!
//! A class note's own file, as the drive hands it out, contains only what the
//! teacher put there: every student's writing lives in the room, on the booth
//! for their personal layer. Opening the note therefore means asking the room
//! for its history — `AttachBooth` with `last:0` replays a booth from the
//! beginning — and folding the result into the document.
//!
//! This is a *pull*, not a session: it joins, collects, and leaves. The relay
//! never says "that is all", so the end is decided by silence — nothing for
//! `QUIET`, or `LIMIT` overall, whichever comes first. A live session that
//! stays joined is a different thing and belongs in `session.rs`.

use std::sync::{Arc, Mutex};
use std::time::Duration;

use serde::Serialize;

use super::apply::{self, Applied};
use super::send;
use super::session::ClassroomState;
use super::socket::{self, CollaboEvent, Command};
use crate::cloud::CloudClient;
use crate::error::AppResult;
use crate::model::GenericTree;

/// A booth id and the bytes that arrived on it.
type Received = Arc<Mutex<Vec<(String, Vec<u8>)>>>;
/// A ticket, its media type, and its bytes.
type Asset = (String, String, Vec<u8>);

/// No traffic for this long means the replay is over.
const QUIET: Duration = Duration::from_millis(1500);
/// However busy the room, stop asking after this.
const LIMIT: Duration = Duration::from_secs(20);
/// Long enough for `LoginRoomResult` to come back before booths are asked for.
const LOGIN_GRACE: Duration = Duration::from_millis(1200);

/// What a pull found, for the user rather than for the log.
#[derive(Debug, Default, Clone, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct RoomPull {
    pub directions: usize,
    pub units: usize,
    pub strokes: usize,
    pub assets: usize,
    /// Edit kinds this build received but does not apply, named and counted.
    pub unsupported: Vec<String>,
    /// Set when the room could not be reached. The note still opens.
    pub error: Option<String>,
}

/// The booths a page keeps its content on.
///
/// The page itself, its common layer, and — depending on how the note was
/// distributed — the layer that belongs to this user. `NsDirectionManager
/// .boothIdArrayOnPage` builds the same list, and `NtPageController` builds
/// the ids: `{pageId}_[layer-common]`, `{pageId}_[layer-forUser]_{userId}`,
/// `{pageId}_[layer-forClass]`.
pub fn booths_for(tree: &GenericTree, user_id: &str) -> Vec<String> {
    let mut out = Vec::new();
    for model in tree.models.values() {
        if model.model_type != "$page" {
            continue;
        }
        let Some(page_id) = model.props.get("pageId").and_then(|v| v.as_str()) else {
            continue;
        };
        out.push(page_id.to_string());
        out.push(format!("{page_id}_[layer-common]"));

        // `forSchoolPageType`: 1 per user, 2 per group, 3 per class.
        match model
            .props
            .get("forSchoolPageType")
            .and_then(|v| v.as_i64())
            .unwrap_or(0)
        {
            1 => out.push(format!("{page_id}_[layer-forUser]_{user_id}")),
            3 => out.push(format!("{page_id}_[layer-forClass]")),
            _ => {}
        }
    }
    out.sort();
    out.dedup();
    out
}

/// Posts strokes into the room, one Direction each.
///
/// Joins, sends, leaves — the same shape as `fetch`, and for the same reason:
/// a session that stays open belongs to the editor, not to a one-off write.
/// Returns how many went out; the caller marks those as sent.
pub async fn post_strokes(
    cloud: &CloudClient,
    classroom: &ClassroomState,
    room_id: &str,
    strokes: &[send::Pending],
) -> AppResult<usize> {
    if strokes.is_empty() {
        return Ok(0);
    }
    let Some(session) = cloud.session() else {
        return Err(crate::error::AppError::other("サインインしていません"));
    };

    let device_id = classroom.device_id(cloud).await?;
    let relay = classroom.rest(cloud).await?.login_room(room_id, None).await?;

    // The room hands out its own id for us on login, and stamps it on every
    // element. Until it arrives there is nothing honest to put there.
    let room_user_id: Arc<Mutex<Option<String>>> = Arc::new(Mutex::new(None));
    let seen = Arc::clone(&room_user_id);
    let connection = socket::connect(&relay.host, relay.port, move |event| {
        if let CollaboEvent::LoggedIn { user_id, .. } = event {
            *seen.lock().unwrap() = user_id;
        }
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
    tokio::time::sleep(LOGIN_GRACE).await;

    let author = send::Author {
        user_id: session.user_id.clone(),
        name: session.name.clone(),
        company_id: session.company_id.clone().unwrap_or_default(),
        room_id: room_id.to_string(),
        room_user_id: room_user_id.lock().unwrap().clone().unwrap_or_default(),
    };

    let mut ids = send::IdGenerator::fresh();
    let mut sent = 0;
    for pending in strokes {
        let payload = send::add_stroke(&pending.stroke, &pending.layer_id, &mut ids, &author, None)?;
        connection
            .commands
            .send(Command::PostData {
                booth_id: pending.layer_id.clone(),
                payload,
                // No echo — we already have the stroke. `save` is the whole
                // point: it is what makes the relay keep it for anyone who
                // opens the note later, this user included.
                send_back: false,
                save: true,
                rip_off_size: "0".to_string(),
            })
            .await
            .ok();
        sent += 1;
    }

    // The posts are queued on the writer task; leaving at once would drop
    // them. Wait for the acknowledgements to have had time to come back.
    tokio::time::sleep(Duration::from_millis(300 + 80 * sent.min(50) as u64)).await;

    let _ = connection
        .commands
        .send(Command::Logout {
            room_id: room_id.to_string(),
        })
        .await;
    let _ = connection.commands.send(Command::Disconnect).await;
    Ok(sent)
}

/// Joins the room, replays every booth, and folds the result into `tree`.
///
/// Assets come back rather than being written here: they belong in the note's
/// store, which is the caller's to open.
pub async fn fetch(
    cloud: &CloudClient,
    classroom: &ClassroomState,
    room_id: &str,
    tree: &mut GenericTree,
) -> AppResult<(RoomPull, Vec<Asset>)> {
    let Some(session) = cloud.session() else {
        return Ok((
            RoomPull {
                error: Some("サインインしていません".into()),
                ..Default::default()
            },
            Vec::new(),
        ));
    };

    let booths = booths_for(tree, &session.user_id);
    if booths.is_empty() {
        return Ok((RoomPull::default(), Vec::new()));
    }

    let device_id = classroom.device_id(cloud).await?;
    let relay = classroom.rest(cloud).await?.login_room(room_id, None).await?;

    let received: Received = Arc::new(Mutex::new(Vec::new()));
    let seen = Arc::clone(&received);
    let connection = socket::connect(&relay.host, relay.port, move |event| {
        if let CollaboEvent::Direction {
            booth_id, payload, ..
        } = event
        {
            seen.lock().unwrap().push((booth_id, payload));
        }
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
    tokio::time::sleep(LOGIN_GRACE).await;

    for booth in &booths {
        connection
            .commands
            .send(Command::AttachBooth {
                booth_id: booth.clone(),
                last_sequence: 0,
            })
            .await
            .ok();
    }

    // Wait for the replay to go quiet.
    let started = std::time::Instant::now();
    let mut last_count = 0usize;
    let mut quiet_since = std::time::Instant::now();
    loop {
        tokio::time::sleep(Duration::from_millis(200)).await;
        let count = received.lock().unwrap().len();
        if count != last_count {
            last_count = count;
            quiet_since = std::time::Instant::now();
        }
        if quiet_since.elapsed() >= QUIET || started.elapsed() >= LIMIT {
            break;
        }
    }

    let _ = connection
        .commands
        .send(Command::Logout {
            room_id: room_id.to_string(),
        })
        .await;
    let _ = connection.commands.send(Command::Disconnect).await;

    let directions = std::mem::take(&mut *received.lock().unwrap());
    Ok(fold(tree, directions))
}

/// Applies what came back, in the order it came back.
fn fold(
    tree: &mut GenericTree,
    directions: Vec<(String, Vec<u8>)>,
) -> (RoomPull, Vec<Asset>) {
    let mut pull = RoomPull {
        directions: directions.len(),
        ..Default::default()
    };
    let mut assets = Vec::new();
    let mut unsupported: std::collections::BTreeMap<String, usize> = Default::default();

    for (booth_id, payload) in directions {
        let Ok(direction) = apply::decode(&payload) else {
            *unsupported.entry("読み取れない Direction".into()).or_default() += 1;
            continue;
        };
        let Applied {
            units,
            strokes,
            assets: found,
            unsupported: kinds,
        } = apply::apply(tree, &booth_id, &direction);
        pull.units += units;
        pull.strokes += strokes;
        assets.extend(found);
        for kind in kinds {
            *unsupported.entry(kind).or_default() += 1;
        }
    }

    pull.assets = assets.len();
    pull.unsupported = unsupported
        .into_iter()
        .map(|(kind, count)| format!("{kind} x{count}"))
        .collect();
    (pull, assets)
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::model::GenericModel;
    use serde_json::json;

    fn page(id: &str, page_type: i64) -> GenericModel {
        GenericModel {
            id: id.into(),
            parent_id: Some("root".into()),
            model_type: "$page".into(),
            props: json!({ "pageId": id, "forSchoolPageType": page_type }),
            children: Vec::new(),
        }
    }

    #[test]
    fn a_per_user_page_asks_for_this_users_own_layer() {
        let mut tree = GenericTree::new("root", "$sharenote");
        tree.insert(page("P1", 1));
        assert_eq!(
            booths_for(&tree, "42"),
            vec![
                "P1".to_string(),
                "P1_[layer-common]".to_string(),
                "P1_[layer-forUser]_42".to_string(),
            ]
        );
    }

    #[test]
    fn a_class_wide_page_asks_for_the_shared_layer_instead() {
        let mut tree = GenericTree::new("root", "$sharenote");
        tree.insert(page("P1", 3));
        assert!(booths_for(&tree, "42").contains(&"P1_[layer-forClass]".to_string()));
        assert!(!booths_for(&tree, "42").iter().any(|b| b.contains("forUser")));
    }

    #[test]
    fn an_ordinary_page_asks_only_for_itself_and_the_common_layer() {
        let mut tree = GenericTree::new("root", "$sharenote");
        tree.insert(page("P1", 0));
        assert_eq!(booths_for(&tree, "42").len(), 2);
    }

    #[test]
    fn a_note_with_no_pages_asks_for_nothing() {
        let tree = GenericTree::new("root", "$sharenote");
        assert!(booths_for(&tree, "42").is_empty());
    }

    #[test]
    fn a_direction_that_will_not_decode_is_counted_rather_than_fatal() {
        let mut tree = GenericTree::new("root", "$sharenote");
        let (pull, assets) = fold(&mut tree, vec![("P1".into(), b"not a container".to_vec())]);
        assert_eq!(pull.directions, 1);
        assert_eq!(pull.units, 0);
        assert!(assets.is_empty());
        assert_eq!(pull.unsupported, vec!["読み取れない Direction x1".to_string()]);
    }
}
