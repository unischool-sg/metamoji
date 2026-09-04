# Dm(Data Manager)フレームワークとローカル同期基盤の詳細

[07-local-db-schema.md](07-local-db-schema.md)で扱ったエンティティ**スキーマ**の上位にある、実際の**マネージャ/オーケストレーション層**を精読した結果。

## 1. 全体アーキテクチャ: Core Data風のORM

`com.metamoji.dm.*`は Apple Core Data を明確に意識した設計(クラス名も`DmManagedObjectBase`, `DmManagedObjectContext`, `DmManagedObjectId`, `DmManagedObjectRequest`)で、ORMLite/SQLiteの上に構築されている。レイヤー(下から上):

- **`DmSqlDriver`**(抽象) ─ `beginTransaction/commit/rollback/executeInTransaction`等の低レベル契約
- **`DmSqlAccessManager`**(`DmSqlDriver`実装) ─ ORMLiteの`Dao`/`QueryBuilder`/`Where`を直接ラップ。コンストラクタで`@DatabaseTable`アノテーションからテーブル名を読み、`TableUtils.createTableIfNotExists`でテーブル作成。`DmPredicate`(検索条件)+`DmSortDescriptor`(ソート)+fetchLimit/Offsetから実際のSQLクエリを構築する
- **`DmMetadataDatabaseHelper`** ─ シングルトンのSQLiteヘルパー(`/.metadata/MMJDmStorageManager.db`, version 2)。マイグレーションは1件のみ確認(`DmDocumentMetaData`に`mimeType`列を追加)
- **`DmCoreDataManager`** ─ `NSPersistentStoreCoordinator`相当の中間コーディネータ
- **`DmManagedObjectContext`** ─ `NSManagedObjectContext`相当
- **`DmManagedObjectBase`**(抽象、エンティティ基底) ─ 全エンティティ共通の`entityId`等
- **`DmMetaDataManagerBase`**(抽象) ─ **エンティティ種別ごとのマネージャが実装すべき汎用フレームワーク**。CRUD一式(`getMetaData/getMetaDataAll/putMetaData/deleteMetaData/copyMetaData/containsMetaData`等)を提供し、サブクラスは`getPredicate()`と`sqlAccessManager()`の2つの抽象メソッドだけ実装すればよい

### 具体例: DmLibraryItemMetaDataManager
`DmMetaDataManagerBase`を継承する具体的なマネージャの一例。シングルトンで、汎用CRUDに加えてエンティティ固有の検索API(`searchLibraryItem(condition, limit, sort)`等)を追加している。**この「基底クラスに汎用CRUD、サブクラスは検索条件だけ実装」というプラグイン方式が、Tauil版でエンティティ種別を増やす際のテンプレートになる。**

## 2. `DmEntitySyncType` 列挙(完全版)

同期状態を表す4値のenum(宣言順):

1. `Synced`(同期済み)
2. `New`(新規作成、未アップロード)
3. `Update`(ローカルで変更、未アップロード)
4. `Delete`(削除待ち)

典型的なオフライン同期の「ダーティフラグ」パターン。[07-local-db-schema.md](07-local-db-schema.md)のエンティティが持つ`_syncType`/`_syncTypePrev`フィールドはこの値を取る。

その他確認された関連enum: `DmLibraryType`(`LibraryTypeItem/SheetTemplate/NoteStyle/Pen/Ink/BgImage`の6種)、`DmDocumentManagerCloseMode`(`Save`/`Discard`の2値)。

## 3. `SyncEventService`の実態: 単なるpub/subリスナーホスト

前回の調査で「状態機械かもしれない」とした`SyncEventService`は、実際には**ステートマシンでも意図ディスパッチャでもない**。`Service`を継承しているが`onStartCommand`はカウンタをインクリメントするだけで`Intent`の中身を一切見ない。実体は`onCreate()`が14個の名前付きコールバックを`DmDCSyncManager.putEventHandler(String, ICmEventHandler)`に登録するだけの**Observerパターンのリスナーホスト**。

### 14個のイベント名
`backgroundProcessesStart/End`, `libraryItemsSyncStart/End`, `backgroundProcessesBeforeStart`, `sharedOneDriveSyncStart/End`, `sharedDriveSyncEnd`, `sharedNotesSyncStart/End`, `sharedOnenoteSyncStart/End`, `sharedOnenoteSyncConflict`, `sharedTagOrderTooLong`

各ハンドラはUIスレッドにポストし、フォアグラウンドのActivityがあれば`MainActivity.syncEventHandler_*`という静的メソッドに転送するだけ(アプリがバックグラウンドならイベントは静かに破棄され、永続化やキューイングはされない)。

### 実際の同期トリガー
`SyncEventService`自身は何もトリガーしない。実際の起点は`DmDCSyncManager`(多数の`start*Sync`メソッド: `startLoginSync/startFullSync/startLocalSync/startAutoSyncForChanges/startSelectedDriveSync/startAllSharedDriveSyncWith*`等)で、呼び出し元は:
- `MainActivity`のメニュー操作/ログインフロー
- `SdDriveUpdateChecker$Task`/`SdDriveInvitationChecker$Task`(定期ポーリングタスク)
- **`CabinetSyncOnIdle`** ─ 編集操作が止まってから10秒後(`UiTimer`)に自動同期をトリガーする「アイドル後の自動同期」デバウンス機構。編集中・メニュー/ダイアログ表示中はスキップされる
- 接続状態変化(`CONNECTIVITY_CHANGE`ブロードキャスト→`DmDCSyncManager.handleConnectivityChange(Z)`)

`AlarmManager`による固定周期同期は存在しない ─ すべて「イベント駆動+アイドルデバウンス」方式。

実際のネットワークI/O(WebDAV/`SdCloudService`)はさらに下層の`com.metamoji.dm.impl.sync.common.*IntentService*`(例: `DmNotEditContentsUploadIntentService`, `DmDigitalCabinetAccessUtils`)が担い、`SyncEventService`はそこには一切触れない。

## 4. コンフリクト検出・解決アルゴリズム

`CabinetSdAlert_ConflictNotice`等の文字列リソースは実際には**コード上どこからも参照されていない**(未使用UI文言、またはサーバー配信文言の可能性)。実際のロジックは`com.metamoji.sd.sync.SdDriveSyncProcess`にある。

### 検出
アップロード時、`contentsRevision`(楽観的並行制御トークン)と`contentsUpdate`(更新日時)を送信し、サーバーがエラーコード`DOCUMENT_REVISION_CONFLICT_EXCEPTION`(0x2afa)を返したらコンフリクトと判定(HTTP 412/409相当の楽観ロック不一致)。

### 解決: 「サーバー優先+ローカル差分は複製」方式
1. サーバーの最新版(メタデータ+検索インデックス)を取得
2. 新しいドキュメントIDを発行し、`copyFrom`/`copyRevision`で元IDにリンクした**新規ドキュメントとしてローカルの差分をコピー保存**。タイトルは`makeDuplicatedDocumentTitle()`が正規表現で「(コピー)N」サフィックスを検出・インクリメントして付与(64文字上限)
3. **元のドキュメントIDはサーバー版の内容で上書き**(サーバーが「正」として扱われる)
4. `"sharedOnenoteSyncConflict"`イベントを発火するが、UI側(`MainActivity.syncEventHandler_Sd_OneNoteConflict`)は現行ビルドでは値を受け取るだけで**何も表示しない**(パラメータを取得して破棄する空実装 ─ おそらく未完成/削除されたUIの痕跡)

つまり**ユーザーへの通知なしに自動でノートが複製される**、サイレントな「両方保持」戦略。編集ロック警告(`CsShowSyncConflictAlertDialogExecutor`、事前に「他ユーザーが編集中」と警告するダイアログ)は別の独立した仕組みで、これはコンフリクト発生を未然に減らすための予防的UIであり、事後解決アルゴリズムとは別物。

## 5. ストレージ層: メタデータとコンテンツ実体の分離

`Dm`フレームワークは単なるファイルパスのポインタストアではなく、**実際のバイト列も管理する**:

- **`fw/metadata/*`**(本ドキュメント§1) ─ ORMLite/SQLiteで構造化された行(エンティティ属性・同期フラグ・検索条件)のみを扱う
- **`fw/contents/*` + `fw/storage/*`** ─ 実データ(サムネイル、`.atdoc`的なコンテンツBlob ─ 定数`MMJDM_CONTENTS_EXT="contents.bin"`、ページデータ)をエンティティIDをキーにした実ファイルとしてディスクに保持。`IDmStorageManager`(`copy/delete/exists/read/write`等、`InputStream`ベース)と`DmContentsManagerBaseAbstract`(`getContentsData→byte[]`, `writeContentsDataFromFile`等)がこの層を担う

`DmConstants`にはドキュメントのメタデータ辞書キー一覧(`title`, `thumbnail`, `tags`, `protected`, `hashedPassword`, `collaboRoomId`, `collaboLastSequence`, `offlineLayer`, `pageThumbnails`等)が定義されており、Tauri版のデータモデル設計にそのまま使える語彙になっている。

## 6. Tauri版への推奨

- **メタデータ(SQLite行)とコンテンツ(実ファイル)の分離**という設計は理にかなっており、そのまま踏襲すべき ─ SQLiteテーブル(entityId, 属性, 同期フラグ)+ entityIdキーのコンテンツディレクトリ
- **`DmEntitySyncType`(Synced/New/Update/Delete)+リビジョントークンによる楽観的並行制御**は、シンプルで実装しやすい同期戦略の雛形として採用できる
- **コンフリクト解決は「サーバー優先+ローカル差分を複製ノートとして保存」**という設計は、複雑なCRDT/OTを実装せずに済む現実的な妥協案として参考になる(ただしユーザー通知は元アプリでは事実上機能していないため、Tauri版では実際にユーザーへ知らせる実装にすべき)
- **アイドルデバウンス自動同期**(編集停止から数秒後にトリガー)は、常時同期による無駄な通信を避けるパターンとして有効
- **汎用CRUDマネージャ基底クラス + エンティティ固有サブクラス**というプラグイン構造は、Rust側でも`trait MetadataManager<T: Entity> { fn predicate(&self) -> Predicate; ... }`のような形で再現できる

## 参照ファイル
`apk/smali_classes2/com/metamoji/dm/fw/metadata/{DmSqlDriver,DmSqlAccessManager,DmMetadataDatabaseHelper,DmCoreDataManager,DmManagedObjectContext,DmManagedObjectBase,DmMetaDataManagerBase}.smali`, `apk/smali_classes2/com/metamoji/dm/impl/metadata/DmLibraryItemMetaDataManager.smali`, `apk/smali_classes2/com/metamoji/dm/{DmEntitySyncType,DmConstants,DmLibraryType,DmDocumentManagerCloseMode,IDvmDocumentEditor}.smali`, `apk/smali_classes2/com/metamoji/dm/fw/storage/{IDmStorageManager,DmBasicStorageManagerAbstract,DmInternalStorageManager}.smali`, `apk/smali_classes2/com/metamoji/dm/fw/contents/{DmContentsManagerBaseAbstract,DmContentsContextAbstract}.smali`, `apk/smali_classes3/com/metamoji/nt/cabinet/sync/{SyncEventService,CabinetSyncOnIdle}.smali`, `apk/smali_classes2/com/metamoji/dm/impl/sync/DmDCSyncManager.smali`, `apk/smali_classes3/com/metamoji/sd/sync/SdDriveSyncProcess.smali`
