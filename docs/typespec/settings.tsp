import "@typespec/http";
import "./common.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// クライアント設定同期 (ClientSettings)
// ============================================================

model CsGetClientSettingsParam extends CsRequestBase {
  key?: string[];
}

model CsGetClientSettingsResponse extends CsResponseBase {
  keyValue?: Record<unknown>;
}

model CsSetClientSettingsParam extends CsRequestBase {
  keyValue?: Record<unknown>;
}

model CsSetClientSettingsResponse extends CsResponseBase {}

model CsGetClientFileParam extends CsRequestBase {
  key?: string;
}

model CsGetClientFileResponse extends CsResponseBase {
  url?: string;
}

model CsSetClientFileParam extends CsRequestBase {
  key?: string;
  url?: string;
}

model CsSetClientFileResponse extends CsResponseBase {}

interface ClientSettings {
  /**
   * サーバーに保存されたクライアント設定(キー・バリュー)を取得する。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetClientSettingsWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users2/login/getclientsettings`
   */
  @post
  @route("/users2/login/getclientsettings")
  op getClientSettings(@body body: CsGetClientSettingsParam): CsGetClientSettingsResponse;

  /**
   * クライアント設定(キー・バリュー)をサーバーへ保存する。
   *
   * - 元Javaメソッド: `CsCloudService.executeSetClientSettingsWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users2/login/setclientsettings`
   */
  @post
  @route("/users2/login/setclientsettings")
  op setClientSettings(@body body: CsSetClientSettingsParam): CsSetClientSettingsResponse;

  /**
   * サーバーに保存された設定ファイル(バイナリ)を取得する。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetClientFileWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users2/login/getclientfile`
   */
  @post
  @route("/users2/login/getclientfile")
  op getClientFile(@body body: CsGetClientFileParam): CsGetClientFileResponse;

  /**
   * 設定ファイル(バイナリ)をサーバーへ保存する。
   *
   * - 元Javaメソッド: `CsCloudService.executeSetClientFileWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users2/login/setclientfile`
   */
  @post
  @route("/users2/login/setclientfile")
  op setClientFile(@body body: CsSetClientFileParam): CsSetClientFileResponse;

}
