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
    CloudClient::new("test-machine".into(), "ja_JP".into(), "Asia/Tokyo".into()).unwrap()
}

fn login_ok(rest_host: &str) -> String {
    format!(
        r#"{{"errorCode":0,"userId":"u-1","loginName":"student01","name":"山田 太郎",
            "email":"a@example.jp","coLoginId":"school01","companyId":"c-1",
            "companyName":"例示小学校","isClassRoom":false,"restHost":"{rest_host}"}}"#
    )
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
        r#"{"serverUrl":"https://tenant.example/","coLoginId":"school01",
            "isClassRoom":true,"isOnPremise":false}"#
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
}

#[tokio::test]
async fn a_school_id_is_escaped_into_the_query() {
    let stub = stub(vec![(
        "200 OK",
        r#"{"serverUrl":"https://tenant.example/"}"#.to_string(),
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
        (
            "200 OK",
            r#"{"serverUrl":"{BASE}","coLoginId":"school01"}"#.to_string(),
        ),
        ("200 OK", login_ok("")),
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
    assert!(login.header("x-dm-productversion").is_some());
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
    assert!(body["productVersion"].is_string());

    assert_eq!(session.user_id, "u-1");
    assert_eq!(session.company_name.as_deref(), Some("例示小学校"));
    assert_eq!(client.session().unwrap().login_name, "student01");
}

#[tokio::test]
async fn simple_login_sends_the_class_and_the_roll_number() {
    let stub = stub(vec![
        ("200 OK", r#"{"serverUrl":"{BASE}"}"#.to_string()),
        ("200 OK", login_ok("")),
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
        ("200 OK", r#"{"serverUrl":"{BASE}"}"#.to_string()),
        (
            "200 OK",
            r#"{"errorCode":9,"errorMessage":"ライセンスの有効期限が切れています"}"#.to_string(),
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
        ("200 OK", r#"{"serverUrl":"{BASE}"}"#.to_string()),
        (
            "200 OK",
            r#"{"errorCode":0,"allList":{
                "nameList":["3年2組","1年1組"],
                "detailList":{
                  "1年1組":{"id":"cg-11","idNumberList":["1","2"]},
                  "3年2組":{"id":"cg-32","idNumberList":["7"]}}}}"#
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
    assert_eq!(groups[0].name, "3年2組");
    assert_eq!(groups[0].id, "cg-32");
    assert_eq!(groups[1].id_numbers, ["1", "2"]);
}

#[tokio::test]
async fn signing_out_clears_the_session_even_if_the_server_is_gone() {
    let stub = stub(vec![
        ("200 OK", r#"{"serverUrl":"{BASE}"}"#.to_string()),
        ("200 OK", login_ok("")),
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
        ("200 OK", r#"{"serverUrl":"{BASE}"}"#.to_string()),
        ("200 OK", login_ok("")),
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
