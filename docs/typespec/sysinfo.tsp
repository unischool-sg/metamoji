import "@typespec/http";
import "./common.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// アプリ設定マニフェスト (NtSysInfoManager)
// ============================================================
//
// `com.metamoji.nt.notify.NtSysInfoManager`
// (apk/smali_classes3/com/metamoji/nt/notify/NtSysInfoManager.smali)。
// `CsCloudService` (JSON-RPCクライアント)やWebDAV等とは完全に独立した、
// アプリ起動時に取得する静的な設定マニフェスト取得専用のクラス。
// Firebase/FCM等のプッシュ通知ではなく、単純な「起動の都度、ホスト直下の固定JSONファイルを
// GETで取りに行き、EULA/バージョン情報・各種ヘルプ/規約Webリンク・アプリ内お知らせ・
// 辞書/フォントのダウンロードURLをローカルにキャッシュする」ポーリング型の仕組み。
// 1エンドポイントのみで、`misc.tsp` の `getMaintenanceInfo` と同様に
// ルートサーバー直下の静的ファイルを取得する形。ただしこちらはレスポンスが
// (テキストではなく)実際にJSONとしてパースされる点が異なる。
//
// **URL組み立て**: `NtSysInfoManager.URL_FORMAT` = `"%ssysinfo_%s.json?last=%s"`。
// `updateStateExec()` (smali 356行目付近) が
// `String.format(URL_FORMAT, host, "Android-Share-G-ClassRoom", lastCheckDate)` で
// 完成URLを組み立てる。第2引数は定数文字列 `"Android-Share-G-ClassRoom"` 固定
// (他のクラスで使われるアプリ識別子と同じ値で、パスの一部としてそのまま埋め込まれる。
// クエリパラメータではない)。
//
// **ベースホスト選択ロジック** (`updateStateExec`、smali 275〜297行目付近):
// 1. `CsDCUserInfoSettings.getInstanceFromSystemSettings().getUserInfo()` が `null`、
//    または `userInfo.userType != 4` の場合は、そもそもHTTPリクエストを行わずに
//    即座に `m_state = ERROR(2)` として処理を終了する
//    (ログイン状態・アカウント種別によってはこのAPI自体が呼ばれない)。
// 2. `userInfo.isOnPremise == true` の場合:
//    `CsCloudServiceContext.getInstance().getRootServer()` (テナント/オンプレミス版の
//    ルートサーバーURL、末尾`/`付き)を使う。
// 3. それ以外(通常のパブリッククラウド利用)の場合:
//    デフォルト値 `"https://cdn.metamoji.com/"` を使う。
//
// **`last`クエリパラメータ**: 前回リクエスト成功時に保存した日時
// (`NtUserDefaults`の`"SysInfoLastCheckDate"`、`TimeUtils.dateToISOString()`が生成する
// UTC ISO8601文字列、書式 `yyyy-MM-dd'T'HH:mm:ss.SSS'Z'`)。初回起動時など保存値が
// まだ存在しない場合は`String.format`に`null`がそのまま渡され、実際のURLには
// 文字列として`"last=null"`が現れる。
//
// **キャッシュ判定**: 保存済みの「アプリバージョン_ロケール」(`"%s_%s"`、
// `ModelInfo.getProductVersionToMinor()` 例:`"3.15"` + ロケール文字列 例:`"ja"`/`"en"`)と
// 今回値が一致し、かつ保存済み`last`日時が「今日」と同日で、かつ
// `KEY_VERSION_FOR_CLASSROOM_CURRENT`(`"3.11.5"`)チェックも一致する場合は、
// リクエスト自体をスキップしてローカルキャッシュ(`"SysInfoLastCheckInfos"`)を使う。
// それ以外は`OkHttpClient`(`NwHttpClient.getClient()`)で同期GETを実行する
// (`getContents()`)。
//
// **レスポンス形式**: プレーンテキストとして全文読み込んだ後、
// `org.json.JSONTokener` + `CmJson.createMapFromJson()` でトップレベルの
// `JSONObject`を`Map<String, Object>`へ変換する(`connectionDidFinishLoading()`)。
// `CsCloudService`系のような`errorCode`等の共通エンベロープは存在しない、素のJSONオブジェクト。
//
// **値の入れ子構造**: ほとんどのフィールドは
// `{ "<バージョン文字列 or \"*\">": { "<ロケール文字列 or \"*\">": <値> } }`
// という2段階の辞書になっており、`parseUrlFromJsonDic()`/`parseDicFromJsonDic()`が
// 「現在のアプリバージョン(メジャー.マイナー) → 無ければ`"*"`」「現在のロケール → 無ければ`"*"`
// → 無ければ`"en"`」の順にフォールバックして1件だけ値を取り出す。
// (`"WebSite.notify"`のみ、ロケール解決後の値がさらに`{serial, url}`のオブジェクトになる。)
// `"mazec.dic"`のみ例外で、バージョン/ロケールの入れ子を持たず、値をそのままコピーする
// (`copyDicFromJsonDic()`。中身は本クラスでは検査されないため未解析)。
//
// **フィールド抽出方法**: 本クラスが公開する`JSON_KEY_*`/`INFODIC_KEY_*`定数
// (トップレベルJSONキー名 → パース後にアプリ内部で使うキー名の対応表)と、
// それらを実際に読み出す`connectionDidFinishLoading()`内の
// `parseUrlFromJsonDic(dic, jsonKey, infoDicKey)` /
// `parseDicFromJsonDic(dic, jsonKey, infoDicKey)` / `copyDicFromJsonDic(dic, jsonKey, infoDicKey)`
// 呼び出し20件を突き合わせて特定した。
//
// **他8ファイルの調査結果**: 同ディレクトリの`NtAnytimeNotifyButton`
// (および`$1`/`$$ExternalSyntheticLambda0`/`$$ExternalSyntheticLambda1`)、
// `NtSysInfoManager$State`/`$DownloadTask`/`$1`/`$2`には、この`sysinfo_*.json`取得以外の
// 独自HTTPリクエストは存在しない。`NtAnytimeNotifyButton.openweb()`
// (`openAdminWeb()`/`openShareCordinator()`から呼ばれる)は
// `CsCloudServiceContext.getRestHost()`を基点に`"%s%s%s/login.html?cuid=%s&uuid=%s"`
// というURLを組み立てるが、これはアプリが自らHTTPリクエストを送るのではなく、
// `Intent.ACTION_VIEW`で外部ブラウザにURLを渡して開かせるだけの画面遷移であり、
// アプリがレスポンスをパースするAPI呼び出しではないため対象外とした
// (`CsCloudService`側で別途文書化されるべき`restHost`関連機能)。

/**
 * バージョン/ロケールの2段階フォールバック解決を経て格納される、単一のURL文字列。
 * バージョンキー(例: `"3.15"`)またはロケールキー(例: `"ja"`)が存在しない場合は
 * ワイルドカードキー `"*"` (無ければロケールのみさらに`"en"`)にフォールバックする。
 */
alias NtSysInfoLocaleUrlMap = Record<string>;

/** バージョン文字列 (`"3.15"`等)または `"*"` をキーとする、ロケール別URLマップ。 */
alias NtSysInfoVersionUrlMap = Record<NtSysInfoLocaleUrlMap>;

/** `"WebSite.notify"`のロケール解決後に現れる、お知らせ1件分の中身。 */
model NtSysInfoNotifyEntry {
  /** お知らせの識別子。パース処理内で読み出されるが、格納後は未使用と見られる。 */
  serial?: string;

  /** お知らせの遷移先URL。実際にアプリ内部(`"notify"`キー)へ保存されるのはこの値のみ。 */
  url?: string;
}

/** `"WebSite.notify"`のロケール別マップ (値がURL文字列ではなく`NtSysInfoNotifyEntry`である点が他と異なる)。 */
alias NtSysInfoNotifyLocaleMap = Record<NtSysInfoNotifyEntry>;

/** `"WebSite.notify"`のバージョン別マップ。 */
alias NtSysInfoNotifyVersionMap = Record<NtSysInfoNotifyLocaleMap>;

/**
 * バージョンキー(または`"*"`)のみで1段階だけ入れ子になった辞書。
 * `"DigitalCabinet.supported_locale"`用。中身(ロケールコード一覧と推測されるが未確認)は
 * `parseDicFromJsonDic()`がサイズチェックのみ行いそのままコピーするため未解析。
 */
alias NtSysInfoVersionOnlyMap = Record<unknown>;

/**
 * `GET {host}sysinfo_Android-Share-G-ClassRoom.json?last=...` のレスポンスボディ。
 * `NtSysInfoManager.connectionDidFinishLoading()`が読み出すトップレベルキーのみを
 * フィールド化している(未知の追加キーが存在する可能性はある)。
 */
model NtSysInfoResponse {
  /** ヘルプ/サポートページのURL。内部キー: `support` (`INFODIC_KEY_SUPPORT`)。 */
  "WebSite.support"?: NtSysInfoVersionUrlMap;

  /** 「サポート案内(supen)」ページのURL。内部キー: `supen` (`INFODIC_KEY_SUPEN`)。 */
  "WebSite.supen"?: NtSysInfoVersionUrlMap;

  /** 利用規約(Terms of Service)ページのURL。内部キー: `tos` (`INFODIC_KEY_TOS`)。 */
  "WebSite.tos"?: NtSysInfoVersionUrlMap;

  /** プライバシーポリシーページのURL。内部キー: `privacy` (`INFODIC_KEY_PRIVACY`)。 */
  "WebSite.privacy"?: NtSysInfoVersionUrlMap;

  /** 「このアプリについて」ページのURL。内部キー: `about` (`INFODIC_KEY_ABOUT`)。 */
  "WebSite.about"?: NtSysInfoVersionUrlMap;

  /** 「DigitalCabinetについて」ページのURL。内部キー: `about_cabinet` (`INFODIC_KEY_ABOUT_CABINET`)。 */
  "WebSite.about_cabinet"?: NtSysInfoVersionUrlMap;

  /** DigitalCabinetログインヘルプページのURL。内部キー: `help_dclogin` (`INFODIC_KEY_HELP_DCLOGIN`)。 */
  "WebSite.help_DCLogin"?: NtSysInfoVersionUrlMap;

  /** DigitalCabinetの対応ロケール一覧(推測、未解析)。内部キー: `dc_supported_locale` (`INFODIC_KEY_DC_SUPPORTED_LOCALE`)。バージョンのみで入れ子(ロケール階層なし)。 */
  "DigitalCabinet.supported_locale"?: NtSysInfoVersionOnlyMap;

  /** サンプルノートのダウンロード/紹介URL。内部キー: `sample_note` (`INFODIC_KEY_SAMPLE_NOTE`)。 */
  "sample.note"?: NtSysInfoVersionUrlMap;

  /** マニュアルページのURL。内部キー: `manual` (`INFODIC_KEY_MANUAL`)。 */
  "WebSite.manual"?: NtSysInfoVersionUrlMap;

  /** マニュアル内「ヒントヘルプ」ページのURL。内部キー: `manual_hinthelp` (`INFODIC_KEY_MANUAL_HINTHELP`)。 */
  "WebSite.manual.hinthelp"?: NtSysInfoVersionUrlMap;

  /** Google Play上のmazec2(手書き入力アプリ)ストアページURL。内部キー: `googleplay_mazec2` (`INFODIC_KEY_GOOGLEPLAY_MAZEC2`)。 */
  "GooglePlay.mazec2"?: NtSysInfoVersionUrlMap;

  /** ClassShare(Share)版のEULA(使用許諾契約)ページURL。内部キー: `share_EULA` (`INFODIC_KEY_SHARE_EULA`)。 */
  "Share.WebSite.EULA"?: NtSysInfoVersionUrlMap;

  /**
   * ClassShare版EULAの現在バージョン文字列。URLと同じ`parseUrlFromJsonDic()`
   * (バージョン/ロケール2段階フォールバック)経由で取得されるが、値の意味論としては
   * URLではなくバージョン識別子(比較用の文字列)である。内部キー: `share_EULA_version`
   * (`INFODIC_KEY_SHARE_EULA_VERSION`)。
   */
  "Share.WebSite.EULA.version"?: NtSysInfoVersionUrlMap;

  /** 「SAFree」プロモーションページのURL。内部キー: `promo_safree` (`INFODIC_KEY_PROMO_SAFREE`)。 */
  "WebSite.promo.SAFree"?: NtSysInfoVersionUrlMap;

  /** 「NA」(地域限定と見られる)プロモーションページのURL。内部キー: `promo_na` (`INFODIC_KEY_PROMO_NA`)。 */
  "WebSite.promo.NA"?: NtSysInfoVersionUrlMap;

  /** 共有ドライブ機能のプロモーションページのURL。内部キー: `promo_shared_drive` (`INFODIC_KEY_PROMO_SHARED_DRIVE`)。 */
  "WebSite.promo.SharedDrive"?: NtSysInfoVersionUrlMap;

  /**
   * mazec手書き辞書データ(`nt/dl`がダウンロードする`mazec.dic`)の情報。
   * バージョン/ロケールの入れ子を持たず、値がそのまま(生の`JSONObject`由来Mapとして)
   * コピーされるだけで内部でも検査されないため、具体的なサブフィールド
   * (ダウンロードURLやリビジョン等が入っていると推測される)は未解析。
   * 内部キー: `mazec.dic` (`INFODIC_KEY_MAZEC_DIC`)。
   */
  "mazec.dic"?: Record<unknown>;

  /** フォントデータ(`nt/dl`がダウンロードする`font.cr`)のダウンロードURL。内部キー: `font.cr` (`INFODIC_KEY_FONT_CR`)。 */
  "font.cr"?: NtSysInfoVersionUrlMap;

  /**
   * アプリ内お知らせ(バナー通知)。バージョン/ロケール解決後の値がURL文字列ではなく
   * `{serial, url}`オブジェクトになる唯一のフィールド。パース後は`url`のみが
   * 内部キー`notify` (`INFODIC_KEY_NOTIFY`)へ保存され、これが非空の場合に
   * `NtSysInfoManager.existNotifyFlag()`が真を返す(お知らせバッジ表示のトリガー)。
   */
  "WebSite.notify"?: NtSysInfoNotifyVersionMap;
}

interface SysInfo {
  /**
   * アプリの設定マニフェスト(EULA/バージョン情報、各種ヘルプ・規約・プロモーションの
   * Webリンク、アプリ内お知らせ、mazec辞書/フォントのダウンロード情報)を取得する。
   *
   * アプリ起動時などに`NtSysInfoManager.updateStateAsync()`/`updateStateSync()`経由で
   * 呼ばれる。ベースホストは固定ではなく、ログイン中アカウントが判定できない、または
   * `userType != 4`の場合はリクエスト自体を行わない。`isOnPremise`な場合は
   * `CsCloudServiceContext.getRootServer()`、それ以外はデフォルトの
   * `https://cdn.metamoji.com/`を基点とする(詳細は本ファイル冒頭のコメント参照)。
   * レスポンスは`CsCloudService`系のような共通エラーエンベロープを持たない素のJSON。
   *
   * - 元Javaメソッド: `NtSysInfoManager.updateStateExec` / `getContents` /
   *   `connectionDidFinishLoading`
   * - HTTPメソッド: GET
   * - パス (ベースホスト直下): `sysinfo_Android-Share-G-ClassRoom.json`
   *   (`"Android-Share-G-ClassRoom"`は`URL_FORMAT`にそのまま埋め込まれる固定文字列で、
   *   可変のパスパラメータではない)
   */
  @get
  @route("sysinfo_Android-Share-G-ClassRoom.json")
  op getSysInfo(
    /**
     * 前回リクエスト成功時刻 (UTC ISO8601、`yyyy-MM-dd'T'HH:mm:ss.SSS'Z'`)。
     * 初回起動などまだ保存値が無い場合は文字列として`"null"`がそのまま送信される。
     */
    @query last: string,
  ): NtSysInfoResponse;
}
