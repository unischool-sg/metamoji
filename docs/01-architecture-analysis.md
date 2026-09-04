# アーキテクチャ・設計分析

対象: `com.metamoji.share_classroom` v3.15.1.0 (versionCode 43, minSdk 28 / targetSdk 36)
アプリ内部の起動クラスは `com.metamoji.noteanytime.NoteAnytimeApplication`。製品としては「Note Anytime」の描画・文書エンジンを土台に、「Share Classroom」向けの教室配信・協働編集機能を載せた構成になっている。

## 1. 技術スタックの概観

- Android (Kotlin/Java混在, Kotlin Coroutines, ktx系AndroidXライブラリ多数)
- ネットワーク: OkHttp/Okio
- ローカルDB: ORMLite (`com.j256.ormlite`) + 独自JNI SQLブリッジ (`libsqldbjni.so`)
- 画像/動画: ExoPlayer, AndroidX Media3 Transformer(GLSLシェーダ使用)
- 手書き認識・描画: 独自ネイティブライブラリ群(C/C++, JNI経由)
- QRコード: ZXing + journeyapps ラッパー
- ネットワーク経由の協働編集: 独自TCPソケットプロトコル + REST API(自社サーバー)

## 2. ノート/ドキュメントのデータモデル

2層構造になっている。

- **`com.metamoji.df.*`(Document Framework)**: アプリ非依存の汎用ツリーモデル。すべてのオブジェクトは `IModel`(親/子/兄弟へのポインタ、`getModelType()` によるタグ、型付きプロパティバッグ)を実装する `Model` として表現される。スキーマはプロパティ層になく、モデルタイプ文字列とプロパティキー(`"nx"`,`"ny"` のような2〜3文字の短縮キー)で決まる、いわば軽量な plist/DOM。
- **`com.metamoji.nt.*` / `com.metamoji.un.*`(NoteAnytime特化層)**: `NtDocument`(`DfDocument`を継承)を頂点に、コントローラ階層が
  **Document(`NtDocument`) → Note(`NtNoteController`) → Page(`NtPageController`) → Layer(`DfLayerController`) → Unit(`NtUnitController`派生)**
  という構造で並ぶ。`NtNoteController` がステージ/ビューポートを保持し、`NtPageController` が用紙サイズを保持する。

描画は `com.metamoji.df.sprite.*`(`Stage`/`Layer`/`Sprite`/`Paint`/`Path`/`Graphics`、ジェスチャ認識`AllInOneGesture`/`PinchSolver`)という独自の2Dベクタ/ビットマップ描画エンジンが担い、モデル層とは分離されている。

### キャンバスオブジェクト(Unit)一覧

| 種別 | 概要 |
|---|---|
| 手書き(インク) | JNI (`libDrawUnitComponent.so`) 経由のネイティブ実装。メッシュ/形状補正ライブラリ別途あり |
| テキスト | 段落/行/属性/Undoを持つリッチテキストモデル、協働編集用の差分データ構造あり |
| 画像 | マスキング・ドロップシャドウ対応 |
| 背景画像 | 前景画像とは別クラス |
| PDF(埋め込み) | ページ番号・オフセット・拡縮・回転などをプロパティ保持 |
| 動画 | 「Chairman's direction」= 教師が再生を同期制御できる仕組みあり |
| 音声 | アプリ内録音対応(再生専用ではない) |
| アンケート/グラフ | 棒・円グラフ設定を持つ「Survey」Unit。実体は独立したチャートエンジン(`com.metamoji.ch.*`、bar/line/pie/radar/scatter)をラップしたもの |
| Web | 埋め込みブラウザ、ブックマーク機能 |
| リンク | ノート内/ノート間ジャンプ |
| 付箋(Flip) | 表裏反転アニメーション、協働同期状態を持つ |
| フォーム/図形系 | 表・罫線・スケジュール・方眼・ラベル付きリストなど「スマートテンプレート」系オブジェクト群 |
| ダミー | 未知のUnitタイプに対する将来互換用プレースホルダ |

協働編集(リアルタイム共同編集)は各Unitに紐づく `*DirectionData` 群(差分/操作データ)を通じて `com.metamoji.ns.direction.NsDirectionManager` に集約される。

## 3. `.atdoc` ファイルフォーマット(推定)

保存パス上に zip 利用の形跡はなく、`RandomAccessFile` ベースの**独自バイナリコンテナ**と推定される。

- 固定ヘッダ42バイト(`StateDataHeader`): マジックナンバー/バージョン、フォーマットバージョン、モデルテーブル/Undoテーブル/エクストラテーブルへのオフセット
- `StateData` がヒープ的なブロックアロケータ(最小ブロック64バイト、フリーブロックリストによる再利用)としてファイル上を管理
- `ModelManager` がモデルテーブル・モデルタイプ辞書・Undoテーブル・エクストラテーブル(作成者情報・バージョン情報・タイプ辞書)を保持。フォーマットバージョンは1〜3まで進化(現行v3)
- ルートノードindexとフリーリスト(“boneyard”)を持つ、単一ファイル内オブジェクトグラフDBという設計

**Tauri版への示唆**: このバイナリフォーマットをそのまま再現する必要はない。「Document → Note → Page → Layer → Unit」という概念モデルと、Unitごとの型タグ+プロパティ辞書という設計思想だけを引き継ぎ、保存形式は SQLite または JSON/CBOR ベースのコンテナに置き換えるのが現実的。

## 4. Cabinet(ノート管理・クラウド保存)

`com.metamoji.nt.cabinet.*` はDropboxライクな「ドライブ/フォルダ」モデル。「Private Storage」と「Team Drive」の概念があり、チームドライブはメンバー管理・招待機能を持つ。オンプレミスサーバーURLを設定できる項目もあり、クラウド版と自社/学校ホスト版の両対応。同期は `SyncEventService` が状態機械として管理し、編集競合時はノートを複製する形で解決する(コンフリクト時にノートが複製される旨のメッセージが存在)。

## 5. PDFパイプライン

- **インポート/解析**: `com.metamoji.pdf.core` / `pdf.content` に自前のPDFパーサー(xref, dictionary, stream, Flate/LZW/RLE/ASCIIHex/ASCII85デコーダ、AES/RC4による暗号化PDF対応)がある。
- **エクスポート/書き出し**: `com.metamoji.nt.pdfsave` に自前のPDFライター(暗号化出力対応)。ページ範囲指定エクスポートや、生徒ごとにフィルタしたエクスポート(`NtPDFExportMultiUserTargetPages`)など教室向けの出力バリエーションを持つ。

## 6. チャート/グラフ機能

`com.metamoji.ch.*` は汎用的なチャートエンジン(棒・折れ線・円・レーダー・散布図、座標変換の抽象化層あり)。ただし現状は「アンケート(Survey)」Unitからのみ利用されており、単体の「グラフ挿入」機能としては露出していない。

## 7. `ctold`(レガシー)と現行モデルのすみ分け

`com.metamoji.ctold.*`(Container Tool old)は競合するドキュメントエンジンではなく、SQLiteベースの**タグ付け/検索インデックス**サブシステム。Note→Page→Unitの階層をタグ可能なオブジェクトとして薄く写像し、`.atdoc` バイナリを毎回スキャンせずに横断検索・タグ検索を可能にしている。旧世代製品からの技術継承と考えられる。

## 8. 手書き認識(mazec)サブシステム

「mazec」はMetaMoJi独自の手書き文字認識エンジン。本アプリでは以下2系統で使われる。

1. **ボックス入力型IME風認識**(`com.metamoji.mazec.*`): Android標準の `InputMethodService` をフォークした独自クラスをベースにした埋め込み手書き入力パネル。マニフェストにIMEとしてのサービス登録はなく、システムキーボードとしては公開されていない(ノート内テキストボックスへの埋め込みウィジェットとして動作)。
2. **フリーハンド認識**(`com.metamoji.tle` / `com.metamoji.tntc`): キャンバス上の自由な手書きをテキスト行として切り出す(TextLineExtractor)・図形か文字かを判定する(TextNoTextClassify)パイプライン。起動時に辞書(`assets/TextLineExtractorDic.zip`, 約8MB)を読み込む。

### ストロークデータモデル(再利用可能)

ペン入力は x/y/time の点列として捕捉され(`StrokeTouch`)、順序付きストロークの集合(`HwStroke` / `HandwriteStroke`)にまとめられる。筆圧・線幅・ペン種別、インクの描画スタイル(単色/グラデーション/カリグラフィ)を持つ。ストロークの捕捉とレンダリングは戦略パターンで分離されている。**この「点列+時刻+筆圧、順序付きストローク、スタイルオブジェクト」というデータモデル自体は認識エンジンに依存せず、Tauri版でもそのまま設計に使える。**

### 認識パイプライン

認識は**完全にオンデバイス・ネイティブ実行**(JNI)で、通信を伴わない。

- `libMazecRecognizer.so` / `libmazecRACLibJa.so` — 文字認識コア
- `libDrawUnitComponent.so` — 手書きUnitの描画/セグメンテーション処理
- `libTextLineExtractorComponent.so` — フリーハンドのテキスト行切り出し
- `libTextNoTextClassifyComponent.so` — 文字/図形の判別

### ライセンス・購入モデル

mazecは**言語ごとに個別課金されるアドオン**(`PRODUCTID_MAZEC_ADDON_JA/EN/FR/...` など)。購入後、言語辞書をバックグラウンドダウンロードする方式。

### ユーザー辞書

ユーザーが書いた文字形状をネイティブ認識エンジンの学習辞書に登録できる機能(`recognizer_learnCharacter` 等のJNIメソッド)があり、専用の管理画面がある。

### Tauri版への示唆

ストロークのデータモデル・描画設計は再利用可能。ただし**ネイティブ認識エンジン自体(`.so`)はリバースエンジニアリング対象にできない**(プロプライエタリ、クラウドフォールバックなし)。PC版での代替候補:
- Windows: Windows Ink(`Windows.UI.Input.Inking`)の手書き認識APIがOS標準で無料・オンデバイス
- クロスプラットフォーム: Google ML Kit Digital Ink Recognition(オンデバイス・無料)、MyScript(商用SDK、mazecに近い機能性・カスタム辞書対応)
- 簡易フォールバック: Tesseract等のOCR

## 9. ローカルデータベース

2系統併存。

- **ORMLite** ベースのメタデータDB(`com.metamoji.dm.*`)— ドキュメントメタ情報、ライブラリ(背景画像・テンプレート)メタ情報、Key-Valueテーブル
- **"SD"(Sync Drive)DB**(`com.metamoji.sd.entities.*`)— Core Data風の「Managed Object」抽象化。Document/Room/Folder/Tag/Drive(プライベート/チーム)/サムネイルキャッシュなどをエンティティ化し、クラウド同期の状態管理に使う
- 上記とは別に、`libsqldbjni.so` を介した**独自ネイティブSQLブリッジ**(`com.metamoji.sqldb`)があり、おそらく描画/文書エンジン側からの高速アクセス用

## 10. メディア処理

- **音声**: 録音/再生の状態機械(`com.metamoji.media.voice.*`)、波形表示・トリミングにOSSの **Ringdroid**(WAV/MP4パーサ)を利用
- **動画**: ExoPlayerベースの再生・トリミングUI(`com.metamoji.video.*`、クラス名接頭辞 `Amv*`)。トランスコードは `IAmvTranscoder` 抽象の下、ExoPlayer/MediaCodecベースの実装と、複数トランスコーダをフォールバック連鎖させる `AmvCascadeTranscoder` がある。`assets/shaders/*.glsl` はAndroidX Media3 Transformerの標準シェーダセットで、動画変換(HDR/YUV変換等)用。**手書きインク描画用のシェーダではない**。

## 11. クラウド/バックエンド通信

`BuildConfig` にサーバーURLがハードコードされている。

- `https://cabinet.7knowledge.com/` — 個人向けクラウド(Cabinet)同期
- `https://mps.metamoji.com/` — 法人/学校向け(Biz)サーバー
- `https://cdn.metamoji.com/`, `https://download.metamoji.com/` — CDN/ダウンロード
- カスタムURLスキーム定数: `metamojiclassroom`

教室のリアルタイム協働編集(通称 "Collabo")は以下の2段階構成:

1. **ルーム仲介REST API**(`cosmos/*` エンドポイント、例: `GetServletInfo`, `CreateRoom`, `LoginRoom`, `CheckRole`, `GetMemberList`, `SetScore` など)— ルーム作成・参加・ロール管理・採点等をHTTPSで行い、実際にリアルタイム通信すべき中継サーバー(servlet)のアドレスを取得する
2. **リアルタイムチャネル**: 取得した中継サーバーへ生の `java.net.Socket`(TLSオプション、HTTPプロキシ対応)で接続し、タブ/スペース/コロン区切りの独自テキストプロトコルでパケットをやり取りする(WebSocketではない)。編集操作は「Direction」という操作ログ形式で送受信され、`NsDirectionManager` がローカルモデルへの適用を担う

**参加(Join)フロー**: QRコード(ZXing)で `metamojiclassroom://` のディープリンクを共有 → `EntryActivity` が受信 → ルームREST APIでログイン/ロール確認 → 中継サーバーへソケット接続。

**オフライン編集**: 生徒側は切断状態でも編集を継続でき(`ScOfflineEditManager`)、再接続時にレイヤー単位で差分をマージする「ローカルファースト」設計。

**モニタリング機能**: 教師側は生徒の画面を動画配信で覗くのではなく、**現在ページ番号とページサムネイル画像**を定期的に受信してグリッド表示する方式(軽量)。加えて画面ロック、締切設定、マスキング(答え隠し)、採点/レポートもcosmos API経由。

### Tauri版への示唆

- 独自TCPテキストプロトコルをそのまま再現する必要はなく、WebSocket + JSON(または類似の構造化フォーマット)で置き換えるのが妥当
- **MetaMoJi社のサーバー(`cosmos`/`mps.metamoji.com`等)には接続できない・すべきではない**。教室協働機能を実装する場合は自前のバックエンド(仲介API + WebSocketリレー)を新規設計する必要がある

## 12. ログイン/認証

`com.metamoji.li.*` にログイン方式ごとの `LoginDriver` 実装が複数存在(通常のID/パスワード、Google、学校SSO、外部連携、簡易ログイン)。SSO/OIDCは `SSODialog` が埋め込みWebViewでIdPのログイン画面を表示し、リダイレクト先URL(`mmjsso://oidcsuccess` / `mmjsso://oidcfail`)を検出してフローを完了する、典型的な「アプリ内ブラウザ+カスタムスキームリダイレクト」方式。QRコードによるログインブートストラップも別途存在する。オンプレミス版では法人サーバーURLをアプリ側で設定変更できる。

## 13. WebDAV連携

`com.metamoji.ex.webdav.*` は自社実装のWebDAVクライアント(サードパーティ製ライブラリ不使用)。学校が用意したオンプレミスのWebDAVサーバーへノート/ファイルをインポート・エクスポートする機能。

## 14. サードパーティライブラリ一覧

| パッケージ | 用途 |
|---|---|
| `com.j256.ormlite.*` | ローカルSQLiteのORM |
| `com.amazon.device.iap.*` | Amazonアプリストア課金(ストレージ用途ではない) |
| `com.journeyapps.barcodescanner` + `com.google.zxing` | QR/バーコードスキャン |
| `com.ringdroid.soundfile` | 音声波形解析(WAV/MP4) |
| `com.handmark.pulltorefresh` | Pull-to-Refresh UI |
| `com.tonicartos.widget.stickygridheaders` | セクション見出し付きグリッド |
| `com.airbnb.lottie` | Lottieアニメーション |
| `com.sevenknowledge.common.stroke` | MetaMoJi自社製の手書きストロークデータモデル(サードパーティではなく自社共通ライブラリ) |
| `jp.classmethod.android.componentlibrary` | 数値/時刻ピッカー等の小規模UIウィジェット |
| AndroidX Media3 Transformer | 動画変換(GPUシェーダ使用) |

**注**: AWS SDK(S3/Cognito等)は使用されていない。クラウドストレージ・メディアアップロードはすべて自社REST API(OkHttpベース)経由。

## 15. ネイティブライブラリ(.so)一覧

| ライブラリ | 役割 |
|---|---|
| `libmazecRACLibJa.so` | mazec文字認識コア(日本語) |
| `libMazecRecognizer.so` | mazec認識エンジン共通部 |
| `libDrawUnitComponent.so` | 手書きUnitの描画・セグメンテーション |
| `libTextLineExtractorComponent.so` | フリーハンド手書きのテキスト行抽出 |
| `libTextNoTextClassifyComponent.so` | 文字/図形の判別 |
| `libsqldbjni.so` | 独自SQLアクセス層(JNI) |

全てarmeabi-v7a/arm64-v8a/x86/x86_64向けにビルドされている(Androidエミュレータ/Chromebook等も考慮した構成)。
