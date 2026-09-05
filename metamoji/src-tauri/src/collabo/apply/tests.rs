use super::*;

use crate::atdoc::{write_document, DocumentMeta};

fn model(id: &str, parent: Option<&str>, model_type: &str, props: Value) -> GenericModel {
    GenericModel {
        id: id.into(),
        parent_id: parent.map(str::to_string),
        model_type: model_type.into(),
        props,
        children: Vec::new(),
    }
}

/// A direction as the wire carries one, built with the writer.
fn wire(target: &str, build: impl FnOnce(&mut GenericTree) -> Value) -> Vec<u8> {
    let mut tree = GenericTree::new("direction", "direction");
    let data = build(&mut tree);
    if let Value::Object(props) = &mut tree.models.get_mut("direction").unwrap().props {
        props.insert("data".into(), data);
        props.insert("target".into(), json!(target));
        props.insert("esid".into(), json!("esid-1"));
    }
    write_document(&tree, &DocumentMeta::default()).unwrap()
}

fn detached(mut m: GenericModel) -> GenericModel {
    if let Value::Object(props) = &mut m.props {
        crate::atdoc::mark_detached(props);
    }
    m
}

/// `D T=0` → `i` → `E` → `$text`, which is how a new unit arrives.
fn add_unit_payload(unit_type: &str, unit_id: &str) -> Vec<u8> {
    wire("booth_[unit]_draw", |tree| {
        tree.insert(detached(model("d", Some("direction"), "D", json!({ "T": 0, "V": 2 }))));
        tree.insert(model("i0", Some("d"), "i", json!({ "i": "e1", "m": { "$ref": "e" } })));
        tree.insert(detached(model(
            "e",
            Some("direction"),
            "E",
            json!({ "I": "e1", "T": 2, "u": { "$ref": "u" } }),
        )));
        tree.insert(detached(model(
            "u",
            Some("direction"),
            unit_type,
            json!({ "unitId": unit_id, "x": 10.0, "y": 20.0, "width": 30.0, "height": 40.0 }),
        )));
        json!({ "$ref": "d" })
    })
}

/// A page with the layer set a class note actually arrives with — no personal
/// layer, because the drive's copy never has one.
fn note() -> GenericTree {
    let mut tree = GenericTree::new("root", "$sharenote");
    tree.insert(model("page", Some("root"), "$page", json!({ "pageId": "P1" })));
    tree.insert(model(
        "layer_edit",
        Some("page"),
        "$layer",
        json!({ "layerId": "P1_[layer]_1", "layerType": "system:edit" }),
    ));
    tree
}

#[test]
fn a_booth_names_the_page_and_the_layer() {
    let page = placement_of("P1");
    assert_eq!(page.page_id, "P1");
    assert_eq!(page.layer_id, None);

    let personal = placement_of("P1_[layer-forUser]_9876");
    assert_eq!(personal.page_id, "P1");
    assert_eq!(personal.layer_id.as_deref(), Some("P1_[layer-forUser]_9876"));
    assert_eq!(personal.layer_type.as_deref(), Some("system:personal"));

    let common = placement_of("P1_[layer-common]");
    assert_eq!(common.page_id, "P1");
    assert_eq!(common.layer_type.as_deref(), Some("system:common"));
}

#[test]
fn an_add_direction_yields_the_unit_it_carries() {
    let direction = decode(&add_unit_payload("$text", "u-1")).unwrap();
    assert_eq!(direction.esid.as_deref(), Some("esid-1"));
    assert_eq!(direction.changes.len(), 1);
    match &direction.changes[0] {
        Change::Unit { unit_id, models } => {
            assert_eq!(unit_id, "u-1");
            assert_eq!(models[0].model_type, "$text");
        }
        other => panic!("{other:?}"),
    }
}

#[test]
fn a_unit_model_on_its_own_is_an_update_to_that_unit() {
    // A text unit re-sends its whole model as it is edited; `target` is the
    // unit id rather than a layer.
    let payload = wire("u-7", |tree| {
        tree.insert(detached(model(
            "u",
            Some("direction"),
            "$text",
            json!({ "unitId": "u-7", "width": 100.5 }),
        )));
        json!({ "$ref": "u" })
    });
    let direction = decode(&payload).unwrap();
    match &direction.changes[0] {
        Change::Unit { unit_id, models } => {
            assert_eq!(unit_id, "u-7");
            assert_eq!(models[0].props["width"], json!(100.5));
        }
        other => panic!("{other:?}"),
    }
}

#[test]
fn a_shared_attachment_comes_out_as_bytes() {
    let payload = wire("TheAttachMan", |tree| {
        tree.insert(detached(model(
            "a",
            Some("direction"),
            "attachment",
            json!({ "$blob": { "$blob": "AQID", "$mime": "image/png" } }),
        )));
        tree.insert(detached(model(
            "share",
            Some("direction"),
            "attachsharedirection",
            json!({ "t": { "tkt-9": { "$ref": "a" } } }),
        )));
        json!({ "$ref": "share" })
    });

    let direction = decode(&payload).unwrap();
    assert_eq!(
        direction.changes,
        vec![Change::Asset {
            ticket: "tkt-9".into(),
            mime: "image/png".into(),
            bytes: vec![1, 2, 3],
        }]
    );
}

#[test]
fn a_direction_kind_this_build_does_not_act_on_is_named() {
    let payload = wire("b", |tree| {
        tree.insert(detached(model("d", Some("direction"), "D", json!({ "T": 8 }))));
        json!({ "$ref": "d" })
    });
    let direction = decode(&payload).unwrap();
    assert_eq!(
        direction.changes,
        vec![Change::Unsupported { kind: "D SET_VARIATION".into() }]
    );
}

#[test]
fn applying_creates_the_personal_layer_the_drive_copy_lacks() {
    let mut tree = note();
    let direction = decode(&add_unit_payload("$text", "u-1")).unwrap();
    let applied = apply(&mut tree, "P1_[layer-forUser]_9876", &direction);

    assert_eq!(applied.units, 1);
    let layer = tree
        .models
        .values()
        .find(|m| m.props.get("layerId").and_then(Value::as_str) == Some("P1_[layer-forUser]_9876"))
        .expect("the personal layer was created");
    assert_eq!(layer.props["layerType"], json!("system:personal"));
    assert_eq!(layer.parent_id.as_deref(), Some("page"));

    let unit = tree.models[&layer.children[0]].clone();
    assert_eq!(unit.model_type, "$text");
    assert_eq!(unit.props["unitId"], json!("u-1"));
}

#[test]
fn applying_the_same_direction_twice_replaces_rather_than_duplicates() {
    // A reconnect replays a booth from the beginning; without this the note
    // gains a copy of every unit on every reopen.
    let mut tree = note();
    let direction = decode(&add_unit_payload("$text", "u-1")).unwrap();
    apply(&mut tree, "P1_[layer-forUser]_9876", &direction);
    let after_one = tree.models.len();
    apply(&mut tree, "P1_[layer-forUser]_9876", &direction);

    assert_eq!(tree.models.len(), after_one);
    let layer = tree
        .models
        .values()
        .find(|m| m.props.get("layerType").and_then(Value::as_str) == Some("system:personal"))
        .unwrap();
    assert_eq!(layer.children.len(), 1);
}

#[test]
fn a_booth_for_a_page_the_note_does_not_have_is_ignored() {
    let mut tree = note();
    let direction = decode(&add_unit_payload("$text", "u-1")).unwrap();
    let applied = apply(&mut tree, "P9_[layer-forUser]_9876", &direction);
    assert_eq!(applied.units, 0);
    assert_eq!(tree.models.len(), note().models.len());
}

#[test]
fn a_page_level_booth_lands_on_the_edit_layer() {
    let mut tree = note();
    let direction = decode(&add_unit_payload("$image", "u-2")).unwrap();
    apply(&mut tree, "P1", &direction);

    let layer = &tree.models["layer_edit"];
    assert_eq!(layer.children.len(), 1);
    assert_eq!(tree.models[&layer.children[0]].model_type, "$image");
}

#[test]
fn what_a_unit_references_comes_with_it() {
    let payload = wire("booth_[unit]_draw", |tree| {
        tree.insert(detached(model("d", Some("direction"), "D", json!({ "T": 0 }))));
        tree.insert(model("i0", Some("d"), "i", json!({ "m": { "$ref": "e" } })));
        tree.insert(detached(model(
            "e",
            Some("direction"),
            "E",
            json!({ "u": { "$ref": "u" } }),
        )));
        tree.insert(detached(model(
            "u",
            Some("direction"),
            "$draw",
            json!({ "unitId": "u-3", "M": { "$ref": "elements" } }),
        )));
        tree.insert(detached(model(
            "elements",
            Some("direction"),
            "M",
            json!({ "note": "ink lives here" }),
        )));
        json!({ "$ref": "d" })
    });

    let mut tree = note();
    let direction = decode(&payload).unwrap();
    apply(&mut tree, "P1_[layer-forUser]_9876", &direction);

    let unit = tree
        .models
        .values()
        .find(|m| m.model_type == "$draw")
        .expect("the unit");
    let referenced = unit.props["M"]["$ref"].as_str().unwrap();
    assert_eq!(tree.models[referenced].model_type, "M");
    // The element graph is not a child of the unit; it hangs off a reference.
    assert!(tree.models[referenced].parent_id.is_none());
}

#[test]
fn the_personal_layer_becomes_the_one_being_drawn_on() {
    // Otherwise the page's own choice stands, which on a class handout is a
    // system layer the room has no booth for — nothing drawn there could be
    // sent back.
    let mut tree = note();
    let direction = decode(&add_unit_payload("$text", "u-1")).unwrap();
    apply(&mut tree, "P1_[layer-forUser]_9876", &direction);

    let personal = tree
        .models
        .values()
        .find(|m| m.props.get("layerType").and_then(Value::as_str) == Some("system:personal"))
        .unwrap()
        .id
        .clone();
    assert_eq!(tree.models["page"].props["currentLayer"]["$ref"], json!(personal));
}

#[test]
fn a_common_layer_does_not_steal_the_cursor() {
    let mut tree = note();
    let direction = decode(&add_unit_payload("$text", "u-1")).unwrap();
    apply(&mut tree, "P1_[layer-common]", &direction);
    assert!(tree.models["page"].props.get("currentLayer").is_none());
}
