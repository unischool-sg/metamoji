//! The IPC surface.
//!
//! Deliberately narrow: the frontend owns the live document and never sees a
//! file path it did not get from a dialog, never sees SQL, and never touches the
//! filesystem. That is why neither `tauri-plugin-fs` nor `tauri-plugin-sql` is
//! installed — both would hand the webview capabilities it has no use for.

use std::path::PathBuf;

use base64::Engine as _;
use tauri::State;

use crate::error::{AppError, AppResult};
use crate::model::{AppStatus, GenericTree, NoteSummary};
use crate::state::AppState;
use crate::storage::{now_iso, Folder, ListQuery, NoteStore, Tag};

// ---------------------------------------------------------------------------
// App
// ---------------------------------------------------------------------------

#[tauri::command]
pub fn app_status(state: State<'_, AppState>) -> AppStatus {
    state.status()
}

// ---------------------------------------------------------------------------
// Library
// ---------------------------------------------------------------------------

#[tauri::command]
pub fn library_list(
    state: State<'_, AppState>,
    query: Option<ListQuery>,
) -> AppResult<Vec<NoteSummary>> {
    state
        .catalog
        .lock()
        .unwrap()
        .list(&query.unwrap_or_default())
}

// -- folders ----------------------------------------------------------------

#[tauri::command]
pub fn folder_list(state: State<'_, AppState>) -> AppResult<Vec<Folder>> {
    state.catalog.lock().unwrap().folders()
}

#[tauri::command]
pub fn folder_create(
    state: State<'_, AppState>,
    id: String,
    name: String,
    parent_id: Option<String>,
) -> AppResult<()> {
    state
        .catalog
        .lock()
        .unwrap()
        .create_folder(&id, &name, parent_id.as_deref())
}

#[tauri::command]
pub fn folder_rename(state: State<'_, AppState>, id: String, name: String) -> AppResult<()> {
    state.catalog.lock().unwrap().rename_folder(&id, &name)
}

#[tauri::command]
pub fn folder_delete(state: State<'_, AppState>, id: String) -> AppResult<()> {
    state.catalog.lock().unwrap().delete_folder(&id)
}

#[tauri::command]
pub fn library_set_folder(
    state: State<'_, AppState>,
    id: String,
    folder_id: Option<String>,
) -> AppResult<()> {
    state
        .catalog
        .lock()
        .unwrap()
        .set_folder(&id, folder_id.as_deref())
}

// -- tags -------------------------------------------------------------------

#[tauri::command]
pub fn tag_list(state: State<'_, AppState>) -> AppResult<Vec<Tag>> {
    state.catalog.lock().unwrap().tags()
}

#[tauri::command]
pub fn tag_create(
    state: State<'_, AppState>,
    id: String,
    name: String,
    color: String,
) -> AppResult<Tag> {
    state.catalog.lock().unwrap().create_tag(&id, &name, &color)
}

#[tauri::command]
pub fn tag_delete(state: State<'_, AppState>, id: String) -> AppResult<()> {
    state.catalog.lock().unwrap().delete_tag(&id)
}

#[tauri::command]
pub fn tag_set_on_document(
    state: State<'_, AppState>,
    document_id: String,
    tag_id: String,
    on: bool,
) -> AppResult<()> {
    state
        .catalog
        .lock()
        .unwrap()
        .set_document_tag(&document_id, &tag_id, on)
}

/// Registers a brand-new note. The frontend has already built the tree; this
/// creates the file, writes it, and indexes it.
#[tauri::command]
pub fn library_create(
    state: State<'_, AppState>,
    tree: GenericTree,
    title: String,
) -> AppResult<NoteSummary> {
    let id = tree.root_id.clone();
    let path = state.paths.note_path(&id);
    let now = now_iso();

    {
        let mut store = NoteStore::open(&path)?;
        store.write_tree(&tree, &title, &now, &now, 0)?;
    }

    let page_count = count_pages(&tree);
    state
        .catalog
        .lock()
        .unwrap()
        .upsert(&id, &path, &title, &now, &now, page_count, 0)?;

    Ok(NoteSummary {
        id,
        title,
        created_at: now.clone(),
        updated_at: now,
        page_count,
        revision: 0,
        thumbnail: None,
        folder_id: None,
        trashed: false,
        tags: Vec::new(),
    })
}

#[tauri::command]
pub fn library_rename(state: State<'_, AppState>, id: String, title: String) -> AppResult<()> {
    state
        .catalog
        .lock()
        .unwrap()
        .rename(&id, &title, &now_iso())
}

#[tauri::command]
pub fn library_set_trashed(
    state: State<'_, AppState>,
    id: String,
    trashed: bool,
) -> AppResult<()> {
    state.catalog.lock().unwrap().set_trashed(&id, trashed)
}

/// Permanently removes a note and its file. Reachable only from the trash view,
/// so the user has already had one chance to change their mind.
#[tauri::command]
pub fn library_delete(state: State<'_, AppState>, id: String) -> AppResult<()> {
    state.close_note(&id);
    let path = state.catalog.lock().unwrap().path_of(&id)?;
    state.catalog.lock().unwrap().remove(&id)?;

    // SQLite leaves -wal and -shm siblings behind; take them too.
    for suffix in ["", "-wal", "-shm"] {
        let p = PathBuf::from(format!("{}{}", path.to_string_lossy(), suffix));
        let _ = std::fs::remove_file(p);
    }
    Ok(())
}

#[tauri::command]
pub fn library_duplicate(
    state: State<'_, AppState>,
    id: String,
    new_id: String,
    title: String,
) -> AppResult<NoteSummary> {
    let src = state.catalog.lock().unwrap().path_of(&id)?;
    let dst = state.paths.note_path(&new_id);
    std::fs::copy(&src, &dst)?;

    let now = now_iso();
    let (page_count, revision) = {
        let store = NoteStore::open(&dst)?;
        let (_, _, _, revision, page_count) = store.meta()?;
        (page_count, revision)
    };

    state
        .catalog
        .lock()
        .unwrap()
        .upsert(&new_id, &dst, &title, &now, &now, page_count, revision)?;

    Ok(NoteSummary {
        id: new_id,
        title,
        created_at: now.clone(),
        updated_at: now,
        page_count,
        revision,
        thumbnail: None,
        folder_id: None,
        trashed: false,
        tags: Vec::new(),
    })
}

// ---------------------------------------------------------------------------
// Documents
// ---------------------------------------------------------------------------

#[tauri::command]
pub fn note_load(state: State<'_, AppState>, id: String) -> AppResult<GenericTree> {
    let path = state.paths.note_path(&id);
    if !path.exists() {
        return Err(AppError::NoteNotFound(id));
    }
    let store = state.note(&id)?;
    let tree = store.lock().unwrap().read_tree()?;
    let _ = state.catalog.lock().unwrap().touch_access(&id, &now_iso());
    Ok(tree)
}

#[tauri::command]
pub fn note_save(
    state: State<'_, AppState>,
    tree: GenericTree,
    title: String,
    created_at: String,
    revision: i64,
    // `search_body` is the note's text-unit content, flattened. The frontend
    // supplies it because it is the only side that knows how to read a unit.
    search_body: Option<String>,
) -> AppResult<String> {
    let id = tree.root_id.clone();
    let now = now_iso();
    let store = state.note(&id)?;
    store
        .lock()
        .unwrap()
        .write_tree(&tree, &title, &created_at, &now, revision)?;

    let page_count = count_pages(&tree);
    let path = state.paths.note_path(&id);
    state.catalog.lock().unwrap().upsert(
        &id,
        &path,
        &title,
        &created_at,
        &now,
        page_count,
        revision,
    )?;
    state
        .catalog
        .lock()
        .unwrap()
        .index_document(&id, &title, search_body.as_deref().unwrap_or(""))?;
    Ok(now)
}

#[tauri::command]
pub fn note_close(state: State<'_, AppState>, id: String) {
    state.close_note(&id);
}

#[tauri::command]
pub fn note_set_thumbnail(
    state: State<'_, AppState>,
    id: String,
    page_id: String,
    revision: i64,
    png_base64: String,
) -> AppResult<()> {
    let png = decode_data_url(&png_base64)?;
    let store = state.note(&id)?;
    store
        .lock()
        .unwrap()
        .put_thumbnail(&page_id, revision, &png)?;
    // The library grid shows the first page, so that one doubles as the cover.
    state.catalog.lock().unwrap().set_thumbnail(&id, &png)?;
    Ok(())
}

// ---------------------------------------------------------------------------
// Assets
// ---------------------------------------------------------------------------

/// Stores bytes and returns the ticket the model will reference.
///
/// `data` is a data URL, which is how the frontend already has an image after a
/// paste or a file read. Assets are fetched back out through the `mmasset://`
/// protocol rather than this command, so a large image crosses IPC once on the
/// way in and never on the way out.
#[tauri::command]
pub fn asset_put(
    state: State<'_, AppState>,
    note_id: String,
    ticket: String,
    data_url: String,
) -> AppResult<String> {
    let (mime, bytes) = parse_data_url(&data_url)?;
    let store = state.note(&note_id)?;
    store.lock().unwrap().put_asset(&ticket, &mime, &bytes)?;
    Ok(ticket)
}

#[tauri::command]
pub fn asset_get(
    state: State<'_, AppState>,
    note_id: String,
    ticket: String,
) -> AppResult<String> {
    let store = state.note(&note_id)?;
    let (mime, bytes) = store.lock().unwrap().get_asset(&ticket)?;
    Ok(format!(
        "data:{};base64,{}",
        mime,
        base64::engine::general_purpose::STANDARD.encode(&bytes)
    ))
}

#[tauri::command]
pub fn asset_list(state: State<'_, AppState>, note_id: String) -> AppResult<Vec<String>> {
    let store = state.note(&note_id)?;
    let ids = store.lock().unwrap().asset_ids()?;
    Ok(ids)
}

/// Reads a file the user picked in a dialog and returns it as a data URL.
/// The path comes from the dialog plugin, never from the webview's imagination.
#[tauri::command]
pub fn file_read_data_url(path: String) -> AppResult<String> {
    let bytes = std::fs::read(&path)?;
    let mime = mime_for_path(&path);
    Ok(format!(
        "data:{};base64,{}",
        mime,
        base64::engine::general_purpose::STANDARD.encode(&bytes)
    ))
}

#[tauri::command]
pub fn file_write_bytes(path: String, data_url: String) -> AppResult<()> {
    let (_, bytes) = parse_data_url(&data_url)?;
    std::fs::write(&path, bytes)?;
    Ok(())
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

fn count_pages(tree: &GenericTree) -> i64 {
    tree.models
        .values()
        .filter(|m| m.model_type == "$page")
        .count() as i64
}

fn parse_data_url(data_url: &str) -> AppResult<(String, Vec<u8>)> {
    let rest = data_url
        .strip_prefix("data:")
        .ok_or_else(|| AppError::other("not a data URL"))?;
    let (meta, payload) = rest
        .split_once(",")
        .ok_or_else(|| AppError::other("malformed data URL"))?;
    let mime = meta.split(';').next().unwrap_or("application/octet-stream");
    let bytes = base64::engine::general_purpose::STANDARD
        .decode(payload)
        .map_err(|e| AppError::other(format!("bad base64 in data URL: {e}")))?;
    Ok((mime.to_string(), bytes))
}

fn decode_data_url(value: &str) -> AppResult<Vec<u8>> {
    if value.starts_with("data:") {
        Ok(parse_data_url(value)?.1)
    } else {
        base64::engine::general_purpose::STANDARD
            .decode(value)
            .map_err(|e| AppError::other(format!("bad base64: {e}")))
    }
}

fn mime_for_path(path: &str) -> &'static str {
    let lower = path.to_ascii_lowercase();
    if lower.ends_with(".png") {
        "image/png"
    } else if lower.ends_with(".jpg") || lower.ends_with(".jpeg") {
        "image/jpeg"
    } else if lower.ends_with(".gif") {
        "image/gif"
    } else if lower.ends_with(".webp") {
        "image/webp"
    } else if lower.ends_with(".svg") {
        "image/svg+xml"
    } else if lower.ends_with(".pdf") {
        "application/pdf"
    } else {
        "application/octet-stream"
    }
}
