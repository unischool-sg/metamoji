//! The payload of a `PostData` frame.
//!
//! A Direction is not JSON and not a diff: it is one model of type
//! `"direction"`, version 1, serialised in the same `IModel` container the note
//! itself uses (`NsDirectionManager.makeDirectionData`, and
//! `docs/typespec/classroom/collabo-socket-protocol.md` §6.1). Three
//! properties:
//!
//!  * `data` — the edit. A model reference when the caller passes a model, and
//!    a plain value when it does not.
//!  * `target` — the booth the edit belongs to, which is how the relay routes
//!    it.
//!  * `esid` — the editor's edit-status id, when the document has one. Not the
//!    frame's `self` flag: that one is the relay telling us an echo is ours.

use std::collections::HashMap;

use serde_json::{json, Value};

use crate::atdoc::{write_document, DocumentMeta};
use crate::error::AppResult;
use crate::model::{GenericModel, GenericTree};

const DIRECTION_TYPE: &str = "direction";
const DIRECTION_VERSION: u16 = 1;

/// What a direction carries.
pub enum DirectionData {
    /// A model subtree. Its root becomes the value of `data`.
    Model(GenericTree),
    /// A scalar the receiver reads straight off the property.
    Value(Value),
}

/// Serialises one direction, ready to be a `PostData` payload.
pub fn encode(
    data: DirectionData,
    target_booth: &str,
    edit_status_id: Option<&str>,
    type_versions: HashMap<String, u16>,
) -> AppResult<Vec<u8>> {
    let root_id = "direction";
    let mut tree = GenericTree::new(root_id, DIRECTION_TYPE);

    let data_value = match data {
        DirectionData::Value(value) => value,
        DirectionData::Model(subtree) => {
            // Imported alongside, not underneath: the direction references its
            // payload rather than parenting it, so the receiver rebuilds the
            // subtree exactly as the sender had it.
            let data_root = graft(&mut tree, &subtree, root_id);
            json!({ "$ref": data_root })
        }
    };

    let mut versions = type_versions;
    versions.insert(DIRECTION_TYPE.to_string(), DIRECTION_VERSION);

    if let Value::Object(props) = &mut tree.models.get_mut(root_id).unwrap().props {
        props.insert("data".into(), data_value);
        props.insert("target".into(), Value::String(target_booth.to_string()));
        if let Some(esid) = edit_status_id {
            props.insert("esid".into(), Value::String(esid.to_string()));
        }
    }

    write_document(
        &tree,
        &DocumentMeta {
            format_version: 2,
            type_versions: versions,
        },
    )
}

/// Copies `subtree` into `tree` under new ids, detached from the root, and
/// returns the id its root landed under.
fn graft(tree: &mut GenericTree, subtree: &GenericTree, prefix: &str) -> String {
    let rename = |id: &str| format!("{prefix}_d_{id}");

    let mut order = vec![subtree.root_id.clone()];
    let mut queue = vec![subtree.root_id.clone()];
    while let Some(id) = queue.pop() {
        let Some(model) = subtree.models.get(&id) else {
            continue;
        };
        for child in &model.children {
            order.push(child.clone());
            queue.push(child.clone());
        }
    }
    for id in subtree.models.keys() {
        if !order.contains(id) {
            order.push(id.clone());
        }
    }

    for id in &order {
        let Some(model) = subtree.models.get(id) else {
            continue;
        };
        let mut props = model.props.clone();
        rewrite_refs(&mut props, &rename);

        let is_root = *id == subtree.root_id;
        let parent_id = if is_root {
            // The direction's own root, so that it is written with no parent.
            None
        } else {
            model.parent_id.as_deref().map(rename)
        };

        if is_root {
            if let Value::Object(map) = &mut props {
                crate::atdoc::mark_detached(map);
            }
        }

        tree.insert(GenericModel {
            id: rename(id),
            parent_id: parent_id.or_else(|| Some(tree.root_id.clone())),
            model_type: model.model_type.clone(),
            props,
            children: Vec::new(),
        });
    }

    rename(&subtree.root_id)
}

fn rewrite_refs(value: &mut Value, rename: &impl Fn(&str) -> String) {
    match value {
        Value::Object(map) => {
            if let Some(Value::String(id)) = map.get("$ref") {
                let renamed = rename(id);
                map.insert("$ref".into(), Value::String(renamed));
                return;
            }
            for v in map.values_mut() {
                rewrite_refs(v, rename);
            }
        }
        Value::Array(items) => {
            for v in items {
                rewrite_refs(v, rename);
            }
        }
        _ => {}
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::atdoc::parse_document;

    fn subtree() -> GenericTree {
        let mut tree = GenericTree::new("D", "D");
        tree.models.get_mut("D").unwrap().props = json!({ "T": 1, "V": 1 });
        tree.insert(GenericModel {
            id: "i0".into(),
            parent_id: Some("D".into()),
            model_type: "i".into(),
            props: json!({ "i": "7", "o": 0 }),
            children: Vec::new(),
        });
        tree
    }

    #[test]
    fn a_direction_names_its_booth_and_carries_its_payload() {
        let bytes = encode(
            DirectionData::Model(subtree()),
            "booth-1",
            Some("esid-9"),
            HashMap::new(),
        )
        .unwrap();

        let doc = parse_document(&bytes).unwrap();
        let root = &doc.models[&(doc.root_index as usize)];
        assert_eq!(root.model_type, "direction");
        assert_eq!(root.version, 1);
        assert_eq!(root.props["target"], json!("booth-1"));
        assert_eq!(root.props["esid"], json!("esid-9"));

        // `data` points at the payload's root, which is parented nowhere.
        let target = root.props["data"]["$ref"].as_u64().unwrap() as usize;
        let payload = &doc.models[&target];
        assert_eq!(payload.model_type, "D");
        assert_eq!(payload.parent, -1);
        assert_eq!(payload.props["T"], json!(1));

        // …and keeps its own children.
        let children = &doc.children[&(target as i32)];
        assert_eq!(children.len(), 1);
        assert_eq!(doc.models[&children[0]].props["i"], json!("7"));
    }

    #[test]
    fn a_scalar_payload_is_the_property_itself() {
        let bytes = encode(
            DirectionData::Value(json!("hello")),
            "booth-1",
            None,
            HashMap::new(),
        )
        .unwrap();
        let doc = parse_document(&bytes).unwrap();
        let root = &doc.models[&(doc.root_index as usize)];
        assert_eq!(root.props["data"], json!("hello"));
        assert!(root.props.get("esid").is_none());
    }

    #[test]
    fn a_payload_that_references_its_own_models_still_does_after_the_copy() {
        let mut tree = subtree();
        tree.models.get_mut("D").unwrap().props = json!({ "m": { "$ref": "i0" } });
        let bytes = encode(DirectionData::Model(tree), "b", None, HashMap::new()).unwrap();

        let doc = parse_document(&bytes).unwrap();
        let root = &doc.models[&(doc.root_index as usize)];
        let payload = root.props["data"]["$ref"].as_u64().unwrap() as usize;
        let inner = doc.models[&payload].props["m"]["$ref"].as_u64().unwrap() as usize;
        assert_eq!(doc.models[&inner].model_type, "i");
    }
}
