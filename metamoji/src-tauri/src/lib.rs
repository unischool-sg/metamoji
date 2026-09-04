pub mod atdoc;
mod commands;
mod error;
pub mod export;
pub mod model;
mod state;
pub mod storage;

use tauri::{Emitter, Manager};

use crate::atdoc::ImportReport;
use crate::error::{AppError, AppResult};
use crate::model::GenericTree;
use crate::state::AppState;

#[derive(serde::Serialize)]
pub struct AtdocImportResult {
    pub tree: GenericTree,
    pub report: ImportReport,
}

/// Imports a `.atdoc` file the user picked in a dialog.
///
/// See `atdoc/mod.rs` for the fidelity breakdown. Structure, properties and
/// handwriting all come across; per-point pressure and rich-text bodies do not.
/// The returned report states exactly what was recovered rather than leaving the
/// user to guess from a half-populated note.
#[tauri::command]
fn atdoc_import(path: String, new_root_id: String) -> AppResult<AtdocImportResult> {
    let bytes = std::fs::read(&path).map_err(AppError::Io)?;
    let result = atdoc::import(bytes, &new_root_id)?;
    Ok(AtdocImportResult {
        tree: result.tree,
        report: result.report,
    })
}

/// Reports whether a file looks like something we can import, without reading
/// all of it — used to give the file picker honest feedback.
#[tauri::command]
fn atdoc_probe(path: String) -> AppResult<u16> {
    // The file may be a ZIP wrapping the container, so this reads the whole
    // thing rather than sniffing a fixed-size head.
    let bytes = std::fs::read(&path)?;
    let raw = atdoc::unwrap_container(bytes)?;
    Ok(atdoc::parse_header(&raw)?.format_version)
}

/// Writes the note out as a PDF. Pages arrive already rendered, so the export
/// matches the screen exactly — see `export.rs` for why that trade was made.
#[tauri::command]
fn export_pdf(
    path: String,
    title: String,
    pages: Vec<export::ExportPage>,
) -> AppResult<()> {
    export::write_pdf(&path, &title, &pages)
}

#[cfg_attr(mobile, tauri::mobile_entry_point)]
pub fn run() {
    tauri::Builder::default()
        .plugin(tauri_plugin_opener::init())
        .plugin(tauri_plugin_dialog::init())
        .setup(|app| {
            // Boot in one explicit sequence rather than a chain of static
            // singletons, per docs/14 §4's recommendation.
            let data_dir = app.path().app_data_dir()?;
            std::fs::create_dir_all(&data_dir)?;

            let state = AppState::boot(data_dir)?;
            let status = state.status();
            app.manage(state);

            // The frontend gates on this exactly as the original gated on
            // `StartupViewModel.isNeedLogin` (docs/14 §3).
            app.emit("app://ready", status)?;
            Ok(())
        })
        .invoke_handler(tauri::generate_handler![
            commands::app_status,
            commands::library_list,
            commands::library_create,
            commands::library_rename,
            commands::library_set_trashed,
            commands::library_delete,
            commands::library_duplicate,
            commands::note_load,
            commands::note_save,
            commands::note_close,
            commands::note_set_thumbnail,
            commands::asset_put,
            commands::asset_get,
            commands::asset_list,
            commands::file_read_data_url,
            commands::file_write_bytes,
            atdoc_import,
            atdoc_probe,
            export_pdf,
        ])
        .run(tauri::generate_context!())
        .expect("error while running tauri application");
}
