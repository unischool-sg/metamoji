use super::*;

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
fn an_expired_drive_session_is_its_own_variant_so_it_can_be_retried() {
    // The drive session expires independently of the tenant's, so this is
    // routine. Surfacing it as a message would show the user an error about
    // being signed out while their own name is in the title bar; the caller
    // re-authenticates instead.
    assert!(matches!(
        check_error(&body(json!({ "data": { "errorCode": 0x2af9 } }))),
        Err(crate::error::AppError::NotLoggedIn)
    ));
}

#[test]
fn a_revision_conflict_is_named_as_someone_elses_write() {
    let err = check_error(&body(json!({ "data": { "errorCode": 0x2afa } })))
        .unwrap_err()
        .to_string();
    assert!(err.contains("ほかの人"), "{err}");
}

#[test]
fn the_code_is_read_from_the_nested_envelope() {
    // The wire form, taken from a real refusal:
    //
    //   {"name":"InvalidUserOrPasswordException",
    //    "message":"The user or password is invalid.",
    //    "data":{"errorCode":11000}}
    //
    // `sync-drive.tsp` models a *flat* `errorCode`. Reading it that way makes
    // every drive error invisible — and since these arrive with an HTTP 500, a
    // rejected password gets reported as a broken server.
    let err = check_error(&body(json!({
        "name": "InvalidUserOrPasswordException",
        "message": "The user or password is invalid.",
        "data": { "errorCode": 11000 },
    })))
    .unwrap_err()
    .to_string();
    assert!(err.contains("ユーザーまたはパスワードが不正"), "{err}");
}

#[test]
fn a_flat_code_is_still_understood() {
    // Some responses do put it at the top level; accepting both costs nothing.
    let err = check_error(&body(json!({ "errorCode": 5, "message": "容量が足りません" })))
        .unwrap_err()
        .to_string();
    assert!(err.starts_with("容量が足りません"), "{err}");
    // The number goes along: it is the only thing that maps to the smali's
    // error table when a message turns out to be unhelpful.
    assert!(err.contains('5'), "{err}");
}

#[test]
fn a_code_with_no_message_still_names_the_code() {
    let err = check_error(&body(json!({ "data": { "errorCode": 5 } })))
        .unwrap_err()
        .to_string();
    assert!(err.contains('5'), "{err}");
}
