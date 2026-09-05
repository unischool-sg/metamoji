//! The generic model tree, mirrored from `src/model/generic.ts`.
//!
//! Rust does not interpret the property dictionaries — it stores and retrieves
//! them. Keeping the payload opaque here is deliberate: the typed meaning lives
//! in one place (the TypeScript converter), so adding a unit type does not
//! require a matching change on this side.
//!
//! The row shape is the one docs/04 §10 recommends after analysing the original
//! `.atdoc` container: `(model_id, parent_id, model_type, props_json)`, plus an
//! ordinal so sibling order round-trips.

use serde::{Deserialize, Serialize};
use std::collections::HashMap;

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct GenericModel {
    pub id: String,
    #[serde(rename = "parentId")]
    pub parent_id: Option<String>,
    #[serde(rename = "modelType")]
    pub model_type: String,
    pub props: serde_json::Value,
    pub children: Vec<String>,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct GenericTree {
    #[serde(rename = "rootId")]
    pub root_id: String,
    pub models: HashMap<String, GenericModel>,
}

impl GenericTree {
    pub fn new(root_id: impl Into<String>, root_type: impl Into<String>) -> Self {
        let root_id = root_id.into();
        let mut models = HashMap::new();
        models.insert(
            root_id.clone(),
            GenericModel {
                id: root_id.clone(),
                parent_id: None,
                model_type: root_type.into(),
                props: serde_json::json!({}),
                children: Vec::new(),
            },
        );
        Self { root_id, models }
    }

    pub fn insert(&mut self, model: GenericModel) {
        if let Some(parent_id) = model.parent_id.clone() {
            if let Some(parent) = self.models.get_mut(&parent_id) {
                if !parent.children.contains(&model.id) {
                    parent.children.push(model.id.clone());
                }
            }
        }
        self.models.insert(model.id.clone(), model);
    }

    /// Depth-first walk from the root, parents before children. Persisting in
    /// this order means a parent row always exists before the rows that
    /// reference it.
    pub fn walk(&self) -> Vec<&GenericModel> {
        let mut out = Vec::with_capacity(self.models.len());
        let mut stack = vec![self.root_id.as_str()];
        while let Some(id) = stack.pop() {
            let Some(node) = self.models.get(id) else {
                continue;
            };
            out.push(node);
            // Reversed so that popping yields children in document order.
            for child in node.children.iter().rev() {
                stack.push(child.as_str());
            }
        }
        out
    }
}

/// Summary row shown in the note library.
#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct NoteSummary {
    pub id: String,
    pub title: String,
    #[serde(rename = "createdAt")]
    pub created_at: String,
    #[serde(rename = "updatedAt")]
    pub updated_at: String,
    #[serde(rename = "pageCount")]
    pub page_count: i64,
    pub revision: i64,
    /// PNG data URL, or `None` when no thumbnail has been produced yet.
    pub thumbnail: Option<String>,
    #[serde(rename = "folderId")]
    pub folder_id: Option<String>,
    pub trashed: bool,
    /// Revision the server last accepted, or `None` if never synced.
    #[serde(rename = "serverRevision")]
    pub server_revision: Option<i64>,
    /// Local revision at the time of that sync, for detecting local changes.
    #[serde(rename = "syncedRevision")]
    pub synced_revision: Option<i64>,
    pub tags: Vec<crate::storage::Tag>,
}

#[derive(Debug, Clone, Serialize, Deserialize)]
pub struct AppStatus {
    pub ready: bool,
    #[serde(rename = "dataDir")]
    pub data_dir: String,
    #[serde(rename = "schemaVersion")]
    pub schema_version: i64,
    /// Always false in this build. Phase B's login gate reads this, exactly as
    /// the original's `isNeedLogin` StateFlow did (docs/14 §3).
    #[serde(rename = "needsLogin")]
    pub needs_login: bool,
}
