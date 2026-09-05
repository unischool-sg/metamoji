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
//!
//! ## The session is on disk
//!
//! Signing in on every launch is not a security posture, it is an obstacle —
//! and the original does not do it either (`CsDCUserInfoSettings` keeps the
//! credential so `executeWithAutoLoginFor` can re-authenticate silently). So
//! the cookie jar, the identity and the credential are written to
//! `session.json` in the app data directory, `0600` where the platform has
//! permissions.
//!
//! The credential is there because `cosmos/*` — the classroom rooms — sends it
//! in a JSON part on **every request** rather than relying on the cookie
//! (`collabo/rest.rs`). Persisting the cookie alone would leave the classroom
//! broken after a restart while everything else worked, which is a worse
//! failure than an honest one.

use std::path::PathBuf;
use std::sync::{Arc, Mutex};
use std::time::Duration;

use reqwest_cookie_store::CookieStoreMutex;

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
/// These identify the *protocol*, not the platform. The server checks them:
/// sending this app's own version instead of the client's got the login refused
/// with "The product version is not supported", which is the server saying the
/// version is part of the contract rather than telemetry. `productVersion` is
/// the analysed APK's `versionName` (`CmUtils.getProductVersion` reads
/// `PackageInfo.versionName`; `apk/apktool.yml`), so it will need bumping when
/// MetaMoJi retires that release.
///
/// What this client actually is travels in `deviceName`, which is the field a
/// school administrator sees in a device list — see `device_name` in `lib.rs`.
pub const PRODUCT_NAME: &str = "Android-Share-G-ClassRoom";
pub const PRODUCT_VERSION: &str = "3.15.1.0";
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

/// What `cosmos/*` puts in its `authInfo` part.
#[derive(Debug, Clone, Serialize, Deserialize)]
pub enum Credential {
    Password(String),
    /// The pre-shared token a QR code carries.
    Qwd(String),
}

/// One drive the user belongs to.
#[derive(Debug, Clone, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct DriveEntry {
    pub drive_id: String,
    pub name: Option<String>,
    pub group_id: Option<String>,
    pub team_id: Option<String>,
    /// The user has hidden this drive from their own list.
    pub hidden: bool,
}

/// A class box — the original's 「クラスボックス」, an online lesson room that
/// owns a drive the whole class writes into.
#[derive(Debug, Clone, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct ClassBox {
    pub drive_id: String,
    pub group_id: Option<String>,
    pub name: Option<String>,
    pub join_code: Option<String>,
    pub join_enabled: Option<bool>,
}

/// A signed-in identity.
///
/// Deliberately no `qwd`: that is the original's silent-re-login credential,
/// and handing it to the webview would put a password-equivalent in
/// `localStorage`. The session lives in this process and ends with it.
#[derive(Debug, Clone, Serialize, Deserialize)]
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
    /// The credential `cosmos/*` needs in its `authInfo` part.
    ///
    /// Held because the collabo service is a separate system that authenticates
    /// *per request* rather than by session cookie — `createAuthInfoParam`
    /// builds a JSON part containing `userPassword` or `qwd` every time. There
    /// is no cookie-only path to fall back on.
    ///
    /// Process memory only: never persisted, and `#[serde(skip)]`-equivalent by
    /// virtue of living here rather than on `CloudSession`, so it cannot reach
    /// the webview.
    credential: Option<Credential>,
    rest_host: Option<String>,
    /// What the root servlet said about the school currently being signed into.
    /// `isClassRoom`, `isOnPremise` and the tenant host all come from here, not
    /// from the login response — `prepareLoginResponse` passes them *in*.
    school: Option<School>,
    session: Option<CloudSession>,
}

pub struct CloudClient {
    http: reqwest::Client,
    cookies: Arc<CookieStoreMutex>,
    /// Where the session is written. `None` disables persistence, which is what
    /// the tests want.
    store_path: Option<PathBuf>,
    inner: Mutex<Inner>,
    device_name: String,
    locale: String,
    timezone: String,
}

/// Everything needed to pick a session back up after a restart.
#[derive(Default, Serialize, Deserialize)]
struct Persisted {
    root_server: Option<String>,
    rest_host: Option<String>,
    school: Option<School>,
    session: Option<CloudSession>,
    credential: Option<Credential>,
    cookies: Option<Value>,
}

impl CloudClient {
    pub fn new(
        device_name: String,
        locale: String,
        timezone: String,
        store_path: Option<PathBuf>,
    ) -> AppResult<Self> {
        let saved = store_path
            .as_ref()
            .and_then(|path| std::fs::read_to_string(path).ok())
            .and_then(|text| serde_json::from_str::<Persisted>(&text).ok())
            .unwrap_or_default();

        // The session *is* the cookie (docs/typespec/README.md §認証), so the
        // jar has to survive the process for the sign-in to.
        let jar = saved
            .cookies
            .as_ref()
            .and_then(|value| serde_json::to_string(value).ok())
            .and_then(|json| cookie_store::serde::json::load(json.as_bytes()).ok())
            .unwrap_or_default();
        let cookies = Arc::new(CookieStoreMutex::new(jar));

        let http = reqwest::Client::builder()
            .cookie_provider(Arc::clone(&cookies))
            .user_agent(USER_AGENT)
            .timeout(Duration::from_secs(30))
            .build()
            .map_err(|e| AppError::other(format!("HTTP クライアントを作成できません: {e}")))?;

        Ok(Self {
            http,
            cookies,
            store_path,
            inner: Mutex::new(Inner {
                root_server: saved
                    .root_server
                    .unwrap_or_else(|| DEFAULT_ROOT_SERVER.to_string()),
                credential: saved.credential,
                rest_host: saved.rest_host,
                school: saved.school,
                session: saved.session,
            }),
            device_name,
            locale,
            timezone,
        })
    }

    /// Writes the session out. Called after anything that changes it.
    ///
    /// Failure is logged, not raised: a sign-in that worked must not be
    /// reported as failed because a file could not be written.
    fn persist(&self) {
        let Some(path) = self.store_path.as_ref() else {
            return;
        };

        let snapshot = {
            let inner = self.inner.lock().unwrap();
            Persisted {
                root_server: Some(inner.root_server.clone()),
                rest_host: inner.rest_host.clone(),
                school: inner.school.clone(),
                session: inner.session.clone(),
                credential: inner.credential.clone(),
                cookies: {
                    let mut buffer = Vec::new();
                    let store = self.cookies.lock().unwrap();
                    // `save` alone drops non-persistent cookies — and a login
                    // session cookie has no `Expires`, so it is exactly the one
                    // that would be dropped. Saving it is the entire point.
                    cookie_store::serde::json::save_incl_expired_and_nonpersistent(
                        &store,
                        &mut buffer,
                    )
                    .ok()
                    .and_then(|_| serde_json::from_slice(&buffer).ok())
                },
            }
        };

        let Ok(json) = serde_json::to_vec_pretty(&snapshot) else {
            return;
        };
        if std::fs::write(path, json).is_err() {
            log::warn!("could not write the session to {}", path.display());
            return;
        }
        restrict_permissions(path);
    }

    pub fn root_server(&self) -> String {
        self.inner.lock().unwrap().root_server.clone()
    }

    pub fn set_root_server(&self, url: &str) {
        let mut inner = self.inner.lock().unwrap();
        inner.root_server = with_trailing_slash(url);
        // A different root means a different tenant and a different session.
        inner.rest_host = None;
        inner.school = None;
        inner.session = None;
        inner.credential = None;
        drop(inner);
        self.persist();
    }

    pub fn session(&self) -> Option<CloudSession> {
        self.inner.lock().unwrap().session.clone()
    }

    /// The credential and identity `cosmos/*` needs. `None` when signed out.
    pub fn collabo_identity(&self) -> Option<(CloudSession, Credential)> {
        let inner = self.inner.lock().unwrap();
        Some((inner.session.clone()?, inner.credential.clone()?))
    }

    /// The shared HTTP client, so the collabo calls reuse the cookie jar.
    pub fn http(&self) -> reqwest::Client {
        self.http.clone()
    }

    pub fn locale(&self) -> &str {
        &self.locale
    }

    /// The credential in the shape the drive service's login wants.
    pub fn drive_credential(&self) -> Option<(String, Option<String>, Option<String>)> {
        let inner = self.inner.lock().unwrap();
        let session = inner.session.as_ref()?;
        let (password, qwd) = match inner.credential.as_ref()? {
            Credential::Password(p) => (Some(p.clone()), None),
            Credential::Qwd(q) => (None, Some(q.clone())),
        };
        Some((session.user_id.clone(), password, qwd))
    }

    /// The five fields `CsParamBaseAbstract#stringify()` adds to every request.
    fn base_params(&self) -> Map<String, Value> {
        let mut map = Map::new();
        map.insert("deviceName".into(), json!(self.device_name));
        map.insert("productName".into(), json!(PRODUCT_NAME));
        map.insert("productVersion".into(), json!(PRODUCT_VERSION));
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
        put("x-dm-productversion", PRODUCT_VERSION);
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

        // `serverURL`, not `serverUrl`. The Java *field* is `serverUrl`, but
        // `ExecuteGetServerUrlWithParams` reads the JSON key by hand and the
        // key is capitalised. Reading the field name instead makes every school
        // look as though it does not exist.
        let server_url = body
            .get("serverURL")
            .and_then(Value::as_str)
            .filter(|s| !s.is_empty())
            .ok_or_else(|| AppError::other(format!("学校ID「{co_login_id}」が見つかりません")))?;

        let school = School {
            server_url: with_trailing_slash(server_url),
            // The servlet does not echo the id back.
            co_login_id: co_login_id.to_string(),
            is_class_room: body
                .get("isClassRoom")
                .and_then(Value::as_bool)
                .unwrap_or(false),
            is_on_premise: body
                .get("isOnPremise")
                .and_then(Value::as_bool)
                .unwrap_or(false),
        };

        let mut inner = self.inner.lock().unwrap();
        inner.rest_host = Some(school.server_url.clone());
        inner.school = Some(school.clone());
        Ok(school)
    }

    /// The school being signed into, resolving it if it has not been seen.
    async fn school_for(&self, co_login_id: &str) -> AppResult<School> {
        let cached = self.inner.lock().unwrap().school.clone();
        match cached {
            Some(school) if school.co_login_id == co_login_id => Ok(school),
            _ => self.resolve_school(co_login_id).await,
        }
    }

    async fn post_command(
        &self,
        co_login_id: &str,
        command: &str,
        params: Map<String, Value>,
    ) -> AppResult<Map<String, Value>> {
        self.command(co_login_id, reqwest::Method::POST, command, params)
            .await
    }

    /// A command with an explicit method.
    ///
    /// The verb is not decoration: `/drives/entry` and `/drives/{id}/home` are
    /// `GET`, and the tenant answers a `POST` to them differently. The body
    /// goes along regardless — `CsParamBaseAbstract#stringify()` is called for
    /// every request and the client sends JSON on `GET` too, which is unusual
    /// enough that `docs/typespec/README.md` calls it out.
    async fn command(
        &self,
        co_login_id: &str,
        method: reqwest::Method,
        command: &str,
        params: Map<String, Value>,
    ) -> AppResult<Map<String, Value>> {
        let host = self.school_for(co_login_id).await?.server_url;
        // `getRestHost() + contextRoot + command`, exactly as
        // `CsHttpClient.sendRequestWithCommand` builds it.
        let url = format!("{host}{REST_BASE_PATH}{command}");
        self.send(method, &url, Some(Value::Object(params))).await
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

        check_error(status.as_u16(), &body)?;
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

        let school = self.school_for(co_login_id).await?;
        let body = self.post_command(co_login_id, "/users3/login", params).await?;
        let session = self.finish_login(&school, body)?;
        self.inner.lock().unwrap().credential =
            Some(Credential::Password(password.to_string()));
        self.persist();
        Ok(session)
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

        let school = self.school_for(co_login_id).await?;
        let body = self
            .post_command(co_login_id, "/users3/classroomlogin", params)
            .await?;
        let session = self.finish_login(&school, body)?;
        self.inner.lock().unwrap().credential =
            Some(Credential::Password(password.to_string()));
        self.persist();
        Ok(session)
    }

    /// Builds the session from a successful login response.
    ///
    /// Follows `prepareLoginResponse`, which is fussier than it looks. Only
    /// some of these come from the body:
    ///
    /// * `uuid` — **not** `userId`; that is the Java field's name, not the key
    /// * `loginName`, `name`, `email`, `companyId`, `companyName` — from the body
    /// * `restHost`, `isClassRoom`, `isOnPremise` — from the *school lookup*,
    ///   passed in rather than returned; the login response has no such fields
    /// * `coLoginId` — the id that was typed
    fn finish_login(&self, school: &School, body: Map<String, Value>) -> AppResult<CloudSession> {
        let str_of = |key: &str| {
            body.get(key)
                .and_then(Value::as_str)
                .filter(|s| !s.is_empty())
                .map(str::to_string)
        };

        let login_name = str_of("loginName").unwrap_or_default();
        let session = CloudSession {
            user_id: str_of("uuid").unwrap_or_default(),
            name: str_of("name").unwrap_or_else(|| login_name.clone()),
            login_name,
            email: str_of("email"),
            co_login_id: school.co_login_id.clone(),
            company_id: str_of("companyId"),
            company_name: str_of("companyName"),
            is_class_room: school.is_class_room,
            is_on_premise: school.is_on_premise,
            rest_host: school.server_url.clone(),
        };

        let mut inner = self.inner.lock().unwrap();
        inner.rest_host = Some(school.server_url.clone());
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
        // `alllist`, all lower case. Same trap as `serverURL` and `uuid`: the
        // TypeSpec names the Java *field* (`allList`), and the wire key differs.
        // Verified against a live school's response.
        Ok(parse_class_groups(body.get("alllist")))
    }

    /// Where a drive's own service lives.
    ///
    /// This is the link `docs/typespec/drive/sync-drive.tsp` records as
    /// unresolved — it notes that every `SdCloudService` path is relative to a
    /// per-drive `homeDir` and that it could not find where that value is first
    /// issued. It is issued here: `GET /drives/{driveId}/home` on the tenant.
    pub async fn drive_home(&self, drive_id: &str) -> AppResult<String> {
        let co_login_id = self.signed_in_school()?;
        let mut params = self.base_params();
        params.insert("driveId".into(), json!(drive_id));

        let body = self
            .command(
                &co_login_id,
                reqwest::Method::GET,
                &format!("/drives/{drive_id}/home"),
                params,
            )
            .await?;
        Ok(with_trailing_slash(&required_str(&body, "homeDir")?))
    }

    /// The drives the signed-in user belongs to — their class boxes.
    ///
    /// This is what makes the classroom usable without a join code: a student
    /// who joined last term should open the app and see their class, not be
    /// asked for a code again.
    ///
    /// Entry fields are `DvmDriveBean`'s: `id`, `name`, `groupId`, `teamId`,
    /// `hidden`. Note `id`, not `driveId` — the accessor reads `"id"`.
    pub async fn drive_entries(&self) -> AppResult<Vec<DriveEntry>> {
        let co_login_id = self.signed_in_school()?;
        let body = self
            .command(
                &co_login_id,
                reqwest::Method::GET,
                "/drives/entry",
                self.base_params(),
            )
            .await?;

        let list = body
            .get("list")
            .and_then(Value::as_array)
            .cloned()
            .unwrap_or_default();

        Ok(list.iter().filter_map(parse_drive_entry).collect())
    }

    // -- class boxes ---------------------------------------------------------

    /// The 学校ID of the signed-in session, or an error naming what is missing.
    ///
    /// Every class-box call is relative to the tenant the session belongs to,
    /// so there is no sensible behaviour without one.
    fn signed_in_school(&self) -> AppResult<String> {
        self.inner
            .lock()
            .unwrap()
            .session
            .as_ref()
            .map(|s| s.co_login_id.clone())
            .ok_or_else(|| AppError::other("サインインしていません"))
    }

    /// Creates a class box. The teacher's side of 「教室を作る」.
    pub async fn create_class_box(&self, group_name: &str) -> AppResult<ClassBox> {
        let co_login_id = self.signed_in_school()?;
        let mut params = self.base_params();
        params.insert("groupName".into(), json!(group_name));

        let body = self
            .post_command(&co_login_id, "/users3/crbox/create", params)
            .await?;

        let drive_id = required_str(&body, "driveId")?;
        // The create response carries no join code; the teacher needs one to
        // read out, so fetch it rather than making them press a second button.
        let code = self.class_code(&drive_id, false).await.ok();

        Ok(ClassBox {
            drive_id,
            group_id: opt_str(&body, "groupId"),
            name: Some(group_name.to_string()),
            join_code: code.as_ref().and_then(|c| c.join_code.clone()),
            join_enabled: code.and_then(|c| c.join_enabled),
        })
    }

    /// Joins a class box with the code the teacher read out.
    pub async fn join_class_box(&self, join_code: &str) -> AppResult<ClassBox> {
        let co_login_id = self.signed_in_school()?;
        let mut params = self.base_params();
        params.insert("joinCode".into(), json!(join_code));

        let body = self
            .post_command(&co_login_id, "/users3/crbox/join", params)
            .await?;

        Ok(ClassBox {
            drive_id: required_str(&body, "driveId")?,
            group_id: None,
            name: None,
            join_code: Some(join_code.to_string()),
            join_enabled: None,
        })
    }

    /// The join code for a class box.
    ///
    /// `regenerate` asks the server for a fresh one, which is how a teacher
    /// shuts out a code that has escaped the classroom.
    pub async fn class_code(&self, drive_id: &str, regenerate: bool) -> AppResult<ClassBox> {
        let co_login_id = self.signed_in_school()?;
        let mut params = self.base_params();
        params.insert("driveId".into(), json!(drive_id));
        params.insert("updateJoinCode".into(), json!(regenerate));

        let body = self
            .post_command(&co_login_id, "/users3/crbox/get/joincode", params)
            .await?;

        Ok(ClassBox {
            drive_id: drive_id.to_string(),
            group_id: None,
            name: None,
            join_code: opt_str(&body, "joinCode"),
            join_enabled: body.get("joinEnabled").and_then(Value::as_bool),
        })
    }

    /// Renames a class box or opens/closes it to new joiners.
    pub async fn update_class_box(
        &self,
        drive_id: &str,
        name: Option<&str>,
        join_enabled: Option<bool>,
    ) -> AppResult<()> {
        let co_login_id = self.signed_in_school()?;
        let mut params = self.base_params();
        params.insert("driveId".into(), json!(drive_id));
        if let Some(name) = name {
            params.insert("name".into(), json!(name));
        }
        if let Some(enabled) = join_enabled {
            // A tri-state on the wire: the third value means "leave it alone",
            // which is what omitting the field would have meant anyway.
            params.insert(
                "joinEnabled".into(),
                json!(if enabled { "ENABLED" } else { "DISABLED" }),
            );
        }

        self.post_command(&co_login_id, "/users3/crbox/update", params)
            .await?;
        Ok(())
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
            inner.credential = None;
        }
        // Written before the network call: a logout must stick even if the
        // server cannot be told about it.
        self.cookies.lock().unwrap().clear();
        self.persist();

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

/// Turns a response into an error, or into nothing.
///
/// There are two envelopes, and `putResponseDataFromNewBean` shows both:
///
/// ```text
///   REST API      { "name": "…", "message": "…", "data": { "errorCode": N } }
///   RequestServlet{ "errorCode": N, "errorMessage": "…", "serverURL": "…" }
/// ```
///
/// The REST one nests the code under `data` and puts the human message at the
/// top level under `message`. Reading a top-level `errorCode` — which is what
/// the response *bean's* field is called — finds nothing, so a refused login
/// looks like a success with every field empty.
///
/// The HTTP status matters too: the original treats any non-2xx as an error
/// before it looks at the body at all.
///
/// **docs/14 §1 has the accepted codes backwards.** It reads "エラーコードが
/// 特定値(0x67/0x7b)以外ならエラー", i.e. those two are fine. They are not:
/// `LoginDriver.setError` builds a `LoginError` on every path, and the only
/// thing those two change is that the message comes from the client instead of
/// the server. Which is itself informative — the server declines to say whether
/// it was the id or the password, and repeating a generic message keeps it that
/// way.
fn check_error(status: u16, body: &Map<String, Value>) -> AppResult<()> {
    // The REST envelope: `data.errorCode` with `message` alongside it.
    let nested = body
        .get("data")
        .and_then(Value::as_object)
        .and_then(|data| data.get("errorCode"))
        .and_then(Value::as_i64);

    // The servlet envelope: a flat `errorCode`.
    let flat = body.get("errorCode").and_then(Value::as_i64);

    let code = nested.or(flat).unwrap_or(0);
    let http_ok = (200..300).contains(&status);
    if code == 0 && http_ok {
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

    // `message` is the REST envelope's; `errorMessage` the servlet's.
    let message = ["message", "errorMessage"]
        .iter()
        .filter_map(|key| body.get(*key))
        .filter_map(Value::as_str)
        .find(|s| !s.is_empty())
        .map(str::to_string);

    Err(AppError::other(message.unwrap_or_else(|| {
        if code != 0 {
            format!("サーバーエラー (errorCode {code})")
        } else {
            format!("サーバーエラー (HTTP {status})")
        }
    })))
}

/// `alllist` is `{ nameList: [...], detailList: { <name>: { id, idNumberList } } }`
/// — the shape `SimpleLoginViewModel` reads. Order comes from `nameList`, not
/// from the map, because JSON object order is not something to rely on.
///
/// A class with an empty `idNumberList` is real: 「教師グループ」 and 「〜担任団」
/// are groups of staff, and they arrive in the same list as the classes.
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

/// Narrows the session file to the owner.
///
/// It holds a credential, so leaving it world-readable in a shared home
/// directory would be careless. Windows has no equivalent that is meaningful
/// here — its ACLs already inherit from the user profile — so this is a no-op
/// there rather than a false reassurance.
#[cfg(unix)]
fn restrict_permissions(path: &std::path::Path) {
    use std::os::unix::fs::PermissionsExt;
    let _ = std::fs::set_permissions(path, std::fs::Permissions::from_mode(0o600));
}

#[cfg(not(unix))]
fn restrict_permissions(_path: &std::path::Path) {}

/// One entry of `/drives/entry`'s `list`.
///
/// An entry with no `id` is dropped: it cannot be opened, and a row that does
/// nothing when clicked is worse than a shorter list.
fn parse_drive_entry(value: &Value) -> Option<DriveEntry> {
    let entry = value.as_object()?;
    let text = |key: &str| {
        entry
            .get(key)
            .and_then(Value::as_str)
            .filter(|s| !s.is_empty())
            .map(str::to_string)
    };

    Some(DriveEntry {
        drive_id: text("id")?,
        name: text("name"),
        group_id: text("groupId"),
        team_id: text("teamId"),
        // `isHidden` compares against the integer 1, so anything else — absent,
        // 0, a string — means visible.
        hidden: entry.get("hidden").and_then(Value::as_i64) == Some(1),
    })
}

fn opt_str(body: &Map<String, Value>, key: &str) -> Option<String> {
    body.get(key)
        .and_then(Value::as_str)
        .filter(|s| !s.is_empty())
        .map(str::to_string)
}

fn required_str(body: &Map<String, Value>, key: &str) -> AppResult<String> {
    opt_str(body, key)
        .ok_or_else(|| AppError::other(format!("サーバーの応答に {key} がありません")))
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

    /// The constant has to match the APK the protocol was read from. If the
    /// checkout has no `apk/`, there is nothing to compare against and the
    /// check is skipped rather than failed.
    #[test]
    fn the_product_version_matches_the_analysed_apk() {
        let apktool = std::path::Path::new(env!("CARGO_MANIFEST_DIR"))
            .join("../../apk/apktool.yml");
        let Ok(text) = std::fs::read_to_string(apktool) else {
            return;
        };
        let version = text
            .lines()
            .find_map(|line| line.trim().strip_prefix("versionName:"))
            .map(str::trim)
            .expect("apktool.yml has no versionName");
        assert_eq!(PRODUCT_VERSION, version);
    }

    #[test]
    fn a_zero_error_code_is_success() {
        assert!(check_error(200, &body(json!({ "errorCode": 0 }))).is_ok());
        assert!(check_error(200, &body(json!({ "data": { "errorCode": 0 } }))).is_ok());
        // A body with no code at all is the successful-login shape.
        assert!(check_error(200, &body(json!({ "uuid": "u-1" }))).is_ok());
    }

    #[test]
    fn the_rest_envelope_nests_the_code_under_data() {
        // `putResponseDataFromNewBean` reads `data.errorCode` and the top-level
        // `message`. Looking for a top-level `errorCode` — the *field* name on
        // the Java bean — finds nothing, and a refused login sails through as a
        // success with every field empty.
        let err = check_error(
            200,
            &body(json!({
                "name": "CanNotLoginException",
                "message": "ログインできません",
                "data": { "errorCode": 42 },
            })),
        )
        .unwrap_err()
        .to_string();
        assert_eq!(err, "ログインできません");
    }

    #[test]
    fn the_servlet_envelope_keeps_the_code_at_the_top() {
        let err = check_error(
            200,
            &body(json!({ "errorCode": 42, "errorMessage": "該当なし" })),
        )
        .unwrap_err()
        .to_string();
        assert_eq!(err, "該当なし");
    }

    #[test]
    fn the_two_opaque_codes_do_not_echo_the_server() {
        // docs/14 §1 reads as though these were *successes*. They are refusals,
        // and the point of them is that the reason is withheld — so the message
        // must not come from the server even when it offers one.
        for code in [INVALID_EMAIL_EXCEPTION, CAN_NOT_LOGIN_EXCEPTION] {
            let err = check_error(
                200,
                &body(json!({
                    "message": "user not found",
                    "data": { "errorCode": code },
                })),
            )
            .unwrap_err()
            .to_string();
            assert!(!err.contains("user not found"), "leaked: {err}");
            assert!(err.contains("学校ID"));
        }
    }

    #[test]
    fn a_non_2xx_status_is_an_error_even_with_a_clean_body() {
        let err = check_error(503, &body(json!({ "errorCode": 0 })))
            .unwrap_err()
            .to_string();
        assert!(err.contains("503"), "{err}");
    }

    #[test]
    fn a_code_with_no_message_still_says_something() {
        let err = check_error(200, &body(json!({ "data": { "errorCode": 42 } })))
            .unwrap_err()
            .to_string();
        assert!(err.contains("42"), "{err}");
    }

    #[test]
    fn maintenance_wins_over_the_generic_message() {
        let err = check_error(
            200,
            &body(json!({
                "data": { "errorCode": 7 },
                "isUnderMaintenance": true,
                "maintMessage": "本日 22:00 まで停止しています",
            })),
        )
        .unwrap_err()
        .to_string();
        assert_eq!(err, "本日 22:00 まで停止しています");
    }

    #[test]
    fn a_drive_entry_reads_the_bean_field_names() {
        // `DvmDriveBean` reads `"id"`, not `"driveId"` — the field name and the
        // key differ here as they do elsewhere in this API.
        let entry = parse_drive_entry(&json!({
            "id": "d-1",
            "name": "1年1組",
            "groupId": "g-1",
            "teamId": "t-1",
            "hidden": 0,
        }))
        .expect("a complete entry");

        assert_eq!(entry.drive_id, "d-1");
        assert_eq!(entry.name.as_deref(), Some("1年1組"));
        assert_eq!(entry.group_id.as_deref(), Some("g-1"));
        assert!(!entry.hidden);
    }

    #[test]
    fn only_the_integer_one_means_hidden() {
        // `isHidden` compares against 1; anything else is visible, and
        // treating "absent" as hidden would empty the list.
        assert!(parse_drive_entry(&json!({ "id": "d", "hidden": 1 })).unwrap().hidden);
        assert!(!parse_drive_entry(&json!({ "id": "d", "hidden": 0 })).unwrap().hidden);
        assert!(!parse_drive_entry(&json!({ "id": "d" })).unwrap().hidden);
        assert!(!parse_drive_entry(&json!({ "id": "d", "hidden": "1" })).unwrap().hidden);
    }

    #[test]
    fn an_entry_with_no_id_is_dropped() {
        // It could not be opened; a row that does nothing is worse than none.
        assert!(parse_drive_entry(&json!({ "name": "名前だけ" })).is_none());
        assert!(parse_drive_entry(&json!({ "id": "" })).is_none());
        assert!(parse_drive_entry(&json!("not an object")).is_none());
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
