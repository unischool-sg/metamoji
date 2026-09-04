import "@typespec/http";
import "./common.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// ライブラリカタログ・レガシーコンテンツストア (com.metamoji.lb)
// ============================================================
//
// 解析対象: `apk/smali_classes2/com/metamoji/lb/` (`LbLibraryItemManager`,
// `LbLibraryBgImageManager`, `LbLibrarySheetTemplateManager`, `LbLibraryIndexParser`,
// `LbDownloadUtil`, `LbInAppPurchaseUtils`, `LbInAppPurchaseConstants`) と、
// その呼び出し元 `apk/smali_classes3/com/metamoji/ui/library/item/`
// (`LibraryURLConnectionBase`/`ForLogin`/`ForGetAllPages`/`ForGetPage`,
// `LibraryStorePageView`, `LibraryViewDialog`)。
//
// ⚠️ **重要な訂正 (このファイルが実際に記載する内容について)**
//
// [ROADMAP.md](./ROADMAP.md) の一次調査では「カタログ初期化」として
// `init/library/com.metamoji.classroom.item.system001.product` 等のパスがネットワークAPIの
// パスであるかのように記載されていましたが、実際にコードを読むと **これらはネットワーク通信ではなく
// APK内蔵アセットのローカルパスです。** `LbLibraryItemManager.parseSystemItem()` /
// `LbLibraryBgImageManager` / `LbLibrarySheetTemplateManager` の同等メソッドは、いずれもこの文字列を
// `com.metamoji.cm.CmUtils.copyFileFromAsset(String, File)`
// (`Context.getResources().getAssets().open(path)` = Android `AssetManager` 経由のローカル読み込み)
// に渡しており、実機のAPK内に同名のファイルが実在することも確認しました
// (`apk/assets/init/library/*.product`)。取得したzip相当のアーカイブは
// `CvZippedXMLConvertUtils.uncompressDocumentNoCkeckAsync()` でローカル展開され、
// 展開後の `index.dat` は `LbLibraryIndexParser` が読み込みますが、その中身は
// **JSONではなくXML plist形式** (`<plist><array><dict><key>type</key>...`) のローカルキャッシュ
// インデックスであり、これもネットワークのレスポンススキーマではありません。
// そのため本ファイルでは `init/library/*` をAPI operationとして記載しません
// (=このパッケージの「カタログ初期化」はネットワークAPIではなく完全にローカル処理です)。
// 確認できた4種類のアセットパス(3クラス×System item配列)は以下の通りです:
//   - `init/library/com.metamoji.classroom.item.system001.product`
//     (`LbLibraryItemManager.SYSTEMITEM_FILE_NAME`)
//   - `init/library/com.metamoji.noteanytime.sheetbgimage001.sheet.product`
//   - `init/library/com.metamoji.noteanytime.coversheetbgimage001.cover.product`
//     (以上2つ `LbLibraryBgImageManager.SYSTEMITEM_FILE_NAME`)
//   - `init/library/com.metamoji.shareanytime.sheet.system001.product`
//     (`LbLibrarySheetTemplateManager.SYSTEMSHEETTEMPLATE_FILE_NAME`)
//
// 一方で、**このパッケージには実際にネットワーク通信を行うレガシーの「コンテンツストア」機能が
// 別に存在し、こちらは生きています。** `LbLibraryItemManager.downloadProduct()` /
// `LbLibraryBgImageManager.downloadProduct()` / `LbLibrarySheetTemplateManager.downloadProduct()`
// は呼び出し元から渡された任意のURL (`productURL`) に対して `LbDownloadUtil` 経由でGETリクエストを
// 行い、コンテンツ本体(zip相当のアーカイブ)をダウンロードします。この`productURL`の出所を
// 呼び出し元 `com.metamoji.ui.library.item.LibraryViewDialog` まで遡ると、
// `LibraryURLConnectionForGetAllPages` → `LibraryURLConnectionForGetPage` という2段階の
// カタログ取得APIが存在し、必要に応じて `LibraryURLConnectionForLogin`
// (`LbInAppPurchaseUtils.loginURL()`) によるゲストログインを挟むことも確認しました。
// `LibraryViewDialog` は `com.metamoji.noteanytime.EditorActivity` から実際に生成されており、
// UIから到達可能な生きた経路です。以下がその全体のAPI群です。
//
// **ホスト解決**: ベースURLは `com.metamoji.lb.LbInAppPurchaseUtils.baseURL()` →
// `ModelInfo$BuildOptions.DIGITAL_CABINET_URL_BASE()` → `CsCloudServiceContext.getRestHost()`
// が返す値で、これは **[auth.tsp](./auth.tsp) の `CsLoginResponse.restHost`
// と全く同じ、CsCloudServiceへのログイン成功後にセットされるテナント別ホスト** です
// (`CsCloudServiceContext#getRestHost()`はログイン前は空/nullを返すため、このストア機能は
// 事前に`/users3/login`等でのログインが必要と考えられます)。
// `isEvalEdition`(評価/開発ビルド)の場合のみ `NtUserDefaults` の `"DevStoreServer"` /
// `"DevDigitalCabinetServer"` キーで開発用ホストに差し替え可能ですが、製品ビルドでは無効です。
// なお、別途 `apk/smali_classes3/com/metamoji/mazec/purchase/` パッケージ (別クラス、
// `com.metamoji.mazec.purchase.LbInAppPurchaseUtils` / `BuildConfig`) に
// `"https://cdn-test.metamoji.com/"` というホスト定数が存在しますが、これは
// **`com.metamoji.lb` パッケージとは無関係の別パッケージ** (`com/metamoji/mazec/purchase`、
// ROADMAP.mdの別項目#13でMazec手書き辞書アドオンの旧ストアとして記載)の定数であり、
// `com.metamoji.lb.LbDownloadUtil` / `LbInAppPurchaseUtils` はこの定数を一切参照していません。
// (`com.metamoji.lb`のホストは前述の通り常に動的な`restHost`です。)
//
// **在庫/購入URL (`purchaseURL`) は呼び出し元なし = デッドコード**:
// `LbInAppPurchaseUtils.purchaseURL(String)` (内部で `baseURL("/mmjeditor2")` を組み立てる)
// は、APK全体を `grep -rn "LbInAppPurchaseUtils;->purchaseURL"` で検索しても
// 呼び出し箇所が1件も見つかりませんでした。対して `loginURL()` は
// `LibraryURLConnectionForLogin.requestUrl()`、`storeURL(String)` は
// `LibraryURLConnectionForGetAllPages.requestUrl()` から実際に呼び出されており、
// こちらは生きています。したがって本ファイルは `purchaseURL`/`/mmjeditor2` 系の
// operationを含みません。また実際の課金(有料アイテムの購入)は
// `LbInAppPurchaseConstants` に列挙されたGoogle Play課金アイテムID
// (例: `com.metamoji.shareanytime.goldservice.base1.1month`)を使った
// Google Play Billingで行われるとみられ(下記`LbStoreMarketEntry.m_itemID`もGoogle Playの
// アイテムIDを保持)、MetaMoji独自サーバーのAPIではないためこのドキュメントの対象外です。
//
// **全体フロー**:
// 1. `GET {restHost}store/GetAllPages?pageType={1|2}` でページ(カテゴリ)一覧を取得。
// 2. 各ページの `pageURL` (レスポンスに含まれる絶対URL) に対して
//    `GET {pageURL}` (`LibraryURLConnectionForGetPage`) を行い、商品一覧を取得。
// 3. 1./2.のレスポンスJSONの `result` が `"1"` (要ログイン)の場合、
//    `POST {restHost}store/Login?...` でゲストログイン(下記参照)を行い、
//    成功したら元のリクエストを再実行する。
// 4. ダウンロードは商品の `productURL` (または `p_URL`) に対して
//    `GET {productURL}` (`LbDownloadUtil`) を行う。レスポンスの `Content-Type` が
//    `application/json` だった場合(セッション切れ)、レスポンスボディをJSONとして解釈し
//    `result` が `"1"` ならguestログインをリトライしてから再ダウンロードする。
//
// **ゲストログイン**: `id=guest&pass=`(常に空パスワード固定)で送信される、実質的な
// 匿名セッション確立リクエストです。実在ユーザーのログイン情報は使用されません。

/** ストアAPI共通のステータスレスポンス。`Login`のレスポンス本体、および商品ダウンロード時に
 * サーバーがエラー/要ログインを通知する際のJSONペイロード(`Content-Type: application/json`で
 * 返る場合)として共通に使われる。
 */
model LbStoreStatusResponse {
  /**
   * ステータスコード(数値の文字列)。
   * 呼び出し元 `LibraryURLConnectionForLogin`/`ForGetAllPages`/`ForGetPage`/
   * `LbLibraryItemManager.retryLogin` の分岐から判明した値:
   * `"0"` = 成功、`"1"` = 要ログイン(この値を見たら`Login`を実行して元のリクエストをリトライする)、
   * それ以外 = その他のエラー。
   */
  result?: string;

  /** エラー/ステータスメッセージ(ユーザー表示用と思われる) */
  message?: string;
}

/** `GetAllPages` レスポンスの `pages[]` 1件分。 */
model LbStorePage {
  pageID?: string;
  pageTitle?: string;
  pageFormat?: string;

  /** このページの商品一覧を取得するための絶対URL。`getPage` にそのまま渡す。 */
  pageURL?: string;
}

/** `GET store/GetAllPages` のレスポンス。 */
model LbStoreGetAllPagesResponse extends LbStoreStatusResponse {
  /** 固定値 `"1.0"` 以外はクライアント側でページ一覧を無視する(`LibraryURLConnectionForGetAllPages.connectionDidFinishLoading`)。 */
  version?: string;

  pages?: LbStorePage[];
}

/** `GetPage` レスポンスの `products[].p_parts[]` 1件分(商品を構成するパーツ)。 */
model LbStoreProductPart {
  entityId?: string;

  /** サムネイル画像の絶対URL */
  thumbnailURL?: string;

  /** このパーツ単体のダウンロードURL(存在する場合) */
  productURL?: string;

  title?: string;
}

/** `GetPage` レスポンスの `products[].p_market[]` 1件分。Google Play課金アイテムとの対応付け。 */
model LbStoreMarketEntry {
  /** ストア種別。実装が判定に使う既知の値は `"GooglePlay"` のみ。 */
  m_storeID?: string;

  /** Google Play課金アイテムID (`LbInAppPurchaseConstants` の値と対応すると見られる) */
  m_itemID?: string;
}

/** `GetPage` レスポンスの `products[]` 1件分(ストアに並ぶ1商品)。 */
model LbStoreProduct {
  p_id?: string;
  p_title?: string;
  p_comment?: string;

  /** 商品全体のダウンロードURL。`p_parts[].productURL` が無い場合はこちらを使う。 */
  p_URL?: string;

  /** 無料かどうかを表す文字列フラグ(smali上は素通しの`String`で真偽値の実際の表現は未確認) */
  p_isFree?: string;

  p_creatorId?: string;
  p_creatorName?: string;

  p_parts?: LbStoreProductPart[];

  /** Google Play課金との対応情報(有料商品のみ含まれると見られる) */
  p_market?: LbStoreMarketEntry[];
}

/** `GET {pageURL}` (GetPage) のレスポンス。 */
model LbStoreGetPageResponse extends LbStoreStatusResponse {
  /** 固定値 `"1.0"` 以外はクライアント側で商品一覧を無視する(`LibraryURLConnectionForGetPage.connectionDidFinishLoading`)。 */
  version?: string;

  products?: LbStoreProduct[];
}

interface LibraryStore {
  /**
   * ゲストセッションを確立する(実ユーザーのログインではなく `id=guest`/空パスワード固定)。
   * `GetAllPages`/`GetPage`/商品ダウンロードが `result:"1"` (要ログイン)を返した際に
   * 都度呼び出され、成功後に元のリクエストを再実行する。
   * リクエストボディは空(`FormBody`に何もフィールドを追加していない)で、
   * 全パラメータはクエリ文字列で送信される。
   *
   * - 元Javaクラス/メソッド: `LbInAppPurchaseUtils.loginURL()` /
   *   `LibraryURLConnectionForLogin` / `LbDownloadUtil$LbLoginTask`
   * - パス: `{restHost}store/Login`
   * - HTTPメソッド: POST(ボディなし)
   */
  @post
  @route("store/Login")
  op login(
    /** 常に固定値 `"guest"` */
    @query id: "guest",
    /** 常に空文字列固定 */
    @query pass: "",
    /** 固定値 `"Android-Share-G-ClassRoom"` (`ModelInfo$BuildOptions.BUILD_PRODUCT_NAME`) */
    @query product: string,
    /** アプリのバージョン文字列 (`ModelInfo.getProductVersion()`) */
    @query version: string,
    /** 端末のシステムロケール(言語コードのみ、例: `"ja"`) */
    @query clientLocale: string,
    /** アプリ内部ロケール文字列 (`NtLocaleUtils.getCurrentLocale()`) */
    @query osLocale1: string,
    /** OSのデフォルトロケール言語コード (`Locale.getDefault().getLanguage()`) */
    @query osLocale2: string,
    /** 端末タイムゾーンID (`TimeZone.getDefault().getID()`) */
    @query timezone: string,
    /** 常に固定値 `"Android"` */
    @query os: "Android",
    /** `Build.VERSION.SDK_INT` を文字列化したもの */
    @query osVersion: string,
    /** `"{Build.BRAND} {Build.PRODUCT}"` */
    @query device: string,
    /** 常に固定値 `"wifi"`(実際の接続種別を判定せずハードコードされている) */
    @query network: "wifi",
    /** `"{画面幅}*{画面高さ}"` (ピクセル) */
    @query resolution: string,
  ): LbStoreStatusResponse;

  /**
   * ストアのページ(カテゴリ)一覧を取得する。
   *
   * - 元Javaクラス/メソッド: `LbInAppPurchaseUtils.storeURL()` /
   *   `LibraryURLConnectionForGetAllPages`
   * - パス: `{restHost}store/GetAllPages`
   * - HTTPメソッド: GET
   */
  @get
  @route("store/GetAllPages")
  op getAllPages(
    /**
     * `1` = 通常のライブラリアイテム用ストア(`LibraryURLConnectionForGetAllPages`のデフォルト実装)。
     * `2` = ノート/シートテンプレート用ストア
     * (`LibraryNoteURLConnectionForGetAllPages`/`LibrarySheetURLConnectionForGetAllPages`が
     * `getAllPagesType()`をオーバーライドして返す値)。
     */
    @query pageType: 1 | 2,
  ): LbStoreGetAllPagesResponse;

  /**
   * 指定ページの商品一覧を取得する。パスは固定ルートではなく、`getAllPages`のレスポンスに
   * 含まれる `pages[].pageURL` (サーバーが払い出す絶対URL)をそのまま使用する。
   *
   * - 元Javaクラス/メソッド: `LibraryURLConnectionForGetPage`
   * - パス: (`pages[].pageURL` そのもの。ホスト/パスとも固定ではない)
   * - HTTPメソッド: GET
   */
  @get
  @route("{pageURL}")
  op getPage(@path pageURL: string): LbStoreGetPageResponse;

  /**
   * 商品(テンプレート/背景画像/アイテム)本体をダウンロードする。パスは固定ルートではなく、
   * `getPage`のレスポンスに含まれる `products[].p_URL` または
   * `products[].p_parts[].productURL` をそのまま使用する。
   * レスポンスの`Content-Type`が`application/json`の場合は成功したコンテンツではなく
   * `LbStoreStatusResponse`(通常は要ログイン`result:"1"`)が返っており、
   * その場合はゲストログイン→再ダウンロードのリトライが行われる
   * (`LbLibraryItemManager.retryLogin` 等、3つのManagerクラスすべてに同一パターンが存在)。
   *
   * - 元Javaクラス/メソッド: `LbDownloadUtil.downloadWithProgressDialog()` /
   *   `LbLibraryItemManager.downloadProduct()` (`LbLibraryBgImageManager`/
   *   `LbLibrarySheetTemplateManager`にも同名の同等メソッドが存在)
   * - パス: (`p_URL`/`productURL` そのもの。ホスト/パスとも固定ではない)
   * - HTTPメソッド: GET
   */
  @get
  @route("{productURL}")
  op downloadProduct(@path productURL: string): bytes | LbStoreStatusResponse;
}
