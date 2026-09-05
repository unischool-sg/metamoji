//! Client for MetaMoJi's ClassShare cloud (`mps.metamoji.com`).
//!
//! Reconstructed from `docs/typespec/auth/auth.tsp` and the smali it was
//! derived from. Only the sign-in surface is implemented: resolving a school,
//! listing its classes, the two login forms and logout. The other twelve API
//! families the app uses (notes, drive, collaboration…) are not here, so a
//! cloud session gets you an identity and nothing else — `README.md` says so
//! plainly rather than leaving it to be discovered.
//!
//! **Why this lives in Rust rather than the webview.** `mps.metamoji.com` has
//! no reason to send CORS headers for a `tauri://localhost` origin, so `fetch`
//! from the frontend would be blocked before it left the machine. Going through
//! Rust also gives the session cookie a real cookie jar, which is what the
//! protocol expects (`docs/typespec/README.md` §通信の基本仕様).
//!
//! ## The flow
//!
//! ```text
//!   1. GET  <root>mpsroot/RequestServlet?coLoginId=<学校ID>   → tenant serverUrl
//!   2. POST <serverUrl>mmjeditor2/2.0/users3/login            → session cookie
//! ```
//!
//! Step 1 is not optional: before it the client has no tenant host to talk to,
//! and every post-login call is relative to the one it returns.

use std::sync::Mutex;
use std::time::Duration;

use serde::{Deserialize, Serialize};
use serde_json::{json, Map, Value};

use crate::error::{AppError, AppResult};

/// `ModelInfo$BuildOptions.DIGITAL_CABINET_URL_ROOT`. Overridable because
/// docs/02 §3 records that schools may run the service on-premises.
pub const DEFAULT_ROOT_SERVER: &str = "https://mps.metamoji.com/";

/// `CsCloudServiceContext.m_restBasePath` — the path segment every post-login
/// command hangs off.
const REST_BASE_PATH: &str = "mmjeditor2/2.0";

/// Wire constants from `CsHttpClient`/`CsCloudServiceContext`.
///
/// These identify the *protocol*, not the platform: the server routes and gates
/// on `productName`, so sending something else risks being turned away at the
/// door for reasons that would be impossible to diagnose from here. What this
/// client actually is shows up in `deviceName`, which carries the real machine
/// name, and in `productVersion`, which is this app's version.
const PRODUCT_NAME: &str = "Android-Share-G-ClassRoom";
const USER_AGENT: &str = "MMJCmCloudService/1.0";
const DM_APP_VERSION: &str = "MMJDmCloudService/2.0";

/// `CsCloudServiceErrorCode`. Both mean "we are not telling you why".
const INVALID_EMAIL_EXCEPTION: i64 = 0x67;
const CAN_NOT_LOGIN_EXCEPTION: i64 = 0x7b;

// ---------------------------------------------------------------------------
// Types crossing the IPC boundary
// ---------------------------------------------------------------------------

/// What `mpsroot/RequestServlet` says about a 学校ID.
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct School {
    /// The tenant host every later call is relative to.
    pub server_url: String,
    pub co_login_id: String,
    pub is_class_room: bool,
    pub is_on_premise: bool,
}

/// One class in the 簡易ログイン picker.
#[derive(Debug, Clone, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct ClassGroup {
    pub name: String,
    /// `classGroupId` — what the login call actually sends.
    pub id: String,
    /// 出席番号. Empty when the school does not publish them, in which case the
    /// UI has to let the student type one.
    pub id_numbers: Vec<String>,
}

/// A signed-in identity.
///
/// Deliberately no `qwd`: that is the original's silent-re-login credential,
/// and handing it to the webview would put a password-equivalent in
/// `localStorage`. The session lives in this process and ends with it.
#[derive(Debug, Clone, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct CloudSession {
    pub user_id: String,
    pub login_name: String,
    pub name: String,
    pub email: Option<String>,
    pub co_login_id: String,
    pub company_id: Option<String>,
    pub company_name: Option<String>,
    pub is_class_room: bool,
    pub is_on_premise: bool,
    pub rest_host: String,
}

// ---------------------------------------------------------------------------
// Client
// ---------------------------------------------------------------------------

struct Inner {
    root_server: String,
    rest_host: Option<String>,
    session: Option<CloudSession>,
}

pub struct CloudClient {
    http: reqwest::Client,
    inner: Mutex<Inner>,
    device_name: String,
    product_version: String,
    locale: String,
    timezone: String,
}

impl CloudClient {
    pub fn new(device_name: String, locale: String, timezone: String) -> AppResult<Self> {
        let http = reqwest::Client::builder()
            // The session is a cookie (docs/typespec/README.md §認証), so the
            // jar is the session. Dropping this client signs the user out.
            .cookie_store(true)
            .user_agent(USER_AGENT)
            .timeout(Duration::from_secs(30))
            .build()
            .map_err(|e| AppError::other(format!("HTTP クライアントを作成できません: {e}")))?;

        Ok(Self {
            http,
            inner: Mutex::new(Inner {
                root_server: DEFAULT_ROOT_SERVER.to_string(),
                rest_host: None,
                session: None,
            }),
            device_name,
            product_version: env!("CARGO_PKG_VERSION").to_string(),
            locale,
            timezone,
        })
    }

    pub fn root_server(&self) -> String {
        self.inner.lock().unwrap().root_server.clone()
    }

    pub fn set_root_server(&self, url: &str) {
        let mut inner = self.inner.lock().unwrap();
        inner.root_server = with_trailing_slash(url);
        // A different root means a different tenant and a different session.
        inner.rest_host = None;
        inner.session = None;
    }

    pub fn session(&self) -> Option<CloudSession> {
        self.inner.lock().unwrap().session.clone()
    }

    /// The five fields `CsParamBaseAbstract#stringify()` adds to every request.
    fn base_params(&self) -> Map<String, Value> {
        let mut map = Map::new();
        map.insert("deviceName".into(), json!(self.device_name));
        map.insert("productName".into(), json!(PRODUCT_NAME));
        map.insert("productVersion".into(), json!(self.product_version));
        map.insert("locale".into(), json!(self.locale));
        map.insert("timezone".into(), json!(self.timezone));
        map
    }

    fn headers(&self) -> reqwest::header::HeaderMap {
        use reqwest::header::{HeaderMap, HeaderName, HeaderValue};
        let mut headers = HeaderMap::new();
        let mut put = |name: &'static str, value: &str| {
            if let Ok(value) = HeaderValue::from_str(value) {
                headers.insert(HeaderName::from_static(name), value);
            }
        };
        put("x-dm-appversion", DM_APP_VERSION);
        put("x-dm-locale", &self.locale);
        put("x-dm-productname", PRODUCT_NAME);
        put("x-dm-productversion", &self.product_version);
        headers
    }

    // -- step 1: which server is this school on? ----------------------------

    /// Resolves a 学校ID to its tenant server.
    ///
    /// `GET <root>mpsroot/RequestServlet?coLoginId=…`, which is a plain query
    /// string rather than the JSON envelope everything else uses — it is served
    /// by a different servlet that predates the REST API.
    pub async fn resolve_school(&self, co_login_id: &str) -> AppResult<School> {
        let root = self.root_server();
        let url = format!(
            "{root}mpsroot/RequestServlet?coLoginId={}",
            urlencode(co_login_id)
        );

        let body = self.send(reqwest::Method::GET, &url, None).await?;
        let server_url = body
            .get("serverUrl")
            .and_then(Value::as_str)
            .filter(|s| !s.is_empty())
            .ok_or_else(|| AppError::other(format!("学校ID「{co_login_id}」が見つかりません")))?;

        let school = School {
            server_url: with_trailing_slash(server_url),
            co_login_id: body
                .get("coLoginId")
                .and_then(Value::as_str)
                .unwrap_or(co_login_id)
                .to_string(),
            is_class_room: body
                .get("isClassRoom")
                .and_then(Value::as_bool)
                .unwrap_or(false),
            is_on_premise: body
                .get("isOnPremise")
                .and_then(Value::as_bool)
                .unwrap_or(false),
        };

        self.inner.lock().unwrap().rest_host = Some(school.server_url.clone());
        Ok(school)
    }

    /// The tenant host, resolving it first if this school has not been seen.
    async fn rest_host_for(&self, co_login_id: &str) -> AppResult<String> {
        if let Some(host) = self.inner.lock().unwrap().rest_host.clone() {
            return Ok(host);
        }
        Ok(self.resolve_school(co_login_id).await?.server_url)
    }

    async fn post_command(
        &self,
        co_login_id: &str,
        command: &str,
        params: Map<String, Value>,
    ) -> AppResult<Map<String, Value>> {
        let host = self.rest_host_for(co_login_id).await?;
        // `getRestHost() + contextRoot + command`, exactly as
        // `CsHttpClient.sendRequestWithCommand` builds it.
        let url = format!("{host}{REST_BASE_PATH}{command}");
        self.send(reqwest::Method::POST, &url, Some(Value::Object(params)))
            .await
    }

    /// One place where transport errors, the JSON envelope and `errorCode`
    /// become an `AppError`.
    async fn send(
        &self,
        method: reqwest::Method,
        url: &str,
        body: Option<Value>,
    ) -> AppResult<Map<String, Value>> {
        let mut request = self
            .http
            .request(method, url)
            .headers(self.headers());
        if let Some(body) = body {
            request = request
                .header(reqwest::header::CONTENT_TYPE, "application/json; charset=utf-8")
                .body(serde_json::to_vec(&body)?);
        }

        let response = request
            .send()
            .await
            .map_err(|e| AppError::other(format!("サーバーに接続できません: {e}")))?;

        let status = response.status();
        let text = response
            .text()
            .await
            .map_err(|e| AppError::other(format!("応答を読み取れません: {e}")))?;

        let value: Value = serde_json::from_str(&text).map_err(|_| {
            // A non-JSON body here almost always means a proxy or an error page
            // rather than the API, so quote the status instead of the parse
            // error, which would say nothing useful.
            AppError::other(format!("サーバーの応答を解釈できません (HTTP {status})"))
        })?;

        let body = match value {
            Value::Object(map) => map,
            _ => return Err(AppError::other("サーバーの応答が想定と異なります")),
        };

        check_error_code(&body)?;
        Ok(body)
    }

    // -- step 2: the two ways in --------------------------------------------

    /// 学校ID + ユーザーID + パスワード — the original's `NormalLoginDriver`.
    pub async fn login(
        &self,
        co_login_id: &str,
        login_name: &str,
        password: &str,
    ) -> AppResult<CloudSession> {
        let mut params = self.base_params();
        params.insert("coLoginId".into(), json!(co_login_id));
        params.insert("loginName".into(), json!(login_name));
        params.insert("password".into(), json!(password));

        let body = self.post_command(co_login_id, "/users3/login", params).await?;
        self.finish_login(co_login_id, body)
    }

    /// 学校ID + クラス + 出席番号 + パスワード — `SimpleLoginDriver`, the
    /// account form schools hand to children.
    pub async fn classroom_login(
        &self,
        co_login_id: &str,
        class_group_id: &str,
        id_number: &str,
        password: &str,
    ) -> AppResult<CloudSession> {
        let mut params = self.base_params();
        params.insert("coLoginId".into(), json!(co_login_id));
        params.insert("classGroupId".into(), json!(class_group_id));
        params.insert("idNumber".into(), json!(id_number));
        params.insert("password".into(), json!(password));

        let body = self
            .post_command(co_login_id, "/users3/classroomlogin", params)
            .await?;
        self.finish_login(co_login_id, body)
    }

    fn finish_login(&self, co_login_id: &str, body: Map<String, Value>) -> AppResult<CloudSession> {
        let str_of = |key: &str| body.get(key).and_then(Value::as_str).map(str::to_string);

        // `restHost` redirects the client at a tenant host that may differ from
        // the one `RequestServlet` gave — `prepareLoginResponse` re-points the
        // context here, so this does too.
        let rest_host = str_of("restHost")
            .filter(|s| !s.is_empty())
            .map(|s| with_trailing_slash(&s))
            .unwrap_or_else(|| {
                self.inner
                    .lock()
                    .unwrap()
                    .rest_host
                    .clone()
                    .unwrap_or_default()
            });

        let login_name = str_of("loginName").unwrap_or_default();
        let session = CloudSession {
            user_id: str_of("userId").unwrap_or_default(),
            name: str_of("name").unwrap_or_else(|| login_name.clone()),
            login_name,
            email: str_of("email"),
            co_login_id: str_of("coLoginId").unwrap_or_else(|| co_login_id.to_string()),
            company_id: str_of("companyId"),
            company_name: str_of("companyName"),
            is_class_room: body
                .get("isClassRoom")
                .and_then(Value::as_bool)
                .unwrap_or(false),
            is_on_premise: body
                .get("isOnPremise")
                .and_then(Value::as_bool)
                .unwrap_or(false),
            rest_host: rest_host.clone(),
        };

        let mut inner = self.inner.lock().unwrap();
        inner.rest_host = Some(rest_host);
        inner.session = Some(session.clone());
        Ok(session)
    }

    /// The class list behind the 簡易ログイン picker.
    pub async fn class_groups(&self, co_login_id: &str) -> AppResult<Vec<ClassGroup>> {
        let mut params = self.base_params();
        params.insert("coLoginId".into(), json!(co_login_id));

        let body = self
            .post_command(co_login_id, "/users3/getclassroominfo", params)
            .await?;
        Ok(parse_class_groups(body.get("allList")))
    }

    pub async fn logout(&self) -> AppResult<()> {
        let (host, co_login_id) = {
            let inner = self.inner.lock().unwrap();
            (
                inner.rest_host.clone(),
                inner.session.as_ref().map(|s| s.co_login_id.clone()),
            )
        };

        // Clear locally first: a server that cannot be reached must not leave
        // the user apparently still signed in.
        {
            let mut inner = self.inner.lock().unwrap();
            inner.session = None;
        }

        if let (Some(host), Some(co_login_id)) = (host, co_login_id) {
            let url = format!("{host}{REST_BASE_PATH}/users3/logout");
            let params = self.base_params();
            let _ = co_login_id;
            let _ = self
                .send(reqwest::Method::POST, &url, Some(Value::Object(params)))
                .await;
        }
        Ok(())
    }
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

/// Maps the envelope's `errorCode` onto a message.
///
/// **docs/14 §1 gets this backwards.** It reads "エラーコードが特定値
/// (0x67/0x7b)以外ならエラー", i.e. those two codes are fine. They are not:
/// `LoginDriver.setError` builds a `LoginError` on every path, and the only
/// thing those two codes change is that the message comes from the client
/// instead of the server. Which is itself informative — the server declines to
/// say whether it was the id or the password, and repeating a generic message
/// keeps it that way.
fn check_error_code(body: &Map<String, Value>) -> AppResult<()> {
    let code = body.get("errorCode").and_then(Value::as_i64).unwrap_or(0);
    if code == 0 {
        return Ok(());
    }

    if code == INVALID_EMAIL_EXCEPTION || code == CAN_NOT_LOGIN_EXCEPTION {
        return Err(AppError::other(
            "サインインできませんでした。学校ID・ユーザーID・パスワードをご確認ください。",
        ));
    }

    if body
        .get("isUnderMaintenance")
        .and_then(Value::as_bool)
        .unwrap_or(false)
    {
        let message = body
            .get("maintMessage")
            .and_then(Value::as_str)
            .unwrap_or("サーバーはメンテナンス中です。");
        return Err(AppError::other(message));
    }

    let message = body
        .get("errorMessage")
        .and_then(Value::as_str)
        .filter(|s| !s.is_empty())
        .map(str::to_string)
        .unwrap_or_else(|| format!("サーバーエラー (errorCode {code})"));
    Err(AppError::other(message))
}

/// `allList` is `{ nameList: [...], detailList: { <name>: { id, idNumberList } } }`
/// — the shape `SimpleLoginViewModel` reads. Order comes from `nameList`, not
/// from the map, because JSON object order is not something to rely on.
fn parse_class_groups(all_list: Option<&Value>) -> Vec<ClassGroup> {
    let Some(all_list) = all_list.and_then(Value::as_object) else {
        return Vec::new();
    };
    let names = all_list.get("nameList").and_then(Value::as_array);
    let details = all_list.get("detailList").and_then(Value::as_object);
    let (Some(names), Some(details)) = (names, details) else {
        return Vec::new();
    };

    names
        .iter()
        .filter_map(Value::as_str)
        .filter_map(|name| {
            let detail = details.get(name)?.as_object()?;
            Some(ClassGroup {
                name: name.to_string(),
                id: detail.get("id").and_then(Value::as_str)?.to_string(),
                id_numbers: detail
                    .get("idNumberList")
                    .and_then(Value::as_array)
                    .map(|list| {
                        list.iter()
                            .filter_map(Value::as_str)
                            .map(str::to_string)
                            .collect()
                    })
                    .unwrap_or_default(),
            })
        })
        .collect()
}

fn with_trailing_slash(url: &str) -> String {
    let trimmed = url.trim();
    if trimmed.ends_with('/') {
        trimmed.to_string()
    } else {
        format!("{trimmed}/")
    }
}

/// Percent-encodes a query value. `CmUtils.safeURLEncode` in the original; a
/// 学校ID is usually alphanumeric but nothing guarantees it.
fn urlencode(value: &str) -> String {
    let mut out = String::with_capacity(value.len());
    for byte in value.as_bytes() {
        match byte {
            b'A'..=b'Z' | b'a'..=b'z' | b'0'..=b'9' | b'-' | b'_' | b'.' | b'~' => {
                out.push(*byte as char)
            }
            _ => out.push_str(&format!("%{byte:02X}")),
        }
    }
    out
}

#[cfg(test)]
mod tests {
    use super::*;

    fn body(json: serde_json::Value) -> Map<String, Value> {
        match json {
            Value::Object(map) => map,
            _ => unreachable!(),
        }
    }

    #[test]
    fn a_zero_error_code_is_success() {
        assert!(check_error_code(&body(json!({ "errorCode": 0 }))).is_ok());
        // A response with no `errorCode` at all is the `RequestServlet` shape.
        assert!(check_error_code(&body(json!({ "serverUrl": "https://x/" }))).is_ok());
    }

    #[test]
    fn the_two_opaque_codes_do_not_echo_the_server() {
        // docs/14 §1 reads as though these were *successes*. They are refusals,
        // and the point of them is that the reason is withheld — so the message
        // must not come from the server even when it offers one.
        for code in [INVALID_EMAIL_EXCEPTION, CAN_NOT_LOGIN_EXCEPTION] {
            let err = check_error_code(&body(json!({
                "errorCode": code,
                "errorMessage": "user not found",
            })))
            .unwrap_err()
            .to_string();
            assert!(!err.contains("user not found"), "leaked: {err}");
            assert!(err.contains("学校ID"));
        }
    }

    #[test]
    fn other_codes_report_what_the_server_said() {
        let err = check_error_code(&body(json!({
            "errorCode": 42,
            "errorMessage": "利用期限が切れています",
        })))
        .unwrap_err()
        .to_string();
        assert_eq!(err, "利用期限が切れています");
    }

    #[test]
    fn a_code_with_no_message_still_says_something() {
        let err = check_error_code(&body(json!({ "errorCode": 42 })))
            .unwrap_err()
            .to_string();
        assert!(err.contains("42"), "{err}");
    }

    #[test]
    fn maintenance_wins_over_the_generic_message() {
        let err = check_error_code(&body(json!({
            "errorCode": 7,
            "isUnderMaintenance": true,
            "maintMessage": "本日 22:00 まで停止しています",
        })))
        .unwrap_err()
        .to_string();
        assert_eq!(err, "本日 22:00 まで停止しています");
    }

    #[test]
    fn class_groups_follow_name_list_order() {
        let all = json!({
            "nameList": ["3年2組", "1年1組"],
            "detailList": {
                "1年1組": { "id": "cg-1", "idNumberList": ["1", "2"] },
                "3年2組": { "id": "cg-32", "idNumberList": ["7"] },
            }
        });
        let groups = parse_class_groups(Some(&all));

        // JSON object order is not order; `nameList` is.
        assert_eq!(
            groups.iter().map(|g| g.name.as_str()).collect::<Vec<_>>(),
            ["3年2組", "1年1組"]
        );
        assert_eq!(groups[0].id, "cg-32");
        assert_eq!(groups[1].id_numbers, ["1", "2"]);
    }

    #[test]
    fn a_class_without_numbers_is_still_offered() {
        // Some schools do not publish 出席番号; the class must still be
        // selectable, with the number typed by hand.
        let all = json!({
            "nameList": ["2年A組"],
            "detailList": { "2年A組": { "id": "cg-2a" } }
        });
        let groups = parse_class_groups(Some(&all));
        assert_eq!(groups.len(), 1);
        assert!(groups[0].id_numbers.is_empty());
    }

    #[test]
    fn a_name_with_no_detail_is_dropped_rather_than_half_built() {
        let all = json!({
            "nameList": ["ある組", "ない組"],
            "detailList": { "ある組": { "id": "cg-1" } }
        });
        let groups = parse_class_groups(Some(&all));
        assert_eq!(groups.len(), 1);
        assert_eq!(groups[0].name, "ある組");
    }

    #[test]
    fn a_missing_or_malformed_all_list_is_an_empty_list_not_a_panic() {
        assert!(parse_class_groups(None).is_empty());
        assert!(parse_class_groups(Some(&json!("nope"))).is_empty());
        assert!(parse_class_groups(Some(&json!({ "nameList": ["a"] }))).is_empty());
    }

    #[test]
    fn urls_get_exactly_one_trailing_slash() {
        assert_eq!(with_trailing_slash("https://x.example"), "https://x.example/");
        assert_eq!(with_trailing_slash("https://x.example/"), "https://x.example/");
        assert_eq!(with_trailing_slash("  https://x.example  "), "https://x.example/");
    }

    #[test]
    fn school_ids_are_escaped_into_the_query() {
        assert_eq!(urlencode("school01"), "school01");
        assert_eq!(urlencode("a b&c=d"), "a%20b%26c%3Dd");
        // Non-ASCII goes out as UTF-8 percent triples, not as raw bytes.
        assert_eq!(urlencode("学"), "%E5%AD%A6");
    }
}
