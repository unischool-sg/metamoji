import "@typespec/http";
import "../common.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// リアルタイム授業ルーム共有 (NsCollabo / com.metamoji.ns.service)
// ============================================================
//
// `com.metamoji.ns.service.NsCollaboURLConnection` とそのサブクラス群
// (apk/smali_classes3/com/metamoji/ns/service/NsCollaboURLConnectionFor*.smali)。
// アプリ名"ClassShare"の由来となる、教員・生徒が同時参加する「授業ルーム」のリアルタイム共有機能。
// ルームの作成・ログイン・ロール(発表者/発言者/参加者)管理・設定同期・ギャラリー投稿を担う。
// (ルーム内のリアルタイム操作同期そのものは、本ファイルの対象外である別プロトコル
// `com.metamoji.ns.socket.NsCollaboSocket` の生ソケット通信で行われる。
// 詳細は [collabo-socket-protocol.md](./collabo-socket-protocol.md) を参照)
//
// **ベースURL**: `CsCloudService`と同じ `ModelInfo$BuildOptions.DIGITAL_CABINET_URL_BASE()`
// (通常本番では`https://mps.metamoji.com/`相当。評価版ビルドでは`CsCloudServiceContext.dcServerURL()`
// または開発者設定`DevEditItServer`で上書き可能)。
//
// **通信方式**: すべて`POST` + `multipart/form-data`。各パートは主に`application/json`の
// RequestBodyとして追加される(`addFormDataPart(name, null, jsonRequestBody)`)。
// ほとんどのコマンドは`authInfo`パートに下記`NsAuthInfo`相当のJSONを含めるが、
// `getMemberList`のように認証情報を含まない(セッションCookieに依存すると見られる)ものもある。

/**
 * デバイス/ユーザー認証情報 (`NsCollaboURLConnection.createAuthInfoParam`が生成)。
 * `password`指定時は`authType`不問で`userPassword`キー、`qwd`指定時は`qwd`キーを使う
 * (どちらか一方のみ含まれる)。ゲストログイン時は`authType: "guest"`となり
 * `userID`/パスワード系フィールドを含まない簡略版になる(`createUniqueId`参照)。
 */
model NsAuthInfo {
  deviceID: string;
  deviceCode: string;
  /** `"cabinet"` (ログイン済みユーザー) または `"guest"` */
  authType: "cabinet" | "guest";
  userID?: string;
  userPassword?: string;
  qwd?: string;
  /** 固定値 `"Android-Share-G-ClassRoom"` */
  productName: string;
  productVersion: string;
  locale: string;
  companyID?: string;
}

/** ルーム内ロールごとの権限。値は`FREE`(操作可)/`READONLY`(閲覧のみ)。 */
model NsRoomRolePermissions {
  presenter?: "FREE" | "READONLY";
  speaker?: "FREE" | "READONLY";
  visitor?: "FREE" | "READONLY";
}

/**
 * ルーム情報 (`roomInfo`パートのJSON)。`createRoom`/`updateRoomInfo`/`updateRoomMode`/
 * `updateRoomTitleDate`で共用される構造で、コマンドにより使用フィールドは異なる
 * (全フィールド任意として記載)。
 */
model NsRoomInfo {
  ownerID?: string;
  title?: string;
  /** `casual` / `formal` / `limited` */
  roomType?: "casual" | "formal" | "limited";
  secureRoom?: string;
  secureRoomPassword?: string;
  roomPassword2?: string;
  role?: NsRoomRolePermissions;
  /** epoch millisecondsと推測 (未確認) */
  openDate?: int64;
}

@tag("授業ルーム共有 (リアルタイム)")
interface Collabo {
  /**
   * 新しい授業ルームを作成する。
   *
   * multipartパート: `authInfo` (`NsAuthInfo`), `roomInfo` (`NsRoomInfo`)。
   *
   * - 元Javaクラス: `NsCollaboURLConnectionForCreateRoom`
   * - パス: `cosmos/CreateRoom`
   */
  @post
  @route("cosmos/CreateRoom")
  op createRoom(
    @multipartBody body: {
      authInfo: HttpPart<NsAuthInfo>;
      roomInfo: HttpPart<NsRoomInfo>;
    }
  ): Record<unknown>;

  /**
   * ルームに(会員として)ログインする。パスワード付きルーム/秘匿ルームにも対応。
   *
   * multipartパート: `authInfo` (`NsAuthInfo`、ゲストの場合は`authType: "guest"`の簡略版),
   * `roomID`, `roomPassword2`(任意), `secureRoomPassword`(任意), `localIp`。
   *
   * - 元Javaクラス: `NsCollaboURLConnectionForLoginRoom`
   * - パス: `cosmos/LoginRoom`
   */
  @post
  @route("cosmos/LoginRoom")
  op loginRoom(
    @multipartBody body: {
      authInfo: HttpPart<NsAuthInfo>;
      roomID: HttpPart<string>;
      roomPassword2?: HttpPart<string>;
      secureRoomPassword?: HttpPart<string>;
      localIp: HttpPart<string>;
    }
  ): Record<unknown>;

  /**
   * ゲスト用の一意ID(ログイン不要の参加者向け)を発行する。
   *
   * multipartパート: `authInfo` (簡略版、`{deviceCode, authType:"guest", productName, productVersion, locale}`)。
   *
   * - 元Javaクラス: `NsCollaboURLConnectionForCreateUniqueID`
   * - パス: `cosmos/CreateUniqueID`
   */
  @post
  @route("cosmos/CreateUniqueID")
  op createUniqueId(
    @multipartBody body: {
      authInfo: HttpPart<{
        deviceCode: string;
        authType: "guest";
        productName: string;
        productVersion: string;
        locale: string;
      }>;
    }
  ): Record<unknown>;

  /**
   * ルームの現在の設定情報を取得する(旧世代`cosmos`系API)。
   *
   * multipartパート: `authInfo`, `roomID`。
   *
   * - 元Javaクラス: `NsCollaboURLConnectionForGetRoomInfo`
   * - パス: `cosmos/GetRoomInfo`
   */
  @post
  @route("cosmos/GetRoomInfo")
  op getRoomInfo(
    @multipartBody body: {
      authInfo: HttpPart<NsAuthInfo>;
      roomID: HttpPart<string>;
    }
  ): Record<unknown>;

  /**
   * ルーム内の指定ユーザーにロール(発表者/発言者/参加者)を付与・剥奪する。
   * `roomID`の他、`addRole`/`delRole`いずれかの操作種別を示すパートが付く
   * (詳細な使い分けは未確認)。
   *
   * multipartパート: `authInfo`, `roomID`, および操作対象ロール情報。
   *
   * - 元Javaクラス: `NsCollaboURLConnectionForModifyRole`
   * - パス: `cosmos/ModifyRole`
   */
  @post
  @route("cosmos/ModifyRole")
  op modifyRole(
    @multipartBody body: {
      authInfo: HttpPart<NsAuthInfo>;
      roomID: HttpPart<string>;
      addRole?: HttpPart<string>;
      delRole?: HttpPart<string>;
    }
  ): Record<unknown>;

  /**
   * ルームの参加メンバー一覧(ロール状況)を取得する。
   * `CsCloudService`型の`authInfo`は付与されず、`memberList`(問い合わせたい`{roomID, userID}`の配列)と
   * `companyID`のみを送る点が他のコマンドと異なる(セッションCookie等での認証を前提としている可能性)。
   *
   * - 元Javaクラス: `NsCollaboURLConnectionForGetMemberList`
   * - パス: `cosmos/GetMemberList`
   */
  @post
  @route("cosmos/GetMemberList")
  op getMemberList(
    @multipartBody body: {
      memberList: HttpPart<{
        memberList: { roomID: string; userID: string }[];
        companyID: string;
      }>;
    }
  ): Record<unknown>;

  /**
   * 中継(リレー)サーバーの接続情報を取得する。ボディなしのPOST。
   *
   * - 元Javaクラス: `NsCollaboURLConnectionForGetServletInfo`
   * - パス: `cosmos/GetServletInfo?companyID={companyId}`
   */
  @post
  @route("cosmos/GetServletInfo")
  op getServletInfo(@query companyID: string): Record<unknown>;

  /**
   * ルームのモード(`FREE`/`READONLY`/`DELETE`)を一括変更する。内部的には`updateRoomInfo`と
   * 同じ`cosmos/UpdateRoomInfo`エンドポイントを叩き、`roomInfo.role`の全ロールに同じ値を設定する。
   *
   * - 元Javaクラス: `NsCollaboURLConnectionForUpdateRoomMode`
   * - パス: `cosmos/UpdateRoomInfo`
   */
  @sharedRoute
  @post
  @route("cosmos/UpdateRoomInfo")
  op updateRoomMode(
    @multipartBody body: {
      authInfo: HttpPart<NsAuthInfo>;
      roomInfo: HttpPart<NsRoomInfo>;
    }
  ): Record<unknown>;

  /**
   * ルーム情報(タイトル・種別・秘匿設定・ロール権限等)を更新する。
   *
   * - 元Javaクラス: `NsCollaboURLConnectionForUpdateRoomInfo`
   * - パス: `cosmos/UpdateRoomInfo`
   */
  @sharedRoute
  @post
  @route("cosmos/UpdateRoomInfo")
  op updateRoomInfo(
    @multipartBody body: {
      authInfo: HttpPart<NsAuthInfo>;
      roomInfo: HttpPart<NsRoomInfo>;
      secureRoomPassword?: HttpPart<string>;
    }
  ): Record<unknown>;

  /**
   * ルームのメンバー役割・設定一覧を取得する(新世代`mmjcloud/ShareView`系API)。
   *
   * - 元Javaクラス: `NsCollaboURLConnectionForCheckRole`
   * - パス: `/mmjcloud/ShareViewGetMyRole`
   */
  @post
  @route("mmjcloud/ShareViewGetMyRole")
  op checkRole(
    @multipartBody body: {
      authInfo: HttpPart<NsAuthInfo>;
      /** 問い合わせたいルームIDの配列 (JSON文字列 `["id1","id2",...]`) */
      roomIdList: HttpPart<string[]>;
    }
  ): Record<unknown>;

  /**
   * ルームのタイトル・開催日時を取得する(`mmjcloud/ShareView`系API)。
   *
   * - 元Javaクラス: `NsCollaboURLConnectionForGetRoomTitleDate`
   * - パス: `/mmjcloud/ShareViewGetRoomInfo`
   */
  @post
  @route("mmjcloud/ShareViewGetRoomInfo")
  op getRoomTitleDate(
    @multipartBody body: {
      authInfo: HttpPart<NsAuthInfo>;
      roomIdList: HttpPart<string[]>;
    }
  ): Record<unknown>;

  /**
   * ルームのタイトル・開催日時を更新する。
   *
   * - 元Javaクラス: `NsCollaboURLConnectionForUpdateRoomTitleDate`
   * - パス: `/mmjcloud/ShareViewSetRoomInfo`
   */
  @post
  @route("mmjcloud/ShareViewSetRoomInfo")
  op updateRoomTitleDate(
    @multipartBody body: {
      authInfo: HttpPart<NsAuthInfo>;
      roomInfo: HttpPart<NsRoomInfo>;
    }
  ): Record<unknown>;

  /**
   * ルームの詳細設定(公開期間・ロール権限等)を取得する。
   *
   * - 元Javaクラス: `NsCollaboURLConnectionForGetRoomSetting`
   * - パス: `/mmjcloud/ShareViewGetRoomSetting`
   */
  @post
  @route("mmjcloud/ShareViewGetRoomSetting")
  op getRoomSetting(
    @multipartBody body: {
      authInfo: HttpPart<NsAuthInfo>;
      roomId: HttpPart<string>;
      /** 固定値 `"#ClassRoom"` */
      key1: HttpPart<string>;
    }
  ): Record<unknown>;

  /**
   * ルームの詳細設定(公開期間・ロール権限等)を更新する。
   *
   * - 元Javaクラス: `NsCollaboURLConnectionForUpdateRoomSetting`
   * - パス: `/mmjcloud/ShareViewSetRoomSetting`
   */
  @post
  @route("mmjcloud/ShareViewSetRoomSetting")
  op updateRoomSetting(
    @multipartBody body: {
      authInfo: HttpPart<NsAuthInfo>;
      /** 更新したい設定項目のリスト (JSON、詳細な要素構造は未確認) */
      roomSettingList: HttpPart<unknown[]>;
    }
  ): Record<unknown>;

  /**
   * 自分がオーナー/参加中のルーム一覧を、条件検索・ソート付きで取得する。
   *
   * - 元Javaクラス: `NsCollaboURLConnectionForGetShareViewList`
   * - パス: `/mmjcloud/ShareViewGetList`
   */
  @post
  @route("mmjcloud/ShareViewGetList")
  op getShareViewList(
    @multipartBody body: {
      authInfo: HttpPart<NsAuthInfo>;
      /** 検索条件 (公開期間の範囲等。詳細未確認) */
      narrowCond?: HttpPart<Record<unknown>>;
      /** 検索対象のドキュメントID一覧 */
      shareDocList?: HttpPart<unknown[]>;
      /** ソート条件 */
      sortCond?: HttpPart<Record<unknown>>;
    }
  ): Record<unknown>;

  /**
   * mmjeditor2(Webブラウザ版エディタ)へのシングルサインオン用トークンを取得する。
   *
   * multipartパート: `email`, `password`, `qwd`, `companyID`, `locale`, `timezone`。
   *
   * - 元Javaクラス: `NsCollaboURLConnectionForToolLogin`
   * - パス: `mmjeditor2/CosmosToolLogin`
   */
  @post
  @route("mmjeditor2/CosmosToolLogin")
  op toolLogin(
    @multipartBody body: {
      email: HttpPart<string>;
      password?: HttpPart<string>;
      qwd?: HttpPart<string>;
      companyID: HttpPart<string>;
      locale: HttpPart<string>;
      timezone: HttpPart<string>;
    }
  ): Record<unknown>;

  /**
   * ルームの「ギャラリー」にノートページ(スナップショット)を投稿する。教員が発表画面をルームの
   * 参加者に配布・記録する機能と見られる。ドキュメント本体とサムネイル画像をマルチパートで送信する
   * 唯一のコマンド。
   *
   * multipartパート: `cmd`(固定値`"post"`), `roomId`, `productName`, `productVersion`,
   * `encryptedHash`, `title`, `text`, `timezone`, `document`
   * (`Content-Type: application/vnd.metamoji.btshare`、ノート形式のバイナリ), `image`
   * (`Content-Type: image/jpeg`、サムネイル)。
   *
   * - 元Javaクラス: `NsCollaboURLConnectionForPostGallery`
   * - パス: `gallery/PostForShareAnytime`
   */
  @post
  @route("gallery/PostForShareAnytime")
  op postGallery(
    @multipartBody body: {
      cmd: HttpPart<"post">;
      roomId: HttpPart<string>;
      productName: HttpPart<string>;
      productVersion: HttpPart<string>;
      encryptedHash: HttpPart<string>;
      title: HttpPart<string>;
      text?: HttpPart<string>;
      timezone: HttpPart<string>;
      document: HttpPart<{
        @header contentType: "application/vnd.metamoji.btshare";
        @body body: bytes;
      }>;
      image: HttpPart<{
        @header contentType: "image/jpeg";
        @body body: bytes;
      }>;
    }
  ): Record<unknown>;
}
