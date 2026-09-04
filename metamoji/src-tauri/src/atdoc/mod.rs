//! `.atdoc` import (read-only).
//!
//! Produces a `GenericTree` — the same interchange shape the app's own storage
//! and converter already speak — so importing a legacy document is a converter
//! problem rather than a parallel pipeline.
//!
//! Fidelity, honestly stated:
//!
//!  * container, model tree, model types, property values: exact.
//!  * ink strokes: recoverable. docs/05 §8 assumes geometry is locked inside the
//!    native `DrawUnitComponent`, but that class is a `System.loadLibrary` stub
//!    declaring no native methods — the points are ordinary `PointArray`
//!    properties on the element models.
//!  * per-point pressure: not stored. The format keeps float32 x/y pairs only,
//!    so imported strokes get a constant pressure and take their width from the
//!    pen style. Visually close, not identical.
//!  * rich text runs: the text model appends a `DataArchiver` payload after its
//!    property map, which is a separate untagged encoding. Not decoded here, so
//!    text units import with their geometry and styling but no body text.

mod container;
mod ink;
mod reader;
mod value;

use std::collections::HashMap;
use std::io::Read;

use serde::{Deserialize, Serialize};
use serde_json::Value;

use crate::error::{AppError, AppResult};
use crate::model::{GenericModel, GenericTree};

pub use container::{parse_document, parse_header, ParsedDocument};

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct ImportReport {
    #[serde(rename = "formatVersion")]
    pub format_version: u16,
    #[serde(rename = "modelCount")]
    pub model_count: usize,
    #[serde(rename = "pageCount")]
    pub page_count: usize,
    #[serde(rename = "strokeCount")]
    pub stroke_count: usize,
    #[serde(rename = "unitCounts")]
    pub unit_counts: HashMap<String, usize>,
    #[serde(rename = "undecodedModels")]
    pub undecoded_models: usize,
    pub warnings: Vec<String>,
}

pub struct AtdocImport {
    pub tree: GenericTree,
    pub report: ImportReport,
}

/// Extracts the raw `StateData` bytes from whatever the user handed us.
///
/// A `.atdoc` may be the container directly, or a ZIP holding it — the bundled
/// `.dat`/`.product` sample documents are the latter. Sniffing both costs four
/// bytes and removes a whole class of "why won't this file open" reports.
pub fn unwrap_container(bytes: Vec<u8>) -> AppResult<Vec<u8>> {
    if bytes.starts_with(container::MAGIC) {
        return Ok(bytes);
    }
    if bytes.starts_with(b"PK\x03\x04") {
        let cursor = std::io::Cursor::new(&bytes);
        let mut archive = zip::ZipArchive::new(cursor)
            .map_err(|e| AppError::Unsupported(format!("not a readable archive: {e}")))?;

        for i in 0..archive.len() {
            let mut entry = archive
                .by_index(i)
                .map_err(|e| AppError::other(format!("cannot read archive entry: {e}")))?;
            if !entry.is_file() {
                continue;
            }
            let mut head = [0u8; 16];
            let n = entry.read(&mut head).unwrap_or(0);
            if !head[..n].starts_with(container::MAGIC) {
                continue;
            }
            // Rewind by re-opening: ZipFile is a one-shot reader.
            drop(entry);
            let mut entry = archive
                .by_index(i)
                .map_err(|e| AppError::other(format!("cannot read archive entry: {e}")))?;
            let mut out = Vec::with_capacity(entry.size() as usize);
            entry.read_to_end(&mut out)?;
            return Ok(out);
        }
        return Err(AppError::Unsupported(
            "archive contains no MetaMoJi document".into(),
        ));
    }
    Err(AppError::Unsupported(
        "not a MetaMoJi document (unrecognised file signature)".into(),
    ))
}

pub fn import(bytes: Vec<u8>, new_root_id: &str) -> AppResult<AtdocImport> {
    let raw = unwrap_container(bytes)?;
    let parsed = parse_document(&raw)?;
    Ok(build_tree(&parsed, new_root_id))
}

fn build_tree(parsed: &ParsedDocument, new_root_id: &str) -> AtdocImport {
    let mut unit_counts: HashMap<String, usize> = HashMap::new();
    let mut undecoded = 0usize;
    let mut warnings: Vec<String> = Vec::new();

    for model in parsed.models.values() {
        *unit_counts.entry(model.model_type.clone()).or_insert(0) += 1;
        if model.decode_error.is_some() {
            undecoded += 1;
        }
    }

    let id_for = |index: usize| -> String {
        if index as i32 == parsed.root_index {
            new_root_id.to_string()
        } else {
            format!("{new_root_id}_m{index}")
        }
    };

    let mut tree = GenericTree::new(new_root_id, "$freenote");

    // Insert parents before children so `GenericTree::insert` can link them.
    let mut queue: Vec<i32> = vec![parsed.root_index];
    let mut seen: std::collections::HashSet<i32> = std::collections::HashSet::new();
    let mut ordered: Vec<usize> = Vec::new();

    while let Some(parent) = queue.pop() {
        if !seen.insert(parent) {
            continue;
        }
        let Some(children) = parsed.children.get(&parent) else {
            continue;
        };
        for child in children {
            ordered.push(*child);
            queue.push(*child as i32);
        }
    }

    // Any model the sibling chain did not reach still gets kept, hung off the
    // root. Referenced-but-unparented nodes are normal here: ink hangs off a
    // reference property, not off the child list.
    let mut orphans: Vec<usize> = parsed
        .models
        .keys()
        .copied()
        .filter(|i| *i as i32 != parsed.root_index && !ordered.contains(i))
        .collect();
    orphans.sort_unstable();

    for index in ordered.iter().copied().chain(orphans.iter().copied()) {
        let Some(model) = parsed.models.get(&index) else {
            continue;
        };
        let parent_id = if model.parent == container::NONE_I32
            || !parsed.models.contains_key(&(model.parent as usize))
        {
            new_root_id.to_string()
        } else {
            id_for(model.parent as usize)
        };

        let mut props = model.props.clone();
        rewrite_refs(&mut props, &id_for);
        if let Some(err) = &model.decode_error {
            if let Value::Object(map) = &mut props {
                map.insert("_decodeError".into(), Value::String(err.clone()));
            }
        }

        tree.insert(GenericModel {
            id: id_for(index),
            parent_id: Some(parent_id),
            model_type: model.model_type.clone(),
            props,
            children: Vec::new(),
        });
    }

    // Fold the drawing-engine element graph into stroke lists the app can render.
    let strokes = ink::attach_strokes(&mut tree, parsed, &id_for);

    if undecoded > 0 {
        warnings.push(format!(
            "{undecoded} 件のモデルでプロパティを復元できませんでした。該当 Unit はプレースホルダーとして取り込みます。"
        ));
    }
    if strokes > 0 {
        warnings.push(
            "手書きストロークは座標・色・太さを復元しましたが、筆圧は元ファイルに保存されていないため一定値になります。"
                .to_string(),
        );
    }
    if unit_counts.contains_key("$text") {
        warnings.push(
            "テキスト Unit は位置と書式のみ取り込みます。本文は別形式 (DataArchiver) で保存されており未対応です。"
                .to_string(),
        );
    }

    let page_count = unit_counts.get("$page").copied().unwrap_or(0);

    AtdocImport {
        report: ImportReport {
            format_version: parsed.format_version,
            model_count: parsed.models.len(),
            page_count,
            stroke_count: strokes,
            unit_counts,
            undecoded_models: undecoded,
            warnings,
        },
        tree,
    }
}

/// Rewrites `{"$ref": <table index>}` into `{"$ref": "<model id>"}`.
///
/// The binary references models by table index; the app references them by
/// string id. Doing this once, here, means nothing downstream needs to know that
/// the document came from a `.atdoc`.
fn rewrite_refs(value: &mut Value, id_for: &impl Fn(usize) -> String) {
    match value {
        Value::Object(map) => {
            if let Some(Value::Number(n)) = map.get("$ref") {
                if let Some(index) = n.as_u64() {
                    map.insert("$ref".into(), Value::String(id_for(index as usize)));
                    return;
                }
            }
            for v in map.values_mut() {
                rewrite_refs(v, id_for);
            }
        }
        Value::Array(items) => {
            for v in items {
                rewrite_refs(v, id_for);
            }
        }
        _ => {}
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn refuses_a_file_that_is_neither_a_container_nor_an_archive() {
        assert!(unwrap_container(b"hello world".to_vec()).is_err());
    }

    #[test]
    fn passes_a_raw_container_through_untouched() {
        let mut bytes = container::MAGIC.to_vec();
        bytes.push(1);
        let out = unwrap_container(bytes.clone()).unwrap();
        assert_eq!(out, bytes);
    }

    #[test]
    fn rewrites_model_references_into_string_ids() {
        let id_for = |i: usize| format!("n_m{i}");
        let mut value = serde_json::json!({
            "frame": { "$ref": 3 },
            "list": [{ "$ref": 4 }],
        });
        rewrite_refs(&mut value, &id_for);
        assert_eq!(value["frame"]["$ref"], Value::String("n_m3".into()));
        assert_eq!(value["list"][0]["$ref"], Value::String("n_m4".into()));
    }
}
