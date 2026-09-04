//! Persistence.
//!
//! Two kinds of database, following the split the original app arrived at
//! (docs/07): a catalog of lightweight metadata for the library screen, and the
//! documents themselves. Here the catalog is `library.db` and each note is its
//! own `<id>.mmnote` SQLite file under `notes/`.
//!
//! One file per note is what makes copy, backup, export and (later) per-document
//! sync revisions straightforward, and it keeps a corrupted file from taking the
//! whole library with it. Inside a note, the model rows use the
//! `(model_id, parent_id, model_type, props_json)` shape docs/04 §10 recommends.

use std::collections::HashMap;
use std::path::{Path, PathBuf};

use rusqlite::{params, Connection, OptionalExtension};

use crate::error::{AppError, AppResult};
use crate::model::{GenericModel, GenericTree, NoteSummary};

pub const SCHEMA_VERSION: i64 = 1;

// ---------------------------------------------------------------------------
// Paths
// ---------------------------------------------------------------------------

#[derive(Debug, Clone)]
pub struct AppPaths {
    pub data_dir: PathBuf,
    pub notes_dir: PathBuf,
    pub library_db: PathBuf,
}

impl AppPaths {
    pub fn new(data_dir: PathBuf) -> AppResult<Self> {
        let notes_dir = data_dir.join("notes");
        std::fs::create_dir_all(&notes_dir)?;
        let library_db = data_dir.join("library.db");
        Ok(Self {
            data_dir,
            notes_dir,
            library_db,
        })
    }

    pub fn note_path(&self, id: &str) -> PathBuf {
        self.notes_dir.join(format!("{id}.mmnote"))
    }
}

// ---------------------------------------------------------------------------
// Catalog
// ---------------------------------------------------------------------------

pub struct Catalog {
    conn: Connection,
}

impl Catalog {
    pub fn open(path: &Path) -> AppResult<Self> {
        let conn = Connection::open(path)?;
        conn.pragma_update(None, "journal_mode", "WAL")?;
        conn.pragma_update(None, "foreign_keys", "ON")?;
        let catalog = Self { conn };
        catalog.migrate()?;
        Ok(catalog)
    }

    fn migrate(&self) -> AppResult<()> {
        self.conn.execute_batch(
            r#"
            CREATE TABLE IF NOT EXISTS meta (
                key   TEXT PRIMARY KEY,
                value TEXT NOT NULL
            );
            CREATE TABLE IF NOT EXISTS documents (
                id          TEXT PRIMARY KEY,
                path        TEXT NOT NULL UNIQUE,
                title       TEXT NOT NULL,
                created_at  TEXT NOT NULL,
                updated_at  TEXT NOT NULL,
                last_access TEXT,
                page_count  INTEGER NOT NULL DEFAULT 1,
                revision    INTEGER NOT NULL DEFAULT 0,
                trashed     INTEGER NOT NULL DEFAULT 0,
                thumbnail   BLOB
            );
            CREATE INDEX IF NOT EXISTS idx_documents_updated
                ON documents(trashed, updated_at DESC);
            "#,
        )?;
        self.conn.execute(
            "INSERT OR REPLACE INTO meta(key, value) VALUES ('schema_version', ?1)",
            params![SCHEMA_VERSION.to_string()],
        )?;
        Ok(())
    }

    pub fn schema_version(&self) -> i64 {
        self.conn
            .query_row(
                "SELECT value FROM meta WHERE key = 'schema_version'",
                [],
                |row| row.get::<_, String>(0),
            )
            .ok()
            .and_then(|v| v.parse().ok())
            .unwrap_or(0)
    }

    pub fn list(&self, include_trashed: bool) -> AppResult<Vec<NoteSummary>> {
        let sql = if include_trashed {
            "SELECT id, title, created_at, updated_at, page_count, revision, thumbnail
             FROM documents ORDER BY updated_at DESC"
        } else {
            "SELECT id, title, created_at, updated_at, page_count, revision, thumbnail
             FROM documents WHERE trashed = 0 ORDER BY updated_at DESC"
        };
        let mut stmt = self.conn.prepare(sql)?;
        let rows = stmt.query_map([], |row| {
            let png: Option<Vec<u8>> = row.get(6)?;
            Ok(NoteSummary {
                id: row.get(0)?,
                title: row.get(1)?,
                created_at: row.get(2)?,
                updated_at: row.get(3)?,
                page_count: row.get(4)?,
                revision: row.get(5)?,
                thumbnail: png.map(|b| to_png_data_url(&b)),
            })
        })?;
        Ok(rows.collect::<Result<Vec<_>, _>>()?)
    }

    pub fn upsert(
        &self,
        id: &str,
        path: &Path,
        title: &str,
        created_at: &str,
        updated_at: &str,
        page_count: i64,
        revision: i64,
    ) -> AppResult<()> {
        self.conn.execute(
            r#"
            INSERT INTO documents(id, path, title, created_at, updated_at, page_count, revision)
            VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7)
            ON CONFLICT(id) DO UPDATE SET
                title      = excluded.title,
                updated_at = excluded.updated_at,
                page_count = excluded.page_count,
                revision   = excluded.revision
            "#,
            params![
                id,
                path.to_string_lossy(),
                title,
                created_at,
                updated_at,
                page_count,
                revision
            ],
        )?;
        Ok(())
    }

    pub fn set_thumbnail(&self, id: &str, png: &[u8]) -> AppResult<()> {
        self.conn.execute(
            "UPDATE documents SET thumbnail = ?2 WHERE id = ?1",
            params![id, png],
        )?;
        Ok(())
    }

    pub fn touch_access(&self, id: &str, when: &str) -> AppResult<()> {
        self.conn.execute(
            "UPDATE documents SET last_access = ?2 WHERE id = ?1",
            params![id, when],
        )?;
        Ok(())
    }

    pub fn set_trashed(&self, id: &str, trashed: bool) -> AppResult<()> {
        self.conn.execute(
            "UPDATE documents SET trashed = ?2 WHERE id = ?1",
            params![id, if trashed { 1 } else { 0 }],
        )?;
        Ok(())
    }

    pub fn rename(&self, id: &str, title: &str, updated_at: &str) -> AppResult<()> {
        self.conn.execute(
            "UPDATE documents SET title = ?2, updated_at = ?3 WHERE id = ?1",
            params![id, title, updated_at],
        )?;
        Ok(())
    }

    pub fn path_of(&self, id: &str) -> AppResult<PathBuf> {
        let path: Option<String> = self
            .conn
            .query_row("SELECT path FROM documents WHERE id = ?1", params![id], |r| {
                r.get(0)
            })
            .optional()?;
        path.map(PathBuf::from)
            .ok_or_else(|| AppError::NoteNotFound(id.to_string()))
    }

    pub fn remove(&self, id: &str) -> AppResult<()> {
        self.conn
            .execute("DELETE FROM documents WHERE id = ?1", params![id])?;
        Ok(())
    }
}

// ---------------------------------------------------------------------------
// Document store — one `.mmnote` SQLite file per note
// ---------------------------------------------------------------------------

pub struct NoteStore {
    conn: Connection,
}

impl NoteStore {
    pub fn open(path: &Path) -> AppResult<Self> {
        let conn = Connection::open(path)?;
        conn.pragma_update(None, "journal_mode", "WAL")?;
        conn.pragma_update(None, "foreign_keys", "ON")?;
        let store = Self { conn };
        store.migrate()?;
        Ok(store)
    }

    fn migrate(&self) -> AppResult<()> {
        self.conn.execute_batch(
            r#"
            CREATE TABLE IF NOT EXISTS doc_meta (
                k              INTEGER PRIMARY KEY CHECK (k = 0),
                schema_version INTEGER NOT NULL,
                document_id    TEXT NOT NULL,
                root_id        TEXT NOT NULL,
                title          TEXT NOT NULL,
                created_at     TEXT NOT NULL,
                updated_at     TEXT NOT NULL,
                revision       INTEGER NOT NULL DEFAULT 0
            );
            CREATE TABLE IF NOT EXISTS models (
                id         TEXT PRIMARY KEY,
                parent_id  TEXT,
                ord        INTEGER NOT NULL DEFAULT 0,
                model_type TEXT NOT NULL,
                props_json TEXT NOT NULL
            );
            CREATE INDEX IF NOT EXISTS idx_models_parent ON models(parent_id, ord);
            CREATE TABLE IF NOT EXISTS assets (
                id       TEXT PRIMARY KEY,
                mime     TEXT NOT NULL,
                byte_len INTEGER NOT NULL,
                data     BLOB NOT NULL
            );
            CREATE TABLE IF NOT EXISTS thumbnails (
                page_id  TEXT PRIMARY KEY,
                revision INTEGER NOT NULL,
                png      BLOB NOT NULL
            );
            "#,
        )?;
        Ok(())
    }

    /// Replaces the whole model tree in one transaction.
    ///
    /// Rewriting every row on save is the right trade here: a note is a few
    /// thousand rows at most, SQLite absorbs that in a single transaction in a
    /// few milliseconds, and it removes an entire class of "the tree on disk
    /// drifted from the tree in memory" bugs. Row-level diffing only becomes
    /// worth its complexity once documents get large enough to notice.
    pub fn write_tree(
        &mut self,
        tree: &GenericTree,
        title: &str,
        created_at: &str,
        updated_at: &str,
        revision: i64,
    ) -> AppResult<()> {
        let tx = self.conn.transaction()?;
        tx.execute("DELETE FROM models", [])?;
        {
            let mut stmt = tx.prepare(
                "INSERT INTO models(id, parent_id, ord, model_type, props_json)
                 VALUES (?1, ?2, ?3, ?4, ?5)",
            )?;
            for node in tree.walk() {
                let ord = node
                    .parent_id
                    .as_ref()
                    .and_then(|p| tree.models.get(p))
                    .and_then(|p| p.children.iter().position(|c| c == &node.id))
                    .unwrap_or(0) as i64;
                stmt.execute(params![
                    node.id,
                    node.parent_id,
                    ord,
                    node.model_type,
                    serde_json::to_string(&node.props)?
                ])?;
            }
        }
        tx.execute(
            r#"
            INSERT INTO doc_meta(k, schema_version, document_id, root_id,
                                 title, created_at, updated_at, revision)
            VALUES (0, ?1, ?2, ?3, ?4, ?5, ?6, ?7)
            ON CONFLICT(k) DO UPDATE SET
                schema_version = excluded.schema_version,
                document_id    = excluded.document_id,
                root_id        = excluded.root_id,
                title          = excluded.title,
                updated_at     = excluded.updated_at,
                revision       = excluded.revision
            "#,
            params![
                SCHEMA_VERSION,
                tree.root_id,
                tree.root_id,
                title,
                created_at,
                updated_at,
                revision
            ],
        )?;
        tx.commit()?;
        Ok(())
    }

    pub fn read_tree(&self) -> AppResult<GenericTree> {
        let root_id: String = self
            .conn
            .query_row("SELECT root_id FROM doc_meta WHERE k = 0", [], |r| r.get(0))
            .optional()?
            .ok_or_else(|| AppError::other("note file has no document metadata"))?;

        let mut stmt = self.conn.prepare(
            "SELECT id, parent_id, model_type, props_json FROM models
             ORDER BY parent_id IS NULL DESC, parent_id, ord",
        )?;
        let rows = stmt.query_map([], |row| {
            let props_json: String = row.get(3)?;
            Ok((
                row.get::<_, String>(0)?,
                row.get::<_, Option<String>>(1)?,
                row.get::<_, String>(2)?,
                props_json,
            ))
        })?;

        let mut models: HashMap<String, GenericModel> = HashMap::new();
        let mut order: Vec<(String, Option<String>)> = Vec::new();
        for row in rows {
            let (id, parent_id, model_type, props_json) = row?;
            let props: serde_json::Value =
                serde_json::from_str(&props_json).unwrap_or(serde_json::json!({}));
            order.push((id.clone(), parent_id.clone()));
            models.insert(
                id.clone(),
                GenericModel {
                    id,
                    parent_id,
                    model_type,
                    props,
                    children: Vec::new(),
                },
            );
        }

        // Rebuild child lists from the ordered scan, so sibling order is the
        // order the rows were written in.
        for (id, parent_id) in order {
            if let Some(parent_id) = parent_id {
                if let Some(parent) = models.get_mut(&parent_id) {
                    parent.children.push(id);
                }
            }
        }

        Ok(GenericTree { root_id, models })
    }

    pub fn meta(&self) -> AppResult<(String, String, String, i64, i64)> {
        let row = self.conn.query_row(
            "SELECT title, created_at, updated_at, revision,
                    (SELECT COUNT(*) FROM models WHERE model_type = '$page')
             FROM doc_meta WHERE k = 0",
            [],
            |r| {
                Ok((
                    r.get::<_, String>(0)?,
                    r.get::<_, String>(1)?,
                    r.get::<_, String>(2)?,
                    r.get::<_, i64>(3)?,
                    r.get::<_, i64>(4)?,
                ))
            },
        )?;
        Ok(row)
    }

    // -- assets --------------------------------------------------------------

    pub fn put_asset(&self, id: &str, mime: &str, data: &[u8]) -> AppResult<()> {
        self.conn.execute(
            "INSERT OR REPLACE INTO assets(id, mime, byte_len, data) VALUES (?1, ?2, ?3, ?4)",
            params![id, mime, data.len() as i64, data],
        )?;
        Ok(())
    }

    pub fn get_asset(&self, id: &str) -> AppResult<(String, Vec<u8>)> {
        self.conn
            .query_row(
                "SELECT mime, data FROM assets WHERE id = ?1",
                params![id],
                |r| Ok((r.get::<_, String>(0)?, r.get::<_, Vec<u8>>(1)?)),
            )
            .optional()?
            .ok_or_else(|| AppError::AssetNotFound(id.to_string()))
    }

    pub fn asset_ids(&self) -> AppResult<Vec<String>> {
        let mut stmt = self.conn.prepare("SELECT id FROM assets")?;
        let rows = stmt.query_map([], |r| r.get::<_, String>(0))?;
        Ok(rows.collect::<Result<Vec<_>, _>>()?)
    }

    // -- thumbnails ----------------------------------------------------------

    pub fn put_thumbnail(&self, page_id: &str, revision: i64, png: &[u8]) -> AppResult<()> {
        self.conn.execute(
            "INSERT OR REPLACE INTO thumbnails(page_id, revision, png) VALUES (?1, ?2, ?3)",
            params![page_id, revision, png],
        )?;
        Ok(())
    }

    pub fn get_thumbnail(&self, page_id: &str) -> AppResult<Option<Vec<u8>>> {
        Ok(self
            .conn
            .query_row(
                "SELECT png FROM thumbnails WHERE page_id = ?1",
                params![page_id],
                |r| r.get::<_, Vec<u8>>(0),
            )
            .optional()?)
    }
}

pub fn to_png_data_url(bytes: &[u8]) -> String {
    use base64::Engine as _;
    format!(
        "data:image/png;base64,{}",
        base64::engine::general_purpose::STANDARD.encode(bytes)
    )
}

pub fn now_iso() -> String {
    chrono::Utc::now().to_rfc3339()
}
