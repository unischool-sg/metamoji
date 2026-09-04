# 教室協働(Collabo)プロトコル詳細仕様

前提として、この情報は**MetaMoJi社のサーバーへ接続するクライアントを作るため**のものではなく、Tauri版で自前のバックエンド(REST仲介 + WebSocketリレー)を新規設計する際の「お手本のプロトコル形状」として読むこと。ホスト名・エンドポイントパス等は接続先としてではなく設計参考として記載する。

## 1. 全体アーキテクチャ

```
[クライアント] --HTTPS(REST, "cosmos"等)--> [ルーム仲介サーバー]
     |                                              |
     | GetServletInfo等でリレーサーバーのアドレスを取得
     v
[クライアント] --生TCPソケット(独自テキストプロトコル)--> [リレー(servlet)サーバー]
```

- ベースURLはコード中にリテラルでは埋め込まれておらず、`ModelInfo$BuildOptions.DIGITAL_CABINET_URL_BASE()`(または開発ビルドでは`CsCloudServiceContext.dcServerURL()`や`DevLobbyServer`ユーザーデフォルトによる上書き)で実行時解決される
- サービスごとに異なるベース解決関数がある: ルーム/仲介系は`baseURL()`、ギャラリー投稿は`baseURLForEditIt()`("EditIt"という別サービス)、ツールログインは`baseURLForMMJEditor2()`

## 2. REST仲介API(ルームライフサイクル、"cosmos"/"mmjcloud"/"mmjeditor2"/"gallery")

全リクエストはOkHttp経由、**すべてPOST**(GETは使われていない)。認証は`authInfo`という JSON パートで、`cabinet`/`guest`の2種類のテンプレートがあり `deviceID`, `deviceCode`, `userID`, `userPassword`/`qwd`, `productName`("Android-Share-G-ClassRoom"), `productVersion`, `locale`, `companyID` を含む。レスポンスは汎用JSON→Mapパーサーで受け、エラー時は`errorCode`/`statusCode`/`message`/`errorMessage`から例外を構築する共通エンベロープ。

| クラス | パス | パラメータ(要旨) | 用途 |
|---|---|---|---|
| `NsCollaboURLConnectionForCreateRoom` | `cosmos/CreateRoom` | `roomType`, `role.{presenter,speaker,visitor}`, `roomPassword2`, `title`(base64), `openDate`, `companyID`, `secureRoom(Password)`, mode2系フラグ群 | 新規ルーム作成 |
| `NsCollaboURLConnectionForLoginRoom` | `cosmos/LoginRoom` | `roomID`, `roomPassword2`/`secureRoomPassword`, `localIp` | 既存ルームへの参加/認証 |
| `NsCollaboURLConnectionForGetRoomInfo` | `cosmos/GetRoomInfo` | `roomID` | ルームメタ情報取得 |
| `NsCollaboURLConnectionForCheckRole` | `/mmjcloud/ShareViewGetMyRole` | `roomIdList` | 自分のロール確認 |
| `NsCollaboURLConnectionForModifyRole` | `/cosmos/ModifyRole` | `roomID`, `addRole`/`delRole` | ロール付与/剥奪 |
| `NsCollaboURLConnectionForGetMemberList` | `cosmos/GetMemberList` | `memberList:[{roomID,userID}]`, `companyID` | 複数ルーム/ユーザーのメンバー情報一括取得 |
| `NsCollaboURLConnectionForCreateUniqueID` | `cosmos/CreateUniqueID` | guest認証情報 | ゲスト/デバイスの一意ID発行(事前認証) |
| `NsCollaboURLConnectionForPostGallery` | `gallery/PostForShareAnytime` | `cmd=post`, `roomId`, `document`(ファイル, `application/vnd.metamoji.btshare`), `image`(サムネ) | ギャラリーへのドキュメント投稿 |
| `NsCollaboURLConnectionForUpdateRoomMode` | `cosmos/UpdateRoomInfo` | `roomInfo={"mode":"deleted"\|"readonly"\|"free"}` | ルームのライフサイクルモード変更 |
| `NsCollaboURLConnectionForUpdateRoomInfo` | `cosmos/UpdateRoomInfo`(同一パス、ペイロード形状で区別) | `roomInfo`(役割/タイプ/mode2パラメータ) | ルーム設定更新 |
| `NsCollaboURLConnectionForGetRoomSetting` / `ForUpdateRoomSetting` | `/mmjcloud/ShareViewGetRoomSetting` / `...SetRoomSetting` | `roomSettingList:[{key1,key2,value}]` | 教室固有キー値設定の取得/更新(`key1="#ClassRoom"`) |
| `NsCollaboURLConnectionForGetRoomTitleDate` / `ForUpdateRoomTitleDate` | `/mmjcloud/ShareViewGetRoomInfo` / `...SetRoomInfo` | `title`, `openDate` | タイトル/公開日更新 |
| `NsCollaboURLConnectionForGetServletInfo` | `cosmos/GetServletInfo?companyID=%s` | クエリのみ | **リレーサーバーのアドレス取得**(サーバー/プロトコルバージョン情報を含む) |
| `NsCollaboURLConnectionForGetShareViewList` | `/mmjcloud/ShareViewGetList` | `narrowCond`(日付範囲), `sortCond` | ルーム一覧の検索/ソート |
| `NsCollaboURLConnectionForToolLogin` | `mmjeditor2/CosmosToolLogin` | `email`, `password`/`qwd`, `companyID`, `locale`, `timezone`(form-urlencoded) | 別系統の「ツール」ログイン |

## 3. リアルタイムチャネル: `NsCollaboSocket` ワイヤプロトコル

REST仲介で取得したリレーサーバーへ、生の`java.net.Socket`(TLSオプション、HTTPプロキシ経由の`CONNECT`トンネリング対応)で接続する。

### フレーミング
- **外側の区切り**: `\n`(LF)。受信側はバイト列を`ByteArrayOutputStream`に貯め、LF(直前のCRは除去)でスキャンして1行を切り出す(Readerでの行分割ではなく手動バイトスキャン)
- **1行の構造**: タブ区切り、最大3分割: `<boothId>\t<packetNo>\t<paramString>`
  - `boothId`: 論理チャンネル/ルームID("*"はルーム/セッションレベルコマンドのワイルドカード)
  - `packetNo`: 送信側では`"C%d"`形式の単調増加シーケンス番号(プロセス全体で共有・静的カウンタ)
  - `paramString`: さらにスペース区切りの`key:value`トークン列(例: `cmd:LoginRoom rid:X did:Y sid:Z name:W`)
- 予約キー`binary`: 直後に続くバイナリペイロードのバイト数。`cmd:PostData`かつ`binary>0`のときのみバイナリ受信モードに切り替わる(テキスト行の直後、追加の区切りなしで生バイトが続く)

### コマンド一覧(`cmd`値の例)
`LoginRoom`, `LogoutRoom`, `PingResult`, `PostData`, `AttachBooth`, `DetachBooth`, `ChangeMode`, `ChangeMode2`, `ChangeProperty`, `ChangeMembersMode`, `ChangeMembersProperty`, `AddNotifyBoothUpdated`

### ハンドシェイク
`connect()`自体はソケットを開くだけで何もバイトを送らない(プロキシがある場合はHTTP `CONNECT`トンネルを先に張る)。**アプリレベルのハンドシェイクは通常の送信コマンド**: `postCommandLoginWithRoomId(rid,did,sid,name)`が`cmd:LoginRoom rid:%s did:%s sid:%s name:%s\n`をboothId `"*"`で送信するだけ。

### キープアライブ
クライアントからの能動的なping送信タイマーは**存在しない**。あるのは「30秒間サーバーから何も受信しなければ切断する」ウォッチドッグ(`resetConnectingCheckTimer`/`onConnectingCheckTimer`、受信の度にリセット)。サーバー起点の`Ping`に対しては`postCommandPingResult()`(`cmd:PingResult\n`)で応答する仕組みがある(Ping送信自体の文字列はこのクラスには現れない=サーバー側から来る想定)。

### 再接続
`NsCollaboSocket`クラス自体にはリトライ/バックオフのロジックは無い。接続失敗時はハンドラへ通知して例外を投げるのみで、再接続は呼び出し側(上位のマネージャ)の責務。

### 送信パケットの組み立て
`"\n" + boothId + "\t" + "C<seq>" + "\t" + paramString`(paramString自体も末尾に`\n`を含むため、実際の書き込みは前後を`\n`で挟む形になる)。バイナリ送信時は`cmd:PostData loop:%d save:%d rsize:%s binary:%d\n`の直後に生バイトを追加区切りなしで書き込む。

## 4. Direction(変更操作)データモデルと送受信の整合性設計

「Direction」はノート編集操作を表す最小単位。ワイヤ上は`MODELTYPE="direction"`、`version=1`のモデルとして、`data`(実際の操作ペイロード)・`target`(ルーティング/ハンドラID)・任意で`esid`(送信元の編集セッションID、自分自身のechoを検出するため)を持つ。

### 送信側: 永続キュー + ACKによる再送保証
- 送信は`NsCollaboManager.postDirection(...)`を呼び、返り値の**パケット番号**を`SendingDataTable`(パケット番号⇄永続ハンドルの双方向マップ)に記録
- **未ACKの送信は永続化される**(`NsCollaboSettings.nextSendingData(...)`という永続リスト)。オンライン復帰時などに`postSendingData()`が未送達分を再送する
- サーバーからのACK(`collaboPostDirectionResult(success, ..., packetNo)`)が来て初めて、対応する永続キューのエントリが削除される。失敗時(`success=false`)は明示的なNACK処理はなく、次回の再送パスに委ねられる
- → **少なくとも1回配送(at-least-once)、ACKされるまで永続的に再送**という設計

### 受信側: 順序保証は輸送層任せ、シーケンス番号は「再開」用
- 受信は単一ワーカースレッドの厳格FIFOキュー(`NsRecvInvoker`)で処理され、**シーケンス番号によるクライアント側の並べ替えは行わない**(ソケット自体が順序を保証する前提)
- シーケンス番号の用途は2つ: ①再接続/リストア時に「すでに処理済みの履歴」をスキップするカットオフフィルタ(`m_limitSequenceNo`)、②処理完了ごとにブースID単位の「最終受信シーケンス番号」を永続化するハイウォーターマーク(`NsCollaboSettings.setLastReceivedSequenceNo`)
- 受信側に明示的な重複排除(dedup)ロジックは見当たらない

**新アプリへの設計上の含意**: Directionは「順序付き・少なくとも1回配送・非冪等」という前提で設計されている。自前で再実装する場合は、(1)順序保証のある輸送(単一WebSocket接続、またはサーバー側での並べ替え)、(2)再開用の最終処理済みシーケンス番号の永続化、(3)確実に一度だけ適用したい場合はサーバー側でパケット番号による重複排除、を組み合わせるとよい。

## 5. 個人クラウド同期("Sd"/"Cabinet")REST API

教室のリアルタイム協働とは別に、個人のノート保管庫(Cabinet)をサーバーと同期するための独立したREST API。`SdHttpClient`(OkHttpベース)が共通ヘッダ(`User-Agent: MMJSdCloudService/1.0`, `X-DM-Locale`, `X-DM-ProductName`, `X-DM-ProductVersion`, `X-DM-Device`)とCookieJarを管理する。ベースURLは実行時に注入される「ホームディレクトリ」文字列。

| メソッド/パス | Params | Result | 用途 |
|---|---|---|---|
| POST `/rest/users/login` | `SdLoginParams{userId,password,qwd}` | `SdLoginResult{userId}` | ログイン(以後Cookieでセッション維持) |
| GET `/rest/drives/%s/properties` | — | `SdGetDrivePropertiesResult{amountUsed,driveId}` | ドライブ容量情報 |
| GET `/rest/drives/%s/lastupdaterevision` | — | `{driveId,lastUpdateRevision}` | 変更検知用のポーリング |
| GET `/rest/drives/%s/data?lastsyncrev=%s` | `lastSyncRevision` | `SdFileResult`(バイナリ) | 差分ドライブインデックス取得 |
| PUT `/rest/drives/%s/data` | `dataFile`(zip) | `{driveId,revision}` | ドライブインデックスの全量アップロード |
| POST `/rest/drives/%s/syncstart` | — | `{driveId,entryType}` | 同期セッション開始 |
| GET `.../documents/%s/meta` | `contentsRevisionOnly`, `documentId` | `{documentId,driveId,meta}` | ノートのメタデータ |
| GET `.../documents/%s/data?revision=%s` | `documentId,revision` | `SdFileResult` | ノート本体ダウンロード |
| PUT `.../documents/%s/data?check=...&fromv2=...` | `check`(楽観ロックトークン), `dataFile`, `fromV2` | `{documentId,driveId,registeredFromV2,revision}` | ノート本体アップロード |
| DELETE `.../documents/%s/data?check=...&update=...` | `check,documentId,update` | `{documentId,driveId}` | ノート削除 |
| GET `.../documents/%s/searchdata?revision=%s` | — | `SdFileResult` | 全文検索インデックス |
| GET `.../documents/%s/thumbnail?revision=%s` | — | `SdFileResult` | サムネイル画像 |
| POST `.../documents/%s/editflag/turnon` | `contentsRevision,force,locationId` | `{editFlag,hasEditFlag,locationId,userId}` | 編集排他ロック取得 |
| POST `.../documents/%s/editflag/turnoff` | `contentsRevision,isAll,locationId` | — | 編集排他ロック解放 |

すべての`SdResponseResult`共通フィールド: `errorCode`, `errorName`, `errorMessage`, `errorData`, `httpStatusCode`, `isUnderMaintenance`, `maintMessage`。

## 6. forSchool一括処理(教師操作のオーケストレーション例)

`ScCollaboBgTaskFor*`クラス群(全13種、`NsCollaboBgTaskBase`を継承)が教師向け操作を実装する。代表例:

- **`ScCollaboBgTaskForDistributeMultiNotesToMultiBoxes`**(一斉配信): ネットワーク確認→ローカルの`DvmDocumentManager`から各ノートのメタ情報取得→`DvmDistributeClassParams`を構築→`DvmCloudService.executeDistributeMultipleNotesWithParams`がOkHttpの`MultipartBody`(認証JSON+変換パラメータJSON+アーカイブファイル)でPOST。ソケット通信ではなく通常のHTTPマルチパートアップロード
- **`ScCollaboBgTaskForTakeSnapShotAllPages`**(全ページスナップショット): サーバー通信なし。ローカルの`NtEditorWindowController`から全ページを走査し、一時的にレイヤーを復元→ビットマップ化→編集状態を元に戻す、という完全にインプロセスな処理
- **`ScCollaboBgTaskForManageClassList`**(クラス名簿管理): メンテナンス確認とユーザー情報キャッシュ更新のみ自前で行い、実際の名簿操作は`ScClassListDialog`(UI)に委譲

## 7. Tauri版設計への示唆

- 「REST仲介でリレーサーバーの場所を取得し、その後は専用のリアルタイムコネクションに切り替える」という2段構成の設計自体は理にかなっており、自前バックエンドでもこのパターンは踏襲してよい(WebSocketの接続先URLをREST APIで払い出す形)
- 独自のタブ/スペース/コロン区切りテキストプロトコルは再現不要。同等の情報(boothId, packetNo, cmd, key:valueパラメータ)をJSON envelopeで表現すれば十分
- Direction(操作)の「永続送信キュー+ACK+順序はトランスポート任せ」という設計思想は、オフライン耐性のある協働編集を作る上で参考になる
- MetaMoJi社のサーバー(`cosmos`, `mps.metamoji.com`等)には接続できない/すべきではないため、教室協働機能を実装する場合はこの仕様を「お手本」として自前のバックエンド(REST + WebSocket)を新規に立てる必要がある
