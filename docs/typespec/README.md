# MetaMoji ClassShare クラウドAPI (非公式・リバースエンジニアリングドキュメント)

このディレクトリは、`apk/` に展開済みの Android アプリ
`com.metamoji.share_classroom` (versionName `3.15.1.0`, versionCode `43`,
apktool展開結果は [apk/apktool.yml](../../apk/apktool.yml)) の smali コードを解析し、
アプリがクラウドサービスと通信するために使っている非公開API(通称 ClassShare /
DigitalCabinet クラウドAPI)を [TypeSpec](https://typespec.io/) として再構築したものです。

**非公式ドキュメントであり、MetaMoji社の公式仕様ではありません。** 実装の逆解析に基づく推測を含むため、
実際の挙動と差異がある可能性があります。

> ⚠️ **アプリは1つの統一APIではなく、少なくとも13系統の独立した通信レイヤーを持っています。**
> 本ドキュメントは全13系統(119エンドポイント)の調査を完了しています(うち2系統は
> 「独自のワイヤレベル契約なし」と確認した上で新規ファイルを作成せず)。詳細は下記「ファイル構成」表、
> 各系統の判定根拠は [ROADMAP.md](./ROADMAP.md) を参照してください。

## 解析範囲・手法

- 解析対象クラス: `com.metamoji.cs.dc.CsCloudService`
  ([apk/smali_classes2/com/metamoji/cs/dc/CsCloudService.smali](../../apk/smali_classes2/com/metamoji/cs/dc/CsCloudService.smali))
  が公開する `executeXxxWithParams` 系メソッド群(53個)。
- 各メソッドが受け取る `com.metamoji.cs.dc.params.CsXxxParam` と、返却する
  `com.metamoji.cs.dc.response.CsXxxResponse` のインスタンスフィールドをフィールド名・型ごとに抽出し、
  TypeSpecの`model`に変換しました。
- HTTPメソッド・パスは `CsCloudService` 本体、および各メソッドが生成する匿名クラス
  (`CsCloudService$1`〜`$55` など、`Callable#call()`内で
  `CsHttpClient.sendRequestWithCommand(command, method, jsonBody)` を呼び出す箇所)から
  `CsHttpClientMethod`(GET/POST/PUT/DELETE)と `command` 文字列リテラルを突き合わせて特定しました。
- ベースURL (`https://mps.metamoji.com/`) は
  `com.metamoji.noteanytime.ModelInfo$BuildOptions.DIGITAL_CABINET_URL_ROOT` の定数値です。

## 通信の基本仕様

- **プロトコル**: HTTPS + JSON。リクエストボディは `CsParamBaseAbstract#stringify()` が
  `HashMap<String, Object>` を組み立てて `org.json.JSONObject` 経由でJSON文字列化したものです。
  興味深い点として、GETやDELETEのリクエストでもJSONボディを送信する実装になっています
  (標準的なHTTPセマンティクスからは外れますが、実際のクライアント挙動として本ドキュメントでもそのまま記載しています)。
- **共通リクエストフィールド**: すべてのリクエストボディに
  `deviceName` / `productName` / `productVersion` / `locale` / `timezone` が自動付与されます
  ([common.tsp](./common.tsp) の `CsRequestBase` 参照)。
- **共通レスポンスフィールド**: すべてのレスポンスは `errorCode`(0=成功)や `errorMessage`、
  メンテナンス関連フィールドなどを共通に持ちます ([common.tsp](./common.tsp) の `CsResponseBase` 参照)。
  型付きプロパティに写像されなかった生JSONは `bodyMessage` にも格納されます。
- **カスタムHTTPヘッダ**: `X-DM-AppVersion` / `X-DM-Locale` / `X-DM-ProductName` /
  `X-DM-ProductVersion` が付与されます (`com.metamoji.cs.CsHttpClient`)。
- **認証**: ユーザー名/パスワードによる `POST /users3/login`
  (または `POST /users3/classroomlogin`)成功後、サーバーが発行するセッションCookieを
  OkHttpの共有CookieJar (`com.metamoji.network.NwHttpClient`) が保持し、以後のリクエストに自動付与します。
  `POST /users3/logout` はサーバー側セッションの破棄、`CsHttpClient#clearSession()` は
  クライアント側Cookieストアのクリアを行います。
- **ベースURLの切り替え**: ログイン前や一部の特殊エンドポイントはルートサーバー
  (`https://mps.metamoji.com/`, `CsCloudServiceContext#getRootServer()`) を基点にしますが、
  ログイン後の大半のAPIは `CsCloudServiceContext#getRestBasePath()` が返す
  テナント固有のホスト(ログインレスポンスの `restHost` から導出)を基点にします。
  そのため、[auth.tsp](./auth.tsp) の `getCredential`・[misc.tsp](./misc.tsp) の
  `getMaintenanceInfo` / `postCrashLogs` はルートサーバー直下のパスとして注記しています。

## ファイル構成

| ファイル | 内容 |
| --- | --- |
| [main.tsp](./main.tsp) | サービス定義・全ドメインファイルのimport |
| [common.tsp](./common.tsp) | 共通リクエスト/レスポンス基底モデル、共有の値オブジェクト |
| [webdav.tsp](./webdav.tsp) | WebDAVデータプレーン(ノート本体のGET/PUT/DELETE/HEAD/MKCOL/MOVE/PROPFIND/PROPPATCH) |
| [distribute.tsp](./distribute.tsp) | クラス配信(ノート変換ジョブ登録/ステータス取得)・クラッシュログアップロード(`DvmCloudService`) |
| [license-activation.tsp](./license-activation.tsp) | ライセンスキーのオンラインアクティベーション/残日数照会(`LicenseUtil`、別ホスト`license.metamoji.com`) |
| [video.tsp](./video.tsp) | 動画ノート機能(クリップ一覧/詳細/削除/アップロード。動的な「Flora」サーバーを使用) |
| [collabo.tsp](./collabo.tsp) | リアルタイム授業ルーム共有(ルーム作成/ログイン/ロール管理/設定同期/ギャラリー投稿) |
| [sync-drive.tsp](./sync-drive.tsp) | ドライブ/ドキュメント同期の新世代REST API(`SdCloudService`。WebDAV経路と並行して稼働) |
| [gallery-media.tsp](./gallery-media.tsp) | ギャラリーメディア(音声・写真添付)のアップロード/一覧/削除(`Media*`) |
| [library-store.tsp](./library-store.tsp) | レガシーコンテンツストア(ゲストログイン/ページ一覧/商品情報、`com.metamoji.lb`) |
| [sysinfo.tsp](./sysinfo.tsp) | アプリ設定マニフェスト(EULA/バージョン/ヘルプリンク/ダウンロードURL、`NtSysInfoManager`) |
| [gradebook.tsp](./gradebook.tsp) | 成績表・テストログ(小テスト実施ログ・採点・レポート提出状況、`forSchool.service`) |
| [mazec-purchase.tsp](./mazec-purchase.tsp) | Mazec手書き辞書アドオンの更新チェック(課金機能自体はデッドコードと確認) |
| [remote-converter.tsp](./remote-converter.tsp) | ファイル形式変換サービス(3ステップの非同期ジョブ。**呼び出し元が存在せず到達不能と確認**) |
| [auth.tsp](./auth.tsp) | 認証・アカウント管理 (login / logout / register / パスワード / EULA / SSO 等) |
| [user.tsp](./user.tsp) | ユーザー・組織(グループ)情報 |
| [drive.tsp](./drive.tsp) | ドライブ(共有フォルダ)・メンバー管理・共有リンク |
| [classbox.tsp](./classbox.tsp) | クラスボックス(オンライン授業ルーム) |
| [messaging.tsp](./messaging.tsp) | ダイレクトメッセージ |
| [settings.tsp](./settings.tsp) | クライアント設定/設定ファイルのサーバー同期 |
| [license.tsp](./license.tsp) | ライセンス・課金・共有機能の利用可否 |
| [misc.tsp](./misc.tsp) | メンテナンス情報・操作ログ・クラッシュログ送信 |

各operationのdocコメントに、対応する元Javaメソッド名 (`CsCloudService.executeXxxWithParams`) を
記載しているので、より詳細な挙動を確認したい場合は同名メソッドを
[apk/smali_classes2/com/metamoji/cs/dc/CsCloudService.smali](../../apk/smali_classes2/com/metamoji/cs/dc/CsCloudService.smali)
から辿ってください。

## 既知の制約・注意点

- **フィールドの必須/任意判定**: smaliのフィールド宣言だけからは必須/任意を確実に判別できないため、
  本ドキュメントでは全フィールドを `optional` として記載しています。実際には未設定だと
  `errorCode` 付きのエラーレスポンスになるフィールドも含まれます。
- **`Record<unknown>` / `unknown[]`**: `HashMap<String, Object>` や `List<Object>` など、
  実行時までスキーマが確定しない(あるいはコード上で汎用Mapとして扱われている)フィールドは
  `Record<unknown>` / `unknown[]` としています。実際の構造はサーバー側実装に依存するため、
  必要に応じて実機通信をキャプチャして肉付けしてください。
- **GET/DELETE + JSONボディ**: 前述の通り、実装はHTTPメソッドに関わらずJSONボディを送信します。
  一般的なHTTPクライアントやOpenAPIツールチェインでは非標準な組み合わせのため、
  OpenAPIへのエクスポート時に警告が出る、またはツールによってはボディが無視される可能性があります。
- **`executeWithAutoLoginFor`**: セッション切れ時に自動的に再ログインしてから元のリクエストを
  リトライする横断的な仕組みのため、個別のエンドポイントとしては記載していません。
- 課金系エンドポイント (`/License`, `/Purchase`, `/DummyPurchase`, `/ProductLicense`,
  `/SimPurchase`, `/GetShareInfo`) はパス自体が他と異なる命名規則(大文字始まり・プレフィックスなし)
  になっており、旧世代のAPI(別サブシステム)を流用している可能性があります。

## コンパイル方法 (任意)

TypeSpecコンパイラで構文チェックやOpenAPI 3への変換ができます。

```bash
cd docs/typespec
npm install
npm run build   # docs/typespec/tsp-output/openapi/metamoji-classshare-openapi.yaml を生成
```
