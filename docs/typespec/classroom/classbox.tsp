import "@typespec/http";
import "../common.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// クラスボックス(オンライン授業ルーム) (ClassBoxes)
// ============================================================

model CsCreateClassBoxParam extends CsRequestBase {
  groupName?: string;
}

model CsCreateClassBoxResponse extends CsResponseBase {
  driveId?: string;
  groupId?: string;
}

model CsJoinClassBoxParam extends CsRequestBase {
  joinCode?: string;
}

model CsJoinClassBoxResponse extends CsResponseBase {
  driveId?: string;
}

model CsUpdateClassBoxParam extends CsRequestBase {
  driveId?: string;
  joinEnabled?: CsClassBoxJoinStatus;
  name?: string;
}

model CsUpdateClassBoxResponse extends CsResponseBase {}

model CsGetClassCodeParam extends CsRequestBase {
  driveId?: string;
  updateJoinCode?: boolean;
}

model CsGetClassCodeResponse extends CsResponseBase {
  joinCode?: string;
  joinEnabled?: boolean;
}

@tag("クラスボックス")
interface ClassBoxes {
  /**
   * 新しいクラスボックス(オンライン授業ルーム)を作成する。
   *
   * - 元Javaメソッド: `CsCloudService.executeCreateClassBoxWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users3/crbox/create`
   */
  @post
  @route("/users3/crbox/create")
  op createClassBox(@body body: CsCreateClassBoxParam): CsCreateClassBoxResponse;

  /**
   * 参加コードでクラスボックスに参加する。
   *
   * - 元Javaメソッド: `CsCloudService.executeJoinClassBoxWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users3/crbox/join`
   */
  @post
  @route("/users3/crbox/join")
  op joinClassBox(@body body: CsJoinClassBoxParam): CsJoinClassBoxResponse;

  /**
   * クラスボックスの名称や参加可否設定を更新する。
   *
   * - 元Javaメソッド: `CsCloudService.executeUpdateClassBoxInfoWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users3/crbox/update`
   */
  @post
  @route("/users3/crbox/update")
  op updateClassBoxInfo(@body body: CsUpdateClassBoxParam): CsUpdateClassBoxResponse;

  /**
   * クラスボックスへの参加コードを取得する。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetClassCodeWithParams`
   * - HTTPメソッド: POST
   * - パス: `/users3/crbox/get/joincode`
   */
  @post
  @route("/users3/crbox/get/joincode")
  op getClassCode(@body body: CsGetClassCodeParam): CsGetClassCodeResponse;

}
