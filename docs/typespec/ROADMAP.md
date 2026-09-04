# API解析ロードマップ

このファイルは `com.metamoji.share_classroom` APK (`apk/`) 内に存在する通信レイヤーの
全体像を把握するための調査結果と、TypeSpecドキュメント化の状況をまとめたものです。

**一次調査で洗い出した通信レイヤーは全13系統、調査完了しました**(119エンドポイント。
うち2系統は「独自のワイヤレベル契約なし」と確認した上で新規ファイル作成を見送り)。
さらに全13系統確定後、**APK全体を対象にした最終網羅性監査**(下記参照)を実施し、
見落としが無いことを確認済みです。

## 最終網羅性監査(2026-09-04実施)

13系統の解析完了後、「本当に他に通信していないか」を検証するため、`com/metamoji`配下
全体を対象に以下の観点で再監査しました。

1. `Lokhttp3/`を直接参照する全ファイルをパッケージ単位で列挙し、既知13系統と突合。
2. `HttpURLConnection`/`HttpsURLConnection`(okhttp以外の通信手段)の使用有無。
3. `java.net.Socket`/`SSLSocket`(生ソケット)の使用有無。
4. Firebase/Crashlytics/Google Analytics等サードパーティSDKの通信有無。
5. `*CloudService`/`*HttpClient`/`*ApiClient`/`*RestClient`という命名パターンの総ざらい。
6. `AndroidManifest.xml`のservice/receiver宣言・パーミッション一覧。

**結果、新たに文書化すべきAPI面は見つかりませんでした。** 既知13系統に含まれない
okhttp3参照が4箇所見つかりましたが、いずれも既存の発見の範囲内でした:

- `com/metamoji/mazec/util/HttpUtil` — APK全体を検索しても呼び出し元が無く、確実にデッドコード。
- `com/metamoji/media/video/dialog/RemoteFileItem.loadThumbnail()` — `video.tsp`ですでに
  文書化済みの`VfClipInfo.posterframe`URLへの単純GET。新規エンドポイントではない。
- `com/metamoji/noteanytime/NoteAnytimeApplication$5` および トップレベルの
  `com/metamoji/video`パッケージ(`Amv*`、動画プレーヤー/トリミングUIコンポーネント一式)
  — 共有OkHttpClientを注入されるだけの汎用埋め込みプレーヤーで、それ自体は
  MetaMoji固有のエンドポイントを持たない(与えられたURLを取得するだけ)。
- `com/metamoji/noteanytime/cm/IntentContent` — Android共有インテント経由でファイルを
  インポートする際、ユーザー/OS側から渡された任意のURLに対しGETするだけで、
  MetaMoji側の固定エンドポイントではない。

その他の確認事項:
- `HttpURLConnection`系のAPIは`com/metamoji`配下で一切使われていない(okhttp3に統一)。
- 生ソケット通信は`com/metamoji/ns/socket`(`NsCollaboSocket`)のみ。当初「スコープ外」と
  明記していたが、その後(2026-09-04)追加調査を実施し
  [collabo-socket-protocol.md](./classroom/collabo-socket-protocol.md)として文書化済み(下記参照)。
- Firebase/Crashlytics/Google Analytics等のSDKは一切検出されず(プッシュ通知基盤も無し。
  `sysinfo.tsp`のポーリング型「お知らせ」機構がその代替として機能している)。
- `*CloudService`/`*HttpClient`系の命名パターンは`NwHttpClient`/`CsHttpClient`/
  `SdHttpClient`/`SdCloudService`/`CsCloudService`/`DvmCloudService`の6クラスのみで、
  全て既存13系統でカバー済み。
- マニフェストの`DmIntentServiceRunner`/`SyncEventService`は、いずれも既存の
  `DmDCSyncManager`(WebDAV同期、`webdav.tsp`)を呼び出すだけのOSサービスラッパーで、
  新規エンドポイントは含まない。

## 完了済み(13系統・119エンドポイント)

- ✅ **`com.metamoji.cs.dc.CsCloudService`** — DigitalCabinet/ClassShareクラウドAPI(JSON-RPC風)。
  53メソッド全て解析済み。[auth.tsp](./auth/auth.tsp) / [user.tsp](./auth/user.tsp) / [drive.tsp](./drive/drive.tsp) /
  [classbox.tsp](./classroom/classbox.tsp) / [messaging.tsp](./messaging/messaging.tsp) / [settings.tsp](./system/settings.tsp) /
  [license.tsp](./licensing/license.tsp) / [misc.tsp](./system/misc.tsp) に反映済み。
- ✅ **`com/metamoji/network` (`NwWebDAVRequest`)** — WebDAVデータプレーン。GET/PUT/HEAD/DELETE/
  MKCOL(createDirectory)/MOVE/PROPFIND/PROPPATCHの8操作、XMLボディ構造、認証ヘッダ
  (`Authorization: Basic` + `X-mmj-appcode`)、ロックトークンの`If`ヘッダ付与ルール、
  カスタムdead property(`create`/`lastSyncedRevision`/`syncUpdate`、名前空間
  `http://xmlns.metamoji.com/digitalcabinet/tinydotnote/1.0/`)まで解析済み。[webdav.tsp](./drive/webdav.tsp)に反映。
  呼び出し元 `DmDigitalCabinetAccessUtils` がホームコレクション直下にランダムIDでリソースを配置する
  フラットな構造であることも確認(`generateResourceIdOnServer`)。ユーザーが任意の外部WebDAVサーバーに
  接続する`com/metamoji/ex/webdav`(`WebDAVManager`)も、同じ`NwWebDAVRequest`クライアントを
  素通しで再利用しているだけで、MetaMoji側の別コンポーネント/プロトコル差分は無いことを確認済み
  (=新規ドキュメント不要と結論)。
- ✅ **`com/metamoji/dvm/cs` (`DvmCloudService`)** — クラス配信(`convert/DistributeClass`,
  `convert/GetDistributeStatus`)とクラッシュログアップロード(`crashlogs/upload`)の3エンドポイント全て
  解析済み。`CsCloudService`とは別の低レベルヘルパー`CsHttpClient`を直接利用しており、
  `authInfo`/`convertParam`をJSON文字列化してmultipartパートに埋め込む独特の方式。
  [distribute.tsp](./classroom/distribute.tsp)に反映。DistributeClass/GetDistributeStatusは`restHost`
  (テナント別ホスト)、crashlogs/uploadは`rootServer`(ブートストラップホスト)を使う点に注意
  (`misc.tsp`の`postCrashLogs`とは別系統のクラッシュログ送信経路)。
- ✅ **`com/metamoji/lc` (`LicenseUtil`)** — ライセンスキーアクティベーションAPI。
  `license/activate2`, `license/getremainingdays` の2エンドポイント全て解析済み。
  改ざん検知用の`tt_hash`(MD5)アルゴリズムまで含めて[license-activation.tsp](./licensing/license-activation.tsp)
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
  [video.tsp](./media/video.tsp)に反映。ベースホストが固定でなく動的な「Floraサーバー」である点、
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
  (`casual`/`formal`/`limited`)まで再現。[collabo.tsp](./classroom/collabo.tsp)に反映。
  `getMemberList`のみ認証JSONを含まない例外であることも発見。ルーム内のリアルタイム操作同期
  そのものは別プロトコル(`com.metamoji.ns.NsCollaboCommand`の生ソケット通信)であり、
  今回はスコープ外(未解析)。
- ✅ **`com/metamoji/sd/cs` (`SdCloudService`)** — ドライブ/ドキュメント同期の新世代REST API。
  15エンドポイント全て解析済み。**重要な発見**: v3.15.1.0には、`CsCloudService`+WebDAVの
  旧来スタックと、この`SdCloudService`(+`dvm.DvmDriveManager`)の新世代RESTスタックが
  **並行して稼働**している(呼び出し元 `SdDriveSyncProcess`/`SdPrivateDriveSyncProcess`/
  `DvmDriveManager`等から実証)。ベースホストは`SdCloudServiceContext.getHomeDir()`由来で動的、
  セッションは`CsCloudService`とは別のCookieJarで管理。GET/DELETEはボディなし、
  JSON内のbooleanは文字列`"true"`/`"false"`で送信される独自仕様。[sync-drive.tsp](./drive/sync-drive.tsp)に反映。
  正確な機能分担(個人ノート vs 共有ドライブ等)は未確定として明記。
- ✅ **`com/metamoji/media/service` (`Media*`)** — ギャラリーメディア(音声・写真添付)API。
  8エンドポイント全て解析済み。`NsCollaboURLConnection`を継承するが認証は`NsAuthInfo`(JSON)ではなく
  `userId`+`password`/`qwd`のフラットなmultipartフィールド。レスポンス形式も2系統あり
  (`GetMediaList`/`GetMediaStatus`はJSON、他はプレーンテキストの行区切り応答)。
  [gallery-media.tsp](./media/gallery-media.tsp)に反映。削除パスは`gallery/DeleteMediaFile`が正しい
  (以前の一次調査メモの`gallery/DeleteMedia`は誤り)。
- ✅ **`com/metamoji/lb`** — レガシーコンテンツストアAPI。4エンドポイント解析済み。
  **重要な訂正**: 「カタログ初期化」(`init/library/*.product`)はネットワーク通信ではなく
  APKアセットからのローカル読み込み(`CmUtils.copyFileFromAsset`)。一方、見落とされていた
  `store/Login`→`store/GetAllPages`→ページURL→商品情報という実在の旧世代ストアAPI
  (呼び出し元 `LibraryURLConnectionFor*` ← `LibraryViewDialog` ← `EditorActivity`)を発見し記載。
  ベースホストは`CsCloudService`ログイン後の`restHost`(固定`cdn-test.metamoji.com`という
  以前の推測は誤りで、実際は無関係の別パッケージ`mazec/purchase`の話だった)。
  `purchaseURL()`/`/mmjeditor2`はAPK全体を検索しても呼び出し元が無く、デッドコードと確認。
  [library-store.tsp](./legacy/library-store.tsp)に反映。
- ✅ **`com/metamoji/nt/notify` (`NtSysInfoManager`)** — アプリ設定マニフェスト取得API。
  1エンドポイント、20フィールドすべて解析済み。URL形式`"%ssysinfo_%s.json?last=%s"`、
  ホスト切り替え条件(`isOnPremise`→`getRootServer()`、それ以外→`https://cdn.metamoji.com/`)、
  `userType != 4`の場合はリクエスト自体を行わない仕様まで確認。[sysinfo.tsp](./system/sysinfo.tsp)に反映。
- ✅ **`com/metamoji/forSchool/service`** — 成績表・テストログAPI。4エンドポイント解析済み
  (`GetScoreList`/`GetTestingLogList`/`SetReport`/`SetScore`)。`NsCollaboURLConnection`継承で
  認証は`NsAuthInfo`を共用。`ForUpdateDeadlineInfo`は`cosmos/UpdateRoomInfo`
  (=`collabo.tsp`の`updateRoomInfo`と同一パス)を叩くことを確認し、重複作成を回避。
  [gradebook.tsp](./classroom/gradebook.tsp)に反映。
- ✅ **`com/metamoji/mazec/purchase`** — 調査の結果「部分的にデッドコード」と判明。
  課金・ストアログイン機能(`PurchaseManager`)は`BuildConfig.SUPPORT_IN_APP_BILLING = false`
  (`PURCHASED_MAZEC = true`により反転)で完全に無効化されており確実にデッドコード。
  一方、**Mazec手書き辞書の更新チェック機能(`checkUpdateInfo`)は生きている**
  (`MazecView.onWindowVisibilityChanged`から24時間おきに自動実行)。
  `https://cdn-test.metamoji.com/`(本番ホールドオーバーなし)への1エンドポイントのみ
  [mazec-purchase.tsp](./licensing/mazec-purchase.tsp)に反映。
- ✅ **`com/metamoji/nt/dl`** — 調査の結果、独自のワイヤレベル契約は無いことを確認
  (ヘッダ・認証・リトライ/チェックサムプロトコルなし、URLは`nt/notify`マニフェスト由来の単純GET)。
  新規ドキュメントは作成せず。
- ✅ **`com/metamoji/rc` (`RcRemoteConverter*`)** — ファイル形式変換サービス。3エンドポイント
  (`/convert/TentativeRegist` → `/convert/ConvertRequest` → `/convert/GetConvertedFile`、
  2秒間隔ポーリング)の非同期ジョブフローを解析済み。`jobId1`/`jobId2`はクライアント生成ではなく
  `TentativeRegist`のレスポンスから発行されるサーバー側ジョブ識別子で、後続2ステップの
  認可トークンとして機能する(2ステップ目以降は`userId`/`password`を再送しない)ことを確認。
  レスポンスの`errorCode`が(`CsCloudService`系と異なり)**文字列型**である点も発見。
  [remote-converter.tsp](./legacy/remote-converter.tsp)に反映。
  **⚠️ 重大な発見**: 唯一の呼び出し元`ImportActivity.importFileWithConvertingByRemoteConverter()`
  自体が、APK全体を検索しても呼び出されておらず(`ImportActivity.importFile()`の実際の分岐にも
  対応拡張子一覧にも含まれない)、**v3.15.1.0では到達不能なデッドコード**であることが判明
  (`mazec/purchase`の課金機能、`lb`の`purchaseURL()`と同種のケース)。

## 完了済み(HTTP以外): リアルタイム協働ソケットプロトコル

- ✅ **`com/metamoji/ns/socket` (`NsCollaboSocket`) + `com/metamoji/ns/direction` (`NsDirectionManager`)**
  — 授業ルーム内のリアルタイム編集操作同期を担う、生TCP/TLSソケット上の独自テキストプロトコル
  (2026-09-04調査、[collabo-socket-protocol.md](./classroom/collabo-socket-protocol.md)に反映)。
  HTTPではないためTypeSpecではなくMarkdownで記載。
  - ワイヤフレーミング(`\n{boothId}\t{packetNo}\t{paramString}` + 任意のバイナリペイロード)、
    パケット番号採番規則、バイナリモード切り替え条件を自力で精読・確認。
  - 13種の送信コマンド全て(`LoginRoom`/`LogoutRoom`/`AttachBooth`/`DetachBooth`/`ChangeMode`/
    `ChangeMode2`/`ChangeProperty`/`ChangeMembersMode`/`ChangeMembersProperty`/
    `AddNotifyBoothUpdated`/`PostData`(テキスト・バイナリ)/`PingResult`)と、
    12種の非同期プッシュイベント全て(`BoothUpdated`/`RoomUpdated`/`ModeChanged`/`RoleChanged`/
    `PropertyChanged`/`Ping`/`PostMessage`/`SettingChanged`/`Mode2Changed`/`ScoreChanged`/
    `Finish`/`PostData`受信)を、フィールドレベルまでカタログ化。
  - **重要な発見**: `ChangeMode`/`ChangeProperty`/`ChangeMembersMode`/`ChangeMembersProperty`/
    `AddNotifyBoothUpdated`の各応答、および`ChangeMode2Result`/`LogoutRoomResult`は
    クライアント側で内容が一切参照されないno-op(または未実装)。`RoomUpdated`の
    `value:"role"`サブイベントも未実装(ロール変更は独立の`RoleChanged`のみで届く)。
  - **`Direction`(編集操作)データモデル**: 送受信の永続キュー・ACK再送機構の実体は
    `NsCollaboManager`ではなく専用クラス`NsDirectionManager`にあることを発見(既存の
    並行資料`docs/06-classroom-protocol-spec.md`の記述を訂正)。ペイロードはJSONや独自バイナリ
    diffではなく、ノート本体(`.atdoc`)と同じ`IModel`ドキュメントモデルのシリアライズ形式。
    未ACK送信はノートドキュメント自身のモデルツリーに相乗りする形で永続化される
    (独立DBではない)ことも確認。
  - 未確認事項(モード2の詳細、スコア配列の内部構造等)は[collabo-socket-protocol.md](./classroom/collabo-socket-protocol.md)
    末尾に明記。

## 未解析

HTTPベースの通信レイヤーとしては、一次調査で洗い出した13系統すべてについて精読・裏取りを
完了しています。上記のソケットプロトコルも含め、2026-09-04時点で既知の通信面はすべて調査済みです。

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
