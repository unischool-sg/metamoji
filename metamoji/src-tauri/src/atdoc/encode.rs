//! `PlainValueSerializer`, the other way round.
//!
//! The inverse of `value.rs`, and it has to be exact rather than merely
//! readable-by-us: what this produces is read by the original app on a
//! teacher's tablet. Two rules that are not obvious from the decoder:
//!
//!  * an integral number is written in the **narrowest** of `Y`/`W`/`D` that
//!    holds it, and anything non-integral is a double (`detectNumberType` /
//!    `detectNumberType2`, PlainValueSerializer.smali:83-181). Writing every
//!    integer as `D` would decode back to the same value, but it would not be
//!    the same bytes, and "same bytes for the same document" is the only cheap
//!    check we have that this encoder is right.
//!  * map keys are escaped with `\x1b\x07`: an empty key *is* that literal, and
//!    a key that already starts with it gets another copy.

use serde_json::{Map, Value};

use super::value::{
    TAG_ARRAY, TAG_BLOB, TAG_BOOL, TAG_BYTE, TAG_DWORD, TAG_FLOAT, TAG_MAP, TAG_MODEL, TAG_NULL,
    TAG_POINTS, TAG_STRING, TAG_WORD,
};
use crate::error::{AppError, AppResult};

/// `MMJMD_MAP_KEY_META`.
const MAP_KEY_META: &[u8] = &[0x1b, 0x07];

/// Resolves a model reference to its index in the table being written.
pub trait RefIndex {
    fn index_of(&self, model_id: &str) -> Option<u32>;
}

impl<F: Fn(&str) -> Option<u32>> RefIndex for F {
    fn index_of(&self, model_id: &str) -> Option<u32> {
        self(model_id)
    }
}

pub fn write_value(value: &Value, refs: &impl RefIndex, out: &mut Vec<u8>) -> AppResult<()> {
    match value {
        Value::Null => out.push(TAG_NULL),
        Value::Bool(b) => {
            out.push(TAG_BOOL);
            out.push(u8::from(*b));
        }
        Value::Number(n) => write_number(n.as_f64().unwrap_or(0.0), out),
        Value::String(s) => {
            out.push(TAG_STRING);
            write_cstring(s, out);
        }
        Value::Array(items) => {
            out.push(TAG_ARRAY);
            out.extend_from_slice(&(items.len() as u32).to_le_bytes());
            for item in items {
                write_value(item, refs, out)?;
            }
        }
        Value::Object(map) => write_object(map, refs, out)?,
    }
    Ok(())
}

fn write_number(v: f64, out: &mut Vec<u8>) {
    // Integral and in range? Then it is an integer, in the narrowest width.
    if v.fract() == 0.0 && v.is_finite() {
        if (-128.0..=127.0).contains(&v) {
            out.push(TAG_BYTE);
            out.push((v as i8) as u8);
            return;
        }
        if (-32768.0..=32767.0).contains(&v) {
            out.push(TAG_WORD);
            out.extend_from_slice(&(v as i16).to_le_bytes());
            return;
        }
        if (-2_147_483_648.0..=2_147_483_647.0).contains(&v) {
            out.push(TAG_DWORD);
            out.extend_from_slice(&(v as i32).to_le_bytes());
            return;
        }
    }
    out.push(TAG_FLOAT);
    out.extend_from_slice(&v.to_le_bytes());
}

/// The four shapes `value.rs` decodes into an object, plus a plain map.
fn write_object(map: &Map<String, Value>, refs: &impl RefIndex, out: &mut Vec<u8>) -> AppResult<()> {
    if let Some(target) = map.get("$ref") {
        let index = match target {
            Value::String(id) => refs.index_of(id).ok_or_else(|| {
                AppError::other(format!("参照先のモデルが見つかりません: {id}"))
            })?,
            Value::Number(n) => n.as_u64().unwrap_or(0) as u32,
            _ => return Err(AppError::other("モデル参照の形式が不正です")),
        };
        out.push(TAG_MODEL);
        out.extend_from_slice(&index.to_le_bytes());
        return Ok(());
    }

    if let Some(Value::String(payload)) = map.get("$blob") {
        use base64::Engine as _;
        let bytes = base64::engine::general_purpose::STANDARD
            .decode(payload)
            .map_err(|e| AppError::other(format!("添付データを復元できません: {e}")))?;
        let mime = map.get("$mime").and_then(Value::as_str).unwrap_or("");
        out.push(TAG_BLOB);
        write_cstring(mime, out);
        out.extend_from_slice(&(bytes.len() as u32).to_le_bytes());
        out.extend_from_slice(&bytes);
        return Ok(());
    }

    if map.contains_key("$asset") {
        return Err(AppError::other(
            "アセット参照のままでは書き出せません。先に実体を埋め戻してください",
        ));
    }

    if let Some(Value::Array(coords)) = map.get("$points") {
        out.push(TAG_POINTS);
        out.extend_from_slice(&((coords.len() * 4) as u32).to_le_bytes());
        for coord in coords {
            let v = coord.as_f64().unwrap_or(0.0) as f32;
            out.extend_from_slice(&v.to_le_bytes());
        }
        return Ok(());
    }

    out.push(TAG_MAP);
    for (key, value) in map {
        write_map_key(key, out);
        write_value(value, refs, out)?;
    }
    // A zero where a key would start ends the map.
    out.push(0);
    Ok(())
}

fn write_map_key(key: &str, out: &mut Vec<u8>) {
    let bytes = key.as_bytes();
    if key.is_empty() || bytes.starts_with(MAP_KEY_META) {
        out.extend_from_slice(MAP_KEY_META);
    }
    out.extend_from_slice(bytes);
    out.push(0);
}

fn write_cstring(text: &str, out: &mut Vec<u8>) {
    // A NUL inside the string would end it early and silently truncate.
    out.extend(text.bytes().filter(|b| *b != 0));
    out.push(0);
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::atdoc::value::read_value;
    use crate::atdoc::reader::Reader;
    use serde_json::json;

    fn no_refs(_: &str) -> Option<u32> {
        None
    }

    fn encode(value: &Value) -> Vec<u8> {
        let mut out = Vec::new();
        write_value(value, &no_refs, &mut out).unwrap();
        out
    }

    fn roundtrip(value: Value) -> Value {
        let bytes = encode(&value);
        let mut r = Reader::new(&bytes);
        read_value(&mut r).unwrap()
    }

    #[test]
    fn scalars_survive_a_round_trip() {
        for value in [
            json!(null),
            json!(true),
            json!(false),
            json!(0),
            json!(-128),
            json!(127),
            json!(32767),
            json!(-2_147_483_648i64),
            json!(3.5),
            json!("こんにちは"),
            json!(""),
        ] {
            assert_eq!(roundtrip(value.clone()), value, "{value}");
        }
    }

    #[test]
    fn an_integer_takes_the_narrowest_width_the_original_would_use() {
        // Not cosmetic: it is what makes a re-encoded document byte-comparable
        // with the one the server sent.
        assert_eq!(encode(&json!(5))[0], TAG_BYTE);
        assert_eq!(encode(&json!(200))[0], TAG_WORD);
        assert_eq!(encode(&json!(70_000))[0], TAG_DWORD);
        assert_eq!(encode(&json!(5.5))[0], TAG_FLOAT);
        assert_eq!(encode(&json!(3_000_000_000u64))[0], TAG_FLOAT);
    }

    #[test]
    fn containers_survive_a_round_trip() {
        let value = json!({
            "a": [1, 2, {"b": "c"}],
            "": "empty key",
            "nested": {"deep": {"deeper": true}},
        });
        assert_eq!(roundtrip(value.clone()), value);
    }

    #[test]
    fn a_key_that_looks_like_the_escape_is_escaped_again() {
        let key = "\u{1b}\u{7}real";
        let value = json!({ key: 1 });
        assert_eq!(roundtrip(value.clone()), value);
    }

    #[test]
    fn a_blob_keeps_its_bytes_and_its_mime_type() {
        let value = json!({ "$blob": "AQIDBA==", "$mime": "image/png" });
        assert_eq!(roundtrip(value.clone()), value);
    }

    #[test]
    fn points_survive_as_float32() {
        let value = json!({ "$points": [1.5, -2.25, 3.0, 4.0] });
        assert_eq!(roundtrip(value.clone()), value);
    }

    #[test]
    fn a_model_reference_is_written_as_the_index_it_resolves_to() {
        let mut out = Vec::new();
        let refs = |id: &str| if id == "n_m7" { Some(7) } else { None };
        write_value(&json!({ "$ref": "n_m7" }), &refs, &mut out).unwrap();
        assert_eq!(out, vec![TAG_MODEL, 7, 0, 0, 0]);
    }

    #[test]
    fn an_unresolvable_reference_is_an_error_rather_than_a_zero() {
        // Index 0 is the root. Silently writing it would reparent someone's
        // ink onto the document itself.
        let mut out = Vec::new();
        let err = write_value(&json!({ "$ref": "gone" }), &no_refs, &mut out).unwrap_err();
        assert!(err.to_string().contains("gone"), "{err}");
    }

    #[test]
    fn an_unresolved_asset_reference_refuses_rather_than_writing_a_hole() {
        let mut out = Vec::new();
        assert!(write_value(&json!({ "$asset": "t" }), &no_refs, &mut out).is_err());
    }
}
