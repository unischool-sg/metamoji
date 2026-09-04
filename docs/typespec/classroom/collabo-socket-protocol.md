# リアルタイム協働ソケットプロトコル (NsCollaboSocket)

`com.metamoji.ns.socket.NsCollaboSocket`
([apk/smali_classes3/com/metamoji/ns/socket/NsCollaboSocket.smali](../../../apk/smali_classes3/com/metamoji/ns/socket/NsCollaboSocket.smali))
が実装する、生TCP/TLSソケット上の独自テキストプロトコル。授業ルーム内でのペン入力・ページ操作等を
リアルタイムに参加者間で同期するための通信路で、[collabo.tsp](./collabo.tsp) のREST API
(`cosmos/*`・`mmjcloud/*`)とは別レイヤーです。

**このファイルはTypeSpecではなくMarkdownです。** HTTP上のJSON-RPC/RESTではなく、独自フレーミングの
生ソケットプロトコルであり、TypeSpecのHTTP指向のモデル(`@route`/`@get`等)には適合しないため、
他の`.tsp`ファイルとは異なる形式で記載しています。

## 1. 全体アーキテクチャ

```
[クライアント] --HTTPS(REST, collabo.tsp)--> [ルーム仲介サーバー]
     |
     | cosmos/GetServletInfo (collabo.tsp の getServletInfo) でリレーサーバーの
     | アドレス・ポート・プロトコルバージョン情報を取得
     v
[クライアント] --生TCP/TLSソケット(本ファイルのプロトコル)--> [リレー(servlet)サーバー]
```

ルームへの参加(`cosmos/LoginRoom`、[collabo.tsp](./collabo.tsp)の`loginRoom`)自体はREST API側で行い、
そのレスポンスやルーム設定に基づいて別途このソケット接続を開始し、ソケット上で改めて
`LoginRoom`コマンド(後述、REST側とは別物)を送ってセッションを確立します。

## 2. トランスポート・接続

- **ソケット**: `javax.net.ssl.SSLSocket`(TLS)。HTTPプロキシ経由の場合は先に平文`Socket`で
  プロキシへ接続し、HTTP `CONNECT`トンネルを確立してからTLSハンドシェイクへ移行する
  (`NsCollaboSocket.connect(String host, int port, boolean useProxy)`、プロキシ設定は
  ユーザー設定`"CollaboProxySettingPort"`等から取得)。
- **ハンドシェイク**: `connect()`自体はTCP/TLS接続を確立するのみで、アプリケーションレベルの
  ハンドシェイクメッセージは送信しない。**「ログイン」はただの通常コマンド送信**であり、
  接続直後に`postCommandLoginWithRoomId(rid, did, sid, name)`を呼ぶことで開始する(§4参照)。
- **キープアライブ**: クライアント発の能動的なping送信タイマーは存在しない。あるのは
  「30秒間サーバーから何も受信しなければ切断する」ウォッチドッグ
  (`resetConnectingCheckTimer`/`onConnectingCheckTimer`。受信の都度リセット)。
  サーバー起点の`Ping`(§5)に対しては`postCommandPingResult()`で応答する。
- **再接続**: `NsCollaboSocket`自体にリトライ/バックオフのロジックは無い。接続失敗時は
  ハンドラへ通知して例外を投げるのみで、再接続は呼び出し元(`NsCollaboManager`)の責務。

## 3. ワイヤフレーミング

送受信とも同一フォーマットです(`NsCollaboSocket.postCommand(...)`, L2837 /
受信側 `ReceiveDataAsync()`, L246〜)。

```
\n{boothId}\t{packetNo}\t{paramString}[生バイナリペイロード(任意)]
```

- **外側区切り**: `\n`(LF)。受信側はバイト列を`ByteArrayOutputStream`に貯めながら
  LFでスキャンして1行を切り出す(行分割ではなく手動バイトスキャン)。
- **`boothId`**: 論理チャンネル。ルーム/セッションレベルコマンドは`"*"`固定。
  `AttachBooth`で明示的にアタッチした特定のブース(`CHAT`/`RECORDING`/`ROOM`など、
  あるいはページ単位のブースID)に対して`PostData`(Direction送信)を行う場合は
  その具体的なブースIDになる。
- **`packetNo`**: 送信側では`"C%d"`形式("C0", "C1", ...)の単調増加シーケンス番号
  (`sendPacketNo()`、プロセス全体で共有の静的カウンタ)。
- **`paramString`**: スペース区切りの`key:value`トークン列。先頭トークンは必ず`cmd:{コマンド名}`
  (例: `cmd:LoginRoom rid:X did:Y sid:Z name:W`)。パース処理(`parseParameter()`)は
  正規表現でスペース分割 → 各トークンをコロンで最大2分割、という単純な仕組み。
- **バイナリペイロード**: 受信した`paramString`に`cmd:PostData`かつ`binary:{N}`(N>0)が
  含まれる場合のみ、テキスト行の直後に追加の区切り無しで生バイト列がN バイト続く
  (`m_binaryModeRequiredSize`で管理。複数の受信バッファチャンクにまたがっても正しく結合する)。
  送信側も同様に、`cmd:PostData ... binary:{data.length}\n`という行の直後へ生バイトを
  そのまま書き込む。

## 4. クライアント→サーバー コマンド一覧

すべて`NsCollaboSocket`の`postCommand*`系メソッドから送信される。特記無い限り`boothId="*"`。

| コマンド | Javaメソッド | ワイヤフォーマット | 応答コマンド | 応答フィールド・備考 |
|---|---|---|---|---|
| `LoginRoom` | `postCommandLoginWithRoomId(rid,did,sid,name)` | `cmd:LoginRoom rid:%s did:%s sid:%s name:%s\n` | `LoginRoomResult` | `status`, `rid`(要求と不一致ならプロトコルバージョン不一致とみなし強制ログアウト), `rtype`(casual/formal/limited), `rmode`, `uid`(自分のuserId), `mode`(カンマ区切り`key:enable/…`→ビットマスク), `role`(カンマ区切りの裸トークン`presenter`/`speaker`→ビットマスク), `setting`(base64 JSON、REST版`roomSettingList`と同一形状), 失敗時`msg`。加えてMode2/Score情報も同時に含まれうる(下記`Mode2Changed`/`ScoreChanged`と同じ解析関数を使用)。 |
| `LogoutRoom` | `postCommandLogoutWithRoomId(rid)` | `cmd:LogoutRoom rid:%s\n` | `LogoutRoomResult` | 送信前に`m_sendStopFlag=true`をセットした上で、このパケットだけは強制送信する。**応答`LogoutRoomResult`はクライアント側で一切ハンドリングされない**(受信しても`Unknown Result!`扱い)。 |
| `AttachBooth` | `postCommandAttachBooth(bid,last,callback)` | `cmd:AttachBooth bid:%s last:%d\n` | `AttachBoothResult` | `status`, `bid`。成功時、応答パケット自体の`packetNo`(要求時のコールバックで受け取ったIDと突合)を伴って`collaboBoothAttached(bid, packetNo)`が呼ばれる。`last`はそのブースの最終既知シーケンス番号(再接続時の巻き戻し取得用)。 |
| `DetachBooth` | `postCommandDetachBooth(bid)` | `cmd:DetachBooth bid:%s\n` | `DetachBoothResult` | `status`のみ。失敗時はルーム全体を強制ログアウトする。 |
| `ChangeMode` | `postCommandChangeMode(key,value)` | `cmd:ChangeMode key:%s value:%s\n` | `ChangeModeResult` | 応答は受信認識されるが**内容はハンドリングされないno-op**(実際の状態反映は非同期の`ModeChanged`プッシュ経由)。 |
| `ChangeMode2` | `postCommandChangeMode2(param)` | `cmd:ChangeMode2 %s\n` | `ChangeMode2Result` | **応答ハンドラが存在しない**(サーバーから来ても`Unknown Result!`)。実際に送信される`param`は3種類の定数のみ: `manualStartTime:-3`(開始予約キャンセル)/`manualStartTime:-2`(手動開始)/`manualEndTime:-2`(手動終了)。 |
| `ChangeProperty` | `postCommandChangeProperty(key,value)` | `cmd:ChangeProperty key:%s value:%s\n` | `ChangePropertyResult` | no-op(状態反映は`RoomUpdated key:"user" value:"prop"`プッシュ経由)。 |
| `ChangeMembersMode` | `postCommandChangeMembersMode(userID,key,value)` | `cmd:ChangeMembersMode userID:%s key:%s value:%s\n` | `ChangeMembersModeResult` | no-op。 |
| `ChangeMembersProperty` | `postCommandChangeMembersProperty(userID,key,value)` | `userID`が空なら`cmd:ChangeMembersProperty key:%s value:%s\n`(全ユーザー対象)、それ以外は`userID`付きの形 | `ChangeMembersPropertyResult` | no-op。 |
| `AddNotifyBoothUpdated` | `postCommandAddNotifyBoothUpdated(Map<String,Long>)` | `bidseq`値としてカンマ区切り`{boothId}={lastSeq}`トークンを連結(Mapが空なら送信自体しない) | `AddNotifyBoothUpdatedResult` | no-op。 |
| `PostData`(テキスト) | `postCommandDirection(data,boothId,loop,save,rsize)` | `cmd:PostData loop:%d save:%d rsize:%s a: data:%s z:\n` | `PostDataResult` | `boothId`は呼び出し元指定(`"*"`固定ではない)。`status`のみ。`collaboPostDirectionResult(success, boothId, packetNo)`としてハンドラへ転送。 |
| `PostData`(バイナリ) | `postCommandDirectionBinary(data,boothId,loop,save,rsize)` | `cmd:PostData loop:%d save:%d rsize:%s binary:%d\n` + 生バイト列 | `PostDataResult` | 同上。Direction(§6)は基本的にこちらのバイナリ経路で送られる。 |
| `PingResult` | `postCommandPingResult()` | `cmd:PingResult\n`(パラメータ無し) | (無し) | サーバー発の`Ping`プッシュへの応答としてのみ送信される。 |

## 5. サーバー→クライアント 非同期プッシュイベント

`NsCollaboManager.collaboSocketReceivedData`が`cmd`文字列で分岐して処理する。

| コマンド | フィールド | 処理概要 |
|---|---|---|
| `OpenConnection` | (無し) | 受信は認識されるが**現状no-op**。 |
| `BoothUpdated` | `bid` | `INsCollaboHandler.boothUpdated(bid)`を呼ぶだけ。 |
| `RoomUpdated` | `key`, `value` | `key`により3系統に分岐: `"rtype"`(値をルームタイプとして採用、不正値は強制ログアウト)/`"rmode"`(生値を保存)/`"user"`(さらに`value`で細分岐: `"login"`→参加者追加, `"logout"`→`uid`/`date`を読み参加者削除, `"prop"`→プロパティ更新, `value`に`"mode"`を含む→モード更新のみ通知無し)。⚠️ **`value:"role"`(ロール変更)に対応する分岐は存在せず**、ロール変更は代わりに独立した`RoleChanged`イベントとして届く。 |
| `ModeChanged` | `key`, `value`, (`key:"log"`のみ`bid`も) | `key`が`"log"`/`"presenter"`/`"clerk"`/`"speaker"`の4種のみ実装されており、`value=="enable"`かどうかで各モードを更新。定数上存在する`"guest"`/`"owner"`/`"teacher"`キーは未実装(このイベント経由では反映されない)。 |
| `RoleChanged` | `key`(`presenter`/`speaker`), `value`(`enable`/その他) | 自分自身のロールビットマスクのみを更新(`uid`フィールドは読まれず、他ユーザー向けの通知は無い=自己スコープ)。 |
| `PropertyChanged` | — | **受信は認識されるが完全に未処理**(no-op分岐)。プロパティ変更の実際の反映経路は`RoomUpdated key:"user" value:"prop"`。 |
| `Ping` | (無し) | クライアントは`postCommandPingResult()`で応答する。 |
| `PostMessage` | `message`(base64必須), `title`(base64任意) | `INsCollaboHandler`は経由せず、直接アラートダイアログ表示(`NsCollaboUtils.showAlertMessage`)。 |
| `SettingChanged` | `setting`(base64 JSON) | `{"roomSettingList": <content>}`として`parseRoomSetting`でパースし、ローカルのルーム設定を更新(REST版`SetRoomSetting`と同一形状)。 |
| `Mode2Changed` | `validFlag`, `mode2`, `beforeMode2`, `testingMode2`, `afterMode2`, `reportMode2`, `endReportMode2`, `remandMode2`, `lockMode2`, `startEnd`, `startTime`, `endTime` | `ScSchoolManager.parseMode2Info`が処理。フィールド名は[distribute.tsp](./distribute.tsp)の`DvmFileSetItem`(クラス配信パラメータ)と共通しており、同じ「授業モード」概念を共有している。 |
| `ScoreChanged` | `scoreList`(base64 JSON、`{"temp": <content>}`として解析) | `ScSchoolManager.parseScoreList`が処理。エントリ内部構造は未確認。 |
| `Finish` | (無し) | セッション終了通知。受信すると即座に`logoutRoomSocket()`を呼ぶだけ。 |
| `PostData`(受信) | `binaryData`([B])または`data`(base64文字列。両者は排他)、`seq`(int、シーケンス番号)、`self`(int==1で自己エコー検出)、`date`、`uid` | `bid`は本文ではなく外側フレームのboothId。`INsCollaboHandler.collaboDirectionReceived(driveId, docId, bytes, {boothId, sequenceNo, bySendBack, timestamp, uid})`として転送される。 |

## 6. Direction(編集操作)データモデルと信頼性設計

「Direction」はペン入力・ページ操作などノート編集操作をリアルタイム同期するための最小単位です。
送受信のオーケストレーションは`NsCollaboManager`ではなく、専用クラス
**`com.metamoji.ns.direction.NsDirectionManager`**
(apk/smali_classes3/com/metamoji/ns/direction/NsDirectionManager.smali、約6800行)が担っています
(`NsCollaboManager.postDirection(...)`はソケット層への薄い転送メソッドに過ぎません)。

### 6.1 ワイヤ上のペイロード形式

`Direction`はJSONでも独自バイナリdiffでもなく、**アプリ独自のドキュメントモデル
シリアライズ形式(ノート本体`.atdoc`と同じ`IModel`フレームワーク)で表現された、
`"direction"`型・`version=1`のモデル1個をまるごとシリアライズしたバイト列**です
(`NsDirectionManager.makeDirectionData()`)。

- ルートモデルのプロパティ: `data`(実際の編集内容。呼び出し元が渡すオブジェクトが`IModel`
  ならそのサブツリーをインポート——呼び出し元は`Un*Unit`系クラス群、すなわちノート内の
  各コンテンツ(テキスト/画像/音声/動画/Webユニット等)のコントローラ——、そうでなければ
  スカラー値をそのままプロパティとして設定), `target`(ルーティング用のブースID文字列、
  `NsCollaboUtils.currentBoothId()`等から算出), `esid`(任意。ドキュメントエディタの
  「編集ステータスID」`NtDocument.getEditStatusID()`をそのまま転記)。
- モデルは`ModelManagerSaveContext.setCramped(true)`でコンパクト形式にシリアライズされ、
  `PostData`コマンドの`binary`ペイロードとしてそのまま送信される。
- ⚠️ **注意**: ワイヤ上の`self`フィールド(§5、自己送信エコー検出用の整数フラグ)と、
  モデル内部の`esid`(編集セッションID)は**別レイヤーの別概念**です。前者はソケット
  フレームレベルの単純なブールフラグ、後者はモデル内に埋め込まれたセッション識別子です。

### 6.2 送信側: 永続キュー + ACKによる再送保証

- `NsDirectionManager$SendingDataTable`(インメモリのみ)が「送信済みでACK待ちの
  パケット番号 ⇔ 永続化ハンドル」を双方向に対応付ける。
- 未ACKの送信データは`NsCollaboSettings.addSendingData(...)`により、**ノートドキュメント自身の
  モデルツリー内**(`"MMJNsShareSettings"`型の設定モデル配下の`"sending"`ノードの子として、
  `"shareSendingData"`型ノードで`data`(Blob)/`boothID`/`sendBack`/`ripOffSize`を保持)に
  永続化される。専用のDB/ファイルではなく、**ドキュメントの保存に相乗りする形で永続化**
  される点に注意(ACK成功時に`NtDocument.setSaveOnEnd(true)`を呼ぶことで実際のディスク書き込みが
  トリガーされる)。
- サーバーからのACK(`collaboPostDirectionResult(success, boothId, packetNo)`)を受けると、
  `success==true`の場合のみ該当エントリを`SendingDataTable`から`unbind`し、
  `NsCollaboSettings.removeSendingData(...)`で永続キューからも削除する。
  `success==false`の場合は**明示的なエラー処理・NACK処理は一切無く**、そのまま`return-void`
  する(次回の再送パスに委ねる設計)。
- 再送は`postSendingData()`が担い、①新規送信の都度、②再接続の都度に呼ばれる。
  再送前に「そのハンドルに対応する`packetNo`がまだ`SendingDataTable`に残っている
  (=ACK待ちの送信が飛行中)」場合は**二重送信を避けてスキップ**する重複排除ガードがある。
  タイマーベースのバックオフ/再送ループは存在しない(完全にイベント駆動)。
- 「disposable」(使い捨て)扱いで送るDirection送信経路も存在し、その場合は
  `postDirection`の戻り値(パケット番号)を一切使わず`SendingDataTable`にも登録しない
  ——つまりACK追跡・永続化・再送の対象外の「最大1回配送(at-most-once)」送信も存在する。

### 6.3 受信側: 単一ワーカーの厳格FIFO、順序保証はソケット任せ

- 受信処理は`com.metamoji.ns.direction.NsRecvInvoker`(単一スレッドExecutor上で動作)が
  内部の`LinkedList`キューに積まれたタスクを**完全に投入順(FIFO)**で1つずつ同期実行する。
  優先度制御や並べ替え、重複排除ロジックは存在しない(=ソケット層が順序を保証する前提)。
  UIコールバック(`invokerWillBeginOperation`/`DidEndOperation`)は20件または2000msごとに
  まとめて発火するバッチング目的のみで、正しさには関与しない。
- 送信側も同様に`NsSendInvoker`という単一スレッドExecutorで直列化されている
  (送信自体も厳密にシリアライズされる)。
- シーケンス番号(`seq`)はクライアント側の並べ替えには使われず、
  ①再接続/リストア時に「処理済み範囲をスキップする」カットオフフィルタ
  (`NsDirectionManager.m_limitSequenceNo`)、②ブースごとの「最終受信シーケンス番号」を
  永続化するハイウォーターマーク(`NsCollaboSettings.lastReceivedSequenceNoFor/setLastReceivedSequenceNo`)
  の2用途に使われる(このカットオフ比較ロジック自体の詳細は未確認)。

### 6.4 `NsCollaboCommandSuspender`

Direction送受信キューとは別物で、外部Activity(カメラ/アルバム選択等)から戻ってきた際に
「協働セッションがその間に一時停止/終了していないか」をチェックするための、
Kotlin `MutableStateFlow`ベースの3状態ゲート(`PERMITTED`/`FORBIDDEN`/`RESIGNED`)。
`waitAndExecute{...}`が`PERMITTED`になるまで待って処理を実行し、`RESIGNED`の場合は
処理を諦めて代替のフォールバックUIタスクを表示する。確認できた唯一の利用箇所は、
画像ユニット追加(`UnImageUnitExt`)がカメラ/アルバムからの非同期コールバック後に
このゲートを通す実装。

## 7. 参考: 並行して存在する別ドキュメント

同リポジトリの [`docs/06-classroom-protocol-spec.md`](../../06-classroom-protocol-spec.md) にも
本プロトコルの概要記述がありますが、これは「MetaMoji社サーバーに接続するためのものではなく、
別実装のバックエンドを新規設計する際のお手本」という別目的で書かれた要約です
(詳細な出典行や全フィールドの網羅はされていません)。本ファイルはそれとは独立に、
実際の smali バイトコードを直接精読して検証・詳細化したものです。上記調査の過程で
以下の点は同ドキュメントの記述と食い違う、または同ドキュメントに無い情報として確認されました:

- 送受信キュー・再送ロジックの実体は`NsCollaboManager`ではなく`NsDirectionManager`という
  専用クラスにある。
- `RoomUpdated`の`value:"role"`サブイベントは実装上ハンドリングされておらず、
  ロール変更は独立した`RoleChanged`イベントのみで届く。
- `ChangeMode`/`ChangeProperty`/`ChangeMembersMode`/`ChangeMembersProperty`/
  `AddNotifyBoothUpdated`の各`*Result`応答、および`ChangeMode2Result`/`LogoutRoomResult`は
  クライアント側で内容が一切参照されないno-op(またはハンドラ自体が存在しない)。
- 送信キューの永続化は独立ストアではなく、ノートドキュメント自身のモデルツリーに
  相乗りする形で行われる。

## 8. 未確認事項

- `NsCollaboManager.postDirection`の`disposable`/`sendBack`引数の正確な呼び出し元ごとの意味
  (`loop`/`save`への変換規則は確認済みだが、呼び出し元ごとの使い分けは未追跡)。
- `updateUserInfo`内の`prop`サブマップの全キー(`privateLayer`/`schoolPersonalStatus`以外)。
- `ScoreChanged`の`temp`配列要素・`SettingChanged`の`roomSettingList`要素の内部スキーマ。
- シーケンス番号カットオフ比較ロジックの詳細実装。
- `RoleChanged`が本当に自己スコープのみか(サーバーが対象ユーザーごとに個別送信している
  可能性はあるが、ワイヤ上の`uid`欠如以外の裏付けは無い)。
