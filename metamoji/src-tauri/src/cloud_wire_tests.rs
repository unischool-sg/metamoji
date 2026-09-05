//! End-to-end tests for the ClassShare wire format.
//!
//! The unit tests in `cloud.rs` cover the pure parts. These cover the part that
//! actually matters and cannot be checked by reading: that a request leaves
//! this client shaped the way `CsHttpClient` shapes it — right URL, right
//! headers, right envelope — and that the two-step host resolution works.
//!
//! The stub is a raw `TcpListener` rather than a framework: it has to be able
//! to assert on bytes that a typed server would have already normalised away,
//! and adding an HTTP server dependency to ship one test is a poor trade.

use std::io::{BufRead, BufReader, Read, Write};
use std::net::{TcpListener, TcpStream};
use std::sync::mpsc::{channel, Receiver, Sender};
use std::thread;

use serde_json::Value;

use crate::cloud::{CloudClient, DEFAULT_ROOT_SERVER};

/// One request as the stub saw it.
#[derive(Debug, Clone)]
struct Seen {
    method: String,
    path: String,
    headers: Vec<(String, String)>,
    body: String,
}

impl Seen {
    fn header(&self, name: &str) -> Option<&str> {
        self.headers
            .iter()
            .find(|(k, _)| k.eq_ignore_ascii_case(name))
            .map(|(_, v)| v.as_str())
    }

    fn json(&self) -> Value {
        serde_json::from_str(&self.body).expect("body was not JSON")
    }
}

struct Stub {
    base: String,
    seen: Receiver<Seen>,
}

/// Serves canned replies in order, recording what it was asked for.
///
/// `{BASE}` in a reply body is replaced with the stub's own base URL. The
/// two-step flow needs the tenant server the first reply names to be this same
/// stub, and its port is only known after it binds.
fn stub(replies: Vec<(&'static str, String)>) -> Stub {
    let listener = TcpListener::bind("127.0.0.1:0").unwrap();
    let port = listener.local_addr().unwrap().port();
    let base = format!("http://127.0.0.1:{port}/");
    let (tx, rx): (Sender<Seen>, Receiver<Seen>) = channel();

    let replies: Vec<(&'static str, String)> = replies
        .into_iter()
        .map(|(status, body)| (status, body.replace("{BASE}", &base)))
        .collect();

    thread::spawn(move || {
        for (index, stream) in listener.incoming().enumerate() {
            let Ok(mut stream) = stream else { break };
            let seen = read_request(&mut stream);
            let (status, body) = replies
                .get(index)
                .cloned()
                .unwrap_or(("200 OK", "{}".to_string()));

            let response = format!(
                "HTTP/1.1 {status}\r\n\
                 content-type: application/json\r\n\
                 content-length: {}\r\n\
                 set-cookie: JSESSIONID=abc123; Path=/\r\n\
                 connection: close\r\n\r\n{body}",
                body.len()
            );
            let _ = stream.write_all(response.as_bytes());
            let _ = tx.send(seen);
            if index + 1 >= replies.len() {
                break;
            }
        }
    });

    Stub { base, seen: rx }
}

fn read_request(stream: &mut TcpStream) -> Seen {
    let mut reader = BufReader::new(stream.try_clone().unwrap());

    let mut start = String::new();
    reader.read_line(&mut start).unwrap();
    let mut parts = start.split_whitespace();
    let method = parts.next().unwrap_or_default().to_string();
    let path = parts.next().unwrap_or_default().to_string();

    let mut headers = Vec::new();
    let mut length = 0usize;
    loop {
        let mut line = String::new();
        if reader.read_line(&mut line).unwrap() == 0 {
            break;
        }
        let line = line.trim_end().to_string();
        if line.is_empty() {
            break;
        }
        if let Some((name, value)) = line.split_once(african_colon()) {
            let (name, value) = (name.trim().to_string(), value.trim().to_string());
            if name.eq_ignore_ascii_case("content-length") {
                length = value.parse().unwrap_or(0);
            }
            headers.push((name, value));
        }
    }

    let mut body = vec![0u8; length];
    if length > 0 {
        reader.read_exact(&mut body).unwrap();
    }

    Seen {
        method,
        path,
        headers,
        body: String::from_utf8_lossy(&body).to_string(),
    }
}

/// `split_once(':')` — named so the literal does not read as a typo next to the
/// `\r\n` handling above.
fn african_colon() -> char {
    ':'
}

fn client() -> CloudClient {
    // No store path: these tests are about the wire, and a shared session file
    // would let them see each other's state.
    CloudClient::new("test-machine".into(), "ja_JP".into(), "Asia/Tokyo".into(), None).unwrap()
}

/// What `mpsroot/RequestServlet` really answers.
///
/// Taken verbatim from a live lookup of a real school code, with the host
/// swapped for the stub. Note `serverURL`, capitalised, and that the id is not
/// echoed back — both were got wrong from the field names alone.
const SCHOOL_OK: &str = r#"{"isOnPremise":false,"isClassRoom":true,
    "serverURL":"{BASE}","errorMessage":"","errorCode":0,"isSeminar":false}"#;

/// A successful login, keyed as `prepareLoginResponse` reads it: `uuid` for the
/// user id, and no `restHost`/`isClassRoom` — those come from the school
/// lookup, which passes them in.
fn login_ok() -> String {
    r#"{"uuid":"u-1","loginName":"student01","name":"山田 太郎",
        "email":"a@example.jp","companyId":"c-1","companyName":"例示小学校",
        "companyVersion":3,"serverVersion":2.0}"#
        .to_string()
}

#[test]
fn the_root_server_defaults_to_the_documented_one() {
    // `ModelInfo$BuildOptions.DIGITAL_CABINET_URL_ROOT`.
    assert_eq!(DEFAULT_ROOT_SERVER, "https://mps.metamoji.com/");
    assert_eq!(client().root_server(), DEFAULT_ROOT_SERVER);
}

#[tokio::test]
async fn resolving_a_school_hits_the_root_servlet() {
    let stub = stub(vec![(
        "200 OK",
        r#"{"isOnPremise":false,"isClassRoom":true,
            "serverURL":"https://tenant.example/","errorCode":0}"#
            .to_string(),
    )]);
    let client = client();
    client.set_root_server(&stub.base);

    let school = client.resolve_school("school01").await.unwrap();
    let seen = stub.seen.recv().unwrap();

    // A plain query string, not the JSON envelope: a different servlet.
    assert_eq!(seen.method, "GET");
    assert_eq!(seen.path, "/mpsroot/RequestServlet?coLoginId=school01");
    assert_eq!(seen.body, "");

    assert_eq!(school.server_url, "https://tenant.example/");
    assert!(school.is_class_room);
    assert_eq!(school.co_login_id, "school01");
}

#[tokio::test]
async fn a_school_id_is_escaped_into_the_query() {
    let stub = stub(vec![(
        "200 OK",
        r#"{"serverURL":"https://tenant.example/"}"#.to_string(),
    )]);
    let client = client();
    client.set_root_server(&stub.base);

    let _ = client.resolve_school("学校 01").await;
    let seen = stub.seen.recv().unwrap();

    assert_eq!(
        seen.path,
        "/mpsroot/RequestServlet?coLoginId=%E5%AD%A6%E6%A0%A1%2001"
    );
}

#[tokio::test]
async fn an_unknown_school_says_so_rather_than_failing_later() {
    // The servlet answers 200 with no `serverUrl` for an id it does not know.
    let stub = stub(vec![("200 OK", r#"{"errorCode":0}"#.to_string())]);
    let client = client();
    client.set_root_server(&stub.base);

    let err = client.resolve_school("nope").await.unwrap_err().to_string();
    assert!(err.contains("nope"), "{err}");
}

#[tokio::test]
async fn login_posts_the_documented_envelope_to_the_tenant() {
    let stub = stub(vec![
        ("200 OK", SCHOOL_OK.to_string()),
        ("200 OK", login_ok()),
    ]);
    let client = client();
    client.set_root_server(&stub.base);

    let session = client.login("school01", "student01", "hunter2").await.unwrap();

    let resolve = stub.seen.recv().unwrap();
    assert!(resolve.path.starts_with("/mpsroot/RequestServlet"));

    let login = stub.seen.recv().unwrap();
    // `getRestHost() + contextRoot + command`.
    assert_eq!(login.method, "POST");
    assert_eq!(login.path, "/mmjeditor2/2.0/users3/login");
    assert_eq!(
        login.header("content-type"),
        Some("application/json; charset=utf-8")
    );

    // The four X-DM headers `CsHttpClient` adds to every request.
    assert_eq!(login.header("x-dm-appversion"), Some("MMJDmCloudService/2.0"));
    assert_eq!(login.header("x-dm-locale"), Some("ja_JP"));
    assert_eq!(
        login.header("x-dm-productname"),
        Some("Android-Share-G-ClassRoom")
    );
    // Pinned, not merely present. Sending this app's own version here got the
    // login refused with "The product version is not supported" — the server
    // validates it, so it is part of the contract, not telemetry.
    assert_eq!(login.header("x-dm-productversion"), Some("3.15.1.0"));
    assert_eq!(login.header("user-agent"), Some("MMJCmCloudService/1.0"));

    let body = login.json();
    assert_eq!(body["coLoginId"], "school01");
    assert_eq!(body["loginName"], "student01");
    assert_eq!(body["password"], "hunter2");
    // The five fields `CsParamBaseAbstract#stringify()` always adds.
    assert_eq!(body["deviceName"], "test-machine");
    assert_eq!(body["productName"], "Android-Share-G-ClassRoom");
    assert_eq!(body["locale"], "ja_JP");
    assert_eq!(body["timezone"], "Asia/Tokyo");
    assert_eq!(body["productVersion"], "3.15.1.0");

    // `uuid`, not `userId`.
    assert_eq!(session.user_id, "u-1");
    assert_eq!(session.company_name.as_deref(), Some("例示小学校"));
    assert_eq!(client.session().unwrap().login_name, "student01");
    // These come from the school lookup, not the login response.
    assert_eq!(session.rest_host, stub.base);
    assert!(session.is_class_room);
    assert_eq!(session.co_login_id, "school01");
}

#[tokio::test]
async fn simple_login_sends_the_class_and_the_roll_number() {
    let stub = stub(vec![
        ("200 OK", SCHOOL_OK.to_string()),
        ("200 OK", login_ok()),
    ]);
    let client = client();
    client.set_root_server(&stub.base);

    client
        .classroom_login("school01", "cg-32", "7", "sakura")
        .await
        .unwrap();

    let _ = stub.seen.recv().unwrap();
    let login = stub.seen.recv().unwrap();

    assert_eq!(login.path, "/mmjeditor2/2.0/users3/classroomlogin");
    let body = login.json();
    assert_eq!(body["classGroupId"], "cg-32");
    assert_eq!(body["idNumber"], "7");
    // No `loginName`: the class and the number are the identity here.
    assert!(body.get("loginName").is_none());
}

#[tokio::test]
async fn an_error_code_becomes_the_message_the_user_sees() {
    let stub = stub(vec![
        ("200 OK", SCHOOL_OK.to_string()),
        (
            "200 OK",
            r#"{"name":"LicenseExpired","message":"ライセンスの有効期限が切れています",
                "data":{"errorCode":9}}"#
                .to_string(),
        ),
    ]);
    let client = client();
    client.set_root_server(&stub.base);

    let err = client
        .login("school01", "student01", "x")
        .await
        .unwrap_err()
        .to_string();

    assert_eq!(err, "ライセンスの有効期限が切れています");
    // A refused login must not leave a session behind.
    assert!(client.session().is_none());
}

#[tokio::test]
async fn an_http_error_page_does_not_surface_as_a_parse_error() {
    let stub = stub(vec![("502 Bad Gateway", "<html>nope</html>".to_string())]);
    let client = client();
    client.set_root_server(&stub.base);

    let err = client.resolve_school("school01").await.unwrap_err().to_string();
    assert!(err.contains("502"), "{err}");
}

#[tokio::test]
async fn the_class_list_comes_back_in_name_list_order() {
    let stub = stub(vec![
        ("200 OK", SCHOOL_OK.to_string()),
        (
            "200 OK",
            // Trimmed from a live school's answer, keeping the shape that
            // matters: the outer key is `alllist`, and a staff group arrives in
            // the same list with an empty roll.
            r#"{"alllist":{
                "nameList":["教師グループ","高校3年1組"],
                "detailList":{
                  "高校3年1組":{"idNumberList":["1","2"],"id":"499970003101"},
                  "教師グループ":{"idNumberList":[],"id":"499969981101"}}}}"#
                .to_string(),
        ),
    ]);
    let client = client();
    client.set_root_server(&stub.base);

    let groups = client.class_groups("school01").await.unwrap();
    let _ = stub.seen.recv().unwrap();
    let info = stub.seen.recv().unwrap();

    assert_eq!(info.path, "/mmjeditor2/2.0/users3/getclassroominfo");
    assert_eq!(groups.len(), 2);
    assert_eq!(groups[0].name, "教師グループ");
    assert!(groups[0].id_numbers.is_empty());
    assert_eq!(groups[1].id, "499970003101");
    assert_eq!(groups[1].id_numbers, ["1", "2"]);
}

#[tokio::test]
async fn signing_out_clears_the_session_even_if_the_server_is_gone() {
    let stub = stub(vec![
        ("200 OK", SCHOOL_OK.to_string()),
        ("200 OK", login_ok()),
    ]);
    let client = client();
    client.set_root_server(&stub.base);
    client.login("school01", "student01", "x").await.unwrap();
    assert!(client.session().is_some());

    // The stub has served its two replies and stopped listening, so the logout
    // request cannot succeed — which is exactly the case that matters.
    client.logout().await.unwrap();
    assert!(client.session().is_none());
}

#[tokio::test]
async fn changing_the_root_server_drops_the_session() {
    let stub = stub(vec![
        ("200 OK", SCHOOL_OK.to_string()),
        ("200 OK", login_ok()),
    ]);
    let client = client();
    client.set_root_server(&stub.base);
    client.login("school01", "student01", "x").await.unwrap();

    // A different root is a different tenant; carrying the session across would
    // show one school's identity while talking to another's server.
    client.set_root_server("https://other.example/");
    assert!(client.session().is_none());
    assert_eq!(client.root_server(), "https://other.example/");
}

// ---------------------------------------------------------------------------
// Session persistence
// ---------------------------------------------------------------------------
//
// The reason this exists: without it the app asked for a password on every
// launch. The cookie *is* the session, so nothing short of persisting the jar
// keeps a sign-in alive across a restart.

fn temp_path(name: &str) -> std::path::PathBuf {
    let dir = std::env::temp_dir().join(format!("metamoji-test-{}", std::process::id()));
    std::fs::create_dir_all(&dir).unwrap();
    dir.join(name)
}

fn client_at(path: &std::path::Path) -> CloudClient {
    CloudClient::new(
        "test-machine".into(),
        "ja_JP".into(),
        "Asia/Tokyo".into(),
        Some(path.to_path_buf()),
    )
    .unwrap()
}

#[tokio::test]
async fn a_sign_in_survives_a_restart() {
    let path = temp_path("survives.json");
    let _ = std::fs::remove_file(&path);

    let stub = stub(vec![
        ("200 OK", SCHOOL_OK.to_string()),
        ("200 OK", login_ok()),
    ]);

    {
        let client = client_at(&path);
        client.set_root_server(&stub.base);
        client.login("school01", "student01", "hunter2").await.unwrap();
        assert!(client.session().is_some());
    }

    // A new process, reading only what the last one left behind.
    let restarted = client_at(&path);
    let session = restarted.session().expect("the session came back");
    assert_eq!(session.login_name, "student01");
    assert_eq!(session.co_login_id, "school01");
    assert_eq!(restarted.root_server(), stub.base);
    // And the credential `cosmos/*` needs on every request.
    assert!(restarted.collabo_identity().is_some());
}

#[tokio::test]
async fn the_session_cookie_itself_is_restored() {
    // Restoring the identity but not the cookie would look signed in and then
    // fail on the first request — the worst of both.
    let path = temp_path("cookie.json");
    let _ = std::fs::remove_file(&path);

    let stub = stub(vec![
        ("200 OK", SCHOOL_OK.to_string()),
        ("200 OK", login_ok()),
        ("200 OK", r#"{"joinCode":"1234","joinEnabled":true}"#.to_string()),
    ]);

    {
        let client = client_at(&path);
        client.set_root_server(&stub.base);
        client.login("school01", "student01", "x").await.unwrap();
    }

    let restarted = client_at(&path);
    // The stub set `JSESSIONID` on every reply; a restored jar sends it back.
    let _ = restarted.class_code("d1", false).await;
    let _ = stub.seen.recv().unwrap();
    let _ = stub.seen.recv().unwrap();
    let third = stub.seen.recv().unwrap();
    assert_eq!(
        third.header("cookie"),
        Some("JSESSIONID=abc123"),
        "the restored jar must carry the session cookie"
    );
}

#[tokio::test]
async fn signing_out_erases_the_stored_session() {
    let path = temp_path("signout.json");
    let _ = std::fs::remove_file(&path);

    let stub = stub(vec![
        ("200 OK", SCHOOL_OK.to_string()),
        ("200 OK", login_ok()),
    ]);

    let client = client_at(&path);
    client.set_root_server(&stub.base);
    client.login("school01", "student01", "x").await.unwrap();
    client.logout().await.unwrap();

    // Not merely forgotten in memory: the file must not hold a credential
    // after an explicit sign-out.
    let restarted = client_at(&path);
    assert!(restarted.session().is_none());
    assert!(restarted.collabo_identity().is_none());
    let text = std::fs::read_to_string(&path).unwrap();
    assert!(!text.contains("Password"), "credential left on disk: {text}");
}

#[cfg(unix)]
#[tokio::test]
async fn the_session_file_is_not_world_readable() {
    use std::os::unix::fs::PermissionsExt;

    let path = temp_path("perms.json");
    let _ = std::fs::remove_file(&path);

    let stub = stub(vec![
        ("200 OK", SCHOOL_OK.to_string()),
        ("200 OK", login_ok()),
    ]);
    let client = client_at(&path);
    client.set_root_server(&stub.base);
    client.login("school01", "student01", "x").await.unwrap();

    let mode = std::fs::metadata(&path).unwrap().permissions().mode() & 0o777;
    assert_eq!(mode, 0o600, "it holds a credential");
}

#[tokio::test]
async fn listing_drives_is_a_get_that_still_carries_a_body() {
    // Two things at once, both easy to get wrong: `/drives/entry` is a `GET`,
    // and this API sends a JSON body on `GET` anyway
    // (docs/typespec/README.md §通信の基本仕様).
    let stub = stub(vec![
        ("200 OK", SCHOOL_OK.to_string()),
        ("200 OK", login_ok()),
        (
            "200 OK",
            r#"{"uid":"u-1","list":[
                {"id":"d-1","name":"1年1組","groupId":"g-1","hidden":0},
                {"id":"d-2","name":"職員","hidden":1},
                {"name":"idがない"}]}"#
                .to_string(),
        ),
    ]);

    let client = client();
    client.set_root_server(&stub.base);
    client.login("school01", "student01", "x").await.unwrap();
    let entries = client.drive_entries().await.unwrap();

    let _ = stub.seen.recv().unwrap();
    let _ = stub.seen.recv().unwrap();
    let list = stub.seen.recv().unwrap();

    assert_eq!(list.method, "GET");
    assert_eq!(list.path, "/mmjeditor2/2.0/drives/entry");
    assert_eq!(list.json()["productName"], "Android-Share-G-ClassRoom");

    assert_eq!(entries.len(), 2, "the entry with no id is dropped");
    assert_eq!(entries[0].name.as_deref(), Some("1年1組"));
    assert!(entries[1].hidden);
}

#[tokio::test]
async fn a_drives_home_is_fetched_with_get() {
    // `sync-drive.tsp` hangs every drive path off this value, so getting the
    // verb wrong here breaks the whole class-box feature and nothing else.
    let stub = stub(vec![
        ("200 OK", SCHOOL_OK.to_string()),
        ("200 OK", login_ok()),
        ("200 OK", r#"{"homeDir":"https://drive.example/x"}"#.to_string()),
    ]);

    let client = client();
    client.set_root_server(&stub.base);
    client.login("school01", "student01", "x").await.unwrap();
    let home = client.drive_home("d-1").await.unwrap();

    let _ = stub.seen.recv().unwrap();
    let _ = stub.seen.recv().unwrap();
    let seen = stub.seen.recv().unwrap();

    assert_eq!(seen.method, "GET");
    assert_eq!(seen.path, "/mmjeditor2/2.0/drives/d-1/home");
    // Every drive path is concatenated onto this, so it needs the slash.
    assert_eq!(home, "https://drive.example/x/");
}
