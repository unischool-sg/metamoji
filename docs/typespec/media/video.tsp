import "@typespec/http";
import "./common.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// 動画ノート機能 (VfCloud / NwServerAccessor / NwUpload)
// ============================================================
//
// `com.metamoji.media.video.network.salvation.NwServerAccessor`
// (apk/smali_classes3/com/metamoji/media/video/network/salvation/NwServerAccessor.smali) が
// 実装する「Flora」REST API。ノート内に埋め込む動画クリップの録画・アップロード・一覧・再生・削除を担う。
// `VfCloud`(オーケストレーション)や`VfIdMappingService`(クライアント側ID⇔サーバー側ID対応管理)が
// このクラスを呼び出す。`CsCloudService`/`DvmCloudService`とは無関係の別サーバー・別プロトコル。
//
// **ベースURL**: 固定ホストではなく、セッションごとに動的に割り当てられる「Floraサーバー」
// (`VfVideoFileManager.getServerName()`)を使う。ホスト名が `http://`/`https://` で
// 始まっていない場合は **`http://` (平文HTTP)** として扱われる点に注意
// (`makeFloraCommandUrl`)。URL形式: `{scheme}://{floraServer}/flora/api/v1/{command}2`
// (クエリ文字列がある場合は `{command}2?{query}`)。
//
// **認証方式**: HTTPヘッダではなく、`multipart/form-data`の各パートとしてログイン情報を埋め込む
// (`setAuthData`)。すべてのコマンド共通で以下のパートが付与される:
// `loginUser`, `loginCompany`, `password`(任意), `qwd`(任意), `userId`, `companyId`,
// `productName`(固定値 `"Android-Share-G-ClassRoom"`), `productVersion`,
// `rootServer`(= `CsCloudServiceContext.getRootServer()`)。
//
// **動画本体のアップロード**は本ファイルのFlora REST APIとは別経路で、`getUploadPoint`で
// 取得した`upload_url`に対し `NwUpload.uploadFile` が直接POSTする(下記`uploadFile`参照)。

/** すべてのFloraコマンドの`multipart/form-data`に共通するログイン情報パート。 */
model VfCommandAuthForm {
  loginUser: HttpPart<string>;
  loginCompany: HttpPart<string>;
  password?: HttpPart<string>;
  qwd?: HttpPart<string>;
  userId: HttpPart<string>;
  companyId: HttpPart<string>;
  /** 固定値 `"Android-Share-G-ClassRoom"` */
  productName: HttpPart<string>;
  productVersion: HttpPart<string>;
  rootServer: HttpPart<string>;
}

/**
 * 動画クリップ1件のメタ情報 (`VfClipInfo`)。`getClipList`のレスポンス配列要素、および
 * (未確認だが同一シリアライズ手段と推測される)`getClipInfo`のレスポンスに対応。
 */
model VfClipInfo {
  clipid?: int64;
  clipsize?: int64;
  comment?: string;
  invalidinfo?: int32;
  playback_time?: string;
  playback_url?: string;
  posterframe?: string;
  registdate?: string;
  serverID?: string;
  timestamp?: string;
  title?: string;
}

model VfGetClipCountResponse {
  count?: int32;
}

model VfGetServerStatusResponse {
  /** サーバー稼働状況(想定される値は未確認) */
  current_status?: string;

  /** アップロード可能な最大ファイルサイズ(MB) */
  max_filesize_mb?: int32;
}

model VfGetUploadPointResponse {
  /** `NwUpload.uploadFile`が実際のファイルをPOSTする先の署名付きURL */
  upload_url?: string;
}

model VfReserveResponse {
  /** アップロード用チケット。`NwUpload`の`mmj.ms.ticket`ヘッダに使われる */
  ticket?: string;
}

interface VideoNotes {
  /**
   * クリップ一覧を取得する。レスポンスはJSON配列 (`VfClipInfo[]`) をそのまま返す
   * (ラッパーオブジェクトなし)。
   * クエリ文字列: `off={offset}&c={limit}&order={order}&dir={orderDir}&filter={keyword?}&fu={?}&type=MOVIE`
   * ( `order`: `timestamp`/`registdate`/`duration`/`size`/`title`/`comment`/`index`、
   *   `dir`: `ASC`/`DESC` )
   *
   * - 元Kotlinメソッド: `NwServerAccessor.getClipList`
   * - コマンド: `getlist` → パス `flora/api/v1/getlist2`
   */
  @post
  @route("flora/api/v1/getlist2")
  op getClipList(@multipartBody body: VfCommandAuthForm): VfClipInfo[];

  /**
   * 指定サーバーの合計クリップ件数を取得する。クエリ: `fu=?&type=MOVIE`。
   *
   * - 元Kotlinメソッド: `NwServerAccessor.getClipCount`
   * - コマンド: `getclipcount` → パス `flora/api/v1/getclipcount2`
   */
  @post
  @route("flora/api/v1/getclipcount2")
  op getClipCount(@multipartBody body: VfCommandAuthForm): VfGetClipCountResponse;

  /**
   * クリップ1件の詳細情報を取得する。`serverId`パートにクリップのサーバー側IDを指定する。
   *
   * - 元Kotlinメソッド: `NwServerAccessor.getClipInfo`
   * - コマンド: `getclipinfo` → パス `flora/api/v1/getclipinfo2`
   */
  @post
  @route("flora/api/v1/getclipinfo2")
  op getClipInfo(
    @multipartBody body: {
      ...VfCommandAuthForm;
      /** 対象クリップのサーバー側ID */
      serverId: HttpPart<string>;
    }
  ): VfClipInfo;

  /**
   * クリップのポスターフレーム(サムネイル)情報を取得する。
   *
   * - 元Kotlinメソッド: `NwServerAccessor.getPosterFrame`
   * - コマンド: `getposterframe` → パス `flora/api/v1/getposterframe2`
   */
  @post
  @route("flora/api/v1/getposterframe2")
  op getPosterFrame(
    @multipartBody body: {
      ...VfCommandAuthForm;
      serverId: HttpPart<string>;
    }
  ): Record<unknown>;

  /**
   * クリップを削除する。
   *
   * - 元Kotlinメソッド: `NwServerAccessor.deleteClip`
   * - コマンド: `deleteclip` → パス `flora/api/v1/deleteclip2`
   */
  @post
  @route("flora/api/v1/deleteclip2")
  op deleteClip(
    @multipartBody body: {
      ...VfCommandAuthForm;
      serverId: HttpPart<string>;
    }
  ): Record<unknown>;

  /**
   * クリップのエクスポート情報を取得する(用途未確認。ドライブへの書き出し関連と推測)。
   *
   * - 元Kotlinメソッド: `NwServerAccessor.exportClip`
   * - コマンド: `exportclipinfo` → パス `flora/api/v1/exportclipinfo2`
   */
  @post
  @route("flora/api/v1/exportclipinfo2")
  op exportClip(
    @multipartBody body: {
      ...VfCommandAuthForm;
      serverId: HttpPart<string>;
    }
  ): Record<unknown>;

  /**
   * ログイン中ユーザー/カンパニーのFloraサーバー利用状況情報を取得する(詳細フィールド未確認)。
   *
   * - 元Kotlinメソッド: `NwServerAccessor.getServerCoInfo`
   * - コマンド: `getcoinfo` → パス `flora/api/v1/getcoinfo2`
   */
  @post
  @route("flora/api/v1/getcoinfo2")
  op getServerCoInfo(@multipartBody body: VfCommandAuthForm): Record<unknown>;

  /**
   * Floraサーバーの稼働状況・アップロード上限を取得する。
   *
   * - 元Kotlinメソッド: `NwServerAccessor.getServerStatus`
   * - コマンド: `getserverstatus` → パス `flora/api/v1/getserverstatus2`
   */
  @post
  @route("flora/api/v1/getserverstatus2")
  op getServerStatus(@multipartBody body: VfCommandAuthForm): VfGetServerStatusResponse;

  /**
   * 動画本体をアップロードするための署名付きURL(`upload_url`)を取得する。クエリ: `type=MOVIE`。
   * 取得したURLへは本APIとは別に`NwUpload.uploadFile`が直接POSTする(`uploadFile`参照)。
   *
   * - 元Kotlinメソッド: `NwServerAccessor.getUploadPoint`
   * - コマンド: `getuploadpoint` → パス `flora/api/v1/getuploadpoint2`
   */
  @post
  @route("flora/api/v1/getuploadpoint2")
  op getUploadPoint(@multipartBody body: VfCommandAuthForm): VfGetUploadPointResponse;

  /**
   * 新しいクリップ用のアップロードチケットを予約する。すべてのアップロードフローの起点。
   *
   * - 元Kotlinメソッド: `NwServerAccessor.reserveServerId`
   * - コマンド: `reserve` → パス `flora/api/v1/reserve2`
   */
  @post
  @route("flora/api/v1/reserve2")
  op reserve(@multipartBody body: VfCommandAuthForm): VfReserveResponse;

  /**
   * 動画関連ファイル本体をアップロードする。Flora REST API (`flora/api/v1/*`) とは別に、
   * `getUploadPoint`で取得した署名付きURLへ直接POSTする。`uploadMovie`は1クリップにつき
   * この操作を3回連続で呼び出す(メタデータXML → ポスターフレームJPEG → 動画本体octet-stream の順)。
   * レスポンスJSONの`status`フィールドが`"OK"`であることを確認する。
   *
   * - 元Kotlinメソッド: `NwUpload.uploadFile`
   * - HTTPメソッド: POST
   * - `Content-Type`: `application/xml` / `image/jpeg` / `application/octet-stream` (呼び出しごとに異なる)
   */
  @post
  @route("{uploadUrl}")
  op uploadFile(
    @path uploadUrl: string,
    @header contentType: "application/xml" | "image/jpeg" | "application/octet-stream",
    /** `reserve`で取得したチケット */
    @header("mmj.ms.ticket") ticket: string,
    @header("mmj.ms.coid") companyId: string,
    @header("mmj.ms.userid") userId: string,
    @body body: bytes
  ): Record<unknown>;
}
