//! Reading the drive-contents payload.
//!
//! `GET /rest/drives/{id}/data` answers with a **zip of JSON files**, not a
//! MetaMoJi model container. `SdDriveSyncProcess.doMergeDriveDataFromArchive`
//! opens it as a `ZipFile`, keeps the entries whose names end in `.json`, and
//! hands each one to `doMergeDocumentInfoWithData(JSONArray, File)` — so every
//! such entry is an array of document records.
//!
//! (An earlier version of this file ran the payload through the `.atdoc`
//! importer on the assumption that everything in this app is a model container.
//! It is not, and the symptom was "archive contains no MetaMoJi document",
//! which reads like a corrupt download rather than a wrong guess.)
//!
//! The record keys are `SdMODocument`'s: `id`, `title`, `contentsRevision`,
//! `lastUpdate`, `deleteFlag`. The archive also carries tag definitions and
//! other bookkeeping; a record with no `id` is not a document.

use std::io::{Cursor, Read};

use serde_json::Value;

use crate::error::{AppError, AppResult};

use super::DriveDocument;

/// What a drive listing turned into.
#[derive(Debug, Clone, serde::Serialize)]
#[serde(rename_all = "camelCase")]
pub struct Listing {
    pub documents: Vec<DriveDocument>,
    /// Entries in the archive that were not document JSON. Empty is the good
    /// case; anything here means the archive holds more than this understands.
    pub unrecognised: Vec<String>,
    /// Records seen, including deleted ones — a listing that parsed but yielded
    /// nothing is a different problem from one that failed to parse.
    pub record_count: usize,
}

/// Decodes the zip a drive hands back.
pub fn parse(bytes: Vec<u8>) -> AppResult<Listing> {
    let mut archive = zip::ZipArchive::new(Cursor::new(bytes))
        .map_err(|e| AppError::Unsupported(format!("クラスボックスの中身を開けません: {e}")))?;

    let mut documents = Vec::new();
    let mut unrecognised = Vec::new();
    let mut record_count = 0usize;

    for index in 0..archive.len() {
        let Ok(mut entry) = archive.by_index(index) else {
            continue;
        };
        let name = entry.name().to_string();
        if !name.to_ascii_lowercase().ends_with(".json") {
            if !name.ends_with('/') {
                unrecognised.push(name);
            }
            continue;
        }

        let mut text = String::new();
        if entry.read_to_string(&mut text).is_err() {
            unrecognised.push(name);
            continue;
        }
        let Ok(value) = serde_json::from_str::<Value>(&text) else {
            unrecognised.push(name);
            continue;
        };

        let before = documents.len();
        record_count += collect(&value, &mut documents);
        if documents.len() == before && record_count == 0 {
            // Parsed, but held nothing this understands — tag definitions and
            // the like. Worth naming rather than silently dropping.
            unrecognised.push(name);
        }
    }

    // Archive order is not the drive's order; a stable one beats an arbitrary
    // one, and the server sends no ordering of its own.
    documents.sort_by(|a, b| a.document_id.cmp(&b.document_id));
    unrecognised.sort();
    unrecognised.dedup();

    Ok(Listing {
        documents,
        unrecognised,
        record_count,
    })
}

/// Pulls document records out of whatever shape the entry has.
///
/// `doMergeDocumentInfoWithData` takes a `JSONArray`, but the archive also
/// contains objects that wrap one, so both are accepted. Returns how many
/// records were seen, deleted ones included.
fn collect(value: &Value, out: &mut Vec<DriveDocument>) -> usize {
    match value {
        Value::Array(items) => items.iter().map(|item| collect(item, out)).sum(),
        Value::Object(record) => {
            // A document is a record with an id. Anything else in here — tag
            // definitions, drive properties — is not one.
            let Some(id) = text(record.get("id")) else {
                return record
                    .values()
                    .filter(|v| v.is_array())
                    .map(|v| collect(v, out))
                    .sum();
            };

            // Deleted records stay in the archive; showing them would offer
            // notes that cannot be opened.
            let deleted = record
                .get("deleteFlag")
                .map(|v| v.as_bool() == Some(true) || v.as_i64() == Some(1) || v.as_str() == Some("true"))
                .unwrap_or(false);
            if !deleted {
                out.push(DriveDocument {
                    document_id: id,
                    title: text(record.get("title")),
                    revision: text(record.get("contentsRevision"))
                        .or_else(|| text(record.get("revision"))),
                    updated_at: text(record.get("contentsUpdate"))
                        .or_else(|| text(record.get("lastUpdate"))),
                });
            }
            1
        }
        _ => 0,
    }
}

/// A scalar as a string. This API is not consistent about types — revisions
/// and dates arrive as numbers in some records and strings in others.
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
