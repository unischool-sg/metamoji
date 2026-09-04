import "@typespec/http";
import "./common.tsp";
import "./collabo.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// ギャラリーメディア(写真・音声添付)API (Media* / com.metamoji.media.service)
// ============================================================
//
// `com.metamoji.media.service` パッケージ(apk/smali_classes3/com/metamoji/media/service/、34ファイル)。
// ノート内に添付する音声録音(および写真)を、旧世代の「ギャラリー」サーバーへ
// アップロード/一覧取得/ステータス確認/タイトル変更/削除/ダウンロードする、`NsCollaboURLConnection`を
// 継承した独立サブシステム。実際の呼び出し元は主に`com.metamoji.media.voice`(音声メモ機能)。
//
// **継承関係**: 抽象基底クラス`MediaURLConnection`
// (apk/smali_classes3/com/metamoji/media/service/MediaURLConnection.smali)は
// [collabo.tsp](./collabo.tsp)で解析済みの`com.metamoji.ns.service.NsCollaboURLConnection`を継承する。
// ただし`NsCollaboURLConnection`が提供する`baseURL()`/`createAuthInfoParam()`はほぼ使われず、
// 各コマンドクラスは独自の`com.metamoji.media.MediaUtil.baseURLForEditIt(String)`でURLを構築し、
// `postRequest(url, body)`/`getRequest(url)`(いずれも基底クラス由来)にフルURLを渡す。
// `baseURLForEditIt`は`baseURL()`と同じ`ModelInfo$BuildOptions.DIGITAL_CABINET_URL_BASE()`を
// 使うが、評価版ビルドでの開発者サーバー上書きキーが`"DevEditItServer"`である点のみ異なる
// (`NsCollaboURLConnection.baseURL()`は`"DevLobbyServer"`)。本番ビルドでは実質同一ホスト
// (`CsCloudService`と同じDigital Cabinetホスト、通常`https://mps.metamoji.com/`相当)。
// `MediaURLConnection`自身が追加するのは、`addFormDataPart`のヘルパー2種
// (`addContent(builder, name, value)` / `addContent(builder, name, File, mimeType)`)と、
// `isForbidden()`(HTTPステータス`403`(0x193)判定)のみ。各`MediaBgTaskForXxx`クラスは
// `isForbidden()`が真を返すとその場で`MediaBgTask.login()`(`gallery/LoginMedia`)を呼んで
// 再ログインしてから1回だけリトライする(`CsCloudService`の`executeWithAutoLoginFor`に相当する
// パターンをコマンドクラスごとに個別実装している)。
//
// **認証方式**: [collabo.tsp](./collabo.tsp)の`NsAuthInfo`(JSON化された1パート)とは異なり、
// 本パッケージはユーザーID・パスワードを個別の`multipart/form-data`パート(または`GET`のクエリ
// パラメータ)としてそのまま平文で送信する。パスワードは`com.metamoji.cs.dc.user.CsDCUserInfo`の
// 状態に応じて`password`または`qwd`のどちらか一方のパート名で送られる
// (`MediaUtil.getLoginPassword`/`getPasswordParamName`が選択。優先順位:
// `loginedQwd` → `loginedPassword` → `qwd` → (`autologin`時のみ)`password`)。
// `productName`は全コマンド共通で固定値`"Android-Share-G-ClassRoom"`。
//
// **メディアの識別子**: メディア1件は「クライアントが生成するUUID的な`clientMediaId`」または
// 「サーバーが払い出す`recordId`」のいずれかで識別される。多くのコマンドで、送信するパート名/
// クエリパラメータ名自体が`isMediaId`という呼び出し側フラグにより`"clientMediaId"`または
// `"recordId"`に切り替わる(値は同じ変数、パート名だけが変わる)。複数件を指定するコマンド
// (`gallery/GetMediaStatus`, `gallery/DeleteMediaFile`, `gallery/SetMediaTitle`)ではさらに、
// `"recordId0"`, `"recordId1"`, ...(または`"clientMediaId0"`, ...)のようにインデックス付きの
// 個別パート/パラメータとして1件ずつ列挙される(TypeSpecの配列表現では正確に再現できないため、
// 各operationのdocコメントで実際のワイヤー表現を注記している)。
//
// **レスポンス形式が2系統ある**: `gallery/GetMediaList` / `gallery/GetMediaStatus`はJSONオブジェクトを
// 返す(`NsCollaboServiceUtil.parseResponseJson`経由、[collabo.tsp](./collabo.tsp)と共通のパーサ)。
// 一方、`gallery/LoginMedia` / `gallery/TentativeRegistMedia` / `gallery/UploadMedia` /
// `gallery/SetMediaTitle` / `gallery/DeleteMediaFile`はJSONではなく、**改行区切り・カンマ区切りの
// プレーンテキスト**を返す旧世代フォーマットである(各`MediaBgTaskForXxx.taskExec()`の文字列パース
// 処理から再構成)。詳細は各operationのdocコメントを参照。
//
// **ファイルダウンロード**: `gallery/GetMediaFile/`はメディア本体のバイナリ(音声ファイル)を
// そのまま返す(JSONではない)。汎用ヘルパー`MediaDownload`(任意のURLに対する単純な`GET`)は
// `gallery/GetMediaFile/`の呼び出しのほか、`TentativeRegistMedia`のレスポンス3行目で返る
// URLに対しても再利用されるが、後者の正体は未確認のため本ファイルでは独立したendpointとして
// 記載していない。

/** `gallery/GetMediaList`の`mediaList`配列要素(`MediaUploadedListDialog$Media.setInfo`の
 * パース処理から再構成。ワイヤー上は`Map<String,String>`)。
 */
model GalleryMediaListItem {
  driveId?: string;
  /** アップロードしたユーザーの表示名 */
  registUserName?: string;
  /** サーバー割当ID。`clientMediaId`との排他は未確認(状況により両方/片方のみ含まれる)。 */
  recordId?: string;
  /** クライアント生成ID。`recordId`との排他は未確認。 */
  clientMediaId?: string;
  /** epochミリ秒を文字列化したもの(`Double.parseDouble`後1000で除算して日時に変換される) */
  createMediaTime?: string;
  /** バイト数を文字列化したもの(`Long.parseLong`される) */
  fileSize?: string;
  /** メディア本体を取得するURL(`gallery/GetMediaFile/`相当、クライアント側で
   * `recordId`/`clientMediaId`から再構築される場合もある) */
  url?: string;
  /** タブ文字(または` [`)区切りで「ノートタイトル\tメディアタイトル」を連結した文字列
   * (`MediaUtil.titleOnMediaServer`が生成、`gallery/TentativeRegistMedia`の`title`パート参照) */
  title?: string;
  ...Record<unknown>;
}

/** `gallery/GetMediaStatus`の`mediaList`配列要素(呼び出し元`VcRecordingsController`が
 * 読み取るキーから再構成。`gallery/GetMediaList`とはフィールド構成が異なる別スキーマ)。
 * ワイヤー上は`Map<String,String>`で、`recordId`/`clientMediaId`など識別用フィールドも
 * 含まれると推測されるが未確認。
 */
model GalleryMediaStatusItem {
  /** メディアの状態。`"normal"`(正常)/`"deleted"`(削除済)/`"clean"`/`"regist"`(登録処理中)/
   * `"uploading"`(アップロード中)/`"uploadError"`(アップロード失敗) */
  status?: "normal" | "deleted" | "clean" | "regist" | "uploading" | "uploadError";
  /** 登録したユーザーのID(ログイン中ユーザーとの一致判定に使われる) */
  registUserId?: string;
  /** アップロード元ファイルの元ファイル名(拡張子付き)。クライアントはこれを拡張子除去して
   * ローカルの録音「チケット」との対応付けに使う(`MediaUploadedListDialog.ticketForMediaData`)。 */
  originalName?: string;
  ...Record<unknown>;
}

/** `gallery/GetMediaList`のレスポンス(JSON)。 */
model GalleryMediaListResult {
  statusCode: int32;
  /** `statusCode`が0以外のときのエラーメッセージ */
  statusMessage?: string;
  mediaList?: GalleryMediaListItem[];
}

/** `gallery/GetMediaStatus`のレスポンス(JSON)。フィールド構成は`GalleryMediaListResult`と
 * 同名だが、`mediaList`要素のスキーマは異なる(`GalleryMediaStatusItem`参照)。
 */
model GalleryMediaStatusResult {
  statusCode: int32;
  statusMessage?: string;
  mediaList?: GalleryMediaStatusItem[];
}

/**
 * `gallery/LoginMedia`のレスポンス。ボディはJSONではなく1行のプレーンテキスト
 * (`"<statusCode>,<未確認のフィールド...>"`形式)。`MediaBgTask.login()`は文字列の1文字目が
 * `'0'`かつ2文字目が`','`であること(=`"0,"`で始まるか)のみを見て成功/失敗を判定しており、
 * カンマ区切り以降のフィールドの意味は未確認。
 */
model GalleryMediaLoginResult {
  @body body: string;
}

/**
 * `gallery/TentativeRegistMedia`のレスポンス。ボディはJSONではなく、改行(`\r\n`/`\r`/`\n`)区切りの
 * プレーンテキストで、`MediaBgTaskForTentativeRegist.taskExec()`は以下のように解釈する。
 * - 応答文字列全体のうち最初のカンマより前の部分を`Integer.parseInt`した値が`statusCode`
 *   (`"0"`始まりが成功、それ以外は`PostGallery_Msg_Failed`扱い)。
 * - 改行分割した2行目(存在すれば): サーバーが払い出した`recordId`。
 * - 改行分割した3行目(存在すれば): `url`(後続処理で`gallery/GetMediaFile/`の代替として
 *   `MediaDownload`に渡されることがあるURLと推測されるが詳細未確認)。
 */
model GalleryMediaTentativeRegistResult {
  statusCode: int32;
  recordId?: string;
  url?: string;
}

/**
 * `gallery/UploadMedia`のレスポンス。ボディはJSONではなく改行区切りのプレーンテキストで、
 * アップロード進捗を表す行が0行以上続いたあと、`"finish"`と完全一致する行が現れ、
 * その次の行(=最終行)が`"<statusCode>,<未確認のフィールド...>"`という形式になっている
 * (`MediaBgTaskForUpload.taskExec()`参照)。`statusCode`が0なら成功。
 */
model GalleryMediaUploadResult {
  statusCode: int32;
}

/**
 * `gallery/SetMediaTitle`のレスポンス。ボディはJSONではなく改行区切りのプレーンテキストで、
 * タイトル更新に成功した対象ごとに1行(`"<recordId または clientMediaId>,<未確認のフィールド...>"`)
 * が出力されたあと、`"finish"`で始まる行が現れ、最後に`"<statusCode>,<未確認のフィールド...>"`
 * という総合ステータス行が続く(`MediaBgTaskForSetMediaTitle.taskExec()`参照)。
 */
model GalleryMediaSetTitleResult {
  /** `"finish"`行より前の各行から、最初のカンマまでの部分を取り出したID一覧
   * (タイトル更新に成功した対象の`recordId`/`clientMediaId`) */
  completedIds?: string[];
  statusCode: int32;
}

/**
 * `gallery/DeleteMediaFile`のレスポンス。ボディはJSONではなく改行区切りのプレーンテキストで、
 * `"finish"`で始まる行より後に現れる各行の、最初のカンマまでの部分を`Integer.parseInt`した値が
 * 最終的な`statusCode`として採用される(該当行が複数ある場合は最後の行の値が優先される、
 * `MediaBgTaskForDelete.taskExec()`参照)。`0`または`899`(0x383)が成功とみなされる。
 */
model GalleryMediaDeleteResult {
  statusCode: int32;
}

/**
 * `gallery/GetMediaFile/`のレスポンス。ボディはJSONではなく、メディア本体(音声ファイル)の
 * バイナリそのもの。呼び出し元はレスポンスの`Content-Type`が`"audio/"`で始まることを確認した
 * うえでローカル一時ファイルへ保存する(`MediaURLConnection`のダウンロードモード、
 * `MediaBgTaskForGetMediaFile`参照)。`audio/`で始まらない場合は無効なレスポンスとして破棄される。
 */
model GalleryMediaFileResult {
  @header contentType?: string;
  @body body: bytes;
}

interface GalleryMedia {
  /**
   * ギャラリーサーバーにユーザー認証情報でログインする(セッションはOkHttpの共有CookieJarに
   * 保持されると見られる)。他のコマンドが`403`を返した際の再ログインにも使われる。
   *
   * multipartパート: `userId`, `password`または`qwd`(いずれか一方), `productName`(固定値
   * `"Android-Share-G-ClassRoom"`), `productVersion`, `timeZone`, `companyID`。
   *
   * - 元Javaクラス: `MediaLogin`
   * - パス: `gallery/LoginMedia`
   */
  @post
  @route("gallery/LoginMedia")
  op login(
    @multipartBody body: {
      userId: HttpPart<string>;
      password?: HttpPart<string>;
      qwd?: HttpPart<string>;
      productName: HttpPart<"Android-Share-G-ClassRoom">;
      productVersion: HttpPart<string>;
      timeZone: HttpPart<string>;
      companyID: HttpPart<string>;
    }
  ): GalleryMediaLoginResult;

  /**
   * ログインユーザーがアップロード済みのメディア一覧を取得する(`GET`、クエリパラメータ形式。
   * ボディはJSON)。他コマンドと異なり`companyID`は送信されない。
   *
   * - 元Javaクラス: `MediaGetList`
   * - パス: `gallery/GetMediaList`
   */
  @get
  @route("gallery/GetMediaList")
  op getMediaList(
    @query userId: string,
    @query productName: "Android-Share-G-ClassRoom",
    @query productVersion: string,
    @query timeZone: string
  ): GalleryMediaListResult;

  /**
   * 指定したメディアID群の状態(正常/削除済/アップロード中等)を取得する(`GET`、クエリ
   * パラメータ形式。ボディはJSON)。
   *
   * クエリ: `userId`, `productName`(固定値), `productVersion`, `timeZone`, `companyID`。
   *
   * @param targetIds 状態を問い合わせたいID一覧。**実際のワイヤー上はこの配列としてではなく、
   * `recordId0`, `recordId1`, ...(`isMediaId`指定時は`clientMediaId0`, `clientMediaId1`, ...)
   * というインデックス付きの個別クエリパラメータとして1件ずつ送信される**
   * (`MediaGetStatus.sendRequest`/`addCgiParam`参照)。
   *
   * - 元Javaクラス: `MediaGetStatus`
   * - パス: `gallery/GetMediaStatus`
   */
  @get
  @route("gallery/GetMediaStatus")
  op getMediaStatus(
    @query userId: string,
    @query productName: "Android-Share-G-ClassRoom",
    @query productVersion: string,
    @query timeZone: string,
    @query targetIds: string[],
    @query companyID: string
  ): GalleryMediaStatusResult;

  /**
   * メディアアップロードの事前登録(仮登録)を行う。成功すると`recordId`(サーバー割当ID)や
   * 後続処理用の`url`が返る。実際のファイル本体は本コマンドの後に`uploadMedia`で送信する
   * (`MediaBgTaskForUpload.taskExec()`が両者を順に呼び出す)。
   *
   * multipartパート: `loginName`(任意、`nickname`から。`MediaTentativeRegist._nickname`),
   * `userId`(任意), `password`または`qwd`(任意・いずれか一方), `ownerType`
   * (`"1"`=`roomId`指定時, `"2"`=`driveId`指定時, `"0"`=いずれも未指定時), `roomId`(任意),
   * `driveId`(任意), `productName`(固定値), `productVersion`, `createMediaTime`
   * (epochミリ秒を`%.0f`でフォーマットした文字列), `timeZone`, `contentType`(ファイル拡張子から
   * 判定したMIMEタイプ), `suffix`(先頭`.`を除いた拡張子), `title`, `clientMediaId`または
   * `recordId`(いずれか一方。`isMediaId`フラグにより切り替わる), `companyID`。
   *
   * - 元Javaクラス: `MediaTentativeRegist`
   * - パス: `gallery/TentativeRegistMedia`
   */
  @post
  @route("gallery/TentativeRegistMedia")
  op tentativeRegistMedia(
    @multipartBody body: {
      loginName?: HttpPart<string>;
      userId?: HttpPart<string>;
      password?: HttpPart<string>;
      qwd?: HttpPart<string>;
      ownerType: HttpPart<"0" | "1" | "2">;
      roomId?: HttpPart<string>;
      driveId?: HttpPart<string>;
      productName: HttpPart<"Android-Share-G-ClassRoom">;
      productVersion: HttpPart<string>;
      createMediaTime: HttpPart<string>;
      timeZone: HttpPart<string>;
      contentType: HttpPart<string>;
      suffix: HttpPart<string>;
      title: HttpPart<string>;
      clientMediaId?: HttpPart<string>;
      recordId?: HttpPart<string>;
      companyID: HttpPart<string>;
    }
  ): GalleryMediaTentativeRegistResult;

  /**
   * メディアファイル本体をアップロードする(`tentativeRegistMedia`の後に呼ぶ)。
   *
   * multipartパート: `userId`, `password`または`qwd`(いずれか一方), `productName`(固定値),
   * `productVersion`, `timeZone`, `clientMediaId`または`recordId`(いずれか一方、
   * `tentativeRegistMedia`と同じ対象ID), `mediaFile`(ファイル本体。パート名内のファイル名は
   * 元ファイルの`File.getName()`、Content-Typeは拡張子から判定したMIMEタイプ), `companyID`。
   *
   * - 元Javaクラス: `MediaUpload`
   * - パス: `gallery/UploadMedia`
   */
  @post
  @route("gallery/UploadMedia")
  op uploadMedia(
    @multipartBody body: {
      userId: HttpPart<string>;
      password?: HttpPart<string>;
      qwd?: HttpPart<string>;
      productName: HttpPart<"Android-Share-G-ClassRoom">;
      productVersion: HttpPart<string>;
      timeZone: HttpPart<string>;
      clientMediaId?: HttpPart<string>;
      recordId?: HttpPart<string>;
      /** アップロードするメディアファイル本体(音声等)。Content-Typeは拡張子から判定した
       * 動的なMIMEタイプ(固定値ではない)。 */
      mediaFile: HttpPart<{
        @header contentType: string;
        @body body: bytes;
      }>;
      companyID: HttpPart<string>;
    }
  ): GalleryMediaUploadResult;

  /**
   * メディア本体(音声ファイル)をダウンロードする(`GET`、クエリパラメータ形式。認証情報は
   * 送信されない — セッションCookieに依存すると見られる)。レスポンスボディはバイナリそのもの。
   *
   * `clientMediaId`/`recordId`のどちらか一方のみを指定する(`MediaGetMediaFile`の静的ヘルパー
   * `urlForGetMediaFileForMediaId`/`urlForGetMediaFileForRecordId`が生成するURLに対応)。
   *
   * - 元Javaクラス: `MediaGetMediaFile`
   * - パス: `gallery/GetMediaFile/`
   */
  @get
  @route("gallery/GetMediaFile/")
  op getMediaFile(
    @query clientMediaId?: string,
    @query recordId?: string
  ): GalleryMediaFileResult;

  /**
   * 1件以上のメディアのタイトルを一括変更する。
   *
   * multipartパート: `loginName`(任意、ユーザーのemailから。`MediaSetMediaTitle`は
   * `MediaTentativeRegist`と異なり`nickname`ではなく`email`を使う点に注意), `userId`(任意),
   * `password`または`qwd`(任意・いずれか一方), `productName`(固定値), `productVersion`,
   * `timeZone`, 対象ID一覧・タイトル一覧, `companyID`。
   *
   * @param targetIds 変更対象のID一覧。**実際のワイヤー上は`recordId0`, `recordId1`, ...
   * (`isMediaId`指定時は`clientMediaId0`, ...)というインデックス付きパートとして送信される。**
   * @param titles `targetIds`と同じ順序・インデックスに対応する新タイトル一覧。**実際のワイヤー
   * 上は`title0`, `title1`, ...というインデックス付きパートとして送信される。**
   *
   * - 元Javaクラス: `MediaSetMediaTitle`
   * - パス: `gallery/SetMediaTitle`
   */
  @post
  @route("gallery/SetMediaTitle")
  op setMediaTitle(
    @multipartBody body: {
      loginName?: HttpPart<string>;
      userId?: HttpPart<string>;
      password?: HttpPart<string>;
      qwd?: HttpPart<string>;
      productName: HttpPart<"Android-Share-G-ClassRoom">;
      productVersion: HttpPart<string>;
      timeZone: HttpPart<string>;
      targetIds: HttpPart<string>[];
      titles: HttpPart<string>[];
      companyID: HttpPart<string>;
    }
  ): GalleryMediaSetTitleResult;

  /**
   * 1件以上のメディアを削除する。
   *
   * multipartパート: `userId`, `password`または`qwd`(任意・いずれか一方), `productName`
   * (固定値), `productVersion`, `timeZone`, 対象ID一覧, `companyID`。
   *
   * @param targetIds 削除対象のID一覧。**実際のワイヤー上は`recordId0`, `recordId1`, ...
   * (`isMediaId`指定時は`clientMediaId0`, ...)というインデックス付きパートとして送信される
   * (`setMediaTitle`と同じ規則)。**
   *
   * - 元Javaクラス: `MediaDelete`
   * - パス: `gallery/DeleteMediaFile`
   */
  @post
  @route("gallery/DeleteMediaFile")
  op deleteMediaFile(
    @multipartBody body: {
      userId: HttpPart<string>;
      password?: HttpPart<string>;
      qwd?: HttpPart<string>;
      productName: HttpPart<"Android-Share-G-ClassRoom">;
      productVersion: HttpPart<string>;
      timeZone: HttpPart<string>;
      targetIds: HttpPart<string>[];
      companyID: HttpPart<string>;
    }
  ): GalleryMediaDeleteResult;
}
