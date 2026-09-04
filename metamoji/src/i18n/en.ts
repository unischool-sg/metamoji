/**
 * English strings, keyed by the Japanese source (see `index.ts`).
 *
 * Anything missing here renders as Japanese, which is a usable fallback rather
 * than a visible defect.
 */

export const en: Record<string, string> = {
  // -- tools ----------------------------------------------------------------
  "ペン": "Pen",
  "消しゴム": "Eraser",
  "選択": "Select",
  "なげなわ": "Lasso",
  "テキスト": "Text",
  "付箋": "Sticky note",
  "図形": "Shape",
  "表・罫線": "Table & rules",
  "画像": "Image",
  "レーザー": "Laser",
  "移動": "Move",
  "ツール": "Tools",

  // -- pens -----------------------------------------------------------------
  "ボールペン": "Ballpoint",
  "万年筆": "Fountain pen",
  "鉛筆": "Pencil",
  "マーカー": "Marker",
  "蛍光ペン": "Highlighter",
  "ペンの種類": "Pen type",
  "色": "Colour",
  "太さ": "Width",
  "消しゴムの大きさ": "Eraser size",
  "触れたストロークを1本ずつ消します。": "Erases whole strokes on contact.",

  // -- shapes ---------------------------------------------------------------
  "長方形": "Rectangle",
  "角丸": "Rounded rectangle",
  "楕円": "Ellipse",
  "三角形": "Triangle",
  "菱形": "Diamond",
  "直線": "Line",
  "矢印": "Arrow",
  "線の色": "Stroke colour",
  "塗り": "Fill",
  "塗りなし": "No fill",
  "ドラッグで大きさを決めます。Shift で正方形・正円になります。":
    "Drag to size. Hold Shift for a square or circle.",
  "表": "Table",
  "罫線": "Ruled",
  "方眼": "Grid",
  "ドラッグで大きさを決めます。行数・列数は配置後に変更できます。":
    "Drag to size. Rows and columns can be changed afterwards.",

  // -- lasso ----------------------------------------------------------------
  "なげなわの範囲": "Lasso mode",
  "完全に囲んだものだけ": "Fully enclosed only",
  "触れたものすべて": "Anything touched",

  // -- laser ----------------------------------------------------------------
  "レーザーポインタ": "Laser pointer",
  "軌跡は少し経つと消え、ノートには保存されません。":
    "The trail fades and is never saved to the note.",

  // -- selection ------------------------------------------------------------
  "コピー": "Copy",
  "貼り付け": "Paste",
  "複製": "Duplicate",
  "削除": "Delete",
  "重ね順": "Arrange",
  "最前面へ": "Bring to front",
  "前面へ": "Bring forward",
  "背面へ": "Send backward",
  "最背面へ": "Send to back",
  "{count} 個を選択中": "{count} selected",
  "オブジェクトをクリック、または範囲をドラッグして選択します。":
    "Click an object, or drag to select a region.",
  "キャンバスをクリックすると付箋を置きます。ダブルクリックで文字を編集できます。":
    "Click the canvas to place a sticky note. Double-click to edit its text.",

  // -- paper and layers -----------------------------------------------------
  "用紙": "Paper",
  "無地": "Blank",
  "横罫": "Lines",
  "ドット": "Dots",
  "用紙の色": "Paper colour",
  "サイズ": "Size",
  "A4 縦": "A4 portrait",
  "A4 横": "A4 landscape",
  "A5 縦": "A5 portrait",
  "レイヤー": "Layers",
  "+ レイヤーを追加": "+ Add layer",
  "非表示にする": "Hide",
  "表示する": "Show",
  "ロックする": "Lock",
  "ロックを解除": "Unlock",
  "上へ": "Move up",
  "下へ": "Move down",
  "クリックで編集対象に、ダブルクリックで名前を変更":
    "Click to make active, double-click to rename",

  // -- pages ----------------------------------------------------------------
  "ページ": "Pages",
  "ページ一覧": "Page list",
  "+ ページ": "+ Page",
  "このページを複製": "Duplicate this page",
  "このページを削除": "Delete this page",
  "全体表示": "Fit page",

  // -- editor chrome --------------------------------------------------------
  "← 一覧": "← Library",
  "ノート一覧に戻る": "Back to the library",
  "元に戻す": "Undo",
  "やり直す": "Redo",
  "保存済み": "Saved",
  "未保存": "Unsaved",
  "保存中…": "Saving…",
  "保存に失敗": "Save failed",
  "保存": "Save",
  "読み込み中…": "Loading…",
  "ファイル": "File",
  "PDF を取り込む…": "Import PDF…",
  "PDF で書き出す…": "Export as PDF…",
  "このページを画像で書き出す…": "Export this page as an image…",
  "PDF を書き出しています…": "Exporting PDF…",
  "画像を書き出しています…": "Exporting image…",
  "PDF を読み込んでいます…": "Reading PDF…",
  "PDF を読み込んでいます… {done} / {total}": "Reading PDF… {done} / {total}",
  "ノートを開けませんでした: {error}": "Could not open the note: {error}",
  "PDF の書き出しに失敗しました: {error}": "PDF export failed: {error}",
  "画像の書き出しに失敗しました: {error}": "Image export failed: {error}",
  "PDF の取り込みに失敗しました: {error}": "PDF import failed: {error}",

  // -- library --------------------------------------------------------------
  "すべてのノート": "All notes",
  "フォルダ": "Folders",
  "タグ": "Tags",
  "その他": "Other",
  "ゴミ箱": "Trash",
  "ゴミ箱へ": "Move to trash",
  "元に戻す操作": "Restore",
  "完全に削除": "Delete permanently",
  "名前を変更": "Rename",
  "フォルダから出す": "Remove from folder",
  "フォルダを追加": "Add folder",
  "フォルダを削除": "Delete folder",
  "タグを追加": "Add tag",
  "タグを削除": "Delete tag",
  "フォルダ名": "Folder name",
  "タグ名": "Tag name",
  "ノートを検索": "Search notes",
  "並び順": "Sort by",
  "更新日時": "Date modified",
  "作成日時": "Date created",
  "名前": "Name",
  "取り込む": "Import",
  "取り込み中…": "Importing…",
  "+ 新規ノート": "+ New note",
  "まだノートがありません。": "No notes yet.",
  "最初のノートを作成": "Create your first note",
  "ゴミ箱は空です。": "The trash is empty.",
  "まだありません": "None yet",
  "操作": "Actions",
  "{count} 件": "{count} notes",
  "{count} ページ": "{count} pages",
  "「{title}」を完全に削除しますか?": "Permanently delete “{title}”?",
  "「{search}」に一致するノートはありません。": "No notes match “{search}”.",
  "ライブラリ": "Library",
  "ノート {n}": "Note {n}",
  "{title} のコピー": "{title} copy",
  "取り込んだノート": "Imported note",
  "MetaMoJi ノート": "MetaMoJi note",
  "すべてのファイル": "All files",

  // -- import report --------------------------------------------------------
  "取り込みが完了しました": "Import complete",
  "ストローク": "Strokes",
  "モデル": "Models",
  "形式バージョン": "Format version",
  "取り込んだ要素": "Imported elements",
  "閉じる": "Close",

  // -- settings -------------------------------------------------------------
  "設定": "Settings",
  "表示": "Appearance",
  "言語": "Language",
  "編集": "Editing",
  "自動保存の間隔": "Autosave interval",
  "{seconds} 秒": "{seconds} seconds",
  "指で描く": "Draw with finger",
  "ペンを検出したあとは指の接触を手のひらとして無視します。":
    "Once a pen is seen, touch input is ignored as palm contact.",
  "保存先": "Storage",
  "データの保存場所": "Data location",
  "情報": "About",
  "スキーマバージョン": "Schema version",
  "手書き文字認識": "Handwriting recognition",
  "この版では手書きの認識は行いません。ストロークの入力・保存・表示のみに対応しています。":
    "This build does not recognise handwriting. Strokes are captured, stored and drawn only.",
};
