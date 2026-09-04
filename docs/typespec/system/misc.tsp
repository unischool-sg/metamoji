import "@typespec/http";
import "../common.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// その他(メンテナンス・ログ) (Misc)
// ============================================================

model CsGetMaintenanceInfoParam extends CsRequestBase {}

model CsGetMaintenanceInfoResponse extends CsResponseBase {}

model CsAddApiLogParam extends CsRequestBase {
  logList?: unknown[];
}

model CsAddApiLogResponse extends CsResponseBase {}

model CsPostCrashLogsParam extends CsRequestBase {
  companyId?: string;
  fileEntity?: string;
  keyword?: string;
  userId?: string;
}

model CsPostCrashLogsResponse extends CsResponseBase {}

@tag("メンテナンス・ログ")
interface Misc {
  /**
   * メンテナンス情報ファイルを取得する。
   *
   * 他のAPIと異なり `restBasePath` (ログイン後のテナント別ホスト) ではなく、
   * ルートサーバー (`https://mps.metamoji.com/`、または `CsDCUserInfo.maintenanceCheckURL`
   * が設定されていればそちらのURL) 直下の静的テキストファイルを取得する。
   * リクエストボディはJSONとして付与されるが、レスポンスはJSONではなくテキストである点に注意。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetMaitenanceInfoWitParams`
   * - HTTPメソッド: GET
   * - パス (ルートサーバー基準): `/maintenance2_common.txt`
   */
  @get
  @route("/maintenance2_common.txt")
  op getMaintenanceInfo(@body body: CsGetMaintenanceInfoParam): CsGetMaintenanceInfoResponse;

  /**
   * クライアント操作ログをまとめてサーバーへ送信する。
   *
   * - 元Javaメソッド: `CsCloudService.executeAddApiLogWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users3/apilog/register`
   */
  @post
  @route("/users3/apilog/register")
  op addApiLog(@body body: CsAddApiLogParam): CsAddApiLogResponse;

  /**
   * クラッシュログをアップロードする。ルートサーバー直下の `mpsroot/crashlog/upload` を叩く。実装上のHTTPメソッドはGETになっている(クラッシュログ本体はJSONパラメータとして送信)。
   *
   * - 元Javaメソッド: `CsCloudService.executePostCrashLogsWithParams`
   * - HTTPメソッド: GET
   * - パス: `/mpsroot/crashlog/upload`
   */
  @get
  @route("/mpsroot/crashlog/upload")
  op postCrashLogs(@body body: CsPostCrashLogsParam): CsPostCrashLogsResponse;

}
