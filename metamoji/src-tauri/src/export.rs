//! PDF and image export.
//!
//! docs/11 §8 recommends using an existing PDF crate rather than reproducing the
//! original's hand-written writer, so this wraps `printpdf`.
//!
//! Pages arrive already rasterised by the frontend. That is a deliberate
//! trade-off: emitting vector text would mean embedding a CJK font and
//! reimplementing the canvas renderer's line breaking in Rust, and any
//! disagreement between the two shows up as an export that does not match what
//! the user saw. Rasterising the same renderer that draws the screen makes the
//! output correct by construction. The cost is file size and non-selectable
//! text, which is why the export DPI is a parameter.

use base64::Engine as _;
use printpdf::{Image, ImageTransform, Mm, PdfDocument, Px};
use serde::Deserialize;

use crate::error::{AppError, AppResult};

/// 1 pt = 1/72 inch; our document units are px at 150 dpi (see A4_WIDTH).
const DOC_DPI: f64 = 150.0;
const MM_PER_INCH: f64 = 25.4;

#[derive(Debug, Deserialize)]
pub struct ExportPage {
    /// PNG data URL of the rendered page.
    #[serde(rename = "dataUrl")]
    pub data_url: String,
    /// Page size in document units.
    pub width: f64,
    pub height: f64,
}

fn doc_units_to_mm(units: f64) -> f64 {
    units / DOC_DPI * MM_PER_INCH
}

fn decode_png(data_url: &str) -> AppResult<Vec<u8>> {
    let payload = data_url
        .split_once(",")
        .map(|(_, rest)| rest)
        .ok_or_else(|| AppError::other("page image is not a data URL"))?;
    base64::engine::general_purpose::STANDARD
        .decode(payload)
        .map_err(|e| AppError::other(format!("page image is not valid base64: {e}")))
}

pub fn write_pdf(path: &str, title: &str, pages: &[ExportPage]) -> AppResult<()> {
    if pages.is_empty() {
        return Err(AppError::other("nothing to export"));
    }

    let first = &pages[0];
    let (doc, page_index, layer_index) = PdfDocument::new(
        title,
        Mm(doc_units_to_mm(first.width) as f32),
        Mm(doc_units_to_mm(first.height) as f32),
        "layer",
    );

    for (i, page) in pages.iter().enumerate() {
        let (page_ref, layer_ref) = if i == 0 {
            (page_index, layer_index)
        } else {
            doc.add_page(
                Mm(doc_units_to_mm(page.width) as f32),
                Mm(doc_units_to_mm(page.height) as f32),
                "layer",
            )
        };

        let png = decode_png(&page.data_url)?;
        let decoded = image::load_from_memory_with_format(&png, image::ImageFormat::Png)
            .map_err(|e| AppError::other(format!("page {} image is unreadable: {e}", i + 1)))?
            .to_rgb8();

        let (px_w, px_h) = decoded.dimensions();
        let image = Image::from(printpdf::ImageXObject {
            width: Px(px_w as usize),
            height: Px(px_h as usize),
            color_space: printpdf::ColorSpace::Rgb,
            bits_per_component: printpdf::ColorBits::Bit8,
            interpolate: true,
            image_data: decoded.into_raw(),
            image_filter: None,
            clipping_bbox: None,
            smask: None,
        });

        // Scale so the raster exactly covers the page, whatever DPI it was
        // rendered at. Deriving the DPI from the pixel count rather than
        // trusting a passed-in value keeps the two from drifting apart.
        let dpi = px_w as f64 / (doc_units_to_mm(page.width) / MM_PER_INCH);
        image.add_to_layer(
            doc.get_page(page_ref).get_layer(layer_ref),
            ImageTransform {
                translate_x: Some(Mm(0.0)),
                translate_y: Some(Mm(0.0)),
                dpi: Some(dpi as f32),
                ..Default::default()
            },
        );
    }

    let bytes = doc
        .save_to_bytes()
        .map_err(|e| AppError::other(format!("could not serialise the PDF: {e}")))?;
    std::fs::write(path, bytes)?;
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;

    /// A 2x2 red PNG, as a data URL.
    fn tiny_png_data_url() -> String {
        let mut buf = std::io::Cursor::new(Vec::new());
        let img = image::RgbImage::from_pixel(2, 2, image::Rgb([255, 0, 0]));
        image::DynamicImage::ImageRgb8(img)
            .write_to(&mut buf, image::ImageFormat::Png)
            .expect("encode");
        format!(
            "data:image/png;base64,{}",
            base64::engine::general_purpose::STANDARD.encode(buf.into_inner())
        )
    }

    #[test]
    fn converts_document_units_to_millimetres() {
        // A4 at 150 dpi is 1240 units wide, which is 210mm.
        assert!((doc_units_to_mm(1240.0) - 210.0).abs() < 1.0);
        assert!((doc_units_to_mm(1754.0) - 297.0).abs() < 1.0);
    }

    #[test]
    fn refuses_to_export_nothing() {
        let dir = std::env::temp_dir().join("mm-pdf-empty");
        assert!(write_pdf(dir.to_str().unwrap(), "t", &[]).is_err());
    }

    #[test]
    fn rejects_a_page_image_that_is_not_a_data_url() {
        assert!(decode_png("not-a-data-url").is_err());
    }

    #[test]
    fn writes_a_multi_page_pdf() {
        let path = std::env::temp_dir().join(format!(
            "mm-export-{}.pdf",
            std::time::SystemTime::now()
                .duration_since(std::time::UNIX_EPOCH)
                .unwrap()
                .as_nanos()
        ));
        let pages = vec![
            ExportPage {
                data_url: tiny_png_data_url(),
                width: 1240.0,
                height: 1754.0,
            },
            ExportPage {
                data_url: tiny_png_data_url(),
                width: 1240.0,
                height: 1754.0,
            },
        ];

        write_pdf(path.to_str().unwrap(), "テスト", &pages).expect("write");
        let bytes = std::fs::read(&path).expect("read back");
        assert!(bytes.starts_with(b"%PDF"), "output is not a PDF");
        assert!(bytes.len() > 500, "PDF looks empty");
        std::fs::remove_file(&path).ok();
    }
}
