//! Building the Direction that adds one stroke.
//!
//! The mirror of `apply.rs`: where that reads what the room already holds,
//! this produces what goes back. A stroke on the wire is four models —
//!
//! ```text
//! D   the drawing engine's direction   T=ADD_REMOVE, V=2, M=5, O=6, C=id
//!  i    one add record                 i=element id, m=the element, t/s/e
//! E   the element                      T=STROKE, B=POINTS, P=points, p=pen
//! S   the pen style                    C=colour, W=width, A=alpha, P=pen type
//! ```
//!
//! — wrapped in the `direction` envelope from `direction.rs` and posted to the
//! booth of the layer it belongs on, with `target` naming that layer's drawing
//! unit.
//!
//! Ids are the drawing engine's own: `{prefix} {count}`, each in the base-92
//! alphabet `DrUtIdGenerator.CHARSET_TABLE`. They have to be in that shape
//! because the receiver parses them back into a prefix and a count.
//!
//! Strokes are sent as `SIMPLE`, not `REDUCED`. A reduced stroke carries the
//! point-reduction bookkeeping the original's own renderer produced (`d`, `z`,
//! `g`), and this app does not reduce anything — claiming otherwise would be
//! sending numbers that mean nothing.

use serde_json::{json, Value};

use super::direction::{self, DirectionData};
use crate::error::{AppError, AppResult};
use crate::model::{GenericModel, GenericTree};

/// `DrUtIdGenerator.CHARSET_TABLE`, and the base its numbers are written in.
const CHARSET: &[u8; 92] =
    b"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\"#$%&'()*+,-./:;<=>@[\\]^_`{|}~";

/// Element types (`DrElementType`) and the rest, all `ordinal - 1`.
const ELEMENT_TYPE_STROKE: i64 = 1;
const BASE_TYPE_POINTS: i64 = 0;
const STROKE_TYPE_SIMPLE: i64 = 0;
/// `DrAddRemoveDirection$DrExecutionType`, a plain ordinal this time.
const EXECUTION_ADD: i64 = 0;
pub(crate) const EXECUTION_REMOVE: i64 = 1;
const DIRECTION_ADD_REMOVE: i64 = 0;
/// What the original sends, and what its receiver checks against.
const MODULE_VERSION: i64 = 5;
const MODULE_ACCEPTABLE_VERSION: i64 = 6;
const DIRECTION_VERSION: i64 = 2;

/// `DrUtIdGenerator`: a per-run prefix and a counter, both base-92.
#[derive(Debug)]
pub struct IdGenerator {
    prefix: u64,
    count: u64,
}

impl IdGenerator {
    pub fn new(prefix: u64) -> Self {
        Self { prefix, count: 0 }
    }

    /// A prefix nobody else is using. The original seeds it from the device and
    /// the clock; what matters is only that two clients do not collide.
    pub fn fresh() -> Self {
        let now = std::time::SystemTime::now()
            .duration_since(std::time::UNIX_EPOCH)
            .map(|d| d.as_nanos() as u64)
            .unwrap_or(1);
        Self::new(now | 1)
    }

    pub fn next_id(&mut self) -> String {
        self.count += 1;
        format!("{} {}", base92(self.prefix), base92(self.count))
    }
}

/// `encode64bitToString`: base-92, most significant digit first.
fn base92(mut value: u64) -> String {
    let base = CHARSET.len() as u64;
    let mut digits = Vec::new();
    loop {
        digits.push(CHARSET[(value % base) as usize]);
        value /= base;
        if value == 0 {
            break;
        }
    }
    digits.reverse();
    String::from_utf8(digits).expect("the alphabet is ASCII")
}

/// Who wrote it. The original stamps every element with this, and it is what
/// a teacher's screen shows next to a student's writing.
#[derive(Debug, Clone)]
pub struct Author {
    pub user_id: String,
    pub name: String,
    pub company_id: String,
    pub room_id: String,
    /// The id the *room* gave us, which is not the tenant's user id.
    pub room_user_id: String,
}

/// Builds the payload that adds `stroke` to `layer_id`'s drawing unit.
///
/// `stroke` is this app's own shape — the one `ink.rs` produces and the
/// renderer draws.
pub fn add_stroke(
    stroke: &Value,
    layer_id: &str,
    ids: &mut IdGenerator,
    author: &Author,
    edit_status_id: Option<&str>,
) -> AppResult<(Vec<u8>, String)> {
    let element_id = ids.next_id();
    let style_id = ids.next_id();
    let collaboration_id = ids.next_id();

    let points = wire_points(stroke)
        .ok_or_else(|| AppError::other("ストロークに座標がありません"))?;
    let bounds = stroke
        .get("bounds")
        .ok_or_else(|| AppError::other("ストロークに範囲がありません"))?;

    let mut tree = GenericTree::new("d", "D");
    if let Value::Object(props) = &mut tree.models.get_mut("d").unwrap().props {
        props.insert("T".into(), json!(DIRECTION_ADD_REMOVE));
        props.insert("V".into(), json!(DIRECTION_VERSION));
        props.insert("M".into(), json!(MODULE_VERSION));
        props.insert("O".into(), json!(MODULE_ACCEPTABLE_VERSION));
        props.insert("C".into(), json!(collaboration_id));
    }

    let count = points.len() / 2;
    tree.insert(GenericModel {
        id: "i0".into(),
        parent_id: Some("d".into()),
        model_type: "i".into(),
        props: json!({
            "i": element_id,
            "m": { "$ref": "e" },
            "s": 0,
            "e": count.max(1) - 1,
            "t": EXECUTION_ADD,
        }),
        children: Vec::new(),
    });

    tree.insert(detached(GenericModel {
        id: "e".into(),
        parent_id: Some("d".into()),
        model_type: "E".into(),
        props: json!({
            "I": element_id,
            "T": ELEMENT_TYPE_STROKE,
            "B": BASE_TYPE_POINTS,
            "t": STROKE_TYPE_SIMPLE,
            "P": { "$points": points },
            "p": { "$ref": "s" },
            "BX": bounds.get("x").cloned().unwrap_or(json!(0)),
            "BY": bounds.get("y").cloned().unwrap_or(json!(0)),
            "BW": bounds.get("width").cloned().unwrap_or(json!(0)),
            "BH": bounds.get("height").cloned().unwrap_or(json!(0)),
            "uII": author.user_id,
            "uIN": author.name,
            "uIG": author.company_id,
            "uIR": author.room_id,
            "uIC": author.room_user_id,
            "uIT": now_seconds(),
        }),
        children: Vec::new(),
    }));

    tree.insert(detached(GenericModel {
        id: "s".into(),
        parent_id: Some("d".into()),
        model_type: "S".into(),
        props: json!({
            "I": style_id,
            "C": wire_colour(stroke),
            "W": stroke.get("width").cloned().unwrap_or(json!(2.4)),
            "A": stroke.get("opacity").cloned().unwrap_or(json!(1.0)),
            "P": pen_type_value(stroke),
        }),
        children: Vec::new(),
    }));

    let payload = direction::encode(
        DirectionData::Model(tree),
        &format!("{layer_id}_[unit]_draw"),
        edit_status_id,
        Default::default(),
    )?;
    // The caller has to keep this: a stroke can only be erased later by the id
    // it was sent under.
    Ok((payload, element_id))
}

fn detached(mut model: GenericModel) -> GenericModel {
    if let Value::Object(props) = &mut model.props {
        crate::atdoc::mark_detached(props);
    }
    model
}

/// This app stores a point as `x, y, pressure, time`; the wire wants `x, y`.
fn wire_points(stroke: &Value) -> Option<Vec<Value>> {
    let flat = stroke.get("points")?.get("$points")?.as_array()?;
    let mut out = Vec::with_capacity(flat.len() / 2);
    for point in flat.chunks(4) {
        if point.len() < 2 {
            break;
        }
        out.push(point[0].clone());
        out.push(point[1].clone());
    }
    (!out.is_empty()).then_some(out)
}

/// `#rrggbb` back to the bare `RRGGBB` the style holds.
fn wire_colour(stroke: &Value) -> String {
    stroke
        .get("color")
        .and_then(Value::as_str)
        .unwrap_or("#1f1f1f")
        .trim_start_matches('#')
        .to_ascii_uppercase()
}

fn pen_type_value(stroke: &Value) -> i64 {
    match stroke.get("penType").and_then(Value::as_str) {
        Some("marker") | Some("highlighter") => 1,
        Some("fountain") => 2,
        _ => 0,
    }
}

fn now_seconds() -> f64 {
    std::time::SystemTime::now()
        .duration_since(std::time::UNIX_EPOCH)
        .map(|d| d.as_secs_f64())
        .unwrap_or_default()
}

/// Removes an element the room already has.
///
/// The same `ADD_REMOVE` direction as an add, with the record marked `REMOVE`
/// and carrying only the element's id: the receiver finds the element in its
/// own document (`removeElementWithInternal` calls `getElementById`), so
/// sending a copy of it would be sending back what it already has.
pub fn remove_element(
    element_id: &str,
    layer_id: &str,
    ids: &mut IdGenerator,
    edit_status_id: Option<&str>,
) -> AppResult<Vec<u8>> {
    let mut tree = GenericTree::new("d", "D");
    if let Value::Object(props) = &mut tree.models.get_mut("d").unwrap().props {
        props.insert("T".into(), json!(DIRECTION_ADD_REMOVE));
        props.insert("V".into(), json!(DIRECTION_VERSION));
        props.insert("M".into(), json!(MODULE_VERSION));
        props.insert("O".into(), json!(MODULE_ACCEPTABLE_VERSION));
        props.insert("C".into(), json!(ids.next_id()));
    }
    tree.insert(GenericModel {
        id: "i0".into(),
        parent_id: Some("d".into()),
        model_type: "i".into(),
        props: json!({ "i": element_id, "t": EXECUTION_REMOVE }),
        children: Vec::new(),
    });

    direction::encode(
        DirectionData::Model(tree),
        &format!("{layer_id}_[unit]_draw"),
        edit_status_id,
        Default::default(),
    )
}

/// A stroke that has been posted is marked here, so a second send does not
/// draw it on everyone's screen twice.
pub const SENT_KEY: &str = "$sentToRoom";
/// The id the room knows a stroke by, which is what a later removal names.
pub const ELEMENT_KEY: &str = "$roomStrokeId";

/// One stroke waiting to go out, and where it belongs.
#[derive(Debug, Clone)]
pub struct Pending {
    pub draw_id: String,
    pub stroke_index: usize,
    pub layer_id: String,
    pub stroke: Value,
}

/// Every stroke the room knows about, by the id it knows it by.
///
/// A stroke that came from the room is keyed by its own element id; one this
/// app sent carries the id it was sent under. Used to work out what has been
/// erased since the last send.
pub fn known_element_ids(tree: &GenericTree) -> Vec<String> {
    let mut out = Vec::new();
    for draw in tree.models.values() {
        if draw.model_type != "$draw" {
            continue;
        }
        let Some(strokes) = draw.props.get("strokes").and_then(Value::as_array) else {
            continue;
        };
        for stroke in strokes {
            if let Some(id) = stroke.get(ELEMENT_KEY).and_then(Value::as_str) {
                out.push(id.to_string());
            }
        }
    }
    out.sort();
    out.dedup();
    out
}

/// Every stroke on a personal layer that has not been posted yet.
///
/// Only personal layers: they are the ones the room has a booth for, and the
/// only place a student is meant to be writing on a distributed note.
pub fn pending(tree: &GenericTree) -> Vec<Pending> {
    let mut out = Vec::new();
    for layer in tree.models.values() {
        if layer.model_type != "$layer" {
            continue;
        }
        if layer.props.get("layerType").and_then(Value::as_str) != Some("system:personal") {
            continue;
        }
        let Some(layer_id) = layer.props.get("layerId").and_then(Value::as_str) else {
            continue;
        };

        for child in &layer.children {
            let Some(draw) = tree.models.get(child) else {
                continue;
            };
            if draw.model_type != "$draw" {
                continue;
            }
            let Some(strokes) = draw.props.get("strokes").and_then(Value::as_array) else {
                continue;
            };
            for (index, stroke) in strokes.iter().enumerate() {
                if stroke.get(SENT_KEY) == Some(&Value::Bool(true)) {
                    continue;
                }
                out.push(Pending {
                    draw_id: draw.id.clone(),
                    stroke_index: index,
                    layer_id: layer_id.to_string(),
                    stroke: stroke.clone(),
                });
            }
        }
    }
    out.sort_by(|a, b| (&a.draw_id, a.stroke_index).cmp(&(&b.draw_id, b.stroke_index)));
    out
}

/// Marks a stroke as posted, under the id the room now knows it by.
pub fn mark_sent(tree: &mut GenericTree, draw_id: &str, stroke_index: usize, element_id: &str) {
    let Some(draw) = tree.models.get_mut(draw_id) else {
        return;
    };
    let Value::Object(props) = &mut draw.props else {
        return;
    };
    let Some(Value::Array(strokes)) = props.get_mut("strokes") else {
        return;
    };
    if let Some(Value::Object(stroke)) = strokes.get_mut(stroke_index) {
        stroke.insert(SENT_KEY.into(), Value::Bool(true));
        stroke.insert(ELEMENT_KEY.into(), Value::String(element_id.to_string()));
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::atdoc::parse_document;

    fn stroke() -> Value {
        json!({
            "id": "local-1",
            "points": { "$points": [10.0, 20.0, 0.5, 0.0, 30.5, 40.5, 0.5, 8.0] },
            "color": "#0000fb",
            "width": 2.4,
            "opacity": 0.65,
            "penType": "ballpoint",
            "bounds": { "x": 10.0, "y": 20.0, "width": 20.5, "height": 20.5 },
        })
    }

    fn author() -> Author {
        Author {
            user_id: "213163099101".into(),
            name: "田中 博悠".into(),
            company_id: "12386000".into(),
            room_id: "5777426101072728".into(),
            room_user_id: "1786500056276".into(),
        }
    }

    fn built() -> crate::atdoc::ParsedDocument {
        let (bytes, _) = add_stroke(
            &stroke(),
            "P1_[layer-forUser]_213163099101",
            &mut IdGenerator::new(1),
            &author(),
            Some("esid-1"),
        )
        .unwrap();
        parse_document(&bytes).unwrap()
    }

    fn find<'a>(doc: &'a crate::atdoc::ParsedDocument, kind: &str) -> &'a crate::atdoc::ParsedModel {
        doc.models
            .values()
            .find(|m| m.model_type == kind)
            .unwrap_or_else(|| panic!("no {kind} in the direction"))
    }

    #[test]
    fn base92_matches_the_alphabet_the_receiver_parses() {
        assert_eq!(base92(0), "0");
        assert_eq!(base92(1), "1");
        assert_eq!(base92(91), "~");
        assert_eq!(base92(92), "10");
        // Every character has to come from the table, or the id will not parse.
        let text = base92(u64::MAX);
        assert!(text.bytes().all(|b| CHARSET.contains(&b)), "{text}");
    }

    #[test]
    fn an_id_is_a_prefix_and_a_count() {
        let mut ids = IdGenerator::new(92);
        assert_eq!(ids.next_id(), "10 1");
        assert_eq!(ids.next_id(), "10 2");
    }

    #[test]
    fn the_direction_says_where_it_belongs() {
        let doc = built();
        let root = &doc.models[&(doc.root_index as usize)];
        assert_eq!(root.model_type, "direction");
        assert_eq!(
            root.props["target"],
            json!("P1_[layer-forUser]_213163099101_[unit]_draw")
        );
        assert_eq!(root.props["esid"], json!("esid-1"));
    }

    #[test]
    fn it_is_an_add_at_the_version_the_receiver_expects() {
        let doc = built();
        let d = find(&doc, "D");
        assert_eq!(d.props["T"], json!(0));
        assert_eq!(d.props["V"], json!(2));
        assert_eq!(d.props["M"], json!(5));
        assert_eq!(d.props["O"], json!(6));
        assert!(d.props["C"].as_str().is_some_and(|c| c.contains(' ')));
    }

    #[test]
    fn the_element_carries_the_points_two_at_a_time() {
        // This app keeps `x, y, pressure, time`; the wire keeps only the pair.
        let doc = built();
        let e = find(&doc, "E");
        assert_eq!(e.props["P"]["$points"], json!([10.0, 20.0, 30.5, 40.5]));
        assert_eq!(e.props["T"], json!(1));
        assert_eq!(e.props["B"], json!(0));
        assert_eq!(e.props["t"], json!(0));
    }

    #[test]
    fn the_element_is_stamped_with_who_wrote_it() {
        let doc = built();
        let e = find(&doc, "E");
        assert_eq!(e.props["uII"], json!("213163099101"));
        assert_eq!(e.props["uIN"], json!("田中 博悠"));
        assert_eq!(e.props["uIR"], json!("5777426101072728"));
    }

    #[test]
    fn the_pen_style_is_the_bare_hex_the_original_stores() {
        let doc = built();
        let s = find(&doc, "S");
        assert_eq!(s.props["C"], json!("0000FB"));
        assert_eq!(s.props["A"], json!(0.65));
        assert_eq!(s.props["P"], json!(0));
    }

    #[test]
    fn the_record_points_at_the_element_and_the_element_at_the_pen() {
        let doc = built();
        let record = find(&doc, "i");
        let element = record.props["m"]["$ref"].as_u64().unwrap() as usize;
        assert_eq!(doc.models[&element].model_type, "E");
        let pen = doc.models[&element].props["p"]["$ref"].as_u64().unwrap() as usize;
        assert_eq!(doc.models[&pen].model_type, "S");
        assert_eq!(record.props["i"], doc.models[&element].props["I"]);
    }

    #[test]
    fn what_it_builds_is_what_the_reader_reads_back() {
        // The proof that the two halves agree: decode our own direction with
        // the code that decodes the room's.
        let (bytes, element_id) = add_stroke(
            &stroke(),
            "P1_[layer-forUser]_9",
            &mut IdGenerator::new(7),
            &author(),
            None,
        )
        .unwrap();
        assert!(element_id.contains(' '), "{element_id}");
        let direction = super::super::apply::decode(&bytes).unwrap();
        match direction.changes.as_slice() {
            [super::super::apply::Change::Stroke { stroke, .. }] => {
                assert_eq!(stroke["color"], json!("#0000fb"));
                assert_eq!(stroke["points"]["$points"][0], json!(10.0));
            }
            other => panic!("{other:?}"),
        }
    }

    #[test]
    fn a_stroke_with_no_points_is_refused_rather_than_sent_empty() {
        let mut bad = stroke();
        bad["points"]["$points"] = json!([]);
        assert!(add_stroke(&bad, "L", &mut IdGenerator::new(1), &author(), None).is_err());
    }
}

#[cfg(test)]
mod queue_tests {
    use super::*;
    use crate::model::GenericModel;

    fn note_with(strokes: Value, layer_type: &str) -> GenericTree {
        let mut tree = GenericTree::new("root", "$sharenote");
        tree.insert(GenericModel {
            id: "page".into(),
            parent_id: Some("root".into()),
            model_type: "$page".into(),
            props: json!({ "pageId": "P1" }),
            children: Vec::new(),
        });
        tree.insert(GenericModel {
            id: "layer".into(),
            parent_id: Some("page".into()),
            model_type: "$layer".into(),
            props: json!({ "layerId": "P1_[layer-forUser]_9", "layerType": layer_type }),
            children: Vec::new(),
        });
        tree.insert(GenericModel {
            id: "draw".into(),
            parent_id: Some("layer".into()),
            model_type: "$draw".into(),
            props: json!({ "strokes": strokes }),
            children: Vec::new(),
        });
        tree
    }

    #[test]
    fn a_new_stroke_on_a_personal_layer_is_waiting_to_go_out() {
        let tree = note_with(json!([{ "id": "a" }, { "id": "b" }]), "system:personal");
        let waiting = pending(&tree);
        assert_eq!(waiting.len(), 2);
        assert_eq!(waiting[0].layer_id, "P1_[layer-forUser]_9");
    }

    #[test]
    fn a_stroke_already_posted_is_not_sent_again() {
        let tree = note_with(
            json!([{ "id": "a", "$sentToRoom": true }, { "id": "b" }]),
            "system:personal",
        );
        let waiting = pending(&tree);
        assert_eq!(waiting.len(), 1);
        assert_eq!(waiting[0].stroke["id"], json!("b"));
    }

    #[test]
    fn strokes_that_came_from_the_room_are_marked_when_posted() {
        let mut tree = note_with(json!([{ "id": "a" }]), "system:personal");
        mark_sent(&mut tree, "draw", 0, "prefix 1");
        assert!(pending(&tree).is_empty());
        // And under the id a later erase will name it by.
        assert_eq!(known_element_ids(&tree), vec!["prefix 1".to_string()]);
    }

    #[test]
    fn a_removal_names_only_the_element() {
        let bytes = remove_element("prefix 1", "P1_[layer-forUser]_9", &mut IdGenerator::new(3), None)
            .unwrap();
        let doc = crate::atdoc::parse_document(&bytes).unwrap();
        let record = doc.models.values().find(|m| m.model_type == "i").unwrap();
        assert_eq!(record.props["i"], json!("prefix 1"));
        assert_eq!(record.props["t"], json!(EXECUTION_REMOVE));
        assert!(record.props.get("m").is_none());

        let d = doc.models.values().find(|m| m.model_type == "D").unwrap();
        assert_eq!(d.props["T"], json!(0));
    }

    #[test]
    fn a_layer_the_room_has_no_booth_for_is_left_alone() {
        // The handout's own layers are not the student's to write on, and
        // there is nowhere to send them.
        let tree = note_with(json!([{ "id": "a" }]), "system:edit");
        assert!(pending(&tree).is_empty());
    }
}
