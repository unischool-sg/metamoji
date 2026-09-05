pub mod atdoc;
pub mod cloud;
#[cfg(test)]
mod cloud_wire_tests;
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

/// The environment values the ClassShare protocol wants on every request.
/// Best-effort: unlike `productName`/`productVersion`, the server treats these
/// as telemetry, so a wrong guess costs nothing and an error would cost a
/// sign-in.
///
/// `deviceName` is also where this client owns up to what it is. The protocol
/// constants have to claim to be the Android app or the server refuses the
/// login, so this is the one field a school administrator can look at and see
/// a desktop client rather than a phone.
fn device_name() -> String {
    let host = std::env::var("HOSTNAME")
        .or_else(|_| std::env::var("COMPUTERNAME"))
        .ok()
        .filter(|s| !s.is_empty())
        .unwrap_or_else(|| "desktop".to_string());
    format!("{host} (MetaMoJi Desktop {})", env!("CARGO_PKG_VERSION"))
}

fn locale() -> String {
    std::env::var("LANG")
        .ok()
        .and_then(|lang| lang.split('.').next().map(str::to_string))
        .filter(|s| !s.is_empty() && s != "C" && s != "POSIX")
        .unwrap_or_else(|| "ja_JP".to_string())
}

fn timezone() -> String {
    // `/etc/localtime` is a symlink into the zoneinfo tree on macOS and Linux;
    // its tail is the IANA name. Windows has no equivalent, hence the fallback.
    std::fs::read_link("/etc/localtime")
        .ok()
        .and_then(|path| {
            let path = path.to_string_lossy().to_string();
            path.split_once("zoneinfo/").map(|(_, tz)| tz.to_string())
        })
        .unwrap_or_else(|| "Asia/Tokyo".to_string())
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

            // The cloud client is separate from `AppState` on purpose: it holds
            // a network session, not application data, and nothing in the
            // library needs it.
            app.manage(cloud::CloudClient::new(
                device_name(),
                locale(),
                timezone(),
            )?);

            // The frontend gates on this exactly as the original gated on
            // `StartupViewModel.isNeedLogin` (docs/14 §3).
            app.emit("app://ready", status)?;
            Ok(())
        })
        .invoke_handler(tauri::generate_handler![
            commands::app_status,
            commands::library_list,
            commands::library_set_folder,
            commands::library_set_sync_state,
            commands::sync_drive_revision,
            commands::sync_set_drive_revision,
            commands::folder_list,
            commands::folder_create,
            commands::folder_rename,
            commands::folder_delete,
            commands::tag_list,
            commands::tag_create,
            commands::tag_delete,
            commands::tag_set_on_document,
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
            commands::cloud_root_server,
            commands::cloud_set_root_server,
            commands::cloud_resolve_school,
            commands::cloud_class_groups,
            commands::cloud_login,
            commands::cloud_classroom_login,
            commands::cloud_logout,
            commands::cloud_session,
            atdoc_import,
            atdoc_probe,
            export_pdf,
        ])
        .run(tauri::generate_context!())
        .expect("error while running tauri application");
}
