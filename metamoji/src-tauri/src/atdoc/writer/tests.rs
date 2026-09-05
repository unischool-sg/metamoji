use super::*;

use crate::atdoc::container::parse_document;
use crate::model::GenericModel;
use serde_json::json;

fn model(id: &str, parent: Option<&str>, model_type: &str, props: Value) -> GenericModel {
    GenericModel {
        id: id.into(),
        parent_id: parent.map(str::to_string),
        model_type: model_type.into(),
        props,
        children: Vec::new(),
    }
}

fn sample() -> GenericTree {
    let mut tree = GenericTree::new("root", "$sharenote");
    tree.models.get_mut("root").unwrap().props = json!({ "title": "テスト" });
    tree.insert(model("page", Some("root"), "$page", json!({ "paperWidth": 841.92 })));
    tree.insert(model("layer", Some("page"), "$layer", json!({ "layerType": "system:edit" })));
    tree.insert(model(
        "draw",
        Some("layer"),
        "$draw",
        json!({ "M": { "$ref": "elements" } }),
    ));
    let detached = model(
        "elements",
        Some("root"),
        "M",
        json!({ "points": { "$points": [1.0, 2.0] }, META_KEY: { "detached": true } }),
    );
    tree.insert(detached);
    tree
}

fn meta() -> DocumentMeta {
    DocumentMeta {
        format_version: 2,
        type_versions: [("$sharenote", 1u16), ("$page", 1), ("$layer", 1), ("$draw", 5)]
            .into_iter()
            .map(|(k, v)| (k.to_string(), v))
            .collect(),
    }
}

#[test]
fn what_it_writes_is_what_the_reader_reads_back() {
    let tree = sample();
    let bytes = write_document(&tree, &meta()).unwrap();
    let parsed = parse_document(&bytes).unwrap();

    assert_eq!(parsed.format_version, 2);
    assert_eq!(parsed.models.len(), 5);

    let root = &parsed.models[&(parsed.root_index as usize)];
    assert_eq!(root.model_type, "$sharenote");
    assert_eq!(root.props["title"], json!("テスト"));

    // The page hangs off the root, the layer off the page, in that order.
    let children = &parsed.children[&parsed.root_index];
    assert_eq!(parsed.models[&children[0]].model_type, "$page");
}

#[test]
fn a_detached_model_is_written_with_no_parent() {
    // Ink is reached through a `$ref`, not through the child list. Writing it
    // as a child of the root would put a drawing element in the page tree.
    let bytes = write_document(&sample(), &meta()).unwrap();
    let parsed = parse_document(&bytes).unwrap();

    let elements = parsed
        .models
        .values()
        .find(|m| m.model_type == "M")
        .expect("the detached model survives");
    assert_eq!(elements.parent, NONE_I32);
    assert!(!parsed.children[&parsed.root_index]
        .iter()
        .any(|c| parsed.models[c].model_type == "M"));
}

#[test]
fn a_reference_still_points_at_the_same_model() {
    let bytes = write_document(&sample(), &meta()).unwrap();
    let parsed = parse_document(&bytes).unwrap();

    let draw = parsed.models.values().find(|m| m.model_type == "$draw").unwrap();
    let target = draw.props["M"]["$ref"].as_u64().unwrap() as usize;
    assert_eq!(parsed.models[&target].model_type, "M");
}

#[test]
fn the_bookkeeping_the_importer_added_does_not_reach_the_wire() {
    let mut tree = sample();
    // A property this app added to a model the document already had.
    if let Value::Object(props) = &mut tree.models.get_mut("draw").unwrap().props {
        props.insert("width".into(), json!(100));
        props.insert(META_KEY.into(), json!({ "injected": ["width"] }));
    }
    let bytes = write_document(&tree, &meta()).unwrap();
    let parsed = parse_document(&bytes).unwrap();
    for model in parsed.models.values() {
        assert!(model.props.get(META_KEY).is_none(), "{:?}", model.props);
    }
    let draw = parsed.models.values().find(|m| m.model_type == "$draw").unwrap();
    assert!(draw.props.get("width").is_none(), "{:?}", draw.props);
}

#[test]
fn a_model_is_written_at_its_types_schema_version() {
    let bytes = write_document(&sample(), &meta()).unwrap();
    // Read the version straight out of the extra table: the importer discards
    // it, so nothing else would notice it going wrong.
    let header = crate::atdoc::parse_header(&bytes).unwrap();
    let extra = crate::atdoc::read_block_at(&bytes, header.extra_table_pos).unwrap();
    let versions: Vec<u16> = extra[16..]
        .chunks_exact(6)
        .map(|item| u16::from_le_bytes([item[4], item[5]]))
        .collect();
    // Index 0 is the root, a `$sharenote` at version 1; the `$draw` is at 5.
    assert_eq!(versions[0], 1);
    assert!(versions.contains(&5));
}

#[test]
fn blocks_are_written_to_fit() {
    // A compacted file has no slack: rounding block sizes up to a power of two
    // the way the live allocator does made a real document 33% bigger.
    let bytes = write_document(&sample(), &meta()).unwrap();
    let header = crate::atdoc::parse_header(&bytes).unwrap();
    let mut pos = HEADER_SIZE as u64;
    let mut blocks = 0;
    while (pos as usize) < bytes.len() {
        let size = u32::from_le_bytes(bytes[pos as usize..pos as usize + 4].try_into().unwrap());
        let used = u32::from_le_bytes(bytes[pos as usize + 4..pos as usize + 8].try_into().unwrap());
        assert_eq!(size, used, "block at {pos} has slack");
        pos += 8 + size as u64;
        blocks += 1;
    }
    assert_eq!(pos as usize, bytes.len(), "the last block ends the file");
    // Five models, plus the type dictionary, version info, undo and model and
    // extra tables.
    assert_eq!(blocks, 10);
    assert!(header.model_table_pos > 0);
}

#[test]
fn every_block_lands_where_the_table_says_it_does() {
    // A position that is off by the slack of an earlier block reads as a free
    // block or as garbage, and only shows up on a real device.
    let bytes = write_document(&sample(), &meta()).unwrap();
    let header = crate::atdoc::parse_header(&bytes).unwrap();
    for pos in [header.model_table_pos, header.undo_table_pos, header.extra_table_pos] {
        assert!(crate::atdoc::read_block_at(&bytes, pos).is_ok(), "{pos}");
    }
}
