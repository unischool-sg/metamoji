use super::*;

use std::io::Write;

/// Builds a zip the way the drive service does: named entries, JSON inside.
fn archive(entries: &[(&str, &str)]) -> Vec<u8> {
    let mut buffer = Vec::new();
    {
        let mut writer = zip::ZipWriter::new(Cursor::new(&mut buffer));
        let options: zip::write::FileOptions<'_, ()> =
            zip::write::FileOptions::default().compression_method(zip::CompressionMethod::Deflated);
        for (name, body) in entries {
            writer.start_file(*name, options).unwrap();
            writer.write_all(body.as_bytes()).unwrap();
        }
        writer.finish().unwrap();
    }
    buffer
}

#[test]
fn reads_document_records_from_a_json_entry() {
    let listing = parse(archive(&[(
        "docinfo_1.json",
        r#"[{"id":"doc-9","title":"算数 4月12日","contentsRevision":"17",
             "lastUpdate":"2026-04-12T01:00:00Z"}]"#,
    )]))
    .unwrap();

    assert_eq!(listing.documents.len(), 1);
    assert_eq!(listing.documents[0].document_id, "doc-9");
    assert_eq!(listing.documents[0].title.as_deref(), Some("算数 4月12日"));
    assert_eq!(listing.documents[0].revision.as_deref(), Some("17"));
    assert!(listing.unrecognised.is_empty(), "{:?}", listing.unrecognised);
}

#[test]
fn a_deleted_record_is_not_offered() {
    // Deleted documents stay in the archive. Listing them would offer notes
    // that cannot be opened.
    let listing = parse(archive(&[(
        "docinfo.json",
        r#"[{"id":"a","title":"生きている"},
            {"id":"b","title":"消した","deleteFlag":true},
            {"id":"c","title":"消した2","deleteFlag":1}]"#,
    )]))
    .unwrap();

    assert_eq!(
        listing.documents.iter().map(|d| d.document_id.as_str()).collect::<Vec<_>>(),
        ["a"]
    );
    // Counted even so: "three records, one visible" and "one record" are
    // different situations.
    assert_eq!(listing.record_count, 3);
}

#[test]
fn several_entries_are_merged_and_ordered() {
    let listing = parse(archive(&[
        ("b.json", r#"[{"id":"doc-b"}]"#),
        ("a.json", r#"[{"id":"doc-a"}]"#),
    ]))
    .unwrap();

    assert_eq!(
        listing.documents.iter().map(|d| d.document_id.as_str()).collect::<Vec<_>>(),
        ["doc-a", "doc-b"]
    );
}

#[test]
fn an_array_wrapped_in_an_object_is_still_read() {
    let listing = parse(archive(&[(
        "x.json",
        r#"{"documents":[{"id":"doc-1","title":"入れ子"}]}"#,
    )]))
    .unwrap();
    assert_eq!(listing.documents.len(), 1);
}

#[test]
fn a_numeric_revision_is_read_as_a_string() {
    // Revisions arrive as numbers in some records and strings in others.
    let listing = parse(archive(&[("x.json", r#"[{"id":"a","contentsRevision":17}]"#)])).unwrap();
    assert_eq!(listing.documents[0].revision.as_deref(), Some("17"));
}

#[test]
fn non_json_entries_are_named_rather_than_ignored() {
    // An archive holding more than this understands is worth saying so about;
    // silently showing fewer notes than the class has is not.
    let listing = parse(archive(&[
        ("docinfo.json", r#"[{"id":"a"}]"#),
        ("thumbnail.png", "not json"),
    ]))
    .unwrap();

    assert_eq!(listing.documents.len(), 1);
    assert_eq!(listing.unrecognised, ["thumbnail.png"]);
}

#[test]
fn an_empty_archive_is_empty_rather_than_an_error() {
    let listing = parse(archive(&[])).unwrap();
    assert!(listing.documents.is_empty());
    assert_eq!(listing.record_count, 0);
}

#[test]
fn something_that_is_not_a_zip_says_so() {
    let err = parse(b"not a zip at all".to_vec()).unwrap_err().to_string();
    assert!(err.contains("開けません"), "{err}");
}
