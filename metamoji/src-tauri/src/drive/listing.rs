//! Reading the drive-contents payload.
//!
//! `GET /rest/drives/{id}/data` answers with a **zip of JSON files**, not a
//! MetaMoJi model container. `SdDriveSyncProcess.doMergeDriveDataFromArchive`
//! opens it as a `ZipFile` and dispatches each entry by the prefix of its name:
//!
//! | entry | contents |
//! |---|---|
//! | `documents_N.json`      | notes — `id`, `title`, `contentsRevision`, … |
//! | `folderdefs_N.json`     | folders — `absPath`, `childrenOrder`, … |
//! | `childrenorders_N.json` | ordering |
//! | `tagdefs_N.json`, `tagorder.json` | tags |
//! | `drive.json`, `meta.json` | drive properties |
//!
//! (An earlier version ran the whole payload through the `.atdoc` importer on
//! the assumption that everything in this app is a model container. It is not,
//! and the symptom was "archive contains no MetaMoJi document", which reads
//! like a corrupt download rather than a wrong guess.)
//!
//! **Folders are paths, not ids.** `SdMOFolder` is keyed by `absPath`, so the
//! hierarchy is in the strings and needs no joining. Membership is the other
//! way round: a folder's `childrenOrder` names its children, `/`-delimited —
//! `SdUtils.tagsFromPath` strips the outer slashes and splits on the rest.

use std::collections::HashMap;
use std::io::{Cursor, Read};

use serde_json::Value;

use crate::error::{AppError, AppResult};

use super::{DriveDocument, DriveFolder};

/// What a drive listing turned into.
#[derive(Debug, Clone, serde::Serialize)]
#[serde(rename_all = "camelCase")]
pub struct Listing {
    pub documents: Vec<DriveDocument>,
    pub folders: Vec<DriveFolder>,
    /// Entries in the archive that were not understood. Empty is the good case;
    /// anything here means the archive holds more than this decoder knows.
    pub unrecognised: Vec<String>,
    /// Records seen, deleted ones included — a listing that parsed but yielded
    /// nothing is a different problem from one that failed to parse.
    pub record_count: usize,
}

/// Entry prefixes this decoder acts on. The rest of the archive is real data
/// the app does not use yet, not corruption, so it is counted rather than
/// reported as a fault.
const DOCUMENTS: &str = "documents_";
const FOLDERS: &str = "folderdefs_";
const KNOWN_BUT_UNUSED: [&str; 5] = [
    "childrenorders_",
    "tagdefs_",
    "tagorder.json",
    "drive.json",
    "meta.json",
];

/// Decodes the zip a drive hands back.
pub fn parse(bytes: Vec<u8>) -> AppResult<Listing> {
    let mut archive = zip::ZipArchive::new(Cursor::new(bytes))
        .map_err(|e| AppError::Unsupported(format!("クラスボックスの中身を開けません: {e}")))?;

    let mut documents: Vec<DriveDocument> = Vec::new();
    let mut folders: Vec<DriveFolder> = Vec::new();
    // Document id → the folder that claims it.
    let mut owner: HashMap<String, String> = HashMap::new();
    let mut unrecognised = Vec::new();
    let mut record_count = 0usize;

    for index in 0..archive.len() {
        let Ok(mut entry) = archive.by_index(index) else {
            continue;
        };
        let full = entry.name().to_string();
        if full.ends_with('/') {
            continue;
        }
        // Entries may be nested; the dispatch is on the file name alone.
        let name = full.rsplit('/').next().unwrap_or(&full).to_string();

        let mut text = String::new();
        if entry.read_to_string(&mut text).is_err() {
            unrecognised.push(name);
            continue;
        }
        let Ok(value) = serde_json::from_str::<Value>(&text) else {
            unrecognised.push(name);
            continue;
        };

        if name.starts_with(DOCUMENTS) {
            record_count += collect_documents(&value, &mut documents);
        } else if name.starts_with(FOLDERS) {
            record_count += collect_folders(&value, &mut folders, &mut owner);
        } else if !KNOWN_BUT_UNUSED.iter().any(|k| name.starts_with(k)) {
            unrecognised.push(name);
        }
    }

    for document in &mut documents {
        document.folder_path = owner
            .get(&document.document_id)
            .cloned()
            // A note no folder claims belongs at the top level rather than
            // nowhere; hiding it would be worse than putting it in the root.
            .unwrap_or_else(|| "/".to_string());
    }

    // The archive's order is not the drive's, and the server sends no ordering
    // of its own here — `childrenorders_` is the drive's own arrangement and is
    // not read yet, so a stable one beats an arbitrary one.
    folders.sort_by(|a, b| a.abs_path.cmp(&b.abs_path));
    documents.sort_by(|a, b| {
        a.title
            .as_deref()
            .unwrap_or(&a.document_id)
            .cmp(b.title.as_deref().unwrap_or(&b.document_id))
    });
    unrecognised.sort();
    unrecognised.dedup();

    Ok(Listing {
        documents,
        folders,
        unrecognised,
        record_count,
    })
}

fn collect_documents(value: &Value, out: &mut Vec<DriveDocument>) -> usize {
    let Some(records) = records(value) else {
        return 0;
    };

    let mut seen = 0;
    for record in records {
        let Some(object) = record.as_object() else {
            continue;
        };
        let Some(id) = text(object.get("id")) else {
            continue;
        };
        seen += 1;
        // Deleted records stay in the archive; listing them would offer notes
        // that cannot be opened.
        if deleted(object) {
            continue;
        }
        out.push(DriveDocument {
            document_id: id,
            title: text(object.get("title")),
            revision: text(object.get("contentsRevision")).or_else(|| text(object.get("revision"))),
            updated_at: text(object.get("contentsUpdate"))
                .or_else(|| text(object.get("lastUpdate"))),
            // Filled in once every folder has been read.
            folder_path: "/".to_string(),
        });
    }
    seen
}

fn collect_folders(
    value: &Value,
    out: &mut Vec<DriveFolder>,
    owner: &mut HashMap<String, String>,
) -> usize {
    let Some(records) = records(value) else {
        return 0;
    };

    let mut seen = 0;
    for record in records {
        let Some(object) = record.as_object() else {
            continue;
        };
        // Not `text`: an empty `absPath` is the root, not a missing value, and
        // the root's `childrenOrder` is what claims the top-level notes.
        let Some(raw_path) = object.get("absPath").and_then(Value::as_str) else {
            continue;
        };
        seen += 1;

        let path = normalise_path(raw_path);
        if !deleted(object) && path != "/" {
            let name = path.trim_matches('/').rsplit('/').next().unwrap_or_default();
            out.push(DriveFolder {
                name: name.to_string(),
                parent_path: parent_of(&path),
                depth: path.trim_matches('/').split('/').count(),
                abs_path: path.clone(),
            });
        }

        // `childrenOrder` is a `/`-delimited list, per `SdUtils.tagsFromPath`.
        // It names both notes and subfolders; a name that matches no note is
        // simply not a note.
        for child in split_children(text(object.get("childrenOrder")).as_deref()) {
            owner.insert(child, path.clone());
        }
    }
    seen
}

/// The array a `*_N.json` entry holds, whether at the top level or wrapped.
fn records(value: &Value) -> Option<Vec<&Value>> {
    match value {
        Value::Array(items) => Some(items.iter().collect()),
        Value::Object(map) => map
            .values()
            .find_map(Value::as_array)
            .map(|items| items.iter().collect()),
        _ => None,
    }
}

fn deleted(record: &serde_json::Map<String, Value>) -> bool {
    record
        .get("deleteFlag")
        .map(|v| v.as_bool() == Some(true) || v.as_i64() == Some(1) || v.as_str() == Some("true"))
        .unwrap_or(false)
}

/// `SdUtils.tagsFromPath`: drop the outer slashes, split on the rest.
fn split_children(value: Option<&str>) -> Vec<String> {
    value
        .map(|text| {
            text.trim_matches('/')
                .split('/')
                .filter(|s| !s.is_empty())
                .map(str::to_string)
                .collect()
        })
        .unwrap_or_default()
}

/// A folder path with exactly one slash at each end.
fn normalise_path(path: &str) -> String {
    let trimmed = path.trim().trim_matches('/');
    if trimmed.is_empty() {
        "/".to_string()
    } else {
        format!("/{trimmed}/")
    }
}

fn parent_of(path: &str) -> Option<String> {
    let trimmed = path.trim_matches('/');
    let (parent, _) = trimmed.rsplit_once('/')?;
    Some(normalise_path(parent))
}

/// A scalar as a string. This API is not consistent about types — revisions and
/// dates arrive as numbers in some records and strings in others.
fn text(value: Option<&Value>) -> Option<String> {
    match value? {
        Value::String(s) if !s.is_empty() => Some(s.clone()),
        Value::String(_) => None,
        Value::Number(n) => Some(n.to_string()),
        _ => None,
    }
}

#[path = "listing/tests.rs"]
#[cfg(test)]
mod tests;
