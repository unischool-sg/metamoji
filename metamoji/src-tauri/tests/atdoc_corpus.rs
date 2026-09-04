//! Golden-corpus test for the `.atdoc` importer.
//!
//! The repository has no `.atdoc` sample, but the decompiled APK ships real
//! MetaMoJi documents in exactly the same container format: the start guide and
//! the bundled library products. Parsing those is a far stronger regression net
//! than synthetic input, and it costs nothing to keep.
//!
//! The corpus lives outside the crate, so every test here skips cleanly when
//! `apk/` is absent — a checkout without it must still pass `cargo test`.

use std::path::{Path, PathBuf};

use metamoji_lib::atdoc;

fn corpus_root() -> Option<PathBuf> {
    let root = Path::new(env!("CARGO_MANIFEST_DIR"))
        .parent()?
        .parent()?
        .join("apk/assets/init");
    root.is_dir().then_some(root)
}

/// Every `.state` member inside the bundled archives, plus the archives
/// themselves where they wrap a document directly.
fn corpus_files() -> Vec<PathBuf> {
    let Some(root) = corpus_root() else {
        return Vec::new();
    };
    let mut out = Vec::new();
    if let Ok(entries) = std::fs::read_dir(root.join("library")) {
        out.extend(entries.flatten().map(|e| e.path()).filter(|p| {
            p.extension().is_some_and(|e| e == "product")
        }));
    }
    let guide = root.join("guide/startguide.dat");
    if guide.is_file() {
        out.push(guide);
    }
    out
}

#[test]
fn parses_every_bundled_document_without_error() {
    let files = corpus_files();
    if files.is_empty() {
        eprintln!("skipping: apk/ corpus not present in this checkout");
        return;
    }

    let mut parsed = 0usize;
    let mut total_models = 0usize;

    for path in &files {
        let bytes = std::fs::read(path).expect("corpus file should be readable");
        // Not every archive member is a document; `unwrap_container` reports so
        // rather than panicking, and that is the behaviour under test.
        let Ok(raw) = atdoc::unwrap_container(bytes) else {
            continue;
        };
        let doc = atdoc::parse_document(&raw)
            .unwrap_or_else(|e| panic!("{} failed to parse: {e}", path.display()));

        assert!(
            (1..=3).contains(&doc.format_version),
            "{}: implausible format version {}",
            path.display(),
            doc.format_version
        );
        parsed += 1;
        total_models += doc.models.len();
    }

    assert!(
        parsed > 0,
        "corpus was present but yielded no parsable documents"
    );
    eprintln!("parsed {parsed} document(s), {total_models} models");
}

#[test]
fn the_start_guide_yields_pages_types_and_ink() {
    let Some(root) = corpus_root() else {
        eprintln!("skipping: apk/ corpus not present in this checkout");
        return;
    };
    let guide = root.join("guide/startguide.dat");
    if !guide.is_file() {
        eprintln!("skipping: start guide not present");
        return;
    }

    let bytes = std::fs::read(&guide).expect("start guide should be readable");
    let result = atdoc::import(bytes, "note_test").expect("start guide should import");

    // The start guide is a real multi-page handwritten document. If the type
    // dictionary or the value decoder regressed, these all collapse to zero.
    assert!(
        result.report.model_count > 100,
        "expected a substantial model count, got {}",
        result.report.model_count
    );
    assert!(
        result.report.page_count > 0,
        "expected at least one page, got {}",
        result.report.page_count
    );
    assert!(
        result.report.undecoded_models * 4 < result.report.model_count,
        "too many models failed to decode: {} of {}",
        result.report.undecoded_models,
        result.report.model_count
    );

    eprintln!(
        "start guide: v{} | {} models | {} pages | {} strokes | {} undecoded | types: {:?}",
        result.report.format_version,
        result.report.model_count,
        result.report.page_count,
        result.report.stroke_count,
        result.report.undecoded_models,
        {
            let mut kinds: Vec<_> = result.report.unit_counts.iter().collect();
            kinds.sort_by_key(|(k, _)| k.to_string());
            kinds
        }
    );

    // Every node must be reachable from the root, or the frontend converter
    // will silently drop whatever is stranded.
    for (id, model) in &result.tree.models {
        if id == &result.tree.root_id {
            continue;
        }
        assert!(
            model.parent_id.is_some(),
            "model {id} has no parent and would be dropped on import"
        );
    }
}

#[test]
fn malformed_input_is_rejected_rather_than_panicking() {
    assert!(atdoc::unwrap_container(b"not a document".to_vec()).is_err());
    assert!(atdoc::unwrap_container(Vec::new()).is_err());

    // A valid magic number followed by garbage must fail cleanly.
    let mut truncated = b"MMJDrawModels\x01".to_vec();
    truncated.extend_from_slice(&[0u8; 8]);
    assert!(atdoc::import(truncated, "note_test").is_err());
}
