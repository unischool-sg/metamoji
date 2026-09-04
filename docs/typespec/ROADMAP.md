# API解析ロードマップ (未完了分)

このファイルは `com.metamoji.share_classroom` APK (`apk/`) 内に存在する通信レイヤーの
全体像を把握するための調査結果と、TypeSpecドキュメント化の優先順位をまとめたものです。
1セッションでは全てを解析しきれないため、次回以降のセッションが迷わず続きから着手できるよう、
**現状把握した事実(何が/どこにあるか)** と **優先順位の根拠** を記録します。

> 個々のフィールド/リクエスト・レスポンス構造の網羅的な抽出はまだ行っていません。
> 以下は「このパッケージにどんなAPIがありそうか」という一次調査(smaliのgrep調査)の結果です。
> 実際にTypeSpecへ落とし込む際は、[auth.tsp](./auth.tsp) 等で行ったのと同様に、
> Param/Responseクラスのフィールド抽出・パス/HTTPメソッドの突き合わせが必要です。

## 完了済み

- ✅ **`com.metamoji.cs.dc.CsCloudService`** — DigitalCabinet/ClassShareクラウドAPI(JSON-RPC風)。
  53メソッド全て解析済み。[auth.tsp](./auth.tsp) / [user.tsp](./user.tsp) / [drive.tsp](./drive.tsp) /
  [classbox.tsp](./classbox.tsp) / [messaging.tsp](./messaging.tsp) / [settings.tsp](./settings.tsp) /
  [license.tsp](./license.tsp) / [misc.tsp](./misc.tsp) に反映済み。
- ✅ **`com/metamoji/network` (`NwWebDAVRequest`)** — WebDAVデータプレーン。GET/PUT/HEAD/DELETE/
  MKCOL(createDirectory)/MOVE/PROPFIND/PROPPATCHの8操作、XMLボディ構造、認証ヘッダ
  (`Authorization: Basic` + `X-mmj-appcode`)、ロックトークンの`If`ヘッダ付与ルール、
  カスタムdead property(`create`/`lastSyncedRevision`/`syncUpdate`、名前空間
  `http://xmlns.metamoji.com/digitalcabinet/tinydotnote/1.0/`)まで解析済み。[webdav.tsp](./webdav.tsp)に反映。
  呼び出し元 `DmDigitalCabinetAccessUtils` がホームコレクション直下にランダムIDでリソースを配置する
  フラットな構造であることも確認(`generateResourceIdOnServer`)。
  なお、ユーザーが任意の外部WebDAVサーバーに接続する`com/metamoji/ex/webdav`(`WebDAVManager`)は
  MetaMoji自身のサーバーとは無関係の別機能であり、依然未解析(Low優先度のまま)。

## 未解析パッケージ一覧(優先順位順)

### 優先度: High

| # | パッケージ | 役割 | 既知のエンドポイント/手がかり | 認証・ホスト |
|---|---|---|---|---|
| ~~1~~ | ~~`com/metamoji/network` (`NwWebDAVRequest`)~~ | ✅ **解析完了**。[webdav.tsp](./webdav.tsp) と上記「完了済み」を参照。 | — | — |
| 2 | `com/metamoji/dvm/cs` (`DvmCloudService`) | クラス配信(コンテンツ変換配布)・クラッシュログ送信のクラウドAPI。`com/metamoji/cs/CsHttpClient`(低レベルヘルパー、`CsCloudService`とは別)を利用。 | `convert/DistributeClass`, `convert/GetDistributeStatus`, `crashlogs/upload`(マルチパート) の3エンドポイント。Param/Result型(`DvmDistributeClassParams/Result`等)あり。 | 未調査(`CsHttpClient`共有の可能性が高い、要確認) |
| 3 | `com/metamoji/lc` | **ライセンスアクティベーション専用API**。`CsCloudService`とは完全に別ホスト。 | ホスト: `https://license.metamoji.com/mmjlicense/`(検証用: `license-test.metamoji.com`)。パス: `license/activate2`, `license/getremainingdays`。 | 独自のJSON+ハッシュ(HMAC風)プロトコル(`HttpUtil.postJson`)。 |
| 4 | `com/metamoji/ns/service` (`NsCollabo*`) | **リアルタイム授業ルーム共有("ClassShare"の名を冠する中核機能)**。ルーム作成・参加・ロール管理・設定同期。23ファイル中18ファイルが直接通信。 | `/cosmos/ModifyRole`, `/mmjcloud/ShareViewGetList`, `/mmjcloud/ShareViewGetMyRole`, `/mmjcloud/ShareViewGetRoomInfo`, `/mmjcloud/ShareViewGetRoomSetting`, `/mmjcloud/ShareViewSetRoomInfo`, `/mmjcloud/ShareViewSetRoomSetting`, `gallery/PostForShareAnytime` 等。`For{CheckRole,CreateRoom,CreateUniqueID,GetMemberList,GetRoomInfo,...}`というコマンドパターンで整理されており、TypeSpec化しやすい構造。 | `sessionID`ベース。ロール概念(`presenter`/`speaker`/`visitor`)、ルームタイプ(`casual`/`formal`/`limited`)あり。UA文字列 `"Android-Share-G-ClassRoom"`。 |
| 5 | `com/metamoji/media/video/network` (`VfCloud`, `NwServerAccessor`等) | **動画ノート機能(録画・アップロード・再生)**。アプリの目玉機能の一つ。71ファイル中の中核は`VfCloud`(+Companion), `VfIdMappingService`, `NwUpload`, `NwServerAccessor`, `NwUserInfoUpdater`の5クラス。 | 動的に割り当てられる"Flora"メディアサーバー(`flora/api/v1/`)に対し、`getlist`/`reserve`/`getclipcount`/`getclipinfo`/`getcoinfo`/`getposterframe`/`deleteclip`/`getserverstatus`/`getuploadpoint`/`exportclipinfo`等のコマンドクエリでアクセス。 | 独自ログイン/トークン方式(`accessToken`/`refreshToken`/`loginUser`/`loginCompany`)。サーバー予約フロー(`reserveServerId`)あり。 |
| 6 | `com/metamoji/rc` (`RcRemoteConverter*`) | **ファイル形式変換サービス**("Remote Converter")。`CsCloudService`と同じDigitalCabinetホストを共有。 | `/convert/TentativeRegist`, `/convert/ConvertRequest`, `/convert/GetConvertedFile`。マルチパートPOST(userId/password/productName/productVersion/jobId1/jobId2/fromMime/toMime/fileEntity)。エラーコード例: `14`=ライセンスなし, `100`=変換中。 | `CsCloudService`と同じDigital Cabinetホスト(`ModelInfo$BuildOptions.DIGITAL_CABINET_URL_BASE`)。 |

### 優先度: Medium

| # | パッケージ | 役割 | 既知のエンドポイント/手がかり |
|---|---|---|---|
| 7 | `com/metamoji/sd/cs` (`SdCloudService`) | ドライブ/ドキュメント同期のREST API。`CsCloudService`のドライブ機能と重複/後継の可能性がある新世代API(46ファイル)。ログイン状態は`CsDCUserInfoSettings`と共有するが通信自体は独立。 | `/rest/users/login`, `/rest/drives/%s/data`, `/rest/drives/%s/data?lastsyncrev=%s`, `/rest/drives/%s/lastupdaterevision`, `/rest/drives/%s/properties`, `/rest/drives/%s/syncstart`, `/rest/drives/%s/documents/%s/{meta,data,searchdata,thumbnail,editflag/turnon,editflag/turnoff}` |
| 8 | `com/metamoji/media/service` (`Media*`, `MediaBgTaskFor*`) | 旧世代の「ギャラリー」添付メディア(写真・音声)API。`NsCollaboURLConnection`を継承。34ファイル。 | `gallery/GetMediaFile`, `gallery/GetMediaList`, `gallery/LoginMedia`, `gallery/GetMediaStatus`, `gallery/DeleteMedia`(POST), `gallery/SetMediaTitle`(POST), `gallery/TentativeRegistMedia`(POST), `gallery/UploadMedia`(POST, マルチパート) |
| 9 | `com/metamoji/lb` | ライブラリ(テンプレート/背景画像等)カタログの初期化・ストアログイン/購入。 | カタログ初期化: `init/library/com.metamoji.classroom.item.system001.product` 等(製品ラインごと)。ストア: `storeURL("/Login")`, `baseURL("/mmjeditor2")`。 |
| 10 | `com/metamoji/nt/notify` (`NtSysInfoManager`) | アプリのシステム情報マニフェスト(EULA/バージョン/ヘルプリンク/ダウンロードURL)取得。Firebase/FCMではない。 | `%ssysinfo_%s.json?last=%s`(ホストは`CsCloudServiceContext.getRootServer()`またはデフォルト`https://cdn.metamoji.com/`)。1エンドポイントのみ。 |

### 優先度: Low(新規に文書化する価値が低い)

| # | パッケージ | 理由 |
|---|---|---|
| 11 | `com/metamoji/forSchool/service` | 成績表/テストログ機能。5エンドポイント(`/cosmos/GetScoreList`, `/cosmos/GetTestingLogList`, `/cosmos/SetReport`, `/cosmos/SetScore`, `cosmos/UpdateRoomInfo`)と小規模。実装は単純なCRUD。 |
| 12 | `com/metamoji/nt/dl` | フォント/Mazec辞書のダウンローダー。URLは`nt/notify`のマニフェストや他APIレスポンスから供給されるラッパーで、独自のAPI契約を持たない。 |
| 13 | `com/metamoji/mazec/purchase` | Mazec手書き辞書アドオンの旧ストア機能。`-test`ステージングホスト(`cabinet-test.7knowledge.com`等)を指しており、`share_classroom`では実質デッドコードの可能性が高い(`PurchaseManager`のフラグで無効化されている形跡)。 |
| 14 | `com/metamoji/ex/webdav`(`WebDAVManager`) | ユーザーが任意の外部WebDAVサーバー(NAS/ownCloud等)に接続するオプション機能。MetaMoji独自サーバーとの通信ではない。 |

## 次回セッションへの推奨アクション

1. **`ns/service`(リアルタイム授業ルーム)** と **`media/video/network`(動画ノート)** は
   アプリの中核機能かつFor*コマンドパターンで構造化されており、`CsCloudService`と同じ手法
   (フィールド抽出スクリプト→TypeSpec生成)が最も効率よく適用できる。次点候補。
2. ~~`network`(WebDAV)~~ ✅ 解析済み([webdav.tsp](./webdav.tsp))。
3. **`lc`(ライセンス)** と **`rc`(変換サービス)** はエンドポイント数が少なく
   (各2〜3個)、ホスト・パスも既に判明しているため、着手コストが低い「クイックウィン」。
4. `sd/cs` は `CsCloudService` のドライブ機能との重複・世代関係が未確認。着手前に
   どちらが実際にこのバージョン(3.15.1.0)で使われているか実装呼び出し元を確認すると無駄がない。
5. Low優先度の4パッケージは、必要になったタイミングで着手すれば十分。

## 調査方法メモ(次回セッション用)

今回の一次調査は以下のようなgrepベースの手法で行いました(詳細は各パッケージのファイル数把握と
`Lokhttp3/`参照・`const-string ".../"`パスリテラルの抽出が中心):

```bash
# パッケージ内でokhttp3を直接利用しているファイルを特定
grep -rl "Lokhttp3/" apk/smali_classes*/com/metamoji/<package>

# パスらしき文字列リテラルを抽出
grep -rhoE 'const-string v[0-9]+, "(/[a-zA-Z0-9_/%.]+)"' apk/smali_classes*/com/metamoji/<package> | sort -u
```

その後、[CsCloudService解析](./README.md)で用いたのと同じ手順
(`execute*WithParams`のようなpublicメソッド一覧化 → Param/Responseクラスのフィールド抽出 →
HTTPメソッド/パスの突き合わせ → TypeSpecモデル/operation生成)を各パッケージに適用してください。
