import "@typespec/http";
import "./common.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// クラス配信・クラッシュログ (DvmCloudService)
// ============================================================
//
// `com.metamoji.dvm.cs.DvmCloudService` (apk/smali_classes2/com/metamoji/dvm/cs/DvmCloudService.smali)。
// `com/metamoji/cs/CsHttpClient` (`CsCloudService`とは別の、より低レベルなHTTPヘルパークラス) を
// 直接利用しており、`CsCloudService`本体のメソッドとしては呼び出されない独立したAPI群。
// 「クラス配信」= 教師が作成したノートを変換ジョブとしてサーバーに登録し、生徒側に配信する機能
// (ノートアニタイム由来の「クラスへの配信」機能)。
//
// ⚠️ **クラッシュログ送信は2系統ある**: `misc.tsp`の`postCrashLogs`
// (`CsCloudService.executePostCrashLogsWithParams`, GET, `{rootServer}mpsroot/crashlog/upload`) とは別に、
// ここで扱う `DvmCloudService.executePostCrashLogsWithParams`
// (POST, multipart, `{rootServer}crashlogs/upload`) が存在する。両者は実装・パスとも異なる。

/**
 * 認証情報コンテナ (`prepareAuthInfoWithUserInfo`が生成、JSON文字列化してリクエストに埋め込まれる)。
 * `CsDCUserInfo` (ログイン時にキャッシュされたユーザー情報) から組み立てられる。
 */
model DvmAuthInfo {
  /** 固定値 `"cabinet"` */
  authType: "cabinet";
  companyLoginName?: string;
  companyId?: string;
  loginName?: string;
  userId?: string;
  password?: string;
  qwd?: string;
  productName?: string;
  productVersion?: string;
  locale?: string;
}

/** `convertParam`(JSON文字列)内の`fileSetList`各要素 (`DvmDistributeClassParams`)。 */
model DvmFileSetItem {
  title?: string;
  /** epoch milliseconds (`NsShareViewCommand.convertDateFromDate`) */
  openDate?: int64;
  /** 未指定時は `DvmUtil.getPrivateDrive()` (プライベートドライブ) が使われる */
  orgDriveId?: string;
  orgDocumentId?: string;
  secureRoom?: string;
  secureRoomPassword?: string;
  validFlag?: int32;
  /** epoch milliseconds */
  startTime?: int64;
  /** epoch milliseconds */
  endTime?: int64;
  beforeMode2?: int32;
  testingMode2?: int32;
  afterMode2?: int32;
  reportMode2?: int32;
  endReportMode2?: int32;
  remandMode2?: int32;
  lockMode2?: int32;
  settingList?: unknown[];
  driveInfoList?: unknown[];
}

/** `convertParam`パートのJSON文字列のトップレベル構造。 */
model DvmConvertParam {
  fileSetList: DvmFileSetItem[];
}

/** すべての`Dvm*`レスポンスに共通するフィールド (`DvmResultBase`)。 */
model DvmResultBase {
  /** `DvmCloudServiceErrorCode` の値。0 = 成功 */
  errorCode?: int32;
  errorMessage?: string;
  /** HTTPステータス相当のアプリケーション定義コード */
  responseCode?: int32;
}

model DvmDistributeClassResponse extends DvmResultBase {}

model DvmGetDistributeStatusResponse extends DvmResultBase {
  statusList?: unknown[];
}

model DvmPostCrashLogsResultData {
  logId?: string;
  requestDate?: string;
}

model DvmPostCrashLogsResponse extends DvmResultBase {
  result?: DvmPostCrashLogsResultData;
}

interface Distribute {
  /**
   * ノート(1件または複数件)を変換ジョブとして登録し、クラスへ配信する。
   * `multipart/form-data` で以下のパートを送信:
   * - `authInfo`: `DvmAuthInfo` をJSON文字列化したもの
   * - `convertParam`: `DvmConvertParam` をJSON文字列化したもの
   * - `fileEntity` (任意): `DvmUtil.makeDocumentArchiveFile(driveId, docId)` で作成したアーカイブファイル。
   *   配信対象が1件かつアーカイブ生成に失敗した場合はリクエスト自体を送らずnullを返す実装になっている。
   *
   * - 元Javaメソッド: `DvmCloudService.executeDistributeClassWithParams` /
   *   `executeDistributeMultipleNotesWithParams`
   * - HTTPメソッド: POST
   * - ベースURL: `{restHost}` (ログイン中テナントのRESTホスト。`CsDCUserInfo.restHost`)
   */
  @post
  @route("convert/DistributeClass")
  op distributeClass(
    @header contentType: "multipart/form-data",
    @multipartBody body: {
      authInfo: HttpPart<string>;
      convertParam: HttpPart<string>;
      fileEntity?: HttpPart<File>;
    }
  ): DvmDistributeClassResponse;

  /**
   * 配信済みジョブのステータス一覧を取得する。
   * リクエストボディ(JSON、`multipart`ではない): `{ "authInfo": DvmAuthInfo, "offset": number, "limit": number }`
   *
   * - 元Javaメソッド: `DvmCloudService.executeGetDistributeStatusWithParams`
   * - HTTPメソッド: POST
   * - ベースURL: `{restHost}`
   */
  @post
  @route("convert/GetDistributeStatus")
  op getDistributeStatus(
    @body body: {
      authInfo: DvmAuthInfo;
      offset: int32;
      limit: int32;
    }
  ): DvmGetDistributeStatusResponse;

  /**
   * クラッシュログをアップロードする(`misc.tsp`の`postCrashLogs`とは別系統)。
   * `multipart/form-data`で `userId`/`companyId`/`deviceName`/`productName`/`productVersion`/
   * `locale`/`timezone`/`keyword`(任意)/`uploadMethod`(`"Manual"` または `"Auto"`)/
   * `fileEntity`(ログファイル本体) を送信する。
   *
   * - 元Javaメソッド: `DvmCloudService.executePostCrashLogsWithParams`
   * - HTTPメソッド: POST
   * - ベースURL: `{rootServer}` (ブートストラップ用ルートサーバー。テナント別ホストではない)
   */
  @post
  @route("crashlogs/upload")
  op postCrashLogs(
    @multipartBody body: {
      userId: HttpPart<string>;
      companyId: HttpPart<string>;
      deviceName: HttpPart<string>;
      productName: HttpPart<string>;
      productVersion: HttpPart<string>;
      locale: HttpPart<string>;
      timezone: HttpPart<string>;
      keyword?: HttpPart<string>;
      uploadMethod: HttpPart<"Manual" | "Auto">;
      fileEntity: HttpPart<File>;
    }
  ): DvmPostCrashLogsResponse;
}
