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
//!
//! Two things are deliberately *not* a straight copy, because the original
//! stores them somewhere this app does not look:
//!
//!  * embedded binaries (the PDF a handout is drawn on, page thumbnails) move
//!    out of the model tree into the note's asset store — see `assets` — which
//!    takes a nine-page handout from a 1.5 MB tree to 50 KB.
//!  * frames. A background PDF has none because it *is* the page, and a `$draw`
//!    unit keeps its geometry in the drawing-engine elements. This app culls
//!    units by frame, so both are given one here.

mod assets;
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

const DOCMETA_TYPE: &str = "docmeta";
const PAGE_TYPE: &str = "$page";

pub use assets::ImportedAsset;
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
    /// The document's own title, from its `docmeta`. `None` when it has none —
    /// the caller then has to name the note something, and only the caller
    /// knows what (a file name, a class-box record).
    pub title: Option<String>,
    /// Embedded binaries, lifted out of the tree. The caller writes these into
    /// the note's asset store; the models now reference them by ticket.
    pub assets: Vec<ImportedAsset>,
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
    fit_unit_frames(&mut tree);
    let title = apply_docmeta(&mut tree);
    let assets = assets::extract(&mut tree);

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
        title,
        assets,
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

/// Copies the document's own metadata onto the root, and returns its title.
///
/// The app reads a note's title, creation and update time from the root
/// model's properties (`fromGeneric` in `model/converter.ts`); the original
/// keeps them in a `docmeta` child. Without this, every imported note is called
/// "Untitled" and dated the moment it was imported.
fn apply_docmeta(tree: &mut GenericTree) -> Option<String> {
    let root_id = tree.root_id.clone();
    let meta = tree
        .models
        .values()
        .find(|m| m.model_type == DOCMETA_TYPE && m.parent_id.as_deref() == Some(root_id.as_str()))
        .map(|m| m.props.clone())?;

    let title = meta
        .get("title")
        .and_then(Value::as_str)
        .map(str::to_string)
        .filter(|t| !t.trim().is_empty());
    let created = meta.get("create").and_then(Value::as_f64).and_then(iso8601);
    let updated = meta.get("update").and_then(Value::as_f64).and_then(iso8601);

    let root = tree.models.get_mut(&root_id)?;
    if let Value::Object(props) = &mut root.props {
        if let Some(title) = &title {
            props.insert("title".into(), Value::String(title.clone()));
        }
        if let Some(created) = created {
            props.insert("createdAt".into(), Value::String(created));
        }
        if let Some(updated) = updated {
            props.insert("updatedAt".into(), Value::String(updated));
        }
    }
    title
}

/// Seconds since the epoch — the original's timestamps are fractional — as the
/// ISO 8601 the rest of the app stores.
fn iso8601(seconds: f64) -> Option<String> {
    if !seconds.is_finite() || seconds <= 0.0 {
        return None;
    }
    let nanos = ((seconds - seconds.floor()) * 1e9) as u32;
    chrono::DateTime::from_timestamp(seconds as i64, nanos.min(999_999_999))
        .map(|t| t.to_rfc3339_opts(chrono::SecondsFormat::Millis, true))
}

/// Gives imported units a frame that contains what they draw.
///
/// Two cases, both of which arrive frameless because the original stores their
/// geometry elsewhere: a background PDF has no frame because it *is* the page,
/// and a `$draw` unit's geometry lives in the drawing-engine elements rather
/// than on the unit. This app culls units by frame before drawing them
/// (`unitBounds` in `render/renderer.ts`), so a frameless unit does not merely
/// land in the wrong place — it takes the converter's 100x100 default, draws in
/// the top-left corner, and vanishes the moment that corner scrolls off screen.
fn fit_unit_frames(tree: &mut GenericTree) {
    let page_ids: Vec<String> = tree
        .models
        .values()
        .filter(|m| m.model_type == PAGE_TYPE)
        .map(|m| m.id.clone())
        .collect();

    for page_id in page_ids {
        let Some(page) = tree.models.get(&page_id) else {
            continue;
        };
        let width = page.props.get("paperWidth").and_then(Value::as_f64);
        let height = page.props.get("paperHeight").and_then(Value::as_f64);

        let mut stack: Vec<String> = page.children.clone();
        while let Some(id) = stack.pop() {
            let Some(model) = tree.models.get(&id) else {
                continue;
            };
            stack.extend(model.children.iter().cloned());
            if has_frame(&model.props) {
                continue;
            }

            let frame = match model.model_type.as_str() {
                "$pdf" | "$bgimage" => match (width, height) {
                    (Some(w), Some(h)) => Some((0.0, 0.0, w, h)),
                    _ => None,
                },
                "$draw" => stroke_bounds(&model.props),
                _ => None,
            };
            let Some((x, y, w, h)) = frame else { continue };

            if let Some(model) = tree.models.get_mut(&id) {
                if let Value::Object(props) = &mut model.props {
                    props.insert("x".into(), json_num(x));
                    props.insert("y".into(), json_num(y));
                    props.insert("width".into(), json_num(w));
                    props.insert("height".into(), json_num(h));
                }
            }
        }
    }
}

fn has_frame(props: &Value) -> bool {
    props.get("width").and_then(Value::as_f64).is_some()
        && props.get("height").and_then(Value::as_f64).is_some()
}

/// The union of a `$draw` unit's stroke bounds, which `ink` has already
/// computed per stroke.
fn stroke_bounds(props: &Value) -> Option<(f64, f64, f64, f64)> {
    let strokes = props.get("strokes")?.as_array()?;
    let (mut min_x, mut min_y) = (f64::INFINITY, f64::INFINITY);
    let (mut max_x, mut max_y) = (f64::NEG_INFINITY, f64::NEG_INFINITY);

    for stroke in strokes {
        let bounds = stroke.get("bounds")?;
        let x = bounds.get("x")?.as_f64()?;
        let y = bounds.get("y")?.as_f64()?;
        let w = bounds.get("width")?.as_f64()?;
        let h = bounds.get("height")?.as_f64()?;
        min_x = min_x.min(x);
        min_y = min_y.min(y);
        max_x = max_x.max(x + w);
        max_y = max_y.max(y + h);
    }

    if !min_x.is_finite() {
        return None;
    }
    Some((min_x, min_y, max_x - min_x, max_y - min_y))
}

fn json_num(value: f64) -> Value {
    serde_json::Number::from_f64(value)
        .map(Value::Number)
        .unwrap_or(Value::from(0))
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

    use crate::model::GenericModel;
    use serde_json::json;

    fn child(tree: &mut GenericTree, id: &str, parent: &str, model_type: &str, props: Value) {
        tree.insert(GenericModel {
            id: id.into(),
            parent_id: Some(parent.into()),
            model_type: model_type.into(),
            props,
            children: Vec::new(),
        });
    }

    /// A page-sized document with one background `$pdf` and one `$draw`, which
    /// is the shape every class handout arrives in.
    fn handout() -> GenericTree {
        let mut tree = GenericTree::new("root", "$freenote");
        child(
            &mut tree,
            "page",
            "root",
            "$page",
            json!({ "paperWidth": 841.92, "paperHeight": 595.32 }),
        );
        child(&mut tree, "bg", "page", "$layer", json!({}));
        child(
            &mut tree,
            "pdf",
            "bg",
            "$pdf",
            json!({ "page": 3, "ticket": "tkt" }),
        );
        tree
    }

    #[test]
    fn a_background_pdf_takes_the_size_of_its_page() {
        // It arrives frameless because in the original it *is* the page. Left
        // alone it would take the converter's 100x100 default, draw in the
        // corner, and be culled the moment that corner scrolls away.
        let mut tree = handout();
        fit_unit_frames(&mut tree);

        let props = &tree.models["pdf"].props;
        assert_eq!(props["x"], json!(0.0));
        assert_eq!(props["y"], json!(0.0));
        assert_eq!(props["width"], json!(841.92));
        assert_eq!(props["height"], json!(595.32));
    }

    #[test]
    fn a_unit_that_brought_its_own_frame_keeps_it() {
        let mut tree = handout();
        if let Value::Object(props) = &mut tree.models.get_mut("pdf").unwrap().props {
            props.insert("x".into(), json!(10.0));
            props.insert("y".into(), json!(20.0));
            props.insert("width".into(), json!(30.0));
            props.insert("height".into(), json!(40.0));
        }
        fit_unit_frames(&mut tree);

        assert_eq!(tree.models["pdf"].props["width"], json!(30.0));
    }

    #[test]
    fn a_draw_unit_gets_the_bounds_of_the_ink_it_holds() {
        let mut tree = handout();
        child(
            &mut tree,
            "draw",
            "bg",
            "$draw",
            json!({ "strokes": [
                { "bounds": { "x": 100.0, "y": 50.0, "width": 20.0, "height": 10.0 } },
                { "bounds": { "x": 300.0, "y": 40.0, "width": 50.0, "height": 100.0 } },
            ] }),
        );
        fit_unit_frames(&mut tree);

        let props = &tree.models["draw"].props;
        assert_eq!(props["x"], json!(100.0));
        assert_eq!(props["y"], json!(40.0));
        assert_eq!(props["width"], json!(250.0));
        assert_eq!(props["height"], json!(100.0));
    }

    #[test]
    fn the_documents_own_title_and_dates_move_onto_the_root() {
        let mut tree = handout();
        child(
            &mut tree,
            "meta",
            "root",
            "docmeta",
            json!({ "title": "配布資料", "create": 1_600_000_000.5, "update": 1_600_000_001.0 }),
        );

        assert_eq!(apply_docmeta(&mut tree).as_deref(), Some("配布資料"));
        let props = &tree.models["root"].props;
        assert_eq!(props["title"], json!("配布資料"));
        assert_eq!(props["createdAt"], json!("2020-09-13T12:26:40.500Z"));
        assert_eq!(props["updatedAt"], json!("2020-09-13T12:26:41.000Z"));
    }

    #[test]
    fn a_document_with_no_title_leaves_the_caller_to_name_it() {
        let mut tree = handout();
        child(&mut tree, "meta", "root", "docmeta", json!({ "title": "  " }));
        assert_eq!(apply_docmeta(&mut tree), None);
        assert!(tree.models["root"].props.get("title").is_none());
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
