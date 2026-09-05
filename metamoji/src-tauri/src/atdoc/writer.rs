//! Writing the `MMJDrawModels` container.
//!
//! The inverse of `container.rs`, and the thing that makes anything other than
//! import possible: a Direction on the collaboration wire is a serialised model
//! (docs/typespec/classroom/collabo-socket-protocol.md §6.1), and so is a
//! document uploaded to a drive.
//!
//! What comes out is a *compacted* file, the way
//! `ModelManagerDataCompactor.compactDataFile` produces one: blocks laid down
//! back to back in index order, no free list, no undo history. That is what the
//! original app uploads, so it is what a teacher's device is used to reading.
//!
//! Layout, from `StateData`/`StateDataHeader`:
//!
//! ```text
//! 0x00  fileIDAndVersion  14 bytes ("MMJDrawModels" + 1)
//! 0x0e  headerSize        u16 = 0x2a
//! 0x10  formatVersion     u16
//! 0x12  modelTablePos     i64   (-1 = absent)
//! 0x1a  undoTablePos      i64
//! 0x22  extraTablePos     i64
//! 0x2a  blocks…           [blockSize u32][usedSize u32][payload]
//! ```

use std::collections::HashMap;

use serde_json::{Map, Value};

use super::container::{HEADER_SIZE, MAGIC, NONE_I32};
use super::encode::write_value;
use crate::error::{AppError, AppResult};
use crate::model::GenericTree;

/// Byte 13 of the file id: the container generation, not the format version.
const FILE_ID_GENERATION: u8 = 1;
const MODEL_TABLE_ITEM_SIZE: usize = 28;

/// Everything the writer needs that a `GenericTree` does not carry.
#[derive(Debug, Clone)]
pub struct DocumentMeta {
    pub format_version: u16,
    /// The `vi` table: current schema version per model type. A model is
    /// written at its type's version, which is how the original stores it —
    /// verified against a real document, where the only exception was one
    /// stale model left behind by an earlier root.
    pub type_versions: HashMap<String, u16>,
}

impl Default for DocumentMeta {
    fn default() -> Self {
        Self {
            format_version: 2,
            type_versions: HashMap::new(),
        }
    }
}

/// Where the importer parks what a `GenericTree` cannot otherwise express.
///
/// One reserved property, never written to the wire, holding:
///
///  * `detached` — the original left this model unparented. Ink hangs off a
///    `$ref` from a `$draw` unit rather than off its child list, so "no parent"
///    is normal, and adopting it would put a drawing element in the page tree.
///  * `injected` — properties this app added that the document never had (a
///    frame for a background PDF, the title lifted out of `docmeta`). Written
///    back, they would be new properties in a teacher's document.
///  * on the root, `formatVersion` and `typeVersions`.
pub const META_KEY: &str = "$atdoc";

/// Properties this app maintains for its own rendering and the original knows
/// nothing about.
const APP_PRIVATE_KEYS: &[&str] = &["rasterTicket", "_decodeError"];

pub fn write_document(tree: &GenericTree, meta: &DocumentMeta) -> AppResult<Vec<u8>> {
    let order = index_order(tree);
    let index_of: HashMap<&str, u32> = order
        .iter()
        .enumerate()
        .map(|(i, id)| (id.as_str(), i as u32))
        .collect();
    let root_index = *index_of
        .get(tree.root_id.as_str())
        .ok_or_else(|| AppError::other("ツリーにルートモデルがありません"))?;

    // Type dictionary in first-appearance order, which is how `typeIndex` is
    // defined (docs/04 §6).
    let mut type_dict: Vec<String> = Vec::new();
    let mut type_index: HashMap<&str, u16> = HashMap::new();
    for id in &order {
        let model_type = tree.models[id].model_type.as_str();
        if !type_index.contains_key(model_type) {
            type_index.insert(model_type, type_dict.len() as u16);
            type_dict.push(model_type.to_string());
        }
    }

    let resolve = |id: &str| index_of.get(id).copied();

    let mut out = vec![0u8; HEADER_SIZE];
    let mut positions: Vec<u64> = Vec::with_capacity(order.len());

    for id in &order {
        let model = &tree.models[id];
        let mut payload = Vec::new();
        write_value(&stripped(&model.props), &resolve, &mut payload)
            .map_err(|e| AppError::other(format!("{}: {e}", model.model_type)))?;
        positions.push(append_block(&mut out, &payload));
    }

    let type_dict_pos = append_block(&mut out, &encode_type_dict(&type_dict));
    let version_info_pos = append_block(&mut out, &encode_version_info(&meta.type_versions));
    let undo_table_pos = append_block(&mut out, &0u32.to_le_bytes());

    let model_table = encode_model_table(tree, &order, &index_of, &positions, root_index);
    let model_table_pos = append_block(&mut out, &model_table);

    let extra = encode_extra_table(
        tree,
        &order,
        &type_index,
        &meta.type_versions,
        type_dict_pos,
        version_info_pos,
    );
    let extra_table_pos = append_block(&mut out, &extra);

    write_header(
        &mut out,
        meta.format_version,
        model_table_pos,
        undo_table_pos,
        extra_table_pos,
    );
    Ok(out)
}

/// Depth-first from the root, then whatever the walk did not reach.
///
/// The root lands at index 0 — the table names its own root, so any index
/// would do, but a stable order makes two writes of the same document compare.
fn index_order(tree: &GenericTree) -> Vec<String> {
    let mut order: Vec<String> = Vec::with_capacity(tree.models.len());
    let mut seen: std::collections::HashSet<&str> = std::collections::HashSet::new();
    let mut stack = vec![tree.root_id.as_str()];

    while let Some(id) = stack.pop() {
        if !seen.insert(id) {
            continue;
        }
        let Some(model) = tree.models.get(id) else {
            continue;
        };
        order.push(id.to_string());
        for child in model.children.iter().rev() {
            stack.push(child.as_str());
        }
    }

    let mut rest: Vec<&String> = tree
        .models
        .keys()
        .filter(|id| !seen.contains(id.as_str()))
        .collect();
    rest.sort();
    order.extend(rest.into_iter().cloned());
    order
}

/// Properties as they go on the wire: without the bookkeeping this app added,
/// which the original document never had.
fn stripped(props: &Value) -> Value {
    let Value::Object(map) = props else {
        return props.clone();
    };

    let injected: Vec<&str> = map
        .get(META_KEY)
        .and_then(|m| m.get("injected"))
        .and_then(Value::as_array)
        .map(|list| list.iter().filter_map(Value::as_str).collect())
        .unwrap_or_default();

    let mut out = Map::with_capacity(map.len());
    for (key, value) in map {
        if key == META_KEY
            || APP_PRIVATE_KEYS.contains(&key.as_str())
            || injected.contains(&key.as_str())
        {
            continue;
        }
        out.insert(key.clone(), value.clone());
    }
    Value::Object(out)
}

/// The version this particular model was written at, when it is not simply its
/// type's current one.
fn model_version(tree: &GenericTree, id: &str) -> Option<u16> {
    tree.models
        .get(id)?
        .props
        .get(META_KEY)?
        .get("version")?
        .as_u64()
        .map(|v| v as u16)
}

fn is_detached(tree: &GenericTree, id: &str) -> bool {
    tree.models
        .get(id)
        .and_then(|m| m.props.get(META_KEY))
        .and_then(|meta| meta.get("detached"))
        == Some(&Value::Bool(true))
}

fn encode_type_dict(types: &[String]) -> Vec<u8> {
    let mut out = Vec::new();
    for name in types {
        out.extend_from_slice(name.as_bytes());
        out.push(0);
    }
    out
}

/// `{type: {version}}` — the values are *sets* on the wire (`T`), not lists.
fn encode_version_info(versions: &HashMap<String, u16>) -> Vec<u8> {
    let mut names: Vec<&String> = versions.keys().collect();
    names.sort();

    let mut out = vec![super::value::TAG_MAP];
    for name in names {
        out.extend_from_slice(name.as_bytes());
        out.push(0);
        out.push(super::value::TAG_SET);
        out.extend_from_slice(&1u32.to_le_bytes());
        // One member, the type's current version, as a plain number.
        let version = versions[name];
        out.push(super::value::TAG_BYTE);
        out.push(version as u8);
    }
    out.push(0);
    out
}

fn encode_model_table(
    tree: &GenericTree,
    order: &[String],
    index_of: &HashMap<&str, u32>,
    positions: &[u64],
    root_index: u32,
) -> Vec<u8> {
    let mut out = Vec::with_capacity(8 + order.len() * MODEL_TABLE_ITEM_SIZE);
    out.extend_from_slice(&(root_index as i32).to_le_bytes());
    // No free list: a compacted file has no deleted slots to keep.
    out.extend_from_slice(&NONE_I32.to_le_bytes());

    for (i, id) in order.iter().enumerate() {
        let model = &tree.models[id];
        let detached = is_detached(tree, id);

        let parent = match (detached, model.parent_id.as_deref()) {
            (true, _) | (_, None) => NONE_I32,
            (_, Some(parent)) => index_of.get(parent).map(|i| *i as i32).unwrap_or(NONE_I32),
        };

        // A detached model is nobody's sibling and nobody's child.
        let siblings: &[String] = if detached {
            &[]
        } else {
            model
                .parent_id
                .as_deref()
                .and_then(|p| tree.models.get(p))
                .map(|p| p.children.as_slice())
                .unwrap_or(&[])
        };
        let living: Vec<&String> = siblings.iter().filter(|s| !is_detached(tree, s)).collect();
        let at = living.iter().position(|s| s.as_str() == id.as_str());

        let index_at = |slot: Option<usize>| -> i32 {
            slot.and_then(|n| living.get(n))
                .and_then(|s| index_of.get(s.as_str()))
                .map(|i| *i as i32)
                .unwrap_or(NONE_I32)
        };
        let next_sibling = index_at(at.map(|n| n + 1));
        let prev_sibling = index_at(at.and_then(|n| n.checked_sub(1)));

        let children: Vec<&String> = model
            .children
            .iter()
            .filter(|c| !is_detached(tree, c))
            .collect();
        let child_index = |c: Option<&&String>| -> i32 {
            c.and_then(|c| index_of.get(c.as_str()))
                .map(|i| *i as i32)
                .unwrap_or(NONE_I32)
        };

        out.extend_from_slice(&positions[i].to_le_bytes());
        out.extend_from_slice(&parent.to_le_bytes());
        out.extend_from_slice(&child_index(children.first()).to_le_bytes());
        out.extend_from_slice(&child_index(children.last()).to_le_bytes());
        out.extend_from_slice(&next_sibling.to_le_bytes());
        out.extend_from_slice(&prev_sibling.to_le_bytes());
    }
    out
}

fn encode_extra_table(
    tree: &GenericTree,
    order: &[String],
    type_index: &HashMap<&str, u16>,
    versions: &HashMap<String, u16>,
    type_dict_pos: u64,
    version_info_pos: u64,
) -> Vec<u8> {
    let mut out = Vec::with_capacity(16 + order.len() * 6);
    out.extend_from_slice(&type_dict_pos.to_le_bytes());
    out.extend_from_slice(&version_info_pos.to_le_bytes());

    for id in order {
        let model_type = tree.models[id].model_type.as_str();
        out.extend_from_slice(&type_index[model_type].to_le_bytes());
        // flagsS1 / flagsV1. Zero in every model of every document read so far.
        out.extend_from_slice(&[0, 0]);
        let version = model_version(tree, id).unwrap_or_else(|| {
            versions.get(model_type).copied().unwrap_or(0)
        });
        out.extend_from_slice(&version.to_le_bytes());
    }
    out
}

/// Appends one block and returns the position of its header.
///
/// Blocks are written to fit exactly. `StateData.calcSuitableBlockSize` rounds
/// up to a power of two, but that is the *live* allocator leaving room to grow
/// a model in place; a compacted file — which is what gets uploaded, and what
/// the server sent us — has block size equal to used size throughout. Rounding
/// up here made the same document 33% larger than the one it came from.
fn append_block(out: &mut Vec<u8>, payload: &[u8]) -> u64 {
    let pos = out.len() as u64;
    out.extend_from_slice(&(payload.len() as u32).to_le_bytes());
    out.extend_from_slice(&(payload.len() as u32).to_le_bytes());
    out.extend_from_slice(payload);
    pos
}

fn write_header(
    out: &mut [u8],
    format_version: u16,
    model_table_pos: u64,
    undo_table_pos: u64,
    extra_table_pos: u64,
) {
    out[..MAGIC.len()].copy_from_slice(MAGIC);
    out[MAGIC.len()] = FILE_ID_GENERATION;
    out[0x0e..0x10].copy_from_slice(&(HEADER_SIZE as u16).to_le_bytes());
    out[0x10..0x12].copy_from_slice(&format_version.to_le_bytes());
    out[0x12..0x1a].copy_from_slice(&model_table_pos.to_le_bytes());
    out[0x1a..0x22].copy_from_slice(&undo_table_pos.to_le_bytes());
    out[0x22..0x2a].copy_from_slice(&extra_table_pos.to_le_bytes());
}

#[path = "writer/tests.rs"]
#[cfg(test)]
mod tests;
