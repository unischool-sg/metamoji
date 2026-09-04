import "@typespec/http";
import "../common.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// 認証・アカウント管理 (Auth)
// ============================================================

model CsLoginParam extends CsRequestBase {
  coLoginId?: string;
  email?: string;
  loginName?: string;
  password?: string;
  qwd?: string;
  serverDeviceId?: string;
  userId?: string;
}

model CsLoginResponse extends CsResponseBase {
  coLoginId?: string;
  companyId?: string;
  companyName?: string;
  companyVersion?: int32;
  email?: string;
  isClassRoom?: boolean;
  isOnPremise?: boolean;
  loginName?: string;
  maintCheckURL?: string;
  name?: string;
  qwd?: string;
  restHost?: string;
  serverDeviceId?: string;
  serverVersion?: float64;
  userId?: string;
}

model CsClassRoomLoginParam extends CsRequestBase {
  classGroupId?: string;
  coLoginId?: string;
  idNumber?: string;
  password?: string;
}

model CsGetClassRoomLoginInfoParam extends CsRequestBase {
  coLoginId?: string;
}

model CsGetClassRoomLoginInfoResponse extends CsResponseBase {
  allList?: Record<unknown>;
}

model CsLogoutParam extends CsRequestBase {}

model CsLogoutResponse extends CsResponseBase {}

model CsRegisterParam extends CsRequestBase {
  coLoginId?: string;
  companyId?: string;
  email?: string;
  loginName?: string;
  name?: string;
  passcode?: string;
  password?: string;
}

model CsRegisterResponse extends CsResponseBase {
  email?: string;
  locale?: string;
  name?: string;
  password?: string;
  timezone?: string;
  uuid?: string;
}

model CsWithdrawParam extends CsRequestBase {
  password?: string;
}

model CsWithdrawResponse extends CsResponseBase {}

model CsChangePasswordParam extends CsRequestBase {
  passwordNew?: string;
  passwordOld?: string;
}

model CsChangePasswordResponse extends CsResponseBase {}

model CsResetPasswordParam extends CsRequestBase {
  email?: string;
  userId?: string;
}

model CsResetPasswordResponse extends CsResponseBase {}

model CsLockUserParam extends CsRequestBase {
  isRecover?: int32;
  lockToken?: string;
}

model CsLockUserResponse extends CsResponseBase {
  needRecovery?: boolean;
}

model CsUnlockUserParam extends CsRequestBase {
  lockToken?: string;
}

model CsUnlockUserResponse extends CsResponseBase {}

model CsAgreeEulaParam extends CsRequestBase {
  eulaAgreeVersion?: int32;
}

model CsAgreeEulaResponse extends CsResponseBase {}

model CsGetCredentialParam extends CsRequestBase {
  param1?: string;
  param2?: string;
  param3?: string;
}

model CsGetCredentialResponse extends CsResponseBase {
  loginInfo?: CsLoginInfo;
}

@tag("認証・アカウント管理")
interface Auth {
  /**
   * ユーザーID/メールアドレスとパスワードでログインする。
   *
   * - 元Javaメソッド: `CsCloudService.executeLoginWithParam`
   * - HTTPメソッド: POST
   * - パス: `/users3/login`
   */
  @post
  @route("/users3/login")
  op login(@body body: CsLoginParam): CsLoginResponse;

  /**
   * クラスコード等を用いてClassRoom(児童生徒用の簡易アカウント)としてログインする。
   *
   * - 元Javaメソッド: `CsCloudService.executeClassRoomLoginWithParam`
   * - HTTPメソッド: POST
   * - パス: `/users3/classroomlogin`
   */
  @post
  @route("/users3/classroomlogin")
  op classRoomLogin(@body body: CsClassRoomLoginParam): CsLoginResponse;

  /**
   * ClassRoomログイン画面の初期情報(学校/クラス一覧等)を取得する。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetClassRoomLoginInfoWithParam`
   * - HTTPメソッド: POST
   * - パス: `/users3/getclassroominfo`
   */
  @post
  @route("/users3/getclassroominfo")
  op getClassRoomLoginInfo(@body body: CsGetClassRoomLoginInfoParam): CsGetClassRoomLoginInfoResponse;

  /**
   * ログアウトし、サーバー側のセッションを破棄する。
   *
   * - 元Javaメソッド: `CsCloudService.executeLogoutWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users3/logout`
   */
  @post
  @route("/users3/logout")
  op logout(@body body: CsLogoutParam): CsLogoutResponse;

  /**
   * 新規ユーザーアカウントを登録する。
   *
   * - 元Javaメソッド: `CsCloudService.executeRegisterWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users2/register`
   */
  @post
  @route("/users2/register")
  op register(@body body: CsRegisterParam): CsRegisterResponse;

  /**
   * アカウントを退会(削除)する。
   *
   * - 元Javaメソッド: `CsCloudService.executeWithdrawWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users2/withdraw/`
   */
  @post
  @route("/users2/withdraw/")
  op withdraw(@body body: CsWithdrawParam): CsWithdrawResponse;

  /**
   * ログイン中ユーザーのパスワードを変更する。
   *
   * - 元Javaメソッド: `CsCloudService.executeChangePasswordWithParams`
   * - HTTPメソッド: PUT
   * - パス: `/users2/change/password`
   */
  @put
  @route("/users2/change/password")
  op changePassword(@body body: CsChangePasswordParam): CsChangePasswordResponse;

  /**
   * パスワード再発行(リセットメール送信等)を要求する。
   *
   * - 元Javaメソッド: `CsCloudService.executeResetPasswordWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users2/reissue/password`
   */
  @post
  @route("/users2/reissue/password")
  op resetPassword(@body body: CsResetPasswordParam): CsResetPasswordResponse;

  /**
   * 指定ユーザーをロックする(管理者操作)。
   *
   * - 元Javaメソッド: `CsCloudService.executeLockUserWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users2/lock`
   */
  @post
  @route("/users2/lock")
  op lockUser(@body body: CsLockUserParam): CsLockUserResponse;

  /**
   * 指定ユーザーのロックを解除する(管理者操作)。
   *
   * - 元Javaメソッド: `CsCloudService.executeUnlockUserWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users2/unlock`
   */
  @post
  @route("/users2/unlock")
  op unlockUser(@body body: CsUnlockUserParam): CsUnlockUserResponse;

  /**
   * 利用規約(EULA)への同意を送信する。
   *
   * - 元Javaメソッド: `CsCloudService.executeAgreeEULAWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users2/eula/agree`
   */
  @post
  @route("/users2/eula/agree")
  op agreeEula(@body body: CsAgreeEulaParam): CsAgreeEulaResponse;

  /**
   * シングルサインオン(SSO)用の一時クレデンシャルを取得する。ルートサーバー直下の `/sso/requestcredential` を叩く点が他APIと異なる。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetCredentialWithParams`
   * - HTTPメソッド: POST
   * - パス: `/sso/requestcredential`
   */
  @post
  @route("/sso/requestcredential")
  op getCredential(@body body: CsGetCredentialParam): CsGetCredentialResponse;

}
