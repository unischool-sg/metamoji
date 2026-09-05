//! The drive service's wire format.
//!
//! Separate from `cloud_wire_tests` because it is a separate protocol: a
//! per-drive base URL, its own cookie jar, its own headers, and its own idea of
//! where a request body goes.

use crate::drive::DriveClient;
use crate::test_support::stub;

fn client() -> DriveClient {
    DriveClient::new("ja_JP".into(), "desktop;macos;".into()).unwrap()
}

#[tokio::test]
async fn login_posts_raw_json_not_a_form() {
    // `requestBody` is a key in `SdHttpClient`'s internal map; the string under
    // it *is* the body. Sending it as a form field — which is what "wraps its
    // JSON in a `requestBody` key" reads like — gets the login refused.
    let stub = stub(vec![("200 OK", r#"{"userId":"u-1"}"#.to_string())]);

    let client = client();
    client
        .login(&stub.base, "u-1", Some("hunter2"), None)
        .await
        .unwrap();

    let seen = stub.seen.recv().unwrap();
    assert_eq!(seen.method, "POST");
    assert_eq!(seen.path, "/rest/users/login");
    assert_eq!(
        seen.header("content-type"),
        Some("application/json; charset=utf-8")
    );

    let body = seen.json();
    assert_eq!(body["userId"], "u-1");
    assert_eq!(body["password"], "hunter2");
    assert!(body.get("qwd").is_none(), "one credential, not both");
    assert!(
        !seen.body.contains("requestBody"),
        "the key is internal to the client: {}",
        seen.body
    );
}

#[tokio::test]
async fn the_drive_headers_are_the_sd_ones() {
    let stub = stub(vec![("200 OK", "{}".to_string())]);
    let client = client();
    client.login(&stub.base, "u-1", Some("x"), None).await.unwrap();

    let seen = stub.seen.recv().unwrap();
    assert_eq!(seen.header("user-agent"), Some("MMJSdCloudService/1.0"));
    assert_eq!(seen.header("x-dm-device"), Some("desktop;macos;"));
    assert_eq!(seen.header("x-dm-locale"), Some("ja_JP"));
    // `X-DM-AppVersion` belongs to the *other* client. `SdHttpClient` does not
    // send it, and sending it anyway is the kind of difference that is
    // impossible to spot from a failure message.
    assert!(seen.header("x-dm-appversion").is_none());
}

#[tokio::test]
async fn a_get_carries_no_body() {
    let stub = stub(vec![
        ("200 OK", "{}".to_string()),
        ("200 OK", r#"{"driveId":"d-1","entryType":2}"#.to_string()),
    ]);
    let client = client();
    client.login(&stub.base, "u-1", Some("x"), None).await.unwrap();

    let entry_type = client.sync_start("d-1").await.unwrap();
    assert_eq!(entry_type, 2);

    let _ = stub.seen.recv().unwrap();
    let seen = stub.seen.recv().unwrap();
    assert_eq!(seen.method, "GET");
    assert_eq!(seen.path, "/rest/drives/d-1/syncstart");
    assert_eq!(seen.body, "");
}

#[tokio::test]
async fn an_expired_drive_session_is_renewed_with_the_same_credential() {
    let stub = stub(vec![
        ("200 OK", "{}".to_string()),
        // The session lapsed.
        ("200 OK", r#"{"errorCode":11001}"#.to_string()),
        // Silent re-login…
        ("200 OK", "{}".to_string()),
        // …then the retry.
        ("200 OK", r#"{"lastUpdateRevision":"42"}"#.to_string()),
    ]);

    let client = client();
    client.login(&stub.base, "u-1", Some("hunter2"), None).await.unwrap();
    let revision = client.last_revision("d-1").await.unwrap();
    assert_eq!(revision.as_deref(), Some("42"));

    let seen: Vec<_> = (0..4).map(|_| stub.seen.recv().unwrap()).collect();
    assert_eq!(seen[2].path, "/rest/users/login");
    assert_eq!(seen[2].json()["password"], "hunter2");
    assert_eq!(seen[3].path, "/rest/drives/d-1/lastupdaterevision");
}
