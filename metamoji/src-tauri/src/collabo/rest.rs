//! The `cosmos/*` room API.
//!
//! A different service from `users3/*`, and it shows: the base URL is the root
//! server rather than the tenant, every call is `multipart/form-data` with JSON
//! parts, and it authenticates **per request** through an `authInfo` part
//! instead of the session cookie (`NsCollaboURLConnection.createAuthInfoParam`).
//! That last point is why `CloudClient` has to keep the credential — see
//! `cloud::Credential`.
//!
//! What it gives us is a room and the address of the relay that carries it;
//! everything after that is `socket.rs`.

use serde_json::{json, Map, Value};

use crate::cloud::{CloudClient, Credential, PRODUCT_NAME, PRODUCT_VERSION};
use crate::error::{AppError, AppResult};

/// A room, as much of it as the app needs.
#[derive(Debug, Clone, serde::Serialize)]
#[serde(rename_all = "camelCase")]
pub struct Room {
    pub room_id: String,
    pub title: Option<String>,
    /// `casual` / `formal` / `limited`.
    pub room_type: Option<String>,
    pub owner_id: Option<String>,
}

/// Where the relay lives, and the session token to present to it.
#[derive(Debug, Clone, serde::Serialize)]
#[serde(rename_all = "camelCase")]
pub struct RelayInfo {
    pub host: String,
    pub port: u16,
    pub session_id: String,
    pub server_protocol_version: Option<String>,
    pub client_direction_version: Option<String>,
}

/// One participant.
#[derive(Debug, Clone, serde::Serialize)]
#[serde(rename_all = "camelCase")]
pub struct Member {
    pub user_id: String,
    pub name: Option<String>,
    pub role: Option<String>,
}

pub struct CollaboRest<'a> {
    cloud: &'a CloudClient,
    /// Stable per install; the original keeps these in user defaults under
    /// `CollaboDeviceId` / `CollaboDeviceCode`.
    device_id: String,
    device_code: String,
}

impl<'a> CollaboRest<'a> {
    pub fn new(cloud: &'a CloudClient, device_id: String, device_code: String) -> Self {
        Self {
            cloud,
            device_id,
            device_code,
        }
    }

    /// The `authInfo` JSON every command but `getMemberList` carries.
    fn auth_info(&self) -> AppResult<Value> {
        let (session, credential) = self
            .cloud
            .collabo_identity()
            .ok_or_else(|| AppError::other("サインインしていません"))?;

        let mut info = Map::new();
        info.insert("deviceID".into(), json!(self.device_id));
        info.insert("deviceCode".into(), json!(self.device_code));
        info.insert("authType".into(), json!("cabinet"));
        info.insert("userID".into(), json!(session.user_id));
        // Exactly one of the two, never both — `createAuthInfoParam` has a
        // separate format string for each.
        match credential {
            Credential::Password(password) => {
                info.insert("userPassword".into(), json!(password));
            }
            Credential::Qwd(qwd) => {
                info.insert("qwd".into(), json!(qwd));
            }
        }
        info.insert("productName".into(), json!(PRODUCT_NAME));
        info.insert("productVersion".into(), json!(PRODUCT_VERSION));
        info.insert("locale".into(), json!(self.cloud.locale()));
        if let Some(company) = session.company_id {
            info.insert("companyID".into(), json!(company));
        }
        Ok(Value::Object(info))
    }

    async fn post(&self, command: &str, parts: Vec<(&str, String)>) -> AppResult<Map<String, Value>> {
        let url = format!("{}{command}", self.cloud.root_server());

        let mut form = reqwest::multipart::Form::new();
        for (name, body) in parts {
            form = form.part(
                name.to_string(),
                reqwest::multipart::Part::text(body).mime_str("application/json").map_err(
                    |e| AppError::other(format!("multipart を組み立てられません: {e}")),
                )?,
            );
        }

        let response = self
            .cloud
            .http()
            .post(&url)
            .multipart(form)
            .send()
            .await
            .map_err(|e| AppError::other(format!("教室サーバーに接続できません: {e}")))?;

        let status = response.status();
        let text = response
            .text()
            .await
            .map_err(|e| AppError::other(format!("応答を読み取れません: {e}")))?;

        let value: Value = serde_json::from_str(&text)
            .map_err(|_| AppError::other(format!("応答を解釈できません (HTTP {status})")))?;
        let body = match value {
            Value::Object(map) => map,
            _ => return Err(AppError::other("応答が想定と異なります")),
        };

        // The collabo service reports with its own `result`/`errorMessage`
        // rather than the `data.errorCode` envelope `users3/*` uses.
        let ok = body
            .get("result")
            .and_then(|v| v.as_bool().or_else(|| v.as_str().map(|s| s == "true" || s == "OK")))
            .unwrap_or(status.is_success());
        if !ok {
            let message = ["errorMessage", "message", "msg"]
                .iter()
                .filter_map(|k| body.get(*k))
                .filter_map(Value::as_str)
                .find(|s| !s.is_empty())
                .unwrap_or("教室サーバーがエラーを返しました");
            return Err(AppError::other(message));
        }
        Ok(body)
    }

    pub async fn create_room(&self, title: &str, room_type: &str) -> AppResult<Room> {
        let (session, _) = self
            .cloud
            .collabo_identity()
            .ok_or_else(|| AppError::other("サインインしていません"))?;

        let room_info = json!({
            "ownerID": session.user_id,
            "title": title,
            "roomType": room_type,
        });

        let body = self
            .post(
                "cosmos/CreateRoom",
                vec![
                    ("authInfo", self.auth_info()?.to_string()),
                    ("roomInfo", room_info.to_string()),
                ],
            )
            .await?;

        Ok(Room {
            room_id: str_of(&body, "roomID")
                .ok_or_else(|| AppError::other("応答に roomID がありません"))?,
            title: Some(title.to_string()),
            room_type: Some(room_type.to_string()),
            owner_id: Some(session.user_id),
        })
    }

    /// Logs into a room and returns where its relay is.
    ///
    /// `localIp` is sent by the original so the relay can prefer a LAN path;
    /// it is not load-bearing, and an empty string is what a client behind a
    /// NAT it cannot introspect would send anyway.
    pub async fn login_room(&self, room_id: &str, room_password: Option<&str>) -> AppResult<RelayInfo> {
        let mut parts = vec![
            ("authInfo", self.auth_info()?.to_string()),
            ("roomID", room_id.to_string()),
            ("localIp", String::new()),
        ];
        if let Some(password) = room_password {
            parts.push(("roomPassword2", password.to_string()));
        }

        let body = self.post("cosmos/LoginRoom", parts).await?;

        // Prefer TLS. The plain pair exists for legacy relays and this client
        // has no reason to speak to one in the clear.
        let host = str_of(&body, "sslServerAddress")
            .or_else(|| str_of(&body, "serverAddress"))
            .ok_or_else(|| AppError::other("応答に中継サーバーのアドレスがありません"))?;
        let port = int_of(&body, "sslServerPort")
            .or_else(|| int_of(&body, "serverPort"))
            .ok_or_else(|| AppError::other("応答に中継サーバーのポートがありません"))?;

        Ok(RelayInfo {
            host,
            port: port as u16,
            session_id: str_of(&body, "sessionID")
                .ok_or_else(|| AppError::other("応答に sessionID がありません"))?,
            server_protocol_version: str_of(&body, "serverProtocolVersion"),
            client_direction_version: str_of(&body, "clientDirectionVersion"),
        })
    }

    /// The roster. Notably sends no `authInfo` — this one does lean on the
    /// session cookie.
    pub async fn member_list(&self, room_id: &str) -> AppResult<Vec<Member>> {
        let (session, _) = self
            .cloud
            .collabo_identity()
            .ok_or_else(|| AppError::other("サインインしていません"))?;

        let request = json!({
            "memberList": [{ "roomID": room_id, "userID": session.user_id }],
            "companyID": session.company_id.unwrap_or_default(),
        });

        let body = self
            .post("cosmos/GetMemberList", vec![("memberList", request.to_string())])
            .await?;

        Ok(body
            .get("memberList")
            .and_then(Value::as_array)
            .map(|list| {
                list.iter()
                    .filter_map(Value::as_object)
                    .filter_map(|entry| {
                        Some(Member {
                            user_id: str_of(entry, "userID")?,
                            name: str_of(entry, "name").or_else(|| str_of(entry, "nickName")),
                            role: str_of(entry, "role"),
                        })
                    })
                    .collect()
            })
            .unwrap_or_default())
    }
}

fn str_of(body: &Map<String, Value>, key: &str) -> Option<String> {
    body.get(key)
        .and_then(Value::as_str)
        .filter(|s| !s.is_empty())
        .map(str::to_string)
}

/// Numbers arrive as either JSON numbers or strings depending on the command.
fn int_of(body: &Map<String, Value>, key: &str) -> Option<i64> {
    let value = body.get(key)?;
    value
        .as_i64()
        .or_else(|| value.as_str().and_then(|s| s.parse().ok()))
}

#[path = "rest/tests.rs"]
#[cfg(test)]
mod tests;
