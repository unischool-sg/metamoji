//! Folding the drawing-engine element graph into stroke lists.
//!
//! The original keeps ink in a small graph of its own, hung off a `$draw` unit
//! by a *reference* property rather than by the child list — the module node's
//! `parent` is -1, so a plain tree walk finds nothing. That is why ink looks
//! absent at first inspection.
//!
//! Property names come from the `MODEL_PROPERTY_*` constants in
//! `apk/smali_classes3/com/metamoji/un/draw2/module/element/`:
//!
//!   `DrElement`            "E"  — `T` element type, `BX/BY/BW/BH` bounds
//!   `DrPointsBaseElement`       — `P` points, `TA/TB/TC/TD/TX/TY` transform
//!   `DrStrokeElement`           — `t` stroke type, `p` pen-style reference
//!   `DrStPenStyle`         "S"  — `C` colour, `W` width, `A` alpha, `P` pen type
//!
//! `DrElementType::STROKE` is 1; `DrStPenType` is SIMPLE 0, CALLIGRAPHIC 1,
//! FOUNTAIN 2, ARROW 3.

use std::collections::{HashMap, HashSet};

use serde_json::{json, Map, Value};

use super::container::ParsedDocument;
use crate::model::GenericTree;

const ELEMENT_TYPE_STROKE: i64 = 1;

/// Attaches recovered strokes to their `$draw` units and returns how many were
/// recovered in total.
pub fn attach_strokes(
    tree: &mut GenericTree,
    parsed: &ParsedDocument,
    id_for: &impl Fn(usize) -> String,
) -> usize {
    let styles = collect_pen_styles(parsed);
    let draw_indices: Vec<usize> = parsed
        .models
        .iter()
        .filter(|(_, m)| m.model_type == "$draw")
        .map(|(i, _)| *i)
        .collect();

    let mut total = 0usize;
    let mut claimed: HashSet<usize> = HashSet::new();

    for draw_index in draw_indices {
        let mut strokes = Vec::new();
        for element in reachable_stroke_elements(parsed, draw_index) {
            if !claimed.insert(element) {
                continue; // an element belongs to one unit only
            }
            if let Some(stroke) = build_stroke(parsed, element, &styles, id_for) {
                strokes.push(stroke);
            }
        }
        if strokes.is_empty() {
            continue;
        }
        total += strokes.len();
        if let Some(node) = tree.models.get_mut(&id_for(draw_index)) {
            if let Value::Object(props) = &mut node.props {
                props.insert("strokes".into(), Value::Array(strokes));
                // A view of the element graph, not a property of the unit. The
                // elements are still there as models; writing this back would
                // add a property the original never had, next to the data it
                // was derived from.
                crate::atdoc::mark_injected(props, &["strokes"]);
            }
        }
    }

    total
}

/// Every stroke element reachable from a `$draw` unit, following both child
/// links and `$ref` property edges. The graph is a DAG, so visited nodes are
/// tracked rather than assuming a tree.
fn reachable_stroke_elements(parsed: &ParsedDocument, start: usize) -> Vec<usize> {
    let mut visited: HashSet<usize> = HashSet::new();
    let mut stack = vec![start];
    let mut found = Vec::new();

    while let Some(index) = stack.pop() {
        if !visited.insert(index) {
            continue;
        }
        let Some(model) = parsed.models.get(&index) else {
            continue;
        };

        if is_stroke_element(&model.props) {
            found.push(index);
        }

        if let Some(children) = parsed.children.get(&(index as i32)) {
            stack.extend(children.iter().copied());
        }
        for referenced in collect_refs(&model.props) {
            stack.push(referenced);
        }
    }

    // Restore document order — the DFS above visits in whatever order the stack
    // happens to produce, and stroke order is paint order.
    found.sort_unstable();
    found
}

pub(crate) fn is_stroke_element(props: &Value) -> bool {
    let Some(map) = props.as_object() else {
        return false;
    };
    if !map.contains_key("P") {
        return false;
    }
    // `P` on a pen style is the pen type (a number); on an element it is the
    // point array. Only the latter counts.
    let has_points = map
        .get("P")
        .and_then(|v| v.as_object())
        .is_some_and(|o| o.contains_key("$points"));
    if !has_points {
        return false;
    }
    match map.get("T").and_then(Value::as_i64) {
        Some(t) => t == ELEMENT_TYPE_STROKE,
        // Older elements omit `T`; a point array is evidence enough.
        None => true,
    }
}

fn collect_refs(value: &Value) -> Vec<usize> {
    let mut out = Vec::new();
    walk_refs(value, &mut out);
    out
}

fn walk_refs(value: &Value, out: &mut Vec<usize>) {
    match value {
        Value::Object(map) => {
            if let Some(Value::Number(n)) = map.get("$ref") {
                if let Some(i) = n.as_u64() {
                    out.push(i as usize);
                }
                return;
            }
            for v in map.values() {
                walk_refs(v, out);
            }
        }
        Value::Array(items) => {
            for v in items {
                walk_refs(v, out);
            }
        }
        _ => {}
    }
}

#[derive(Debug, Clone)]
pub(crate) struct PenStyle {
    color: String,
    width: f64,
    alpha: f64,
    pen_type: i64,
}

impl Default for PenStyle {
    fn default() -> Self {
        Self {
            color: "#1f1f1f".into(),
            width: 2.4,
            alpha: 1.0,
            pen_type: 0,
        }
    }
}

pub(crate) fn collect_pen_styles(parsed: &ParsedDocument) -> HashMap<usize, PenStyle> {
    let mut out = HashMap::new();
    for (index, model) in &parsed.models {
        let Some(map) = model.props.as_object() else {
            continue;
        };
        // A pen style carries a colour string and a numeric width; an element
        // carries a point array. That distinction is enough to tell them apart
        // without relying on the model-type dictionary being present.
        let Some(color) = map.get("C").and_then(Value::as_str) else {
            continue;
        };
        let Some(width) = map.get("W").and_then(Value::as_f64) else {
            continue;
        };
        out.insert(
            *index,
            PenStyle {
                color: normalize_color(color),
                width,
                alpha: map.get("A").and_then(Value::as_f64).unwrap_or(1.0),
                pen_type: map.get("P").and_then(Value::as_i64).unwrap_or(0),
            },
        );
    }
    out
}

/// Colours are stored as bare hex (`"ffbf47"`), sometimes with alpha.
fn normalize_color(raw: &str) -> String {
    let hex: String = raw.trim_start_matches('#').chars().take(8).collect();
    match hex.len() {
        6 => format!("#{hex}"),
        // 8 digits are AARRGGBB; alpha travels separately in `A`.
        8 => format!("#{}", &hex[2..]),
        3 => format!("#{hex}"),
        _ => "#1f1f1f".to_string(),
    }
}

fn pen_type_name(pen_type: i64) -> &'static str {
    match pen_type {
        1 => "marker",     // CALLIGRAPHIC
        2 => "fountain",   // FOUNTAIN
        _ => "ballpoint",  // SIMPLE / ARROW
    }
}

pub(crate) fn build_stroke(
    parsed: &ParsedDocument,
    index: usize,
    styles: &HashMap<usize, PenStyle>,
    id_for: &impl Fn(usize) -> String,
) -> Option<Value> {
    let model = parsed.models.get(&index)?;
    let map = model.props.as_object()?;

    let coords = map
        .get("P")
        .and_then(|v| v.as_object())
        .and_then(|o| o.get("$points"))
        .and_then(Value::as_array)?;
    if coords.len() < 4 {
        return None;
    }

    let style = map
        .get("p")
        .and_then(|v| v.as_object())
        .and_then(|o| o.get("$ref"))
        .and_then(Value::as_u64)
        .and_then(|r| styles.get(&(r as usize)))
        .cloned()
        .unwrap_or_default();

    // The element carries an affine transform; apply it so imported ink lands
    // where the original drew it.
    let tf = Affine::from_props(map);

    // Our stroke points are [x, y, pressure, t]; the source has x/y only.
    // Pressure is genuinely absent from the format, so it is held constant and
    // width comes from the pen style instead.
    let mut flat: Vec<Value> = Vec::with_capacity(coords.len() * 2);
    let mut min_x = f64::INFINITY;
    let mut min_y = f64::INFINITY;
    let mut max_x = f64::NEG_INFINITY;
    let mut max_y = f64::NEG_INFINITY;

    for (i, pair) in coords.chunks_exact(2).enumerate() {
        let (x, y) = tf.apply(
            pair[0].as_f64().unwrap_or(0.0),
            pair[1].as_f64().unwrap_or(0.0),
        );
        min_x = min_x.min(x);
        min_y = min_y.min(y);
        max_x = max_x.max(x);
        max_y = max_y.max(y);
        flat.push(json!(x));
        flat.push(json!(y));
        flat.push(json!(0.5));
        // No timestamps in the source; a synthetic ramp keeps ordering meaningful.
        flat.push(json!(i as f64 * 8.0));
    }

    if !min_x.is_finite() {
        return None;
    }

    let pad = style.width * 1.5;
    let mut out = Map::new();
    out.insert("id".into(), Value::String(id_for(index)));
    out.insert("points".into(), json!({ "$points": flat }));
    out.insert("color".into(), Value::String(style.color));
    out.insert("width".into(), json!(style.width.max(0.2)));
    out.insert(
        "penType".into(),
        Value::String(pen_type_name(style.pen_type).into()),
    );
    out.insert("opacity".into(), json!(style.alpha.clamp(0.0, 1.0)));
    // Imported ink has no pressure, so pressure sensitivity is switched off
    // rather than modulating a constant.
    out.insert("pressureSensitivity".into(), json!(0.0));
    out.insert(
        "bounds".into(),
        json!({
            "x": min_x - pad,
            "y": min_y - pad,
            "width": (max_x - min_x) + pad * 2.0,
            "height": (max_y - min_y) + pad * 2.0,
        }),
    );
    Some(Value::Object(out))
}

/// The 2x3 affine the drawing engine stores per element.
struct Affine {
    a: f64,
    b: f64,
    c: f64,
    d: f64,
    tx: f64,
    ty: f64,
}

impl Affine {
    fn from_props(map: &Map<String, Value>) -> Self {
        let get = |k: &str, default: f64| map.get(k).and_then(Value::as_f64).unwrap_or(default);
        Self {
            a: get("TA", 1.0),
            b: get("TB", 0.0),
            c: get("TC", 0.0),
            d: get("TD", 1.0),
            tx: get("TX", 0.0),
            ty: get("TY", 0.0),
        }
    }

    fn apply(&self, x: f64, y: f64) -> (f64, f64) {
        (
            self.a * x + self.c * y + self.tx,
            self.b * x + self.d * y + self.ty,
        )
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn normalizes_colour_forms() {
        assert_eq!(normalize_color("ffbf47"), "#ffbf47");
        assert_eq!(normalize_color("#ffbf47"), "#ffbf47");
        // AARRGGBB drops the alpha, which travels in `A`.
        assert_eq!(normalize_color("80ffbf47"), "#ffbf47");
        assert_eq!(normalize_color("zz"), "#1f1f1f");
    }

    #[test]
    fn maps_pen_type_ordinals_to_names() {
        assert_eq!(pen_type_name(0), "ballpoint");
        assert_eq!(pen_type_name(1), "marker");
        assert_eq!(pen_type_name(2), "fountain");
    }

    #[test]
    fn a_point_array_identifies_a_stroke_element() {
        let props = json!({ "T": 1, "P": { "$points": [0.0, 0.0, 1.0, 1.0] } });
        assert!(is_stroke_element(&props));
    }

    #[test]
    fn a_pen_style_is_not_mistaken_for_a_stroke_element() {
        // A pen style also has a `P`, but it is the pen type, not points.
        let props = json!({ "C": "ffbf47", "W": 2.8, "A": 0.17, "P": 0 });
        assert!(!is_stroke_element(&props));
    }

    #[test]
    fn a_non_stroke_element_type_is_rejected() {
        let props = json!({ "T": 2, "P": { "$points": [0.0, 0.0] } });
        assert!(!is_stroke_element(&props));
    }

    #[test]
    fn the_identity_transform_leaves_points_alone() {
        let tf = Affine::from_props(json!({}).as_object().unwrap());
        assert_eq!(tf.apply(3.0, 4.0), (3.0, 4.0));
    }

    #[test]
    fn a_translation_transform_is_applied_to_points() {
        let props = json!({ "TX": 10.0, "TY": 20.0 });
        let tf = Affine::from_props(props.as_object().unwrap());
        assert_eq!(tf.apply(1.0, 2.0), (11.0, 22.0));
    }

    #[test]
    fn collects_reference_targets_from_nested_properties() {
        let value = json!({ "M": { "$ref": 4 }, "list": [{ "$ref": 9 }] });
        let mut refs = collect_refs(&value);
        refs.sort_unstable();
        assert_eq!(refs, vec![4, 9]);
    }
}
