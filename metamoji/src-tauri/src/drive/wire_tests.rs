//! The drive service's wire format.
//!
//! Separate from `cloud_wire_tests` because it is a separate protocol: a
//! per-drive base URL, its own cookie jar, its own headers, and its own idea of
//! where a request body goes.

use crate::drive::DriveClient;
use crate::test_support::stub;

fn client() -> DriveClient {
    DriveClient::new("ja_JP".into(), "desktop;macos;1".into()).unwrap()
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
    // Present and null, not absent: `SdLoginParams.toMap()` always puts all
    // three, and omitting the unused one answers 500.
    assert!(body.get("qwd").is_some(), "qwd must be present");
    assert!(body["qwd"].is_null());
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
    assert_eq!(seen.header("x-dm-device"), Some("desktop;macos;1"));
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

#[tokio::test]
async fn a_failure_shows_the_full_url_and_the_servers_own_text() {
    // Two rounds were spent guessing which call failed and why. The host
    // matters here in a way it does not for the tenant: `homeDir` is issued per
    // drive and a wrong one is invisible from the path alone. The body is the
    // server's diagnostic on a 500, not the user's data.
    let stub = stub(vec![(
        "500 Internal Server Error",
        r#"{"trace":"java.lang.NullPointerException at Login.java:42"}"#.to_string(),
    )]);

    let client = client();
    let err = client
        .login(&stub.base, "u-1", Some("x"), None)
        .await
        .unwrap_err()
        .to_string();

    assert!(err.contains("500"), "{err}");
    assert!(err.contains(&stub.base), "the URL is the missing half: {err}");
    assert!(err.contains("NullPointerException"), "{err}");
}

#[tokio::test]
async fn a_stale_cookie_is_dropped_before_signing_in() {
    // `executeLoginWithParams` calls `setDiscardCookie(true)`. A login is where
    // a session starts; presenting an old one to it is at best pointless.
    let stub = stub(vec![
        ("200 OK", "{}".to_string()),
        ("200 OK", "{}".to_string()),
    ]);

    let client = client();
    client.login(&stub.base, "u-1", Some("x"), None).await.unwrap();
    // The stub set `JSESSIONID` on that reply; the second login must not send
    // it back.
    client.login(&stub.base, "u-1", Some("x"), None).await.unwrap();

    let _ = stub.seen.recv().unwrap();
    let second = stub.seen.recv().unwrap();
    assert!(
        second.header("cookie").is_none(),
        "a login must start from a clean jar: {:?}",
        second.header("cookie")
    );
}

#[tokio::test]
async fn a_very_long_error_body_is_truncated() {
    let stub = stub(vec![("500 Internal Server Error", "x".repeat(5000))]);
    let client = client();
    let err = client
        .login(&stub.base, "u-1", Some("x"), None)
        .await
        .unwrap_err()
        .to_string();
    // A stack trace is pages long; the first line is the useful part.
    assert!(err.len() < 600, "{}", err.len());
    assert!(err.contains('…'), "{err}");
}
