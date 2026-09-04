# UI文字列・アセット網羅カタログ

## 1. ロケールファイルの実態(重要な発見)

- `res/values/strings.xml`(デフォルト/英語扱いのファイル)は実は**英語オンリーではない**。`CFG_*`, `CABINET_*`, `CustomLayer_*`, `Sso_*`, `MMJNT_LSTR_TM_*`等、多くのアプリ固有キーが**未翻訳の生の日本語**を含む(例: `CFG_ADD_CONFIGURATION_PACKAGE` = `パッケージの追加`)。つまりアプリのソース言語は日本語で、英語は不完全な上書き翻訳
- `res/values-ja/strings.xml`(184行)はミスリーディングで、AndroidX/Material3等サードパーティ文字列のみ。**アプリ固有キーはゼロ**
- `res/values-ja-rJP/strings.xml`(4228行)が実際の完全な日本語ローカライズ。参照する際はこちらを使う
- `res/values-zh-rCN/strings.xml`(4366行)は数少ない完全翻訳の非日本語ロケール。日本語・中国語(簡体)が主要マーケットで、他のロケールはOSクロームの文言のみ翻訳し、アプリ本体は日本語/英語にフォールバックしていると推測される

## 2. 文字列キーの分類カタログ(主要プレフィックス)

| プレフィックス | 概数 | 内容 |
|---|---|---|
| `MMJNT_LSTR_*` | 1129 | 汎用UI文字列群。サブ名前空間: `CTAG_*`(356, カスタムタグ/検索フィルタ), `CF_*`(54, フィルタ演算子), `SURVEY_*`(46), `UNPL_*`(45, プラン/マインドマップ的Unit), `MEDIAFILES_*`(43), `VIDEO_*`(36), `CABINET_*`(22), `DEADLINESETTINGDLG_*`/`DEADLINEINFOVIEW_*`(36, 締切), `AG_*`(18, 集計検索), `SCHOOL_*`/`CLASSROOM_*`(31), `XD_*`(14), `TM_*`(13, ドライブ所有権), `SCOREINFOVIEW_*`/`SCORELISTDLG_*`(24, 採点) |
| `Cabinet_*`/`CABINET_*`/`CabinetSd*` | ~330 | ノート/ファイル管理(フォルダ、タグ、同期、ドライブ、ゴミ箱) |
| `CALENDAR_*` | 138 | カレンダー機能 |
| `Library_*` | 109 | ライブラリ/メディアブラウザ |
| `CFG_*` | 90 | 構成パッケージ(管理者向け配布機能) |
| `Msg_*` | 89 | 確認/通知メッセージ |
| `SystemOption_*` | 85 | 設定画面(ペン感度、mazec、自動スクロール、アカウント) |
| `InAppPurchase_*` | 83 | Gold Service、mazecアドオン、インクパック、共有帯域拡張 |
| `School_*`/`SCHOOL_*` | 116 | 教室(生徒集合、グループ、教師モード、モニタリング) |
| `MMJID_*` | 74 | MetaMoJi IDアカウントシステム |
| `Voice_*`/`VOICE_*` | 70 | 音声録音/チャプター |
| `Menu_*` | 46 | メインエディタメニュー |
| `ContextMenu_*`/`CONTEXTMENU_*` | 67 | コンテキストメニュー |
| `pref_*` | 44 | mazec IME設定画面 |
| `CreateShareNoteDlg_*` | 44 | 共有ノート作成 |
| `ForBiz_*` | 42 | 法人向け機能 |
| `PenSettings_*` | 38 | ペン種類/色設定 |
| `PaperSize_*` | 36 | 用紙サイズ(A0〜A4等) |
| `Help_*` | 33 | ヘルプ |
| `purchase_*` | 32 | 旧アドオンストア(mazec言語パック等) |
| `ShareMenu_*`/`ShareBar_*`/`ShareView_*`/`Share_*` | ~91 | リアルタイム協働("collabo") |
| `SHEETINFOVIEW_*` | 29 | シート情報 |
| `CustomLayer_*` | 25 | 共有ノートの編集可能レイヤー(共通/個人) |
| `Promotion_*` | 23 | プロモーション |
| `NOTELINK_*` | 23 | ページリンクフィールド |
| `install_*` | 21 | 初回起動/mazecセットアップ |
| `SENDDIALOG_*` | 21 | 送信ダイアログ |
| `ManageParticipantsDlg_*` | 19 | 参加者管理 |
| `LoginRoom_*` | 17 | ルームログイン |
| `Mazec_*` | 16 | 手書き認識IME UI |
| `WebDAV_*` | 15 | WebDAV連携 |
| `TextUnitStyle_*` | 15 | テキスト書式 |
| `WordRegist_*` | 12 | mazecユーザー辞書 |
| その他多数(`DocumentSetting_*`, `CollaboProxyDlg_*`, `GuestUserSettingDlg_*`, `TrialModeBar_*`等) | — | — |
| エラー/例外/アラート系(横断) | ~325 | 各名前空間に散在 |
| サードパーティ(`abc_*`, `mtrl_*`, `m3_*`, `exo_*`, `zxing_*`等) | ~260 | AndroidX/Material3/ExoPlayer/ZXingのライブラリ文字列(アプリ非固有) |

## 3. アイコン/drawable命名規則

密度別で合計1847種類のdrawableファイル(`xhdpi`が最多1044種)。ドメインプレフィックスによる命名:

- **`tuisb_*`**(59) — "Text UI Status Bar"、リッチテキストツールバー(太字/斜体/下線/取り消し線、フォント名/サイズ±ステッパー、左中右揃え、リスト/インデント、文字色) — Word的なフローティング書式バーの存在を裏付け
- **`control_button_*`**(59) — テーマ別ボタン背景(通常/青/赤/紫、タブ、教室モード別: doit/free/help/lock/presenter)
- **`cabinet_*`**(178) — ノート管理UI(フォルダツリー、タグピル、サムネイル)
- **ペンの種類**(`bar_hover_pen_*`/`button_pentype_*_off|on`より確定): **standard1, standard2, marker, fountain(万年筆), calligraphy1, calligraphy2(要購入版あり), brush1(筆)**。消しゴムは`{clear,nor,thin,wide}`の4種、投げ縄選択(ラッソ)は`{contain,overlap}`の2モード
- **`mnu_icon_*`/`menu_icon_*`**(~90) — コンテキスト/ドロップダウンメニュー(教室関連が多数)
- **`im_action_*`/`im_lang_*`/`im_stroke_*`/`im_keyboard_*`** — mazec IMEアクションバー
- **`collabo_*`**(50) — リアルタイム協働のステータス/レベルメーターアイコン
- **`design1_*`**(45) — タブレット/大画面(`sw600dp`)向けのCabinet UI別スキン
- **`onetap_pagebutton_*`/`onetap_scrollbutton_*`** — ワンタップスクロールナビゲーション
- `drawable-ja/`は**ログインアイコンのみ**上書き(`ic_login_mmj/google/ms/simple/qrcode`) — 日本のみQRコードログインの選択肢がある

## 4. raw / font 完全一覧

- `res/raw/`: `zxing_beep.ogg`(バーコードスキャン音)、OSSライセンス文言バンドル(`third_party_license_metadata`/`third_party_licenses`)
- `res/font/`: カスタムフォントは**`roboto_medium_numbers.ttf`(数字のみのRoboto Mediumサブセット)1つだけ**。それ以外は全てシステムフォント依存

## 5. カラー/テーマ

- `res/color-night/`は**わずか3ファイル**(すべてMaterialのtimepickerウィジェット内部用) — **アプリコンテンツレベルでのダークモードは実質未対応**
- ブランドカラー(`values/colors.xml`): `primary_color`/`accent_color` = `#32a5ff`(青)、`primary_dark_color` = `#323a45`、`editor_title` = `#334488`、`cabinet_main_color` = `#e8e9eb`
- 自前のダイアログデザインシステム(`values/styles.xml`、8062行中約341個がアプリ固有スタイル): `UiDialogStyle`, `UiDialogTheme`, `UiDialogTitleStyle`, `UiDialogGroupUpStyle`/`GroupDownStyle`, `UiDialogSwitchStyle`, `UiDialogSpinnerStyle`, `CabinetDetailText`/`CabinetNormalMainText`/`CabinetSimpleText`, `dlg_button_style`等
- IME変換候補バー用の専用パレット(`bkcolor_hiragana/katakana/kanji/kanji_chinese/hangul/number/symbol`)があり、日本語入力の変換候補UIを自前レンダリングしている

## 6. `assets/shape/`(26個)

`com.metamoji.noteanytime.shape.id<NNN>.product`という命名のZIPアーカイブ群。ノートに挿入できるステッカー/図形パック。IDは101–302, 401–602, 801–804, 10001–10005, 11001–11004の範囲にクラスタリングされており、複数のカテゴリ/ティアが存在すると推測される。

## 7. `assets/webview/`

`LegalNotices.html`のみ(利用規約/OSSライセンス表示用)。ハイブリッドUIフレームワークではない。

## 8. `apk/original/` と `apk/unknown/`

- `apk/original/`: apktoolが保持するバイナリコンパイル版`AndroidManifest.xml`のみ(署名情報の別データなし)
- `apk/unknown/`: AndroidX/Kotlinライブラリの`.version`マーカーファイル群、Kotlin標準ライブラリのメタデータ、コルーチンデバッグプローブ、OkHttpネイティブイメージ設定、**ORMLiteのREADME/LICENSE/VERSIONファイル**(ORMLite使用の確証)、Gradleビルドメタデータ — アプリ固有の実質的な情報は無し

## 9. Tauri版設計への示唆

- ペンの種類(standard1/2, marker, fountain, calligraphy1/2, brush1)や消しゴムモード、投げ縄選択の2モードなど、UIツール群の正確な内訳は新アプリのツールパレット設計にそのまま使える
- ダークモード未対応という点は、新アプリでは(望むなら)むしろ改善ポイントにできる
- 独自のダイアログデザインシステムは点数が多い(182個の`dialog_*`レイアウト)ため、フルスコープでの再現は避け、MVPスコープ([03-tauri-migration-notes.md](03-tauri-migration-notes.md)参照)に応じて優先度をつけるべき
- 日本語が事実上のソース言語であることから、新アプリも日本語ファーストでUI文言を作成し、英語は後から翻訳する方針が実態に合っている
