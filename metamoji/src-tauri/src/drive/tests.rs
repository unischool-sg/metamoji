use super::listing::from_tree;
use super::*;
use crate::model::GenericTree;

fn body(value: Value) -> Map<String, Value> {
    match value {
        Value::Object(map) => map,
        _ => unreachable!(),
    }
}

// -- the error envelope ------------------------------------------------------

#[test]
fn a_zero_code_is_success() {
    assert!(check_error(&body(json!({ "errorCode": 0 }))).is_ok());
    assert!(check_error(&body(json!({ "driveId": "d1" }))).is_ok());
}

#[test]
fn an_expired_drive_session_says_what_to_do_about_it() {
    // The drive session expires independently of the tenant's, so this is
    // routine — the message has to suggest reopening, not signing in again.
    let err = check_error(&body(json!({ "errorCode": 0x2af9 })))
        .unwrap_err()
        .to_string();
    assert!(err.contains("もう一度開いて"), "{err}");
}

#[test]
fn a_revision_conflict_is_named_as_someone_elses_write() {
    let err = check_error(&body(json!({ "errorCode": 0x2afa })))
        .unwrap_err()
        .to_string();
    assert!(err.contains("ほかの人"), "{err}");
}

#[test]
fn other_codes_use_the_flat_message_field() {
    // `SdResponseResult` puts the text at `message`, not inside a `data`
    // object the way the `users3/*` envelope does.
    let err = check_error(&body(json!({ "errorCode": 5, "message": "容量が足りません" })))
        .unwrap_err()
        .to_string();
    assert_eq!(err, "容量が足りません");
}

#[test]
fn a_code_with_no_message_still_names_the_code() {
    let err = check_error(&body(json!({ "errorCode": 5 })))
        .unwrap_err()
        .to_string();
    assert!(err.contains('5'), "{err}");
}

// -- the listing -------------------------------------------------------------

fn tree_with(models: &[(&str, &str, Vec<(&str, Value)>)]) -> GenericTree {
    let mut tree = GenericTree::new("root", "$drive");
    for (id, model_type, props) in models {
        let mut map = serde_json::Map::new();
        for (key, value) in props {
            map.insert((*key).to_string(), value.clone());
        }
        tree.insert(crate::model::GenericModel {
            id: (*id).to_string(),
            parent_id: Some("root".to_string()),
            model_type: (*model_type).to_string(),
            props: Value::Object(map),
            children: Vec::new(),
        });
    }
    tree
}

#[test]
fn documents_come_out_with_their_ids_and_titles() {
    let listing = from_tree(&tree_with(&[(
        "m1",
        "$document",
        vec![
            ("documentId", json!("doc-9")),
            ("title", json!("算数 4月12日")),
            ("revision", json!("17")),
        ],
    )]));

    assert_eq!(listing.documents.len(), 1);
    assert_eq!(listing.documents[0].document_id, "doc-9");
    assert_eq!(listing.documents[0].title.as_deref(), Some("算数 4月12日"));
    assert_eq!(listing.documents[0].revision.as_deref(), Some("17"));
}

#[test]
fn a_document_with_no_server_id_falls_back_to_the_model_id() {
    // An entry with no id cannot be fetched; keeping it under the model's own
    // id at least makes it visible instead of silently dropped.
    let listing = from_tree(&tree_with(&[("m1", "$document", vec![("title", json!("無題"))])]));
    assert_eq!(listing.documents[0].document_id, "m1");
}

#[test]
fn the_listing_is_ordered_rather_than_left_to_the_map() {
    let listing = from_tree(&tree_with(&[
        ("m2", "$document", vec![("documentId", json!("b"))]),
        ("m1", "$document", vec![("documentId", json!("a"))]),
    ]));
    assert_eq!(
        listing.documents.iter().map(|d| d.document_id.as_str()).collect::<Vec<_>>(),
        ["a", "b"]
    );
}

#[test]
fn model_types_that_are_not_documents_are_reported_not_dropped() {
    // The listing schema is a guess. An unreadable class box and an empty one
    // look identical to a teacher unless the difference is surfaced.
    let listing = from_tree(&tree_with(&[
        ("m1", "$document", vec![("documentId", json!("a"))]),
        ("m2", "$mystery", vec![]),
        ("m3", "$mystery", vec![]),
    ]));

    assert_eq!(listing.documents.len(), 1);
    // Deduplicated: one line per unknown type, not per model.
    assert_eq!(listing.unrecognised, ["$drive", "$mystery"]);
    assert_eq!(listing.model_count, 4);
}

#[test]
fn an_empty_drive_is_empty_rather_than_an_error() {
    let listing = from_tree(&GenericTree::new("root", "$drive"));
    assert!(listing.documents.is_empty());
    assert_eq!(listing.model_count, 1);
}
