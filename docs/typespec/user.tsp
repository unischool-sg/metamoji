import "@typespec/http";
import "./common.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// ユーザー・組織情報 (Users)
// ============================================================

model CsGetUserInfoParam extends CsRequestBase {}

model CsGetUserInfoResponse extends CsResponseBase {
  appAuthKey?: string;
  email?: string;
  homeDir?: string;
  isAdmin?: boolean;
  key?: float64;
  locale?: string;
  name?: string;
  timezone?: string;
  userId?: string;
}

model CsUpdateUserInfoParam extends CsRequestBase {
  updateLocale?: string;
  updateTimezone?: string;
}

model CsUpdateUserInfoResponse extends CsResponseBase {}

model CsGetUserAndSystemInfoParam extends CsRequestBase {}

/**
 * `getUserAndSystemInfo` レスポンスの `systemInfo` に埋め込まれるシステム情報。
 * (元クラス名は `CsGetUserAndSystemInfoResopnse` - Java側のスペルミスをそのまま踏襲)
 */
model CsGetUserAndSystemInfoResopnse extends CsResponseBase {
  currentGroupId?: string;
  dcplan?: string;
  hasCRLicense?: boolean;
  licenseInfo?: Record<unknown>;
  readOnlyUser?: boolean;
  serverTime?: float64;
  serviceSettings?: Record<unknown>;
  userActionInfo?: Record<unknown>;
  userTransfer?: string;
  userUsageDiskSpace?: string;
}

model CsGetUserAndSystemInfo2Response extends CsResponseBase {
  systemInfo?: CsGetUserAndSystemInfoResopnse;
  userInfo?: CsGetUserInfoResponse;
}

model CsGetAllUsersParam extends CsRequestBase {
  group?: string;
  groupId?: string;
}

model CsGetAllUsersResponse extends CsResponseBase {
  users?: Record<unknown>[];
}

model CsGetAllGroupsParam extends CsRequestBase {}

model CsGetAllGroupsResponse extends CsResponseBase {
  groups?: Record<unknown>[];
}

model CsGetUserNamesParam extends CsRequestBase {
  userIds?: string[];
}

model CsGetUserNamesResponse extends CsResponseBase {
  users?: Record<unknown>[];
}

interface Users {
  /**
   * ログイン中ユーザーのプロフィール情報を取得する。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetUserInfoWithParams`
   * - HTTPメソッド: GET
   * - パス: `/users2/login/user`
   */
  @get
  @route("/users2/login/user")
  op getUserInfo(@body body: CsGetUserInfoParam): CsGetUserInfoResponse;

  /**
   * ログイン中ユーザーのプロフィール情報を更新する。
   *
   * - 元Javaメソッド: `CsCloudService.executeUpdateUserInfoWithParams`
   * - HTTPメソッド: PUT
   * - パス: `/users2/login/user`
   */
  @put
  @route("/users2/login/user")
  op updateUserInfo(@body body: CsUpdateUserInfoParam): CsUpdateUserInfoResponse;

  /**
   * ユーザー情報とシステム情報(ライセンス・サービス設定等)をまとめて取得する。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetUserAndSystemInfo2WithParams`
   * - HTTPメソッド: GET
   * - パス: `/system2/user2`
   */
  @get
  @route("/system2/user2")
  op getUserAndSystemInfo(@body body: CsGetUserAndSystemInfoParam): CsGetUserAndSystemInfo2Response;

  /**
   * 組織(会社)配下の全ユーザー一覧を取得する。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetAllUsersWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users3/getallusers`
   */
  @post
  @route("/users3/getallusers")
  op getAllUsers(@body body: CsGetAllUsersParam): CsGetAllUsersResponse;

  /**
   * 組織配下の全グループ一覧を取得する。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetAllGroupsWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users3/getallgroups`
   */
  @post
  @route("/users3/getallgroups")
  op getAllGroups(@body body: CsGetAllGroupsParam): CsGetAllGroupsResponse;

  /**
   * ユーザーIDの配列から表示名をまとめて解決する。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetUserNamesWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users3/login/company/usernames`
   */
  @post
  @route("/users3/login/company/usernames")
  op getUserNames(@body body: CsGetUserNamesParam): CsGetUserNamesResponse;

}
