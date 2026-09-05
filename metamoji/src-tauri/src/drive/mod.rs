//! The class box's contents — `SdCloudService`.
//!
//! A class box is a *drive*: shared storage the whole class writes into. The
//! join code gets you membership; this is what gets you the notes.
//!
//! **It is a separate service from `users3/*`, in every way that matters:**
//!
//! * its base URL is per-drive (`homeDir`), obtained from
//!   `CloudClient::drive_home` — there is no fixed host
//! * it keeps **its own session cookie**, so signing into the tenant does not
//!   sign you into a drive; `login` here is a second, separate handshake
//! * `GET`/`DELETE` send no body at all. `POST` does — and `requestBody` is a
//!   key in `SdHttpClient`'s *internal* parameter map, not a form field: the
//!   string under it becomes the raw body, typed `application/json`
//!   (`SdHttpClient.smali` L1409-1449). Sending it as a form field is a silent
//!   way to be refused.
//! * booleans go on the wire as the **strings** `"true"`/`"false"`
//! * the headers differ too: `MMJSdCloudService/1.0`, an `X-DM-Device`, and no
//!   `X-DM-AppVersion`
//!
//! Each of those is a way to get it wrong while looking right, which is why
//! this is a separate client rather than a few more methods on `CloudClient`.

use std::sync::Mutex;
use std::time::Duration;

use serde::Serialize;
use serde_json::{json, Map, Value};

use crate::cloud::{PRODUCT_NAME, PRODUCT_VERSION};
use crate::error::{AppError, AppResult};

const USER_AGENT: &str = "MMJSdCloudService/1.0";

/// `SdCloudServiceErrorCode.NOT_LOGIN_EXCEPTION`. The drive session expires
/// independently of the tenant one, so this is routine rather than fatal.
const NOT_LOGIN_EXCEPTION: i64 = 0x2af9;
/// `REVISION` conflict — someone else wrote first.
const REVISION_EXCEPTION: i64 = 0x2afa;

/// One note in a class box.
#[derive(Debug, Clone, Serialize)]
#[serde(rename_all = "camelCase")]
pub struct DriveDocument {
    pub document_id: String,
    pub title: Option<String>,
    pub revision: Option<String>,
    pub updated_at: Option<String>,
}

/// A downloaded file: the bytes and what the server called them.
#[derive(Debug, Clone)]
pub struct DriveFile {
    pub bytes: Vec<u8>,
    pub mime_type: Option<String>,
}

#[derive(Clone)]
struct Session {
    home_dir: String,
    user_id: String,
    password: Option<String>,
    qwd: Option<String>,
}

pub struct DriveClient {
    http: reqwest::Client,
    session: Mutex<Option<Session>>,
    locale: String,
    device: String,
}

impl DriveClient {
    pub fn new(locale: String, device: String) -> AppResult<Self> {
        let http = reqwest::Client::builder()
            // Its own jar. Sharing one with `CloudClient` would let a tenant
            // cookie be sent to a drive host and vice versa, which is exactly
            // the separation `SdHttpClient.mCustomCookieStore` maintains.
            .cookie_store(true)
            .user_agent(USER_AGENT)
            .timeout(Duration::from_secs(60))
            .build()
            .map_err(|e| AppError::other(format!("HTTP クライアントを作成できません: {e}")))?;

        Ok(Self {
            http,
            session: Mutex::new(None),
            locale,
            device,
        })
    }

    pub fn home_dir(&self) -> Option<String> {
        self.session.lock().unwrap().as_ref().map(|s| s.home_dir.clone())
    }

    fn require_home(&self) -> AppResult<String> {
        self.home_dir()
            .ok_or_else(|| AppError::other("クラスボックスに接続していません"))
    }

    fn headers(&self) -> reqwest::header::HeaderMap {
        use reqwest::header::{HeaderMap, HeaderName, HeaderValue};
        let mut headers = HeaderMap::new();
        let mut put = |name: &'static str, value: &str| {
            if let Ok(value) = HeaderValue::from_str(value) {
                headers.insert(HeaderName::from_static(name), value);
            }
        };
        // Note the absentee: `X-DM-AppVersion` is a `CsHttpClient` header and
        // `SdHttpClient` does not send it.
        put("x-dm-locale", &self.locale);
        put("x-dm-productname", PRODUCT_NAME);
        put("x-dm-productversion", PRODUCT_VERSION);
        put("x-dm-device", &self.device);
        headers
    }

    /// Opens a drive session at `home_dir`.
    ///
    /// The credential is the tenant's; only the session is separate.
    pub async fn login(
        &self,
        home_dir: &str,
        user_id: &str,
        password: Option<&str>,
        qwd: Option<&str>,
    ) -> AppResult<()> {
        let mut body = Map::new();
        body.insert("userId".into(), json!(user_id));
        if let Some(password) = password {
            body.insert("password".into(), json!(password));
        }
        if let Some(qwd) = qwd {
            body.insert("qwd".into(), json!(qwd));
        }

        let url = format!("{home_dir}rest/users/login");
        let response = self
            .http
            .post(&url)
            .headers(self.headers())
            .header(
                reqwest::header::CONTENT_TYPE,
                "application/json; charset=utf-8",
            )
            .body(Value::Object(body).to_string())
            .send()
            .await
            .map_err(|e| AppError::other(format!("クラスボックスに接続できません: {e}")))?;

        let json = read_json(response).await?;
        check_error(&json)?;

        *self.session.lock().unwrap() = Some(Session {
            home_dir: home_dir.to_string(),
            user_id: user_id.to_string(),
            // Kept so `executeWithAutoLoginFor`'s trick works here too: the
            // drive session expires on its own schedule, independently of the
            // tenant one, and an expiry mid-lesson should not become an error
            // message.
            password: password.map(str::to_string),
            qwd: qwd.map(str::to_string),
        });
        Ok(())
    }

    pub fn sign_out(&self) {
        *self.session.lock().unwrap() = None;
    }

    /// Signs in again with what the last sign-in used.
    async fn reauthenticate(&self) -> AppResult<()> {
        let saved = self
            .session
            .lock()
            .unwrap()
            .clone()
            .ok_or(AppError::NotLoggedIn)?;
        self.login(
            &saved.home_dir,
            &saved.user_id,
            saved.password.as_deref(),
            saved.qwd.as_deref(),
        )
        .await
    }

    async fn get_json(&self, path: &str) -> AppResult<Map<String, Value>> {
        match self.get_json_once(path).await {
            Err(AppError::NotLoggedIn) => {
                self.reauthenticate().await?;
                self.get_json_once(path).await
            }
            other => other,
        }
    }

    async fn get_json_once(&self, path: &str) -> AppResult<Map<String, Value>> {
        let home = self.require_home()?;
        let response = self
            .http
            // No body on a GET — `SdHttpClient` passes a null map for these.
            .get(format!("{home}{path}"))
            .headers(self.headers())
            .send()
            .await
            .map_err(|e| AppError::other(format!("クラスボックスに接続できません: {e}")))?;

        let json = read_json(response).await?;
        check_error(&json)?;
        Ok(json)
    }

    async fn get_bytes(&self, path: &str) -> AppResult<DriveFile> {
        match self.get_bytes_once(path).await {
            Err(AppError::NotLoggedIn) => {
                self.reauthenticate().await?;
                self.get_bytes_once(path).await
            }
            other => other,
        }
    }

    async fn get_bytes_once(&self, path: &str) -> AppResult<DriveFile> {
        let home = self.require_home()?;
        let response = self
            .http
            .get(format!("{home}{path}"))
            .headers(self.headers())
            .send()
            .await
            .map_err(|e| AppError::other(format!("クラスボックスに接続できません: {e}")))?;

        let status = response.status();
        let mime_type = response
            .headers()
            .get(reqwest::header::CONTENT_TYPE)
            .and_then(|v| v.to_str().ok())
            .map(str::to_string);
        let bytes = response
            .bytes()
            .await
            .map_err(|e| AppError::other(format!("受信に失敗しました: {e}")))?
            .to_vec();

        // A download that failed comes back as the JSON error envelope with a
        // JSON content type, not as a short file.
        if !status.is_success()
            || mime_type.as_deref().is_some_and(|m| m.contains("json"))
        {
            if let Ok(Value::Object(json)) = serde_json::from_slice::<Value>(&bytes) {
                check_error(&json)?;
            }
            if !status.is_success() {
                return Err(AppError::other(format!("サーバーエラー (HTTP {status})")));
            }
        }

        Ok(DriveFile { bytes, mime_type })
    }

    /// Announces a sync and reports what kind of drive this is.
    pub async fn sync_start(&self, drive_id: &str) -> AppResult<i64> {
        let body = self.get_json(&format!("rest/drives/{drive_id}/syncstart")).await?;
        Ok(body.get("entryType").and_then(Value::as_i64).unwrap_or(0))
    }

    /// The revision the drive is at. Cheap enough to poll.
    pub async fn last_revision(&self, drive_id: &str) -> AppResult<Option<String>> {
        let body = self
            .get_json(&format!("rest/drives/{drive_id}/lastupdaterevision"))
            .await?;
        Ok(body
            .get("lastUpdateRevision")
            .and_then(Value::as_str)
            .map(str::to_string))
    }

    /// The drive's contents, as the server packs them.
    ///
    /// A zip; what is inside it is this app's own serialisation rather than
    /// anything self-describing, so the caller decodes it — see
    /// `drive::listing`.
    pub async fn drive_data(&self, drive_id: &str, since: Option<&str>) -> AppResult<DriveFile> {
        let query = since
            .map(|rev| format!("?lastsyncrev={rev}"))
            .unwrap_or_default();
        self.get_bytes(&format!("rest/drives/{drive_id}/data{query}"))
            .await
    }

    /// One note's bytes. This is an `.atdoc`-family container, which
    /// `atdoc::import` reads.
    pub async fn document_data(
        &self,
        drive_id: &str,
        document_id: &str,
        revision: Option<&str>,
    ) -> AppResult<DriveFile> {
        let query = revision
            .map(|rev| format!("?revision={rev}"))
            .unwrap_or_default();
        self.get_bytes(&format!(
            "rest/drives/{drive_id}/documents/{document_id}/data{query}"
        ))
        .await
    }

    pub async fn document_meta(
        &self,
        drive_id: &str,
        document_id: &str,
    ) -> AppResult<Map<String, Value>> {
        self.get_json(&format!(
            "rest/drives/{drive_id}/documents/{document_id}/meta"
        ))
        .await
    }

    pub async fn document_thumbnail(
        &self,
        drive_id: &str,
        document_id: &str,
        revision: Option<&str>,
    ) -> AppResult<DriveFile> {
        let query = revision
            .map(|rev| format!("?revision={rev}"))
            .unwrap_or_default();
        self.get_bytes(&format!(
            "rest/drives/{drive_id}/documents/{document_id}/thumbnail{query}"
        ))
        .await
    }

    pub fn user_id(&self) -> Option<String> {
        self.session.lock().unwrap().as_ref().map(|s| s.user_id.clone())
    }
}

async fn read_json(response: reqwest::Response) -> AppResult<Map<String, Value>> {
    let status = response.status();
    let text = response
        .text()
        .await
        .map_err(|e| AppError::other(format!("応答を読み取れません: {e}")))?;

    match serde_json::from_str::<Value>(&text) {
        Ok(Value::Object(map)) => Ok(map),
        _ => Err(AppError::other(format!(
            "クラスボックスの応答を解釈できません (HTTP {status})"
        ))),
    }
}

/// `SdResponseResult`'s envelope — flatter than the `users3/*` one.
///
/// The message is at `message` and the error name at `data.name`, per the
/// field notes in `sync-drive.tsp`; there is no nested `errorCode`.
pub fn check_error(body: &Map<String, Value>) -> AppResult<()> {
    let code = body.get("errorCode").and_then(Value::as_i64).unwrap_or(0);
    if code == 0 {
        return Ok(());
    }

    // Its own variant, so the caller re-authenticates instead of showing the
    // server's phrasing to someone who is plainly signed in.
    if code == NOT_LOGIN_EXCEPTION {
        return Err(AppError::NotLoggedIn);
    }
    if code == REVISION_EXCEPTION {
        return Err(AppError::other(
            "ほかの人が先に更新しました。読み込み直してください。",
        ));
    }

    let message = ["message", "errorMessage"]
        .iter()
        .filter_map(|key| body.get(*key))
        .filter_map(Value::as_str)
        .find(|s| !s.is_empty())
        .map(str::to_string)
        .unwrap_or_else(|| format!("クラスボックスのエラー (errorCode {code})"));
    Err(AppError::other(message))
}

pub mod listing;

#[path = "tests.rs"]
#[cfg(test)]
mod tests;
