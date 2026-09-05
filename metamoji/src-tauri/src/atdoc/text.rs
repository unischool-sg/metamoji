//! The text body, which does not live in the property map.
//!
//! A `$text` model's block holds its properties and then a second, untagged
//! encoding: `DataArchiver` (`apk/smali_classes2/com/metamoji/cm/DataArchiver.smali`),
//! a plain little-endian reader whose only subtlety is strings — an `int16`
//! tag (1 for present, 0 for null), an `int32` byte length, and the bytes
//! padded up to an even count.
//!
//! The layout of a text unit's archive, in order:
//!
//! ```text
//! int32                   length of the style block
//!   string                font family        \
//!   float32               size                |
//!   int16                                     |  TextModel
//!   4x float32            colour              |  .serializeTextUnitStyle
//!   5x float32                                |
//!   2x int32                                  |
//!   int16                                     |
//!   4x float32            background colour   /
//! 3x int32                                    TextModel's own preamble
//! int32                   length of the string block \  ImmutableStringWithStrokes
//!   string                the text                   /  .serialize
//! ```
//!
//! The three `int32`s were read off the wire rather than out of the smali: the
//! writer that produces them is not `TextModel` itself and was not found. They
//! are the same three in all 114 text units seen — every text unit in the
//! sampled documents, and every text Direction captured from a live room — so
//! they are treated as a fixed preamble and the decode is abandoned rather
//! than guessed at when the shape does not hold.

use serde_json::{Map, Value};

/// What a text unit's archive says, as far as this reads it.
#[derive(Debug, Clone, PartialEq)]
pub struct TextBody {
    pub text: String,
    pub font_family: Option<String>,
    pub font_size: Option<f64>,
    pub color: Option<String>,
}

struct Archive<'a> {
    bytes: &'a [u8],
    at: usize,
}

impl<'a> Archive<'a> {
    fn new(bytes: &'a [u8]) -> Self {
        Self { bytes, at: 0 }
    }

    fn take(&mut self, n: usize) -> Option<&'a [u8]> {
        let out = self.bytes.get(self.at..self.at + n)?;
        self.at += n;
        Some(out)
    }

    fn i32(&mut self) -> Option<i32> {
        Some(i32::from_le_bytes(self.take(4)?.try_into().ok()?))
    }

    fn i16(&mut self) -> Option<i16> {
        Some(i16::from_le_bytes(self.take(2)?.try_into().ok()?))
    }

    fn f32(&mut self) -> Option<f32> {
        Some(f32::from_le_bytes(self.take(4)?.try_into().ok()?))
    }

    /// `DataArchiver.readString`: a tag, then UTF-8 padded to an even length.
    fn string(&mut self) -> Option<Option<String>> {
        match self.i16()? {
            1 => {}
            // 0 is an explicit null, and anything else is a shape we do not
            // know — both mean "no string", not "keep reading".
            _ => return Some(None),
        }
        let len = self.i32()?.max(0) as usize;
        let padded = (len + 1) & !1;
        let bytes = self.take(padded)?;
        Some(String::from_utf8(bytes[..len].to_vec()).ok())
    }
}

/// Reads a text unit's trailing archive.
pub fn decode(tail: &[u8]) -> Option<TextBody> {
    let mut r = Archive::new(tail);

    let style_len = r.i32()?.max(0) as usize;
    let style_end = r.at + style_len;
    let style = read_style(&mut r);
    if style_end > tail.len() {
        return None;
    }
    r.at = style_end;

    // The three that are not accounted for by any writer we located.
    for _ in 0..3 {
        r.i32()?;
    }

    let _block_len = r.i32()?;
    let text = r.string()??;

    let (font_family, font_size, color) = style;
    Some(TextBody {
        text,
        font_family,
        font_size,
        color,
    })
}

/// The style block. Read best-effort: a text unit with no body is still worth
/// its font, and a font we cannot read does not stop the body.
fn read_style(r: &mut Archive) -> (Option<String>, Option<f64>, Option<String>) {
    let family = r.string().flatten().filter(|f| !f.is_empty());
    let size = r.f32().map(f64::from).filter(|s| *s > 0.0);
    let _ = r.i16();
    let color = read_color(r);
    (family, size, color)
}

fn read_color(r: &mut Archive) -> Option<String> {
    let red = r.f32()?;
    let green = r.f32()?;
    let blue = r.f32()?;
    let _alpha = r.f32()?;
    let byte = |v: f32| (v.clamp(0.0, 1.0) * 255.0).round() as u8;
    Some(format!(
        "#{:02x}{:02x}{:02x}",
        byte(red),
        byte(green),
        byte(blue)
    ))
}

/// Adds what the archive says to a text unit's properties.
///
/// The archive stays the truth — it is what gets written back — so everything
/// put here is marked as this app's own addition and stripped again on the way
/// out. Without it a text unit imports as an empty box in the right place,
/// which is what every text unit did until this existed.
pub fn apply_to_props(props: &mut Map<String, Value>, tail: &[u8]) {
    let Some(body) = decode(tail) else {
        return;
    };

    let mut added = vec!["text"];
    props.insert("text".into(), Value::String(body.text));
    if let Some(family) = body.font_family {
        props.insert("fontFamily".into(), Value::String(family));
        added.push("fontFamily");
    }
    if let Some(size) = body.font_size {
        if let Some(number) = serde_json::Number::from_f64(size) {
            props.insert("fontSize".into(), Value::Number(number));
            added.push("fontSize");
        }
    }
    if let Some(color) = body.color {
        props.insert("color".into(), Value::String(color));
        added.push("color");
    }
    super::mark_injected(props, &added);
}

#[cfg(test)]
mod tests {
    use super::*;

    /// Builds an archive the way the original writes one.
    fn archive(font: &str, size: f32, rgb: [f32; 3], text: &str) -> Vec<u8> {
        let mut style = Vec::new();
        push_string(&mut style, font);
        style.extend_from_slice(&size.to_le_bytes());
        style.extend_from_slice(&0i16.to_le_bytes());
        for channel in rgb {
            style.extend_from_slice(&channel.to_le_bytes());
        }
        style.extend_from_slice(&1.0f32.to_le_bytes());
        for _ in 0..5 {
            style.extend_from_slice(&0.0f32.to_le_bytes());
        }
        for _ in 0..2 {
            style.extend_from_slice(&0i32.to_le_bytes());
        }
        style.extend_from_slice(&0i16.to_le_bytes());
        for _ in 0..4 {
            style.extend_from_slice(&1.0f32.to_le_bytes());
        }

        let mut out = Vec::new();
        out.extend_from_slice(&(style.len() as i32).to_le_bytes());
        out.extend_from_slice(&style);
        for _ in 0..3 {
            out.extend_from_slice(&1i32.to_le_bytes());
        }
        let mut block = Vec::new();
        push_string(&mut block, text);
        out.extend_from_slice(&(block.len() as i32).to_le_bytes());
        out.extend_from_slice(&block);
        out
    }

    fn push_string(out: &mut Vec<u8>, text: &str) {
        out.extend_from_slice(&1i16.to_le_bytes());
        out.extend_from_slice(&(text.len() as i32).to_le_bytes());
        out.extend_from_slice(text.as_bytes());
        if text.len() % 2 == 1 {
            out.push(0);
        }
    }

    #[test]
    fn reads_the_body_and_the_style() {
        let bytes = archive("UDDigiKyokasho ProN", 12.0, [0.0, 0.0, 0.0], "壁が人から受ける力");
        let body = decode(&bytes).expect("decodes");
        assert_eq!(body.text, "壁が人から受ける力");
        assert_eq!(body.font_family.as_deref(), Some("UDDigiKyokasho ProN"));
        assert_eq!(body.font_size, Some(12.0));
        assert_eq!(body.color.as_deref(), Some("#000000"));
    }

    #[test]
    fn an_odd_length_string_is_padded_and_still_reads() {
        // The padding is the one thing a naive reader gets wrong, and it only
        // shows up on odd-length text.
        let bytes = archive("A", 10.0, [1.0, 0.0, 0.0], "abc");
        assert_eq!(decode(&bytes).unwrap().text, "abc");
        assert_eq!(decode(&bytes).unwrap().color.as_deref(), Some("#ff0000"));
    }

    #[test]
    fn an_empty_body_is_a_body() {
        let bytes = archive("A", 10.0, [0.0, 0.0, 0.0], "");
        assert_eq!(decode(&bytes).unwrap().text, "");
    }

    #[test]
    fn a_truncated_archive_is_none_rather_than_a_panic() {
        let full = archive("A", 10.0, [0.0, 0.0, 0.0], "text");
        for cut in 0..full.len() {
            let _ = decode(&full[..cut]);
        }
        assert!(decode(&[]).is_none());
        assert!(decode(&[9, 9, 9]).is_none());
    }

    #[test]
    fn a_style_block_longer_than_the_data_is_refused() {
        let mut bytes = archive("A", 10.0, [0.0, 0.0, 0.0], "text");
        bytes[..4].copy_from_slice(&9999i32.to_le_bytes());
        assert!(decode(&bytes).is_none());
    }

    #[test]
    fn the_properties_it_adds_are_marked_as_ours() {
        // They are a reading of the archive, not properties of the model; the
        // archive is what gets written back.
        let mut props = Map::new();
        apply_to_props(&mut props, &archive("A", 9.0, [0.0, 0.0, 0.0], "hi"));
        assert_eq!(props["text"], Value::String("hi".into()));
        let injected = props["$atdoc"]["injected"].as_array().unwrap();
        assert!(injected.contains(&Value::String("text".into())));
        assert!(injected.contains(&Value::String("fontSize".into())));
    }
}
