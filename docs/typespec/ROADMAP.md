# API解析ロードマップ

このファイルは `com.metamoji.share_classroom` APK (`apk/`) 内に存在する通信レイヤーの
全体像を把握するための調査結果と、TypeSpecドキュメント化の状況をまとめたものです。

## 完了済み(12系統・116エンドポイント)

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
  フラットな構造であることも確認(`generateResourceIdOnServer`)。ユーザーが任意の外部WebDAVサーバーに
  接続する`com/metamoji/ex/webdav`(`WebDAVManager`)も、同じ`NwWebDAVRequest`クライアントを
  素通しで再利用しているだけで、MetaMoji側の別コンポーネント/プロトコル差分は無いことを確認済み
  (=新規ドキュメント不要と結論)。
- ✅ **`com/metamoji/dvm/cs` (`DvmCloudService`)** — クラス配信(`convert/DistributeClass`,
  `convert/GetDistributeStatus`)とクラッシュログアップロード(`crashlogs/upload`)の3エンドポイント全て
  解析済み。`CsCloudService`とは別の低レベルヘルパー`CsHttpClient`を直接利用しており、
  `authInfo`/`convertParam`をJSON文字列化してmultipartパートに埋め込む独特の方式。
  [distribute.tsp](./distribute.tsp)に反映。DistributeClass/GetDistributeStatusは`restHost`
  (テナント別ホスト)、crashlogs/uploadは`rootServer`(ブートストラップホスト)を使う点に注意
  (`misc.tsp`の`postCrashLogs`とは別系統のクラッシュログ送信経路)。
- ✅ **`com/metamoji/lc` (`LicenseUtil`)** — ライセンスキーアクティベーションAPI。
  `license/activate2`, `license/getremainingdays` の2エンドポイント全て解析済み。
  改ざん検知用の`tt_hash`(MD5)アルゴリズムまで含めて[license-activation.tsp](./license-activation.tsp)
  に反映。ただし製品ID定数が `"Android-Note-Business_3.1.8"` (別製品由来) であり、
  `share_classroom`で実際にこの画面へ到達する経路は未確認(コード自体は`EntryActivity`/
  `LicenseKeyInputProxyActivity`から到達可能で生きている)。レガシー/共有ライブラリ機能の可能性。
- ✅ **`com/metamoji/media/video/network` (`NwServerAccessor`/`NwUpload`)** — 動画ノート機能の
  「Flora」REST API。10コマンド(`getlist`/`getclipcount`/`getclipinfo`/`getposterframe`/
  `deleteclip`/`exportclipinfo`/`getcoinfo`/`getserverstatus`/`getuploadpoint`/`reserve`、
  各`{command}2`というパス)全て解析済み。認証はHTTPヘッダではなく`multipart/form-data`の
  フォームパートとして送信する独特の方式(`loginUser`/`loginCompany`/`userId`/`companyId`/
  `rootServer`等)。動画本体のアップロードは`getUploadPoint`で取得した署名付きURLに対する
  別経路の直接POST(`mmj.ms.coid`/`mmj.ms.userid`/`mmj.ms.ticket`ヘッダ)であることも確認。
  [video.tsp](./video.tsp)に反映。ベースホストが固定でなく動的な「Floraサーバー」である点、
  ホスト名にスキームが無い場合は平文HTTPとして扱われる点に注意(ドキュメント内に明記)。
  一部レスポンス(`getclipinfo`/`getposterframe`/`deleteclip`/`exportclipinfo`/`getcoinfo`の
  詳細フィールド)は未確認で`Record<unknown>`のまま。
- ✅ **`com/metamoji/ns/service` (`NsCollaboURLConnection`)** — リアルタイム授業ルーム共有API。
  16エンドポイント全て解析済み(`cosmos/*`系の旧世代APIと`mmjcloud/ShareView*`系の新世代APIが
  混在していることを確認)。全コマンド共通で`POST`+`multipart/form-data`、各パートに
  `application/json`のRequestBodyを詰める独特の方式。`authInfo`パートの認証JSON構造
  (`deviceID`/`deviceCode`/`authType`/`userID`/`userPassword または qwd`/`companyID`等、
  3バリエーション: 通常ログイン・qwdログイン・ゲスト)、ルームのロール権限体系
  (`presenter`/`speaker`/`visitor` × `FREE`/`READONLY`)、`roomType`
  (`casual`/`formal`/`limited`)まで再現。[collabo.tsp](./collabo.tsp)に反映。
  `getMemberList`のみ認証JSONを含まない例外であることも発見。ルーム内のリアルタイム操作同期
  そのものは別プロトコル(`com.metamoji.ns.NsCollaboCommand`の生ソケット通信)であり、
  今回はスコープ外(未解析)。
- ✅ **`com/metamoji/sd/cs` (`SdCloudService`)** — ドライブ/ドキュメント同期の新世代REST API。
  15エンドポイント全て解析済み。**重要な発見**: v3.15.1.0には、`CsCloudService`+WebDAVの
  旧来スタックと、この`SdCloudService`(+`dvm.DvmDriveManager`)の新世代RESTスタックが
  **並行して稼働**している(呼び出し元 `SdDriveSyncProcess`/`SdPrivateDriveSyncProcess`/
  `DvmDriveManager`等から実証)。ベースホストは`SdCloudServiceContext.getHomeDir()`由来で動的、
  セッションは`CsCloudService`とは別のCookieJarで管理。GET/DELETEはボディなし、
  JSON内のbooleanは文字列`"true"`/`"false"`で送信される独自仕様。[sync-drive.tsp](./sync-drive.tsp)に反映。
  正確な機能分担(個人ノート vs 共有ドライブ等)は未確定として明記。
- ✅ **`com/metamoji/media/service` (`Media*`)** — ギャラリーメディア(音声・写真添付)API。
  8エンドポイント全て解析済み。`NsCollaboURLConnection`を継承するが認証は`NsAuthInfo`(JSON)ではなく
  `userId`+`password`/`qwd`のフラットなmultipartフィールド。レスポンス形式も2系統あり
  (`GetMediaList`/`GetMediaStatus`はJSON、他はプレーンテキストの行区切り応答)。
  [gallery-media.tsp](./gallery-media.tsp)に反映。削除パスは`gallery/DeleteMediaFile`が正しい
  (以前の一次調査メモの`gallery/DeleteMedia`は誤り)。
- ✅ **`com/metamoji/lb`** — レガシーコンテンツストアAPI。4エンドポイント解析済み。
  **重要な訂正**: 「カタログ初期化」(`init/library/*.product`)はネットワーク通信ではなく
  APKアセットからのローカル読み込み(`CmUtils.copyFileFromAsset`)。一方、見落とされていた
  `store/Login`→`store/GetAllPages`→ページURL→商品情報という実在の旧世代ストアAPI
  (呼び出し元 `LibraryURLConnectionFor*` ← `LibraryViewDialog` ← `EditorActivity`)を発見し記載。
  ベースホストは`CsCloudService`ログイン後の`restHost`(固定`cdn-test.metamoji.com`という
  以前の推測は誤りで、実際は無関係の別パッケージ`mazec/purchase`の話だった)。
  `purchaseURL()`/`/mmjeditor2`はAPK全体を検索しても呼び出し元が無く、デッドコードと確認。
  [library-store.tsp](./library-store.tsp)に反映。
- ✅ **`com/metamoji/nt/notify` (`NtSysInfoManager`)** — アプリ設定マニフェスト取得API。
  1エンドポイント、20フィールドすべて解析済み。URL形式`"%ssysinfo_%s.json?last=%s"`、
  ホスト切り替え条件(`isOnPremise`→`getRootServer()`、それ以外→`https://cdn.metamoji.com/`)、
  `userType != 4`の場合はリクエスト自体を行わない仕様まで確認。[sysinfo.tsp](./sysinfo.tsp)に反映。
- ✅ **`com/metamoji/forSchool/service`** — 成績表・テストログAPI。4エンドポイント解析済み
  (`GetScoreList`/`GetTestingLogList`/`SetReport`/`SetScore`)。`NsCollaboURLConnection`継承で
  認証は`NsAuthInfo`を共用。`ForUpdateDeadlineInfo`は`cosmos/UpdateRoomInfo`
  (=`collabo.tsp`の`updateRoomInfo`と同一パス)を叩くことを確認し、重複作成を回避。
  [gradebook.tsp](./gradebook.tsp)に反映。
- ✅ **`com/metamoji/mazec/purchase`** — 調査の結果「部分的にデッドコード」と判明。
  課金・ストアログイン機能(`PurchaseManager`)は`BuildConfig.SUPPORT_IN_APP_BILLING = false`
  (`PURCHASED_MAZEC = true`により反転)で完全に無効化されており確実にデッドコード。
  一方、**Mazec手書き辞書の更新チェック機能(`checkUpdateInfo`)は生きている**
  (`MazecView.onWindowVisibilityChanged`から24時間おきに自動実行)。
  `https://cdn-test.metamoji.com/`(本番ホールドオーバーなし)への1エンドポイントのみ
  [mazec-purchase.tsp](./mazec-purchase.tsp)に反映。
- ✅ **`com/metamoji/nt/dl`** — 調査の結果、独自のワイヤレベル契約は無いことを確認
  (ヘッダ・認証・リトライ/チェックサムプロトコルなし、URLは`nt/notify`マニフェスト由来の単純GET)。
  新規ドキュメントは作成せず。

## 未解析(残り1件)

| # | パッケージ | 役割 | 既知のエンドポイント/手がかり | 認証・ホスト |
|---|---|---|---|---|
| 1 | `com/metamoji/rc` (`RcRemoteConverter*`) | **ファイル形式変換サービス**("Remote Converter")。`CsCloudService`と同じDigitalCabinetホストを共有。 | `/convert/TentativeRegist`, `/convert/ConvertRequest`, `/convert/GetConvertedFile`。マルチパートPOST(userId/password/productName/productVersion/jobId1/jobId2/fromMime/toMime/fileEntity)。エラーコード例: `14`=ライセンスなし, `100`=変換中。 | `CsCloudService`と同じDigital Cabinetホスト(`ModelInfo$BuildOptions.DIGITAL_CABINET_URL_BASE`)。 |

エンドポイント数が少なく(3個)、ホスト・パスも既に判明しているため、着手コストが低い
「クイックウィン」。これが完了すれば、一次調査で洗い出した通信レイヤーは全て解析完了となる。

## 調査方法メモ

以下のようなgrepベースの一次調査 → 精読という2段階の手法で行いました:

```bash
# パッケージ内でokhttp3を直接利用しているファイルを特定
grep -rl "Lokhttp3/" apk/smali_classes*/com/metamoji/<package>

# パスらしき文字列リテラルを抽出
grep -rhoE 'const-string v[0-9]+, "(/[a-zA-Z0-9_/%.]+)"' apk/smali_classes*/com/metamoji/<package> | sort -u
```

その後、[CsCloudService解析](./README.md)で用いたのと同じ手順
(`execute*WithParams`のようなpublicメソッド一覧化 → Param/Responseクラスのフィールド抽出 →
HTTPメソッド/パスの突き合わせ → TypeSpecモデル/operation生成)を各パッケージに適用します。
一次調査だけでは「本当に到達可能か」「別パッケージとの取り違え」を見誤ることがあるため
(`lb`のカタログinit誤認、`mazec/purchase`のホスト取り違え等)、精読段階でAPK全体を対象に
呼び出し元を検索して裏取りすることを推奨します。
