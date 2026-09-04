# ローカルデータベース詳細スキーマ

ORMLiteの`@DatabaseField`アノテーション・レガシーSQL文字列を精読して再構築したスキーマ。3系統が併存する: ①ORMLiteの"Dm"メタデータDB、②Core Dataライクな"Sd"(Sync Drive)DB、③レガシーの"ctold"生SQL DB。

## 1. "Dm"メタデータDB(ORMLite)

全エンティティが`DmManagedObjectBase`を継承し、主キーは共通で `m_entityId: String`(`@DatabaseField(columnName="entityId", id=true, unique=true)`)。

### DmDocumentMetaData(`@DatabaseTable`)
| フィールド | 型 | カラム |
|---|---|---|
| `_create` | Date | create |
| `_hasFrontCover` | boolean | hasFrontCover |
| `_lastAccess` | Date | lastAccess |
| `_mimeType` | String | mimeType |
| `_templateFlg` | boolean | templateFlg |
| `_title` | String | title |
| `_type` | String | type |
| `_update` | Date | update |

### DmLibraryBgImageMetaData / DmLibraryItemMetaData / DmLibrarySheetTemplateMetaData

3テーブルほぼ共通のライブラリアイテムスキーマ(`SORT_KEY_*`定数がソートキーの一覧を示す: ENTITY_ID, TYPE, NAME, CREATE, UPDATE, LASTACCESS, USE_DATE, BOOKMARKED, DOWNLOAD, PRODUCT_ID, PRODUCT_NAME, CREATOR_ID, CREATOR_NAME, IS_FREE, IS_TRIAL)。

| フィールド | 型 | BgImageのみ | 3テーブル共通 |
|---|---|---|---|
| `_bookmarked` | boolean | | ✓ |
| `_create`/`_update`/`_lastAccess`/`_download`/`_useDate` | Date | | ✓ |
| `_creatorId`/`_creatorName` | String | | ✓ |
| `_isFree`/`_isTrial` | boolean | | ✓ |
| `_name`/`_type` | String | | ✓ |
| `_productId`/`_productName` | String | | ✓ |
| `_index` | int | ✓ | |
| `_isSheet` | boolean | ✓ | |
| `_keyword` | String | ✓ | |
| `_paperHeight`/`_paperWidth` | Double | ✓ | |
| `_printHeight`/`_printWidth` | Double | ✓ | |
| `_repeatType` | String | ✓ | |

### DmLibraryContentsSyncData / DmLibraryIndexXMLSyncData(抽象、自テーブルなし)
| フィールド | 型 | カラム |
|---|---|---|
| `_lastSyncedRevision` | String | lastSyncedRevision |
| `_serverId` | String | serverId |
| `_serverUpdate` | Date | serverUpdate |
| `_syncStatus` | String | syncStatus |
| `_syncType`/`_syncTypePrev` | `DmEntitySyncType` | syncType/syncTypePrev |
| `_syncUpdate` | Date | syncUpdate |

`DmLibraryItemSyncData`(→`DmLibraryContentsSyncData`)と`DmLibraryItemIndexXMLSyncData`(→`DmLibraryIndexXMLSyncData`)が実テーブル化(独自フィールド追加なし)。

### DmContentsKeyValueEntity
| フィールド | 型 | カラム |
|---|---|---|
| `m_key` | String | key(unique) |
| `m_value` | String | value |

汎用キー・バリューストア。

## 2. "Sd"(Sync Drive)DB — Managed Objectパターン

全エンティティが`SdManagedObject`を継承し、ORMLite自動採番の物理PK `m_pkey: Integer`(`f_pkey`, generatedId)を持つ。加えて各エンティティ独自の同期用UUID文字列`m_id`(`f_id`, インデックス付きだがORMLiteの`id=true`ではない)。

| エンティティ | テーブル | 主なフィールド(カラム) |
|---|---|---|
| **SdMODrive** | SdMODrive | m_id(idx), m_groupId/m_groupName/m_groupOrder(idx), m_hidden(既定0), m_homeDir, m_lastUpdateRevision, m_localCacheId, m_maintenanceText, m_name, m_order(idx), m_owner(Boolean), m_status(Integer), m_type(Integer) |
| **SdMOPrivateDrive** | SdMOPrivateDrive | m_id(idx), m_current(Boolean), m_driveId, m_homeDir, m_lastUpdateRevision, m_maintenanceText, m_merging(Boolean), m_status(Integer), m_userId(idx) |
| **SdMODiscardedDrive** | SdMODiscardedDrive | m_id(idx), m_localCacheId(ソフトデリート用のミラーテーブル) |
| **SdMODiscardedPrivateDrive** | SdMODiscardedPrivateDrive | m_id(idx) |
| **SdMOMergingPrivateDrive** | SdMOMergingPrivateDrive | m_id(idx), m_destId(マージ先) |
| **SdMOFolder** | SdMOFolder | m_absPath(idx, パス文字列で階層表現), m_childrenOrder/-Origin/-Revision/-Update/-UpdateFlag, m_deleteFlag(idx), m_depth(Integer,idx), m_name(idx), m_revision, m_update(idx), m_updateFlag(idx) |
| **SdMODocument** | SdMODocument | m_id(idx), m_contentsAttribute(Integer,既定0), m_contentsCreate/-Update(idx), m_contentsCreateUserId/-UpdateUserId, m_contentsMimeType, m_contentsRevision, m_contentsUpdateFlag(idx), m_copyFrom, m_copyRevision, m_deleteFlag(idx), m_isCopiedShareNote(既定0,idx), m_lastAccess(idx), m_options/-Origin(Integer,既定0), m_optionsRevision, m_optionsUpdate(既定2014-01-01), m_optionsUpdateFlag(idx), m_priority(Boolean,既定0,idx), **`m_tags: ForeignCollection<SdMODocumentTag>`**(eager=false), m_tagsOrigin/-Revision/-Update/-UpdateFlag, m_title(idx)/-Revision/-Update/-UpdateFlag, m_trashed(既定0,idx) |
| **SdMODocumentTag** | SdMODocumentTag | **m_document: SdMODocument**(`f_tags`, foreign=true, index=true — 上記ForeignCollectionのFK側), m_name(String) |
| **SdMODocumentRoom** | SdMODocumentRoom | m_companyId(idx), m_id(idx), m_lastSequence, m_roomId(idx) |
| **SdMODocumentSearchData** | SdMODocumentSearchData | m_id(idx), m_data(String, シリアライズされた検索インデックス), m_lastUpdate, m_type(Integer) |
| **SdMOPoolDocument** | SdMOPoolDocument | SdMODocumentのサブセット+`m_companyId`,`m_roomId`,`m_searchData`(String),`m_tags`(プレーンString、ForeignCollectionではない) — 教室ルーム経由の"プール"ドキュメント |
| **SdMOTag** | SdMOTag | m_color(Integer), m_deleteFlag(idx), m_name(idx), m_revision, m_update, m_updateFlag(idx) |
| **SdMOTagOrder** | SdMOTagOrder | m_id(idx), m_revision, m_tagOrder/-Origin(String, 並び順のシリアライズ文字列), m_update, m_updateFlag |
| **SdMOThumbnailCache** | SdMOThumbnailCache | m_contentsRevision, m_contentsUpdate, m_documentId(idx), m_nothingFlag(Boolean) |

### 推定ER関係

- `SdMODrive` 1—N `SdMOFolder`/`SdMODocument`: 明示的なFKカラムはなく、各ドライブは`SdDriveMOManager`によって**個別のORMLiteコンテキスト(実質別DB)**として扱われる構造(構造的スコープ分離)
- `SdMOFolder`の親子関係は`m_absPath`のパス文字列で表現(FK列ではない)
- `SdMODocument` 1—N `SdMODocumentTag`: **明示的なORMLite FK**(`SdMODocumentTag.m_document` ↔ `SdMODocument.m_tags`)
- `SdMOPrivateDrive.m_driveId` → `SdMODrive.m_id`(文字列参照)
- `SdMOThumbnailCache.m_documentId` → `SdMODocument.m_id`(文字列参照)
- `SdMODocumentRoom`/`SdMOPoolDocument`の`m_roomId`/`m_companyId`は教室ルーム(サーバー側概念)への文字列参照
- `SdMOMergingPrivateDrive.m_destId` → マージ先ドライブ
- `SdMODiscardedDrive`/`SdMODiscardedPrivateDrive`はソフトデリート用のミラーテーブル(ゴミ箱)

## 3. レガシー"ctold"生SQLデータベース(タグ/検索インデックス)

`CtObjectDatabaseImpl`と`CtTagDatabaseImpl`が保持する生SQL(`CtSqlDef`自体はバージョン定数のみ)。

```sql
CREATE TABLE objects (
  object_number INTEGER PRIMARY KEY AUTOINCREMENT,
  object_type INTEGER NOT NULL,
  object_id TEXT NOT NULL,
  object_owner_id TEXT NOT NULL,
  object_page_id TEXT,
  object_x REAL, object_y REAL, object_width REAL, object_height REAL,
  CONSTRAINT uk_object UNIQUE (object_id, object_owner_id)
);

CREATE TABLE object_images (
  object_number INTEGER PRIMARY KEY,
  object_image BLOB,
  CONSTRAINT fk_object FOREIGN KEY (object_number) REFERENCES objects (object_number) ON DELETE CASCADE
);

CREATE TABLE tag_objects (
  tag_number INTEGER PRIMARY KEY AUTOINCREMENT,
  tag_id TEXT NOT NULL,
  object_number INTEGER NOT NULL,
  CONSTRAINT uk_tag_object UNIQUE (tag_id, object_number),
  CONSTRAINT fk_object FOREIGN KEY (object_number) REFERENCES objects (object_number) ON DELETE CASCADE
);

CREATE TABLE tag_properties (
  tag_number INTEGER NOT NULL,
  prop_name TEXT NOT NULL,
  prop_val NOT NULL,
  prop_type INTEGER(1) NOT NULL,
  CONSTRAINT uk_tag_number_name UNIQUE (tag_number, prop_name),
  CONSTRAINT fk_tag FOREIGN KEY (tag_number) REFERENCES tag_objects (tag_number) ON DELETE CASCADE
);
```

`objects.object_page_id`は`objects.object_id`への自己参照(ページ→ノート/オブジェクトの階層、FK制約なし)、`object_owner_id`が所有者スコープ(マルチテナント/協働注釈オブジェクト)を表す。

### CtObjectType 完全列挙
| 定数 | 値 |
|---|---|
| CT_OBJTYPE_UNKNOWN | 0 |
| CT_OBJTYPE_NOTE | 1 |
| CT_OBJTYPE_PAGE | 2 |
| CT_OBJTYPE_UNIT | 3 |
| CT_OBJTYPE_ELEM | 4 |
| CT_OBJTYPE_VOICE | 5 |
| CT_OBJTYPE_EVENT | 6 |
| CT_OBJTYPE_VIDEO | 7 |
| CT_OBJTYPE_GROUP | 8 |

## 4. `com.metamoji.sqldb`(ネイティブJNI SQLブリッジ)のAPI形状

`libsqldbjni.so`を裏に持つ、手作りのJDBCライクなAPI(実装がネイティブのためスキーマそのものは不明):

- `SqlDatabase`: `open/close/lock`, トランザクション(`beginImmediate/commit/rollback/setAutoCommit`), `executeQuery/executeUpdate/prepareStatement/getColumnInfos/getLastInsertRowId/vacuum`
- `SqlResultSet`: カーソル型(`next()`, 型付きgetter `getInt/getLong/getShort/getFloat/getDouble/getBoolean/getChar/getString/getBlob/getDate`)
- `SqlPreparedStatement`: `executeQuery/executeUpdate/executeUpdateForTransaction/reset/close`
- `SqlModel`(`IModel`拡張): `getDatabase/getDatabaseFilePath/isDatabaseModified/registTableName/registDataConverterBlock/readFrom(File)/writeTo(File)` — インポート/エクスポート(ノートアーカイブ形式)に使われている可能性が高い

## 5. Tauri版への示唆

- "Dm"(メタデータ)と"Sd"(同期ドライブ)の分離は、「ローカルキャッシュ用の軽量テーブル」と「サーバー同期のための完全なエンティティ+リビジョン管理」という役割分担として理にかなっている。SQLite + `rusqlite`等で単純に再設計してよい
- `SdMODocument`のリビジョン管理フィールド群(`m_contentsRevision`, `m_optionsRevision`, `m_tagsRevision`, 各`*UpdateFlag`)は、楽観的並行制御(optimistic concurrency)+差分同期の典型パターン。同期機能を実装する際の設計テンプレートとして有用
- ctoldの生SQLタグ/検索DBは、全文検索やタグ検索が必要な場合にSQLiteのFTS拡張などで置き換え可能なシンプルな設計
