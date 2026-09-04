import "@typespec/http";
import "./common.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// ドライブ(共有フォルダ)・共有リンク (Drives)
// ============================================================

model CsCreateDriveParam extends CsRequestBase {
  driveName?: string;
}

model CsCreateDriveResponse extends CsResponseBase {
  driveId?: string;
}

model CsDeleteDriveParam extends CsRequestBase {
  driveId?: string;
}

model CsDeleteDriveResponse extends CsResponseBase {}

model CsRenameDriveParam extends CsRequestBase {
  driveId?: string;
  driveName?: string;
}

model CsRenameDriveResponse extends CsResponseBase {}

model CsGetDriveHomeParam extends CsRequestBase {
  driveId?: string;
}

model CsGetDriveHomeResponse extends CsResponseBase {
  homeDir?: string;
  maintenanceText?: string;
}

model CsGetPrivateDriveHomeParam extends CsRequestBase {}

model CsGetPrivateDriveHomeResponse extends CsResponseBase {
  driveId?: string;
  homeDir?: string;
  maintenanceText?: string;
  userId?: string;
}

model CsGetDriveEntryParam extends CsRequestBase {}

model CsGetDriveEntryResponse extends CsResponseBase {
  list?: Record<unknown>[];
  uid?: string;
}

model CsGetDriveEntryInfoParam extends CsRequestBase {}

model CsGetDriveEntryInfoResponse extends CsResponseBase {
  list?: Record<unknown>[];
  uid?: string;
  urimap?: Record<unknown>;
}

model CsUpdateEntryHiddenParam extends CsRequestBase {
  entryList?: Record<unknown>[];
}

model CsUpdateEntryHiddenResponse extends CsResponseBase {}

model CsGetDriveMemberListParam extends CsRequestBase {
  driveId?: string;
  isClassMember?: boolean;
  isGet?: boolean;
}

model CsGetDriveMemberListResponse extends CsResponseBase {
  list?: Record<unknown>[];
}

model CsInviteToDriveParam extends CsRequestBase {
  driveId?: string;
  emailList?: Record<unknown>[];
  message?: string;
  userIdList?: Record<unknown>[];
}

model CsInviteToDriveResponse extends CsResponseBase {
  isAlreadyMember?: boolean;
}

model CsReInviteToDriveParam extends CsRequestBase {
  driveId?: string;
  message?: string;
}

model CsReInviteToDriveResponse extends CsResponseBase {}

model CsExcludeMemberFromDriveParam extends CsRequestBase {
  driveId?: string;
  userList?: Record<unknown>[];
}

model CsExcludeMemberFromDriveResponse extends CsResponseBase {}

model CsDeleteMemberToDriveParam extends CsRequestBase {
  driveId?: string;
}

model CsDeleteMemberToDriveResponse extends CsResponseBase {}

model CsUpdateMemberTypeParams extends CsRequestBase {
  driveId?: string;
  userList?: Record<unknown>[];
}

model CsUpdateMemberTypeResponse extends CsResponseBase {}

model CsGetStorageUsageParam extends CsRequestBase {}

model CsGetStorageUsageResponse extends CsResponseBase {
  amountUsage?: string;
}

model CsCreateLinkParam extends CsRequestBase {
  docId?: string;
  driveId?: string;
  pageId?: string;
}

model CsCreateLinkResponse extends CsResponseBase {
  uri?: string;
}

model CsReverseLinkParam extends CsRequestBase {
  uri?: string;
}

model CsReverseLinkResponse extends CsResponseBase {
  docId?: string;
  driveId?: string;
  pageId?: string;
}

interface Drives {
  /**
   * 新しいドライブ(共有フォルダ)を作成する。
   *
   * - 元Javaメソッド: `CsCloudService.executeCreateDriveWithParams`
   * - HTTPメソッド: POST
   * - パス: `/drives/create`
   */
  @post
  @route("/drives/create")
  op createDrive(@body body: CsCreateDriveParam): CsCreateDriveResponse;

  /**
   * ドライブを削除する。
   *
   * - 元Javaメソッド: `CsCloudService.executeDeleteDriveWithParams`
   * - HTTPメソッド: DELETE
   * - パス: `/drives/{driveId}/data`
   */
  @delete
  @route("/drives/{driveId}/data")
  op deleteDrive(@path driveId: string, @body body: CsDeleteDriveParam): CsDeleteDriveResponse;

  /**
   * ドライブ名を変更する。
   *
   * - 元Javaメソッド: `CsCloudService.executeRenameDriveWithParams`
   * - HTTPメソッド: POST
   * - パス: `/drives/renamedrive`
   */
  @post
  @route("/drives/renamedrive")
  op renameDrive(@body body: CsRenameDriveParam): CsRenameDriveResponse;

  /**
   * 指定ドライブのホーム(ルート階層のエントリ一覧)を取得する。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetDriveHomeWithParams`
   * - HTTPメソッド: GET
   * - パス: `/drives/{driveId}/home`
   */
  @get
  @route("/drives/{driveId}/home")
  op getDriveHome(@path driveId: string, @body body: CsGetDriveHomeParam): CsGetDriveHomeResponse;

  /**
   * ログインユーザー個人のプライベートドライブのホームを取得する。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetPrivateDriveHomeWithParams`
   * - HTTPメソッド: GET
   * - パス: `/v3/users/login/home`
   */
  @get
  @route("/v3/users/login/home")
  op getPrivateDriveHome(@body body: CsGetPrivateDriveHomeParam): CsGetPrivateDriveHomeResponse;

  /**
   * ドライブ内の指定フォルダのエントリ一覧を取得する。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetDriveEntryWithParams`
   * - HTTPメソッド: GET
   * - パス: `/drives/entry`
   */
  @get
  @route("/drives/entry")
  op getDriveEntry(@body body: CsGetDriveEntryParam): CsGetDriveEntryResponse;

  /**
   * ドライブ内エントリ(ファイル/フォルダ)の詳細情報を取得する。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetDriveEntryInfoWithParams`
   * - HTTPメソッド: GET
   * - パス: `/drives/entryinfo`
   */
  @get
  @route("/drives/entryinfo")
  op getDriveEntryInfo(@body body: CsGetDriveEntryInfoParam): CsGetDriveEntryInfoResponse;

  /**
   * エントリの表示/非表示状態を更新する。
   *
   * - 元Javaメソッド: `CsCloudService.executeUpdateEntryHiddenWithParams`
   * - HTTPメソッド: POST
   * - パス: `/drives/entryhidden`
   */
  @post
  @route("/drives/entryhidden")
  op updateEntryHidden(@body body: CsUpdateEntryHiddenParam): CsUpdateEntryHiddenResponse;

  /**
   * ドライブのメンバー一覧を取得する。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetDriveMemberListWithParams`
   * - HTTPメソッド: GET
   * - パス: `/drives/{driveId}/allmembers2`
   */
  @get
  @route("/drives/{driveId}/allmembers2")
  op getDriveMemberList(@path driveId: string, @body body: CsGetDriveMemberListParam): CsGetDriveMemberListResponse;

  /**
   * メールアドレスまたはユーザーIDを指定してドライブへメンバーを招待する。
   *
   * - 元Javaメソッド: `CsCloudService.executeInviteToDriveWithParam`
   * - HTTPメソッド: POST
   * - パス: `/drives/{driveId}/invite2`
   */
  @post
  @route("/drives/{driveId}/invite2")
  op inviteToDrive(@path driveId: string, @body body: CsInviteToDriveParam): CsInviteToDriveResponse;

  /**
   * 未承諾の招待を再送する。
   *
   * - 元Javaメソッド: `CsCloudService.executeReInviteToDriveWithParam`
   * - HTTPメソッド: POST
   * - パス: `/drives/{driveId}/reinvite`
   */
  @post
  @route("/drives/{driveId}/reinvite")
  op reInviteToDrive(@path driveId: string, @body body: CsReInviteToDriveParam): CsReInviteToDriveResponse;

  /**
   * 指定メンバーをドライブから除外する(管理者操作)。
   *
   * - 元Javaメソッド: `CsCloudService.executeExcludeMemberFromDriveWithParams`
   * - HTTPメソッド: POST
   * - パス: `/drives/{driveId}/members/users`
   */
  @post
  @route("/drives/{driveId}/members/users")
  op excludeMemberFromDrive(@path driveId: string, @body body: CsExcludeMemberFromDriveParam): CsExcludeMemberFromDriveResponse;

  /**
   * 自分自身をドライブのメンバーから外す(退出)。
   *
   * - 元Javaメソッド: `CsCloudService.executeUnreferenceDriveWithParams`
   * - HTTPメソッド: DELETE
   * - パス: `/drives/{driveId}/members/own`
   */
  @delete
  @route("/drives/{driveId}/members/own")
  op unreferenceDrive(@path driveId: string, @body body: CsDeleteMemberToDriveParam): CsDeleteMemberToDriveResponse;

  /**
   * ドライブメンバーの権限種別(オーナー/編集者等)を変更する。
   *
   * - 元Javaメソッド: `CsCloudService.executeUpdateMemberTypeWithParams`
   * - HTTPメソッド: POST
   * - パス: `/drives/{driveId}/members/type`
   */
  @post
  @route("/drives/{driveId}/members/type")
  op updateMemberType(@path driveId: string, @body body: CsUpdateMemberTypeParams): CsUpdateMemberTypeResponse;

  /**
   * 契約ストレージの使用量を再計算・取得する。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetStorageUsageWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users2/recalc`
   */
  @post
  @route("/users2/recalc")
  op getStorageUsage(@body body: CsGetStorageUsageParam): CsGetStorageUsageResponse;

  /**
   * ドキュメント/ページの共有リンクを発行する。
   *
   * - 元Javaメソッド: `CsCloudService.executeCreateLinkWithParams`
   * - HTTPメソッド: POST
   * - パス: `/link/create`
   */
  @post
  @route("/link/create")
  op createLink(@body body: CsCreateLinkParam): CsCreateLinkResponse;

  /**
   * 共有リンクを無効化する。
   *
   * - 元Javaメソッド: `CsCloudService.executeReverseLinkWithParams`
   * - HTTPメソッド: POST
   * - パス: `/link/reverse`
   */
  @post
  @route("/link/reverse")
  op reverseLink(@body body: CsReverseLinkParam): CsReverseLinkResponse;

}
