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
    let (bx, by, bw, bh) = bounds_of(stroke, &points)
        .ok_or_else(|| AppError::other("ストロークの範囲を求められません"))?;

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
            "BX": bx,
            "BY": by,
            "BW": bw,
            "BH": bh,
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

/// The element's bounding box.
///
/// A stroke that came from a document carries one, because the importer
/// computed it. A stroke the user just drew does not: `strokeToProp` writes
/// points and pen and nothing else, and the app recomputes the box every time
/// it reads the note. So compute it here too, by the same rule the importer
/// uses — the box is the points grown by the pen's half-width and a little
/// more, which is roughly what the ink covers.
fn bounds_of(stroke: &Value, points: &[Value]) -> Option<(f64, f64, f64, f64)> {
    if let Some(bounds) = stroke.get("bounds") {
        let read = |key: &str| bounds.get(key).and_then(Value::as_f64);
        if let (Some(x), Some(y), Some(w), Some(h)) =
            (read("x"), read("y"), read("width"), read("height"))
        {
            return Some((x, y, w, h));
        }
    }

    let (mut min_x, mut min_y) = (f64::INFINITY, f64::INFINITY);
    let (mut max_x, mut max_y) = (f64::NEG_INFINITY, f64::NEG_INFINITY);
    for pair in points.chunks(2) {
        let (Some(x), Some(y)) = (
            pair.first().and_then(Value::as_f64),
            pair.get(1).and_then(Value::as_f64),
        ) else {
            continue;
        };
        min_x = min_x.min(x);
        min_y = min_y.min(y);
        max_x = max_x.max(x);
        max_y = max_y.max(y);
    }
    if !min_x.is_finite() {
        return None;
    }

    let pad = stroke.get("width").and_then(Value::as_f64).unwrap_or(2.4) * 1.5;
    Some((
        min_x - pad,
        min_y - pad,
        (max_x - min_x) + pad * 2.0,
        (max_y - min_y) + pad * 2.0,
    ))
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

/// The id the room knows a stroke by, when the note happens to be carrying it.
///
/// Not to be relied on: the editor rewrites a stroke's properties from its own
/// model on every save (`strokeToProp` writes points and pen and nothing
/// else), so anything added here is gone the next time the user saves. What
/// the room knows lives in the note's `room_strokes` table instead — see
/// `Ledger`. This is a hint for matching an incoming removal, no more.
pub const ELEMENT_KEY: &str = "$roomStrokeId";

/// What the room has been told, keyed by the note's own stroke id.
///
/// The pairing has to live outside the note. The editor owns the document
/// while it is open and rewrites it on every save from its own model, so
/// anything this code writes into a stroke is lost — and a lost marker reads
/// as "the user erased it", which is how a first version of this deleted a
/// note's writing on the next save.
#[derive(Debug, Clone, PartialEq)]
pub struct Ledger {
    /// The note's own id for the stroke, which `strokeToProp` does preserve.
    pub stroke_id: String,
    /// The id the room knows it by.
    pub element_id: String,
    pub layer_id: String,
}

/// One stroke waiting to go out, and where it belongs.
#[derive(Debug, Clone)]
pub struct Pending {
    pub stroke_id: String,
    pub layer_id: String,
    pub stroke: Value,
}

/// Every stroke on a personal layer, with the layer it is on.
///
/// Only personal layers: they are the ones the room has a booth for, and the
/// only place a student is meant to be writing on a distributed note.
fn personal_strokes(tree: &GenericTree) -> Vec<Pending> {
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
            for stroke in strokes {
                let Some(stroke_id) = stroke.get("id").and_then(Value::as_str) else {
                    // Without an id there is no way to tell this stroke from
                    // the next one on the next save, so it cannot be tracked.
                    continue;
                };
                out.push(Pending {
                    stroke_id: stroke_id.to_string(),
                    layer_id: layer_id.to_string(),
                    stroke: stroke.clone(),
                });
            }
        }
    }
    out.sort_by(|a, b| a.stroke_id.cmp(&b.stroke_id));
    out
}

/// The mark of a real booth id. A layer the room addresses is named
/// `{pageId}_[layer-…]`; anything else is a name this app made up.
const BOOTH_MARK: &str = "_[layer-";

/// What has changed since the room was last told.
///
/// `ledger` is what the room has been told so far. A stroke it does not know
/// is new; an entry whose stroke is no longer in the note was erased.
///
/// The third number is strokes that cannot be sent because their layer is not
/// named the way the room names layers — a note taken by a build that replaced
/// those names with its own model ids. There is nothing to do about such a
/// note but take it from the class box again, and saying so beats posting to a
/// channel nobody is listening to.
pub fn changes(tree: &GenericTree, ledger: &[Ledger]) -> (Vec<Pending>, Vec<Ledger>, usize) {
    let all = personal_strokes(tree);
    let stale = all
        .iter()
        .filter(|p| !p.layer_id.contains(BOOTH_MARK))
        .count();
    let here: Vec<Pending> = all
        .into_iter()
        .filter(|p| p.layer_id.contains(BOOTH_MARK))
        .collect();
    let known: std::collections::HashSet<&str> =
        ledger.iter().map(|l| l.stroke_id.as_str()).collect();
    let added: Vec<Pending> = here
        .iter()
        .filter(|p| !known.contains(p.stroke_id.as_str()))
        .cloned()
        .collect();

    // Erased strokes are looked for across the whole note, not just the
    // personal layers: a stroke that moved to another layer has not been
    // erased, and reporting it as such would delete it for everyone.
    let alive = all_stroke_ids(tree);
    let layers = layer_ids(tree);
    let removed: Vec<Ledger> = ledger
        .iter()
        .filter(|l| !alive.contains(&l.stroke_id))
        // And only from a layer the note still has. If the layer itself is
        // missing, the note is not what this expected — a half-loaded tree, a
        // page that did not come down — and "everything on it was erased" is
        // the wrong conclusion to draw from that.
        .filter(|l| layers.contains(&l.layer_id))
        .cloned()
        .collect();
    (added, removed, stale)
}

fn layer_ids(tree: &GenericTree) -> std::collections::HashSet<String> {
    tree.models
        .values()
        .filter(|m| m.model_type == "$layer")
        .filter_map(|m| m.props.get("layerId").and_then(Value::as_str))
        .map(str::to_string)
        .collect()
}

fn all_stroke_ids(tree: &GenericTree) -> std::collections::HashSet<String> {
    let mut out = std::collections::HashSet::new();
    for draw in tree.models.values() {
        if draw.model_type != "$draw" {
            continue;
        }
        for stroke in draw
            .props
            .get("strokes")
            .and_then(Value::as_array)
            .into_iter()
            .flatten()
        {
            if let Some(id) = stroke.get("id").and_then(Value::as_str) {
                out.insert(id.to_string());
            }
        }
    }
    out
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

    /// What `strokeToProp` writes for a stroke the user just drew: points and
    /// pen, and no bounding box — the app recomputes that on every read.
    fn freshly_drawn() -> Value {
        json!({
            "id": "local-2",
            "points": { "$points": [10.0, 20.0, 0.5, 0.0, 30.0, 50.0, 0.5, 8.0] },
            "color": "#1f1f1f",
            "width": 2.0,
            "penType": "ballpoint",
            "opacity": 1.0,
            "pressureSensitivity": 0.5,
        })
    }

    #[test]
    fn a_stroke_the_user_just_drew_has_its_box_worked_out() {
        // It has no `bounds`; refusing to send it made every save from the
        // editor fail.
        let (bytes, _) = add_stroke(
            &freshly_drawn(),
            "P1_[layer-forUser]_9",
            &mut IdGenerator::new(1),
            &author(),
            None,
        )
        .unwrap();
        let doc = parse_document(&bytes).unwrap();
        let e = find(&doc, "E");
        // The points span (10,20)-(30,50), grown by 1.5x the 2.0 pen width.
        let at = |key: &str| e.props[key].as_f64().unwrap();
        assert_eq!((at("BX"), at("BY"), at("BW"), at("BH")), (7.0, 17.0, 26.0, 36.0));
    }

    #[test]
    fn a_box_the_stroke_already_has_is_used_as_it_stands() {
        let doc = built();
        let e = find(&doc, "E");
        assert_eq!(e.props["BX"].as_f64(), Some(10.0));
        assert_eq!(e.props["BW"].as_f64(), Some(20.5));
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

    fn ledger(stroke_id: &str) -> Ledger {
        Ledger {
            stroke_id: stroke_id.into(),
            element_id: format!("el {stroke_id}"),
            layer_id: "P1_[layer-forUser]_9".into(),
        }
    }

    #[test]
    fn a_stroke_the_room_has_not_been_told_about_goes_out() {
        let tree = note_with(json!([{ "id": "a" }, { "id": "b" }]), "system:personal");
        let (added, removed, _) = changes(&tree, &[ledger("a")]);
        assert_eq!(added.len(), 1);
        assert_eq!(added[0].stroke_id, "b");
        assert_eq!(added[0].layer_id, "P1_[layer-forUser]_9");
        assert!(removed.is_empty());
    }

    #[test]
    fn a_stroke_no_longer_in_the_note_is_reported_as_erased() {
        let tree = note_with(json!([{ "id": "a" }]), "system:personal");
        let (added, removed, _) = changes(&tree, &[ledger("a"), ledger("gone")]);
        assert!(added.is_empty());
        assert_eq!(removed, vec![ledger("gone")]);
    }

    #[test]
    fn saving_does_not_turn_every_stroke_into_an_erasure() {
        // The editor rewrites a stroke's properties from its own model on
        // every save, keeping only what `strokeToProp` writes — id, points,
        // pen. A first version of this kept "already sent" *in the stroke*, so
        // the first save wiped the marks and the next send deleted the note's
        // entire contents for everyone in the class.
        let saved = json!([
            { "id": "a", "points": { "$points": [1.0, 2.0, 0.5, 0.0] }, "color": "#000000",
              "width": 2.0, "penType": "ballpoint", "opacity": 1.0 },
        ]);
        let tree = note_with(saved, "system:personal");
        let (added, removed, _) = changes(&tree, &[ledger("a")]);
        assert!(added.is_empty(), "nothing new to send");
        assert!(removed.is_empty(), "and nothing to erase");
    }

    #[test]
    fn a_stroke_moved_to_another_layer_has_not_been_erased() {
        let mut tree = note_with(json!([{ "id": "a" }]), "system:edit");
        // The ledger remembers it from when it was on a personal layer.
        let (added, removed, _) = changes(&tree, &[ledger("a")]);
        assert!(added.is_empty());
        assert!(removed.is_empty(), "still in the note, just not here");

        // Gone from the note entirely is a different matter.
        tree.models.get_mut("draw").unwrap().props = json!({ "strokes": [] });
        let (_, removed, _) = changes(&tree, &[ledger("a")]);
        assert_eq!(removed.len(), 1);
    }

    #[test]
    fn a_layer_the_room_has_no_booth_for_is_not_sent_from() {
        let tree = note_with(json!([{ "id": "a" }]), "system:edit");
        let (added, _, _) = changes(&tree, &[]);
        assert!(added.is_empty());
    }

    #[test]
    fn a_stroke_with_no_id_of_its_own_is_left_alone() {
        // There would be no way to tell it from the next one after a save.
        let tree = note_with(json!([{ "points": { "$points": [1.0, 2.0] } }]), "system:personal");
        assert!(changes(&tree, &[]).0.is_empty());
    }
}

#[cfg(test)]
mod guard_tests {
    use super::*;
    use crate::model::GenericModel;

    #[test]
    fn nothing_is_erased_from_a_layer_the_note_does_not_have() {
        // A note that did not load the way this expects — a page that never
        // came down, a tree read mid-write — must not be read as "the user
        // erased all of it". Getting that wrong once deleted a class note's
        // contents for everyone in it.
        let tree = GenericTree::new("root", "$sharenote");
        let ledger = vec![Ledger {
            stroke_id: "a".into(),
            element_id: "el a".into(),
            layer_id: "P1_[layer-forUser]_9".into(),
        }];
        let (added, removed, _) = changes(&tree, &ledger);
        assert!(added.is_empty());
        assert!(removed.is_empty(), "an absent layer is not an erasure");
    }

    #[test]
    fn an_empty_layer_that_is_still_there_does_mean_erased() {
        let mut tree = GenericTree::new("root", "$sharenote");
        tree.insert(GenericModel {
            id: "layer".into(),
            parent_id: Some("root".into()),
            model_type: "$layer".into(),
            props: json!({ "layerId": "P1_[layer-forUser]_9", "layerType": "system:personal" }),
            children: Vec::new(),
        });
        let ledger = vec![Ledger {
            stroke_id: "a".into(),
            element_id: "el a".into(),
            layer_id: "P1_[layer-forUser]_9".into(),
        }];
        assert_eq!(changes(&tree, &ledger).1.len(), 1);
    }
}

#[cfg(test)]
mod stale_tests {
    use super::*;
    use crate::model::GenericModel;

    fn note_with_layer(layer_id: &str) -> GenericTree {
        let mut tree = GenericTree::new("root", "$sharenote");
        tree.insert(GenericModel {
            id: "layer".into(),
            parent_id: Some("root".into()),
            model_type: "$layer".into(),
            props: json!({ "layerId": layer_id, "layerType": "system:personal" }),
            children: Vec::new(),
        });
        tree.insert(GenericModel {
            id: "draw".into(),
            parent_id: Some("layer".into()),
            model_type: "$draw".into(),
            props: json!({ "strokes": [{ "id": "a" }] }),
            children: Vec::new(),
        });
        tree
    }

    #[test]
    fn a_layer_named_the_way_the_room_names_them_is_sendable() {
        let tree = note_with_layer("__subId_v2_[x]_[page]_4_[layer-forUser]_9");
        let (added, _, stale) = changes(&tree, &[]);
        assert_eq!(added.len(), 1);
        assert_eq!(stale, 0);
    }

    #[test]
    fn a_layer_this_app_named_itself_is_reported_rather_than_posted() {
        // A note taken by a build that overwrote the classroom's names with
        // its own model ids. Posting to that name reaches nobody, and looks
        // from the outside exactly like sending working.
        let tree = note_with_layer("note_abc_l___subId_v2__x___page__4__layer_forUser__9");
        let (added, _, stale) = changes(&tree, &[]);
        assert!(added.is_empty());
        assert_eq!(stale, 1);
    }
}
