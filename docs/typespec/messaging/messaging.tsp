import "@typespec/http";
import "./common.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// ダイレクトメッセージ (DirectMessages)
// ============================================================

model CsGetDirectMessageParam extends CsRequestBase {}

model CsGetDirectMessageResponse extends CsResponseBase {
  message?: string;
}

model CsDeleteDirectMessageParam extends CsRequestBase {}

model CsDeleteDirectMessageResponse extends CsResponseBase {}

interface DirectMessages {
  /**
   * 自分宛のダイレクトメッセージを取得する。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetDirectMessageWithParams`
   * - HTTPメソッド: GET
   * - パス: `/system2/user/directmessage2/`
   */
  @get
  @route("/system2/user/directmessage2/")
  op getDirectMessage(@body body: CsGetDirectMessageParam): CsGetDirectMessageResponse;

  /**
   * ダイレクトメッセージを削除(既読化)する。
   *
   * - 元Javaメソッド: `CsCloudService.executeDeleteDirectMessageWithParams`
   * - HTTPメソッド: DELETE
   * - パス: `/system2/user/directmessage/`
   */
  @delete
  @route("/system2/user/directmessage/")
  op deleteDirectMessage(@body body: CsDeleteDirectMessageParam): CsDeleteDirectMessageResponse;

}
