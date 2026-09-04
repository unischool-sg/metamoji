# 機能分析

`AndroidManifest.xml`(245行)・`res/values/strings.xml`(4468行)・`res/layout*`(531ファイル)・`res/menu`から、ユーザーが実際に触れる画面と機能を整理したもの。

## 1. 画面(Activity)一覧

| Activity | 画面ラベル | 役割(推定) | 起動経路 |
|---|---|---|---|
| `StartupActivity` | 短縮アプリ名("ClassRoom") | 起動スプラッシュ、遷移先振り分け | **ランチャー**(MAIN/LAUNCHER) |
| `MainActivity` | "MetaMoJi ClassRoom" | メインハブ(ノート/キャビネット閲覧) | 内部遷移 |
| `LoginActivity` | "LoginActivity" | サインイン(MetaMoJi ID / SSO / OIDC) | 外部公開、`mmjsso://oidcsuccess`・`mmjsso://oidcfail` ディープリンク |
| `EditorActivity` | (ラベル指定なし) | ノート編集キャンバス本体 | 内部遷移 |
| `WebPageActivity` | なし | アプリ内ブラウザ(ヘルプ/規約/購入リンク等) | 内部遷移 |
| `ImportActivity` | なし | 受信ファイルのインポート前処理 | 内部遷移 |
| `EntryActivity` | なし(noHistory) | **ファイル/共有の統合受信口**。`.atdoc`/`.atdo`(独自ノート形式)、`.btshare`/`.btsh`(共有ドライブパッケージ)、PDF、画像、音声、`metamojiclassroom://` を一括で受ける | **外部公開**、多数のVIEW/SEND intent-filter |
| `BulkImportActivity` | なし | 複数ファイル一括インポート | 内部遷移 |
| `NotifyPreviewActivity` | なし | 通知プレビュー | 内部遷移 |
| `LicenseKeyInputProxyActivity` | (空ラベル) | 有償機能のライセンスキー入力 | 内部遷移 |
| `AnytimeAppWidgetConfig` | なし | ホーム画面ウィジェット設定 | 外部公開(APPWIDGET_CONFIGURE) |
| `AmvFullscreenActivity` | "MetaMoJi Video" | 動画全画面再生(PiP対応) | 内部遷移 |
| `CaptureActivity`(ZXing) | — | QR/バーコードスキャン(教室参加・ログイン用) | 内部遷移 |
| `MazecAlertMessageActivity` | "mazec3 (Japanese)" | 手書き入力エンジンの透明アラート | mazecサブシステム内部 |
| `MazecPreferenceActivity` | "mazec3 Settings" | 手書き入力設定 | 内部遷移 |
| `UserDictionaryActivity` | "Show User Dictionary" | 手書きユーザー辞書表示 | 内部遷移 |
| `RecognizeUserDictionaryAddCharFormActivity` | "Register Letter Shape" | 文字形状の登録 | 内部遷移 |
| `RecognizeUserDictionaryListActivity` | "List of Letter Shapes" | 登録文字形状の一覧管理 | 内部遷移 |

その他の非Activityコンポーネント: `SyncEventService`/`DmIntentServiceRunner`(バックグラウンド同期)、`AnytimeAppWidgetProvider`/`Service`(ウィジェット)、`NtNoteDataProvider`/`FileProvider`(非公開コンテンツプロバイダ)。

## 2. 権限一覧

| 権限 | 用途(推定) |
|---|---|
| `CAMERA` + camera系feature | ノートへの写真挿入・QRスキャン |
| `RECORD_AUDIO` + microphone feature | 音声メモ録音 |
| `READ/WRITE_EXTERNAL_STORAGE`(maxSdk32) | 旧OS向けファイルアクセス(新OSはFileProvider/Scoped Storageへ移行) |
| `INTERNET` | クラウド同期・教室協働・ログイン・アドオン購入 |
| `ACCESS_NETWORK_STATE` | 同期前の接続状態確認 |
| `WAKE_LOCK` | 同期・アップロード・PDF書き出し中のスリープ防止 |
| `READ_CONTACTS` | 共同編集者の招待(連絡先からの選択) |
| `hardware.type.pc`(非必須) | PC/Chromebookのデスクトップモード対応を示唆 |
| `com.metamoji.mazec.tools.near.provider.READ_DATA` | mazec関連の内部コンテンツプロバイダ連携 |

位置情報・Bluetooth・SMS権限はなし。教室内の端末探索はローカル無線ではなく**クラウド仲介方式**であることの裏付け。

## 3. 機能カテゴリ別一覧

### ノート編集ツール
ペン設定(種類・太さ・色)、図形(フローチャート図形含む)、付箋(色/枠/塗り設定)、テキストボックス(枠線/色/罫線/フォントサイズ)、レーザーポインタ、消しゴム/選択/移動、Undo/Redo、編集履歴バー。

### ページ/用紙設定
背景・用紙プリセット選択、ヘッダー/フッター編集、ページジャンプ/一覧、文書設定(パスワード保護・タイトル)、ブックマーク、ノート結合。

### テンプレート/ライブラリ
ノートテンプレートギャラリー(共有テンプレート含む)、メディアライブラリ、フォント一覧、箇条書きスタイル選択。

### Cabinet(クラウドファイル管理)
最頻出カテゴリの一つ(文字列中"CABINET"だけで450件超)。フォルダツリー/ノート一覧、チームドライブ/組織管理、ドライブメンバー管理・権限、同期ステータスバー、オンプレミスサーバーURL設定(法人/学校向け自前ホスティング対応)。

### 共有(Share Drive)
共有ビューUI、共同編集レイヤーの表示/編集切替、送信ダイアログ(複数ページをまとめて1つのPDFに結合するオプション、音声ファイル添付など多形式エクスポート)。

### クラスルーム/コラボ機能
リアルタイムチャット、ルームメンバー/設定管理、パスワード付きルーム、ドキュメント作成/配信、復元(バージョン履歴からの復旧)。

### 教師用クラスルーム制御機能
- **注目(Attention)機能**: 特定生徒の画面にフォーカスを当てる開始/終了/切替
- **締切/ロック**: 課題の締切設定、締切後の読み取り専用化、履歴ログ
- **モニタリング**: 生徒の現在ページ・サムネイルをグリッド表示(動画配信ではない軽量方式)
- **マスキング**: Unit(答え等)を隠す/表示する機能
- **アンケート/採点**: アンケートUnit(棒グラフ結果表示)、採点・レポート機能
- **参加コード/QRコード**: QRコードまたは参加コードでの教室参加

### インポート/エクスポート
PDFインポート(新規ノートとして/既存ノートへページ追加、暗号化PDF対応)、画像インポート、WebDAV経由インポート/エクスポート、移行(バックアップ)パッケージのエクスポート、WebDAVへのCSVエクスポート。

### メディア
音声録音・プレイリスト、動画録画・トリミング(ExoPlayerベースの全画面プレイヤー)、音声/動画へのリンクUnit。

### アカウント/ログイン/ライセンス
MetaMoJi IDログイン(通常/SSO/OIDC/簡易/QRコード)、システムオプション・アカウント編集、ライセンスキー入力、EULA同意、アドオンストア(mazec言語パック等の有料機能購入)。

### 手書き認識(mazec)関連
設定、ユーザー辞書、カスタム文字形状登録、認識候補ポップアップ表示。

### サポート/診断
サポートログの収集・メール/クリップボード送信、エラー画面。

## 4. 画面構成の内訳(レイアウトファイル、531ファイル)

| 種別 | 件数 | 備考 |
|---|---|---|
| `activity_*` | 17 | トップレベル画面 |
| `fragment_*` | 9 | ログイン各種、フォルダツリー、ノート一覧等 |
| `dialog_*` | **182** | 圧倒的最多。アプリ全体がモーダル(ダイアログ)中心のUI設計 |
| `item_*` | 34 | リスト/グリッドの行テンプレート |
| アプリ独自のツールバー/エディタchrome等 | 約145 | エディタのアクションバー/ボトムバー、mazecビュー等 |
| サードパーティ由来(AppCompat/Material/ExoPlayer等の定型) | 約144 | アプリ固有機能ではない |

`res/menu/` は1ファイルのみ(設定メニュー)しかなく、ツールバー/コンテキストメニューのほとんどは `<menu>` リソースではなく独自Viewレイアウト(`menu_bar_na.xml` 等)で実装されている。**Tauri版でAndroidメニューリソースをそのまま流用できる箇所はほぼない**。

## 5. ファイル関連付け・ディープリンク

| スキーム/拡張子 | 用途 |
|---|---|
| `.atdoc` / `.atdo` | 独自ノート形式(ページ単位: `application/vnd.metamoji.atdoc.page`) |
| `.btshare` / `.btsh` | 共有ドライブパッケージ |
| PDF / 画像 / 音声 | インポート対象 |
| `metamojiclassroom://` | 教室参加ディープリンク(QRコード経由) |
| `mmjsso://oidcsuccess` / `mmjsso://oidcfail` | OIDCログインのリダイレクト受信 |

Tauri(デスクトップ)版でも同等のファイル関連付け・カスタムURLスキーム登録の仕組みが必要になる(OS側のファイルタイプ登録 + Tauriのdeep-linkプラグイン)。
