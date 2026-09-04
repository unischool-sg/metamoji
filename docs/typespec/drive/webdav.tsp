import "@typespec/http";
import "../common.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// WebDAV データプレーン (ノート/ドキュメント本体の同期)
// ============================================================
//
// `com.metamoji.network.NwWebDAVRequest` (Kotlin, apk/smali_classes3/com/metamoji/network/NwWebDAVRequest.smali)
// が実装するWebDAVクライアント。CsCloudService (auth.tsp 等) が「制御プレーン」(認証・メタデータ・
// ホームコレクションURLの払い出し)を担うのに対し、こちらは実際のノート本体(バイナリ)の
// アップロード/ダウンロード/削除/一覧取得を行う「データプレーン」。
//
// 呼び出し元 `com.metamoji.dm.impl.sync.common.DmDigitalCabinetAccessUtils` は、
// `CsDigitalCabinetUserManager.updateUserInfoCacheSync()` (CsCloudService経由) で取得した
// `userHomeUrl` (= 恐らく drive.tsp の `CsGetDriveHomeResponse.homeDir` /
// `CsGetPrivateDriveHomeResponse.homeDir` に対応するURL) を「ホームコレクション」とし、
// その直下に `{userHomeUrl}{ランダムID}` という形でリソース(ノート)を配置する
// (`DmDigitalCabinetAccessUtils.generateResourceIdOnServer` — `CmLocalIdManager.generateRandomId()`
// でIDを生成し `HEAD` で衝突チェック)。
//
// ⚠️ **重要な注意**: WebDAVの `PROPFIND` / `PROPPATCH` / `MKCOL` / `MOVE` はTypeSpec/OpenAPIの
// 標準HTTP動詞デコレータ(`@get`/`@post`/`@put`/`@patch`/`@delete`/`@head`)に対応するものがないため、
// 本ファイルでは便宜上 `@post` を付与しています。**実際にリクエストする際は各operationのdocコメントに
// 記載した実HTTPメソッド文字列を使用してください。**
// また `@route` の `resourceUrl` はサーバー上の相対パスではなく、呼び出し側が組み立てた
// **絶対URL全体**が渡されます(`NwWebDAVRequest`自身はホストを保持しない)。TypeSpecの制約上
// パスパラメータとして表現していますが、実際は `{ホームコレクションURL}{リソースID}` のような
// 絶対URLがそのまま `url()` に渡されます。
//
// この`NwWebDAVRequest`クライアントは、ユーザーが設定する任意の外部WebDAVサーバー機能
// (`com.metamoji.ex.webdav.WebDAVManager`、設定は端末ローカルの`SharedPreferences`にのみ保存)
// からも素通しで再利用されており、サーバー側コンポーネントやプロトコル差分は存在しない。

/** すべてのWebDAVレスポンスに共通するステータス情報 (`NwWebDAVResult`)。 */
model WebDavResultBase {
  /** サーバーが返したHTTPステータスコード */
  responseStatusCode?: int32;

  /** リクエストが成功したか (2xx系) */
  isSuccessful?: boolean;

  /** ユーザーによりキャンセルされたか */
  isCancelled?: boolean;

  /** エラー時のメッセージ */
  errorString?: string;
}

/** `GET` のレスポンス (`NwWebDAVFileResult`)。ボディはローカル一時ファイルとして保存される。 */
model WebDavFileResult extends WebDavResultBase {
  /** ダウンロードされたコンテンツを保持する一時ファイルへのローカルパス */
  responseFile?: string;
}

/** `HEAD` のレスポンス (`NwWebDAVHeaderResult`)。 */
model WebDavHeaderResult extends WebDavResultBase {
  /** レスポンスヘッダのキー・バリュー */
  responseHeader?: Record<string>;
}

/** `PROPFIND`/`PROPPATCH` の生レスポンス (`NwWebDAVBytesResult`)。 */
model WebDavBytesResult extends WebDavResultBase {
  /** レスポンスボディ(XML)の文字列表現 */
  responseString?: string;
}

/**
 * WebDAVコレクション/リソース1件分のプロパティ (`NwWebDAVItem`)。
 * `PROPFIND` (Depth: infinity) のマルチステータスレスポンスをパースしたツリー構造のノード。
 */
model WebDavItem {
  /** このアイテムのhref (サーバー相対または絶対URL) */
  href?: string;

  /** リソース名 (URLの最終セグメントをデコードしたもの) */
  uriName?: string;

  /** `DAV:displayname` があればその値 */
  displayName?: string;

  /** コレクション(フォルダ相当)かどうか。`<D:resourcetype><D:collection/></D:resourcetype>` の有無で判定 */
  isCollection?: boolean;

  /**
   * 標準WebDAVプロパティ (`DAV:` 名前空間の子要素をすべて格納した汎用マップ)。
   * パーサーは特定のプロパティ名をホワイトリスト化しておらず、`<D:prop>` 配下の
   * `DAV:` 名前空間の要素をすべて `名前 -> テキスト内容` としてそのまま格納する。
   * (よくあるキー例: `getcontentlength`, `getlastmodified`, `getetag`, `getcontenttype` 等。
   * 実際に返るキーはサーバー実装依存のため未確認。)
   */
  liveProperties?: Record<unknown>;

  /**
   * MetaMoji独自の「dead property」(名前空間 `http://xmlns.metamoji.com/digitalcabinet/tinydotnote/1.0/`)。
   * 確認できたキー: `create`(作成日時?), `lastSyncedRevision`(最終同期リビジョン),
   * `syncUpdate`(同期更新マーカー)。`PROPPATCH` で読み書きする対象もこの名前空間。
   */
  deadProperties?: Record<unknown>;

  /** 子アイテム一覧 (Depth: infinityで取得した場合のツリー構造) */
  children?: WebDavItem[];
}

/** `PROPFIND`/`PROPPATCH` のパース済みレスポンス (`NwWebDAVPropResult`)。 */
model WebDavPropResult extends WebDavBytesResult {
  /** マルチステータスのトップレベルアイテムから辿れるツリー */
  itemTree?: WebDavItem;

  /** href をキーにした `WebDavItem` のフラットマップ */
  multiResponses?: Record<WebDavItem>;

  /** レスポンスに含まれる全href一覧 */
  hrefs?: string[];

  /** マルチステータスXMLとして正しくパースできたか */
  isValidMultiResponse?: boolean;

  liveProperties?: Record<unknown>;
  deadProperties?: Record<unknown>;
}

@tag("WebDAV データプレーン")
interface WebDavStorage {
  /**
   * リソース(ノート本体)をダウンロードする。
   *
   * - 元Kotlinメソッド: `NwWebDAVRequest.get(url)`
   * - HTTPメソッド: GET
   */
  @get
  @route("{resourceUrl}")
  op get(@path resourceUrl: string): WebDavFileResult;

  /**
   * リソース(ノート本体)をアップロード(新規作成/上書き)する。
   * `Content-Type: application/octet-stream` でファイルのバイト列をそのまま送信する。
   * 対象URLが `lockClientId` 等でロック済みの場合、`If: (<ロックトークン>)` ヘッダが付与される。
   *
   * - 元Kotlinメソッド: `NwWebDAVRequest.put(url, file)`
   * - HTTPメソッド: PUT
   */
  @put
  @route("{resourceUrl}")
  op put(@path resourceUrl: string, @header contentType: "application/octet-stream", @body body: bytes): WebDavResultBase;

  /**
   * リソースのメタ情報のみを取得する(存在確認・リビジョン確認等に使用)。
   * `generateResourceIdOnServer` はこれを使ってランダムIDの衝突を確認している(200なら既存)。
   *
   * - 元Kotlinメソッド: `NwWebDAVRequest.head(url)`
   * - HTTPメソッド: HEAD
   */
  @head
  @route("{resourceUrl}")
  op head(@path resourceUrl: string): WebDavHeaderResult;

  /**
   * リソースを削除する。
   *
   * - 元Kotlinメソッド: `NwWebDAVRequest.delete(url)`
   * - HTTPメソッド: DELETE
   */
  @delete
  @route("{resourceUrl}")
  op delete(@path resourceUrl: string): WebDavResultBase;

  /**
   * コレクション(フォルダ相当)を作成する。ボディなし、`Content-Type: application/xml` のみ付与。
   *
   * - 元Kotlinメソッド: `NwWebDAVRequest.createDirectory(url)`
   * - 実際のHTTPメソッド: `MKCOL` (TypeSpecに専用デコレータがないため `@post` で近似)
   */
  @sharedRoute
  @post
  @route("{resourceUrl}")
  op createDirectory(@path resourceUrl: string): WebDavResultBase;

  /**
   * リソース/コレクションを移動またはリネームする。
   * `Destination` ヘッダに移動先URL、`Overwrite` ヘッダに `T`/`F` を指定する。
   * 移動元・移動先双方がロック済みの場合 `If: (<src token>) (<dest token>)` ヘッダが付与される。
   *
   * - 元Kotlinメソッド: `NwWebDAVRequest.moveToDestinationURL(url, destUrl, overwrite)`
   * - 実際のHTTPメソッド: `MOVE` (TypeSpecに専用デコレータがないため `@post` で近似)
   */
  @sharedRoute
  @post
  @route("{resourceUrl}")
  op move(
    @path resourceUrl: string,
    @header("Destination") destination: string,
    @header("Overwrite") overwrite: "T" | "F"
  ): WebDavResultBase;

  /**
   * コレクション配下のエントリ一覧・プロパティを取得する。
   * リクエストボディ:
   * `<?xml version="1.0" encoding="utf-8" ?>\n<D:propfind xmlns:D="DAV:"><D:allprop/>{extra}</D:propfind>`
   * (`extra` は追加のプロパティ問い合わせXMLフラグメント。通常は空文字)
   * `Depth` ヘッダ: `0`(自身のみ) / `1`(直下の子まで) / `infinity`(全階層)。
   *
   * - 元Kotlinメソッド: `NwWebDAVRequest.propfind(url, depth, extra)`
   * - 実際のHTTPメソッド: `PROPFIND` (TypeSpecに専用デコレータがないため `@post` で近似)
   */
  @sharedRoute
  @post
  @route("{resourceUrl}")
  op propfind(
    @path resourceUrl: string,
    @header("Depth") depth: "0" | "1" | "infinity",
    @body body: string
  ): WebDavPropResult;

  /**
   * コレクション/リソースのプロパティ(主にMetaMoji独自の dead property)を更新する。
   * リクエストボディ:
   * ```xml
   * <?xml version="1.0" encoding="utf-8" ?><D:propertyupdate xmlns:D="DAV:"
   *   xmlns:V="http://xmlns.metamoji.com/digitalcabinet/tinydotnote/1.0/">
   *   <D:set><D:prop>{setProperties}</D:prop></D:set>
   *   <D:remove><D:prop>{removeProperties}</D:prop></D:remove>
   * </D:propertyupdate>
   * ```
   * `setProperties`/`removeProperties` は `<V:キー>値</V:キー>` / `<V:キー/>` の連結。
   * ロック済みの場合 `If: (<ロックトークン>)` ヘッダが付与される。
   *
   * - 元Kotlinメソッド: `NwWebDAVRequest.proppatch(url, setProperties, removeProperties)`
   * - 実際のHTTPメソッド: `PROPPATCH` (TypeSpecに専用デコレータがないため `@post` で近似)
   */
  @sharedRoute
  @post
  @route("{resourceUrl}")
  op proppatch(@path resourceUrl: string, @body body: string): WebDavPropResult;
}

/**
 * すべてのWebDAVリクエストに共通で付与されるヘッダ (`NwWebDAVRequest`のプライベート`sendRequest`が
 * 一律で付与する)。TypeSpecの制約上、各operationには明示していないため、ここにまとめて記載する。
 *
 * 1. `requestHeader` に設定済みの追加ヘッダ(呼び出し元が任意に設定可能)
 * 2. `X-mmj-appcode: {appAuthKey}` — `appAuthKey` が設定されている場合のみ
 * 3. `Authorization: Basic base64(username:password)` — username/passwordが共に非空の場合のみ
 *
 * 401 (Unauthorized) を受け取った場合、`NwWebDAVRequest` は `okhttp3.Authenticator` として
 * 自身を登録しており、同じ資格情報で1回だけ再試行する(`authenticate()`)。
 */
model WebDavCommonHeaders {
  appAuthKey?: string;
  username?: string;
  password?: string;
}
