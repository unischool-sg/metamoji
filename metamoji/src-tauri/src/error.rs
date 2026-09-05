use serde::{Serialize, Serializer};

#[derive(Debug, thiserror::Error)]
pub enum AppError {
    #[error("database error: {0}")]
    Sqlite(#[from] rusqlite::Error),

    #[error("io error: {0}")]
    Io(#[from] std::io::Error),

    #[error("serialization error: {0}")]
    Json(#[from] serde_json::Error),

    #[error("note not found: {0}")]
    NoteNotFound(String),

    #[error("asset not found: {0}")]
    AssetNotFound(String),

    #[error("unsupported file: {0}")]
    Unsupported(String),

    /// The server says the session is gone. Callers retry after
    /// re-authenticating; it reaches the user only if that also fails.
    #[error("サインインの有効期限が切れました。もう一度サインインしてください。")]
    NotLoggedIn,

    #[error("{0}")]
    Other(String),
}

impl AppError {
    pub fn other<S: Into<String>>(msg: S) -> Self {
        AppError::Other(msg.into())
    }
}

/// Errors cross the IPC boundary as plain strings; the frontend only ever shows
/// them, so a structured payload would be ceremony with no reader.
impl Serialize for AppError {
    fn serialize<S: Serializer>(&self, serializer: S) -> Result<S::Ok, S::Error> {
        serializer.serialize_str(&self.to_string())
    }
}

pub type AppResult<T> = Result<T, AppError>;
