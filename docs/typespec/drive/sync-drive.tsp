import "@typespec/http";
import "../common.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// ドライブ/ドキュメント同期 REST API (SdCloudService)
// ============================================================
//
// 解析対象クラス: `com.metamoji.sd.cs.SdCloudService`
// ([apk/smali_classes3/com/metamoji/sd/cs/SdCloudService.smali](../../../apk/smali_classes3/com/metamoji/sd/cs/SdCloudService.smali))。
// 低レベルHTTP実装は Kotlin製の `com.metamoji.sd.cs.SdHttpClient`
// ([SdHttpClient.smali](../../../apk/smali_classes3/com/metamoji/sd/cs/SdHttpClient.smali))、
// ホスト/セッション状態の保持は `com.metamoji.sd.cs.SdCloudServiceContext`
// ([SdCloudServiceContext.smali](../../../apk/smali_classes3/com/metamoji/sd/cs/SdCloudServiceContext.smali))
// が担う。Param/Responseクラスは `com.metamoji.sd.cs.params.*`(16ファイル)・
// `com.metamoji.sd.cs.response.*`(13ファイル)。
//
// ## `CsCloudService`/WebDAVとの関係(生きているコードか)
//
// **本APIは死んだコードではなく、v3.15.1.0で実際に使われているライブAPIです。**
// `SdCloudService`の呼び出し元を全smaliから検索したところ、以下のような広範な
// 呼び出し元パッケージ・クラスが見つかりました:
//
// - `com.metamoji.sd.sync.SdDriveSyncProcess` / `SdPrivateDriveSyncProcess`
//   (共有ドライブ/プライベートドライブの同期処理本体。数千行規模のクラスで、
//   `SdDriveDocumentManager.getCloudService().executeWithAutoLoginFor(...)` を多数回呼び出す)
// - `com.metamoji.dvm.DvmDriveManager` / `DvmUtil` /
//   `com.metamoji.dvm.impl.DvmMetamojiCloudDocumentManager`
//   (ドライブ管理層。`SdCloudServiceContext` の生成・`homeDir`/`maintenanceText`設定を行う)
// - `com.metamoji.noteanytime.MainActivity$60`(ストレージ使用量表示で
//   `executeGetDrivePropertiesWithParams` を直接呼ぶ)
// - `com.metamoji.sd.SdThumbnailLoader$Task`(サムネイル取得)、
//   `com.metamoji.sd.shareview.SdShareViewDocumentProxy`、
//   `com.metamoji.ui.cabinet.CabinetUtils`、`com.metamoji.ui.library.item.LibraryPartView`、
//   `com.metamoji.forSchool.ui.ScSelectNote` など、UI層からも直接参照されている。
//
// 一方で、WebDAVデータプレーン([webdav.tsp](./webdav.tsp)の`NwWebDAVRequest`)を使う
// `com.metamoji.dm.impl.sync.common.DmDigitalCabinetAccessUtils` および
// `com.metamoji.dm.impl.sync.DmDCSyncManager`・`DmDigitalCabinetSyncIntentService`系も
// 同じくv3.15.1.0内に生きたコードとして存在することを確認しました。すなわち本バージョンには
// **2系統のドライブ/ノート同期実装が並存**しています(`dm.impl.sync`パッケージ=WebDAVベースの
// 旧世代「Digital Cabinet」同期と、`sd`/`dvm`パッケージ=本ファイルが扱うREST APIベースの
// 同期)。どちらがどの機能(個人ノート vs 共有ドライブ、等)を担当するかの完全な切り分けは
// 今回のセッションでは未確定です(`SdDriveDocumentManager`/`DvmDriveManager`という命名から、
// 少なくとも「ドライブ」(共有フォルダ)同期は本APIが担っている可能性が高いですが、確証はありません)。
// いずれにせよ、**本APIがデッドコードでないことは呼び出し元の広がりから明確**です。
//
// `CsCloudService`(auth.tsp/drive.tsp等)のドライブ関連エンドポイント(`/drives/...`)とは
// パス体系・ホスト・認証セッションが完全に別であり、機能的に重複/後継関係にある可能性があります
// (ROADMAP.md参照)。ログイン資格情報は`com.metamoji.cs.dc.user.CsDCUserInfoSettings`
// (`CsCloudService`側と共有)から取得しますが、実際のHTTPセッション(Cookie)は独立しています。
//
// ## 通信の基本仕様
//
// - **プロトコル**: HTTPS+JSON、ただし**GET/DELETEはボディを一切送信しません**
//   (`CsCloudService`とは異なり、`SdHttpClient.sendRequestWithCommand`に`null`の`Map`が
//   渡される)。POST(ログイン・編集フラグON/OFF)のみ`requestBody`キーにJSON文字列
//   (各Paramクラスの`toMap()`が明示的に選んだフィールドのみ)を積みます。
//   `toMap()`は`CsParamBaseAbstract`のような全フィールド自動反映ではなく、**サブクラスごとに
//   手書きでどのフィールドを送るか選択**しています(例:
//   `SdTurnOnEditFlagParams.documentId`はURLパス生成にのみ使われ、JSONボディには含まれません)。
// - **真偽値の表現**: JSON化される真偽値(`force`/`isAll`/`fromv2`)は、実際にはJSONの`true`/`false`
//   ではなく**文字列`"true"`/`"false"`**としてMapに積まれます(`toMap()`で`String`型として格納)。
// - **ベースURL**: 固定のホスト定数はなく、`SdCloudServiceContext.getHomeDir()`が返す
//   **ドライブごとに異なるURL**(スキーム+ホスト+任意のパスプレフィックスを含む絶対URLの先頭部分)
//   に、各操作のコマンドパス文字列(`"/rest/drives/%s/..."`等)をそのまま文字列連結したものが
//   最終URLになります(`SdHttpClient.sendRequestWithCommandCore`)。`homeDir`が未設定(null/空)の
//   場合はリクエストを送らずに`null`を返します。`homeDir`の値自体はローカルにキャッシュされた
//   `SdMODrive`エンティティの`homeDir`プロパティ(`DvmDriveManager`が`SdCloudServiceContext`
//   生成時にセット)に由来し、本セッションではこの値がサーバーのどのレスポンスで最初に払い出される
//   かまでは追いきれていません。**そのため本ファイルの`@server`相当のベースURLは特定できず、
//   各操作のパスはこの動的な`homeDir`からの相対パスとして記載しています。**
// - **認証**: セッションCookieベース。`SdHttpClient`はクラス静的な専用CookieJar
//   (`SdHttpClient.mCustomCookieStore: NwCookieJar`)を持ち、`CsCloudService`
//   (`NwHttpClient`の共有CookieJar)とは**別のセッション**を管理します。
//   ログインは`POST {homeDir}/rest/users/login`(body: `{userId, password, qwd}`)。
//   `SdCloudService.executeLoginWithParams`は`SdHttpClient.setDiscardCookie(true)`を呼んでおり、
//   ログイン試行前に対象ホストの既存Cookieを破棄します。
//   `executeWithAutoLoginFor`はレスポンスの`errorCode`が`0x2af9`
//   (`SdCloudServiceErrorCode.NOT_LOGIN_EXCEPTION`)の場合、
//   `CsDCUserInfoSettings`(`CsCloudService`と共有するアカウント情報ストア)から
//   ユーザーID/パスワード/qwdを取得して自動的に再ログインし、元のリクエストを1回だけ再試行します。
//   `Authorization`ヘッダ等の明示的な認証ヘッダは付与されません。
// - **カスタムHTTPヘッダ**(`SdHttpClient.createRequest`が一律付与):
//   `User-Agent: MMJSdCloudService/1.0`、`X-DM-Locale`、`X-DM-ProductName`、`X-DM-ProductVersion`
//   (いずれも`com.metamoji.cs.CsCloudServiceContext.getInstance()`、すなわち`CsCloudService`側と
//   同じインスタンスから取得)、`X-DM-Device: "{Build.MODEL};Android;{Build.VERSION.SDK_INT}"`。
//   `CsHttpClient`にある`X-DM-AppVersion`は付与されません。
// - **共通レスポンスフィールド**: 全レスポンスは`SdResponseResult`(抽象基底クラス)由来の
//   `errorCode`/`errorName`/`errorMessage`/`errorData`/`bodyMessage`/`httpStatusCode`/
//   `isUnderMaintenance`/`maintMessage`を持ちます。`CsResponseBase`
//   ([common.tsp](../common.tsp))とはフィールド構成が異なる(EULAバージョン関連フィールドが無い等)
//   ため、**`CsResponseBase`を再利用せず独自の`SdResponseBase`を定義**しています。
//   同様にリクエスト側も`CsRequestBase`のような自動付与共通フィールド
//   (`deviceName`/`productName`等)を持たないため、独自モデルのみで表現しています。
// - **ファイルダウンロード系レスポンス**: `getDriveData`/`getDocumentData`/
//   `getDocumentSearchData`/`getDocumentThumbnail`は共通の`SdFileResult`
//   (本ファイルでは`SdFileResponse`)を返し、レスポンスボディはローカル一時ファイルに保存されます
//   (`file`フィールドがそのローカルパス)。
// - **既知の死んだ参照**: `SdCloudService$paramClass`という内部enumには
//   `SdGetEditFlagParams`という項目が存在しますが、対応する`params/SdGetEditFlagParams.smali`
//   ファイルは存在せず、`SdCloudService`にも対応する`executeGetEditFlagWithParams`メソッドは
//   ありません。`_executeWithAutoLoginFor`の`packed-switch`もこのenum値(ordinal=1)を
//   ハンドルしないため、到達すると`null`が返ります。オーブンド(孤立)コードと考えられ、
//   本ファイルでは対応するAPIを定義していません。

/**
 * 全レスポンスに共通するフィールド (`SdResponseResult`、Java抽象基底クラス)。
 * `common.tsp`の`CsResponseBase`とはフィールド構成が異なるため独自定義。
 */
model SdResponseBase {
  /** 0=成功、0以外=エラーコード (`SdCloudServiceErrorCode`参照。例: 0x2af9=未ログイン、0x2afa=リビジョン競合) */
  errorCode?: int32;

  /** エラー種別を表す識別子文字列 (レスポンスJSONの`data.name`) */
  errorName?: string;

  /** エラーメッセージ (レスポンスJSONの`message`) */
  errorMessage?: string;

  /** エラーに付随する任意の追加データ */
  errorData?: Record<unknown>;

  /** 型付きプロパティに写像されなかった生レスポンス */
  bodyMessage?: Record<unknown>;

  /** HTTPステータスコード (クライアント側で複写した値) */
  httpStatusCode?: int32;

  /** メンテナンス中かどうか (`getMaintenanceInfo`専用) */
  isUnderMaintenance?: boolean;

  /** メンテナンス中に表示するメッセージ (`getMaintenanceInfo`専用) */
  maintMessage?: string;
}

/**
 * ファイルダウンロード系エンドポイント共通のレスポンス (`SdFileResult`)。
 * `getDriveData`/`getDocumentData`/`getDocumentSearchData`/`getDocumentThumbnail`が返す。
 */
model SdFileResponse extends SdResponseBase {
  /** ダウンロードされたコンテンツを保持するローカル一時ファイルへのパス (Java型は`java.io.File`) */
  file?: string;

  /** レスポンスの`Content-Type` (`responseMimeType`) */
  mimeType?: string;
}

// ---- ログイン (SdLoginParams / SdLoginResult) ----

model SdLoginParam {
  userId?: string;
  password?: string;
  qwd?: string;
}

model SdLoginResponse extends SdResponseBase {
  userId?: string;
}

// ---- ドライブ全体の同期 ----

model SdGetDriveDataParam {
  /** 前回同期時のリビジョン。`null`の場合は空文字としてクエリに送られる (`lastsyncrev=`) */
  lastSyncRevision?: string;
}

model SdGetDriveLastUpdateRevisionResponse extends SdResponseBase {
  driveId?: string;
  lastUpdateRevision?: string;
}

model SdGetDrivePropertiesResponse extends SdResponseBase {
  driveId?: string;

  /** 使用容量 (文字列表現の数値。単位はサーバー側実装依存、未確認) */
  amountUsed?: string;
}

model SdSyncStartResponse extends SdResponseBase {
  driveId?: string;
  entryType?: int32;
}

// ---- ドキュメント単位の取得 ----

model SdGetDocumentDataParam {
  /** 取得したいリビジョン。`null`の場合は空文字としてクエリに送られる */
  revision?: string;
}

/**
 * `SdGetDocumentMetaParams`。`contentsRevisionOnly`はサーバーへは送信されない
 * クライアント専用フラグで、`true`の場合`SdHttpClient`のタイムアウトを5秒に短縮するためだけに
 * 使われる(URLクエリ/ボディいずれにも現れない)。参考情報として構造は残すが、
 * `getDocumentMeta`操作のシグネチャには含めていない。
 */
model SdGetDocumentMetaParam {
  contentsRevisionOnly?: boolean;
}

model SdGetDocumentMetaResponse extends SdResponseBase {
  documentId?: string;
  driveId?: string;

  /** ドキュメントのメタ情報(汎用Map、構造はドキュメント形式依存で未確認) */
  meta?: Record<unknown>;
}

model SdGetDocumentSearchDataParam {
  /** 取得したいリビジョン。`null`の場合は空文字としてクエリに送られる */
  revision?: string;
}

model SdGetDocumentThumbnailParam {
  /** 取得したいリビジョン。`null`の場合は空文字としてクエリに送られる */
  revision?: string;
}

// ---- アップロード(ドライブ/ドキュメント本体) ----

model SdPutDriveDataResponse extends SdResponseBase {
  driveId?: string;
  revision?: string;
}

model SdPutDocumentDataResponse extends SdResponseBase {
  documentId?: string;
  driveId?: string;
  revision?: string;

  /** サーバーがv2(旧クライアント)経由の登録として扱ったか (レスポンスJSONの`registeredFromV2`) */
  registeredFromV2?: boolean;
}

model SdDeleteDocumentDataResponse extends SdResponseBase {
  documentId?: string;
  driveId?: string;
}

// ---- 編集フラグ(排他ロック相当) ----

/**
 * `SdTurnOnEditFlagParams`。`documentId`フィールドも存在するが、これはURLパスの
 * `{documentId}`部分にのみ使われ、`toMap()`が組み立てるJSONボディには含まれない。
 */
model SdTurnOnEditFlagParam {
  locationId?: string;
  contentsRevision?: string;

  /** 真偽値だが実際にはJSON文字列`"true"`/`"false"`として送信される (`toMap()`参照) */
  force?: "true" | "false";
}

model SdTurnOnEditFlagResponse extends SdResponseBase {
  userId?: string;
  locationId?: string;
  editFlag?: boolean;
  hasEditFlag?: boolean;
}

/**
 * `SdTurnOffEditFlagParams`。`documentId`フィールドも存在するが、これはURLパスの
 * `{documentId}`部分にのみ使われ、`toMap()`が組み立てるJSONボディには含まれない。
 * `documentId`/`contentsRevision`のデフォルト値は共に文字列`"0"`
 * (`DOCUMENT_ID_NOT_SET`/`CONTENTS_REVISION_ID_NOT_SET`定数)。
 */
model SdTurnOffEditFlagParam {
  locationId?: string;
  contentsRevision?: string;

  /** 真偽値だが実際にはJSON文字列`"true"`/`"false"`として送信される (`toMap()`参照) */
  isAll?: "true" | "false";
}

model SdTurnOffEditFlagResponse extends SdResponseBase {}

// ---- メンテナンス情報 ----

/**
 * `SdGetMaintenanceInfoResult`。独自フィールドは無く、基底の`isUnderMaintenance`/
 * `maintMessage`のみをコンストラクタ引数から設定する。
 */
model SdGetMaintenanceInfoResponse extends SdResponseBase {}

@tag("ドライブ同期 (次世代REST API)")
interface SyncDrive {
  /**
   * ユーザーID/パスワード(またはqwd)でログインし、`homeDir`が示すホストにセッションCookieを
   * 確立する。`CsCloudService`のログインとは別セッション。
   *
   * - 元Javaメソッド: `SdCloudService.executeLoginWithParams`
   * - HTTPメソッド: POST
   * - パス: `{homeDir}/rest/users/login`
   * - ボディ: JSON (`SdLoginParam`の`toMap()`が選んだフィールドのみ。`password`/`qwd`は非nullの場合のみ含まれる)
   */
  @post
  @route("/rest/users/login")
  op login(@body body: SdLoginParam): SdLoginResponse;

  /**
   * ドライブの同期を開始する(サーバー側の同期セッション/エントリ種別の確認用と推測)。
   * リクエストボディなし。
   *
   * - 元Javaメソッド: `SdCloudService.executeSyncStartWithParams`
   * - HTTPメソッド: GET
   * - パス: `{homeDir}/rest/drives/{driveId}/syncstart`
   */
  @get
  @route("/rest/drives/{driveId}/syncstart")
  op syncStart(@path driveId: string): SdSyncStartResponse;

  /**
   * ドライブ全体のデータ(ノート一覧等を含むzipアーカイブと推測)をダウンロードする。
   * レスポンスボディはローカル一時ファイルに保存される。
   *
   * - 元Javaメソッド: `SdCloudService.executeGetDriveDataWithParams`
   * - HTTPメソッド: GET
   * - パス: `{homeDir}/rest/drives/{driveId}/data?lastsyncrev={lastSyncRevision}`
   */
  @get
  @route("/rest/drives/{driveId}/data")
  op getDriveData(@path driveId: string, @query("lastsyncrev") lastSyncRevision?: string): SdFileResponse;

  /**
   * ドライブの最終更新リビジョンを取得する(差分同期の要否判定に使用と推測)。
   * リクエストボディなし。
   *
   * - 元Javaメソッド: `SdCloudService.executeGetDriveLastUpdateRevisionWithParams`
   * - HTTPメソッド: GET
   * - パス: `{homeDir}/rest/drives/{driveId}/lastupdaterevision`
   */
  @get
  @route("/rest/drives/{driveId}/lastupdaterevision")
  op getDriveLastUpdateRevision(@path driveId: string): SdGetDriveLastUpdateRevisionResponse;

  /**
   * ドライブのプロパティ(使用容量等)を取得する。リクエストボディなし。
   *
   * - 元Javaメソッド: `SdCloudService.executeGetDrivePropertiesWithParams`
   * - HTTPメソッド: GET
   * - パス: `{homeDir}/rest/drives/{driveId}/properties`
   */
  @get
  @route("/rest/drives/{driveId}/properties")
  op getDriveProperties(@path driveId: string): SdGetDrivePropertiesResponse;

  /**
   * ドライブ全体のデータ(zipアーカイブと推測)をアップロード(上書き)する。
   * `Content-Type: application/zip`でファイルのバイト列をそのまま送信する(JSONボディではない)。
   *
   * - 元Javaメソッド: `SdCloudService.executePutDriveDataWithParams`
   * - HTTPメソッド: PUT
   * - パス: `{homeDir}/rest/drives/{driveId}/data`
   */
  @put
  @route("/rest/drives/{driveId}/data")
  op putDriveData(@path driveId: string, @header contentType: "application/zip", @body body: bytes): SdPutDriveDataResponse;

  /**
   * ドキュメント本体データ(zip)をダウンロードする。レスポンスはローカル一時ファイルに保存される。
   * ログインユーザーが未設定(匿名/ゲスト相当、`SdCloudServiceContext.getUserId()`が`null`)の場合、
   * クエリ末尾に`&caching=1`が自動付与される。
   *
   * - 元Javaメソッド: `SdCloudService.executeGetDocumentDataWithParams`
   * - HTTPメソッド: GET
   * - パス: `{homeDir}/rest/drives/{driveId}/documents/{documentId}/data?revision={revision}[&caching=1]`
   */
  @get
  @route("/rest/drives/{driveId}/documents/{documentId}/data")
  op getDocumentData(
    @path driveId: string,
    @path documentId: string,
    @query revision?: string
  ): SdFileResponse;

  /**
   * ドキュメントのメタ情報を取得する。リクエストボディなし
   * (`SdGetDocumentMetaParam.contentsRevisionOnly`はサーバーに送信されないクライアント専用フラグ)。
   *
   * - 元Javaメソッド: `SdCloudService.executeGetDocumentMetaWithParams`
   * - HTTPメソッド: GET
   * - パス: `{homeDir}/rest/drives/{driveId}/documents/{documentId}/meta`
   */
  @get
  @route("/rest/drives/{driveId}/documents/{documentId}/meta")
  op getDocumentMeta(@path driveId: string, @path documentId: string): SdGetDocumentMetaResponse;

  /**
   * ドキュメントの検索用データ(全文検索インデックス等と推測)をダウンロードする。
   *
   * - 元Javaメソッド: `SdCloudService.executeGetDocumentSearchDataWithParams`
   * - HTTPメソッド: GET
   * - パス: `{homeDir}/rest/drives/{driveId}/documents/{documentId}/searchdata?revision={revision}`
   */
  @get
  @route("/rest/drives/{driveId}/documents/{documentId}/searchdata")
  op getDocumentSearchData(
    @path driveId: string,
    @path documentId: string,
    @query revision?: string
  ): SdFileResponse;

  /**
   * ドキュメントのサムネイル画像をダウンロードする。
   *
   * - 元Javaメソッド: `SdCloudService.executeGetDocumentThumbnailWithParams`
   * - HTTPメソッド: GET
   * - パス: `{homeDir}/rest/drives/{driveId}/documents/{documentId}/thumbnail?revision={revision}`
   */
  @get
  @route("/rest/drives/{driveId}/documents/{documentId}/thumbnail")
  op getDocumentThumbnail(
    @path driveId: string,
    @path documentId: string,
    @query revision?: string
  ): SdFileResponse;

  /**
   * ドキュメント本体データ(zip)をアップロード(新規作成/上書き)する。
   * `Content-Type: application/zip`でファイルのバイト列をそのまま送信する(JSONボディではない)。
   * クエリ文字列には常に固定リテラル`&cnechk=1`が付与される(用途不明、typoの可能性あり)。
   *
   * - 元Javaメソッド: `SdCloudService.executePutDocumentDataWithParams`
   * - HTTPメソッド: PUT
   * - パス: `{homeDir}/rest/drives/{driveId}/documents/{documentId}/data?check={check}&fromv2={true|false}&cnechk=1`
   */
  @put
  @route("/rest/drives/{driveId}/documents/{documentId}/data")
  op putDocumentData(
    @path driveId: string,
    @path documentId: string,
    @query check?: string,
    @query("fromv2") fromV2?: "true" | "false",
    @header contentType: "application/zip",
    @body body: bytes
  ): SdPutDocumentDataResponse;

  /**
   * ドキュメントを削除する。`update`は`java.util.Date#getTime()`(エポックミリ秒)を
   * 文字列化した値。リクエストボディなし。
   *
   * - 元Javaメソッド: `SdCloudService.executeDeleteDocumentDataWithParams`
   * - HTTPメソッド: DELETE
   * - パス: `{homeDir}/rest/drives/{driveId}/documents/{documentId}/data?check={check}&update={updateEpochMillis}`
   */
  @delete
  @route("/rest/drives/{driveId}/documents/{documentId}/data")
  op deleteDocumentData(
    @path driveId: string,
    @path documentId: string,
    @query check?: string,
    @query update?: string
  ): SdDeleteDocumentDataResponse;

  /**
   * ドキュメントの編集フラグ(排他ロック相当)をONにする。
   *
   * - 元Javaメソッド: `SdCloudService.executeTurnOnEditFlagWithParams`
   * - HTTPメソッド: POST
   * - パス: `{homeDir}/rest/drives/{driveId}/documents/{documentId}/editflag/turnon`
   */
  @post
  @route("/rest/drives/{driveId}/documents/{documentId}/editflag/turnon")
  op turnOnEditFlag(
    @path driveId: string,
    @path documentId: string,
    @body body: SdTurnOnEditFlagParam
  ): SdTurnOnEditFlagResponse;

  /**
   * ドキュメントの編集フラグ(排他ロック相当)をOFFにする。
   *
   * - 元Javaメソッド: `SdCloudService.executeTurnOffEditFlagWithParams`
   * - HTTPメソッド: POST
   * - パス: `{homeDir}/rest/drives/{driveId}/documents/{documentId}/editflag/turnoff`
   */
  @post
  @route("/rest/drives/{driveId}/documents/{documentId}/editflag/turnoff")
  op turnOffEditFlag(
    @path driveId: string,
    @path documentId: string,
    @body body: SdTurnOffEditFlagParam
  ): SdTurnOffEditFlagResponse;

  /**
   * メンテナンス情報テキストを取得する。他の操作と異なり`homeDir`+コマンドパスではなく、
   * `SdCloudServiceContext.getMaintenanceText()`が保持する**絶対URLそのもの**にGETする
   * (`SdHttpClient.getMaintenanceTextCore`)。このURL自体もローカルにキャッシュされた
   * `SdMODrive.getMaintenanceText()`由来で、本セッションでは払い出し元までは追えていない。
   * TypeSpecの制約上パスパラメータとして表現しているが、実際は絶対URLがそのまま渡される点は
   * [webdav.tsp](./webdav.tsp)の`resourceUrl`と同様。
   *
   * - 元Javaメソッド: `SdCloudService.executeGetMaintenanceInfoWithParams`
   * - HTTPメソッド: GET
   * - パス: (`maintenanceUrl`そのもの。`/rest/...`形式ではない)
   */
  @get
  @route("{maintenanceUrl}")
  op getMaintenanceInfo(@path maintenanceUrl: string): SdGetMaintenanceInfoResponse;
}
