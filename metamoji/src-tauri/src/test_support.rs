//! A stub HTTP server for protocol tests.
//!
//! Raw `TcpListener` rather than a framework: these tests assert on bytes a
//! typed server would have normalised away — whether a `GET` carried a body at
//! all, what the exact content type was — and adding an HTTP server dependency
//! to ship test-only code is a poor trade.
//!
//! Shared because there are now two clients speaking two different protocols
//! (`cloud` and `drive`), and both need the same evidence.

use std::io::{BufRead, BufReader, Read, Write};
use std::net::{TcpListener, TcpStream};
use std::sync::mpsc::{channel, Receiver, Sender};
use std::thread;

use serde_json::Value;


/// One request as the stub saw it.
#[derive(Debug, Clone)]
pub struct Seen {
    pub method: String,
    pub path: String,
    pub headers: Vec<(String, String)>,
    pub body: String,
}

impl Seen {
    pub fn header(&self, name: &str) -> Option<&str> {
        self.headers
            .iter()
            .find(|(k, _)| k.eq_ignore_ascii_case(name))
            .map(|(_, v)| v.as_str())
    }

    pub fn json(&self) -> Value {
        serde_json::from_str(&self.body).expect("body was not JSON")
    }
}

pub struct Stub {
    pub base: String,
    pub seen: Receiver<Seen>,
}

/// Serves canned replies in order, recording what it was asked for.
///
/// `{BASE}` in a reply body is replaced with the stub's own base URL. The
/// two-step flow needs the tenant server the first reply names to be this same
/// stub, and its port is only known after it binds.
pub fn stub(replies: Vec<(&'static str, String)>) -> Stub {
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

