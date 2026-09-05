//! Reading the drive-contents payload.
//!
//! `GET /rest/drives/{id}/data` answers with a zip, and what is inside it is
//! not self-describing JSON — it is this app's own model serialisation, the
//! same `IModel` container format `.atdoc` uses. So the decoder already exists:
//! `atdoc::unwrap_container` handles the zip, and the container parser turns it
//! into a generic model tree.
//!
//! **The tree's schema for a drive listing is not documented**, and unlike the
//! note format there is no corpus in the repo to check it against. So rather
//! than assert a shape, this pulls out the fields by the names the rest of the
//! format uses and reports what it could not place. A class box whose listing
//! comes back in an unexpected shape shows up as "could not read", not as an
//! empty class box — the two mean very different things to a teacher.

use crate::atdoc;
use crate::error::AppResult;
use crate::model::GenericTree;
use serde_json::Value;

use super::DriveDocument;

/// What a drive listing turned into.
#[derive(Debug, Clone, serde::Serialize)]
#[serde(rename_all = "camelCase")]
pub struct Listing {
    pub documents: Vec<DriveDocument>,
    /// Model types present that this did not recognise as documents. Empty is
    /// the good case; anything here means the schema guess is incomplete.
    pub unrecognised: Vec<String>,
    /// Total models decoded — a listing that parsed but yielded nothing is a
    /// different problem from one that failed to parse.
    pub model_count: usize,
}

/// Model types that denote a note in a drive.
const DOCUMENT_TYPES: [&str; 3] = ["$document", "$doc", "$note"];

/// Decodes the zip a drive hands back.
pub fn parse(bytes: Vec<u8>) -> AppResult<Listing> {
    // `import` gives back the same generic tree the note importer produces; the
    // root id is only used to namespace the model ids, and nothing downstream
    // of a listing keeps them.
    let imported = atdoc::import(bytes, "drive")?;
    Ok(from_tree(&imported.tree))
}

/// Split from `parse` so the mapping can be tested against a hand-built tree,
/// which is the only kind available without a real class box.
pub fn from_tree(tree: &GenericTree) -> Listing {
    let mut documents = Vec::new();
    let mut unrecognised = Vec::new();

    for (id, model) in &tree.models {
        if !DOCUMENT_TYPES.contains(&model.model_type.as_str()) {
            if !unrecognised.contains(&model.model_type) {
                unrecognised.push(model.model_type.clone());
            }
            continue;
        }

        let text = |key: &str| {
            model
                .props
                .get(key)
                .and_then(Value::as_str)
                .filter(|s| !s.is_empty())
                .map(str::to_string)
        };

        documents.push(DriveDocument {
            // The server's id where there is one; the model's own otherwise,
            // since a document with no id cannot be fetched and is worse than
            // useless in a list.
            document_id: text("documentId").unwrap_or_else(|| id.clone()),
            title: text("title").or_else(|| text("name")),
            revision: text("revision").or_else(|| text("contentsRevision")),
            updated_at: text("updatedAt").or_else(|| text("lastUpdated")),
        });
    }

    // The map's order is not the drive's order; a stable one beats a random one.
    documents.sort_by(|a, b| a.document_id.cmp(&b.document_id));
    unrecognised.sort();

    Listing {
        model_count: tree.models.len(),
        documents,
        unrecognised,
    }
}
