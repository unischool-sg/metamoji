import "@typespec/http";
import "./common.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// Mazec手書き辞書アドオン (com.metamoji.mazec.purchase)
// ============================================================
//
// `com.metamoji.mazec.purchase` パッケージ(53ファイル、
// apk/smali_classes3/com/metamoji/mazec/purchase/ 以下)は、組み込み手書き認識エンジン
// 「Mazec」の追加言語辞書(アドオン)に関する「旧世代のストア課金SDK」一式です。
// 調査の結果、このパッケージは **2つの異なる性質を持つコード** が混在していることが判明しました。
//
// ### (a) 課金・ストアログイン機能 — このビルドでは確実にデッドコード
//
// `PurchaseManager`(`PurchaseManager.smali`)は静的初期化子・`getInstance()`ともに
// `Lcom/metamoji/mazec/BuildConfig;->SUPPORT_IN_APP_BILLING:Z` で全体をガードしています。
// このフラグは `mazec/BuildConfig.smali` の `<clinit>` で
// `SUPPORT_IN_APP_BILLING = !noteanytime.BuildConfig.PURCHASED_MAZEC` として計算され、
// `noteanytime/BuildConfig.smali` を実際に読むと
// `PURCHASED_MAZEC = Boolean.valueOf(true)` (`const/4 v0, 0x1` → `sput-object`) と
// 定数化されています。したがって **このビルド (com.metamoji.share_classroom 3.15.1.0) では
// `SUPPORT_IN_APP_BILLING = false` が確定** します。結果として:
// - `PurchaseManager.getInstance()` は常に`cond_1`に直行し、`mSingleton`はどこでも
//   初期化されないため常に`null`を返す。
// - `PurchaseManager.isActiveProduct()` はパラメータを無視して常に`false`を返す実装。
// - `PurchaseManager.getPurchasedLanguages()` は空の`ArrayList`を返すのみ。
// - `PurchaseManager.checkPurchaseInfomation()` は中身が空(`return-void`のみ)のスタブ。
// - 唯一の呼び出し元(`MazecIms`/`LangResouceManager`)は呼び出し前に自前で
//   `if (SUPPORT_IN_APP_BILLING) { ... }` を確認しており、このビルドではその分岐自体に入らない。
// - ストアログインを行う`LbInAppPurchaseUtils`(`https://cabinet-test.7knowledge.com/`宛の
//   `/Login`・`/mmjeditor2`)は上記いずれの経路からも到達できない。
//
// → よって課金/ストア関連のエンドポイントは **本ドキュメントでは記載しません**(デッドコード)。
//
// ### (b) 辞書バージョン確認(アップデートチェック) — 課金フラグとは無関係に生きている
//
// `PurchaseManager.checkUpdateInfo(Context)` は上記`SUPPORT_IN_APP_BILLING`のチェックを
// 一切経由しない独立メソッドで、`NtDownloadManagerForMazecDic.getUpdateInfo()` に直結しています。
// この呼び出し元をたどると、実際に手書き入力キャンバス`com.metamoji.mazec.ui.MazecView`の
// 標準Androidコールバック `onWindowVisibilityChanged(int)` (可視状態になるたび=手書き入力欄が
// 表示されるたびに毎回呼ばれる) から `checkLangResourcesUpdate()` 経由で到達可能であることを確認しました。
// `MazecView`を保持する`NtMazecImsManager`は`EditorActivity`/`NtEditorWindowController`/
// `UnTextUnit`/`InputViewForTLE`/`HoverCm`など、ノート編集画面の中核クラスから多数呼ばれており、
// Mazec手書き認識自体はこのアプリで生きた主要機能であることも確認済みです
// (`noteanytime.BuildConfig.EMBEDDING_MAZEC = true`)。
//
// 呼び出しチェーン: `MazecView.onWindowVisibilityChanged` → `checkLangResourcesUpdate`
// (SharedPreferences `"UpdateCheckedDate"` による簡易スロットリング) →
// `PurchaseManager.checkUpdateInfo` → `NtDownloadManagerForMazecDic.getUpdateInfo` →
// `shouldUpdateCheck`(同じ`"UpdateCheckedDate"`キーで24時間に1回だけ許可) → `checkUpdateAsync` →
// `NtSysInfoManager.updateStateAsync`(**`com.metamoji.mazec.purchase.util.NtSysInfoManager`**。
// `com.metamoji.nt.notify.NtSysInfoManager`とは同名だが完全に別クラス) →
// `updateStateInnerAsync` が実際に`OkHttpClient`で同期GETリクエストを送信します
// (`downloadSysInfo`, `Request.Builder().url(...).get().build()`)。
//
// **重要な注意**: このGETリクエストの宛先ホストは `NtSysInfoManager.getCDNServer()` が返す
// `"https://cdn-test.metamoji.com/"` にハードコードされており、本番ホストへ切り替える分岐は
// コード上に存在しません。つまりこのエンドポイントは **実際に呼び出されるコードパスではあるものの、
// 宛先が(本番運用されているか不明な)`-test`ステージングホストである** という、
// 「デッドコードではないが実運用として機能しているかは別問題」の状態です。
//
// さらに、この更新チェックが「更新あり」を返した場合、`MazecView`は
// `CheckUpdateActivity.startActivityForStartUp()` で更新画面の起動を試みますが、
// `CheckUpdateActivity` は `AndroidManifest.xml` の `<activity>` に **登録されていません**
// (`InstallGuideActivity`も同様に未登録)。Android実機ではマニフェスト未登録のActivityを
// `startActivity()` すると`ActivityNotFoundException`で落ちるため、更新ありと判定された場合の
// 後続UIは壊れている可能性が高いです。同じ理由で、マニフェストに登録され実際に画面遷移可能な
// `MazecPreferenceActivity`(設定画面)の「更新確認」項目
// (`MazecPreferenceActivity$1.onPreferenceClick` → `CheckUpdateActivity.startActivityForUserOperation`)
// も同様のクラッシュリスクを抱えています。
// なお`MazecPreferenceActivity`・`UserDictionaryActivity`自体(いずれもマニフェストに登録され
// 到達可能)は本パッケージ(課金/ダウンロード関連コード)を一切参照しておらず、
// 純粋なローカル辞書編集UI(手書き認識のユーザー辞書管理)であることも確認しました。
//
// **`LbDownloadUtil`についての補足**: `com.metamoji.mazec.purchase.LbDownloadUtil`
// (このパッケージ内、`apk/smali_classes3/com/metamoji/mazec/purchase/LbDownloadUtil.smali`)は、
// ROADMAP.mdのパッケージ#9として別セッションが調査中の `com.metamoji.lb.LbDownloadUtil`
// (`apk/smali_classes2/com/metamoji/lb/LbDownloadUtil.smali`、`LibraryViewDialog`等から
// 実際に呼ばれる別クラス)とは名前が同じだけの**完全に別クラス**です。
// このパッケージ内の`LbDownloadUtil`はパッケージ外からの呼び出しが一切なく
// (パッケージ内部の`NtSysInfoManager`/`NtDownloadManagerForMazecDic`からのみ参照)、
// 単体では新たな到達可能性を追加しません。上記(b)で到達可能と確認したのは
// `NtSysInfoManager`への直接呼び出し経由です。
//
// **ベースURL**: `https://cdn-test.metamoji.com/` (`NtSysInfoManager.getCDNServer()`、固定文字列)。
// **HTTPメソッド**: GET のみ(`okhttp3.Request.Builder#get()`)。JSONボディなし、認証ヘッダなし。

/**
 * Mazec辞書アドオンのバージョン情報マニフェスト (`sysinfo_{productName}.json`) のレスポンス。
 *
 * `NtSysInfoManager.connectionDidFinishLoading` が生JSONを`JSONTokener`でパースした後、
 * トップレベルの `"mazec.dic"` キーの値(ネストしたオブジェクト)だけを取り出して
 * `m_infoDic` に保持します。このネストしたオブジェクトはさらに言語コード
 * (`PurchaseManager.SUPPORTED_LANGS`が持つ`"ja_JP"`/`"en_US"`等)をキーとする
 * バージョン情報の集合と推測されますが、実機レスポンスを未取得のため内部構造は未確認です。
 */
model MazecSysInfoResponse {
  /**
   * 辞書バージョン情報の集合。JSON上のキーは文字列リテラル `"mazec.dic"`。
   * `NtSysInfoManager.GetDictionaryData("mazec.dic")` で取得される値に対応。
   * 内部構造(言語コードごとのバージョン/URLなど)は未確認のため `Record<unknown>` としています。
   */
  `mazec.dic`?: Record<unknown>;
}

interface MazecDictionaryUpdateCheck {
  /**
   * Mazec手書き辞書アドオンのバージョン情報マニフェストを取得する。
   *
   * `MazecView`(手書き入力キャンバス)が可視化されるたび(`onWindowVisibilityChanged`)に、
   * 前回チェックから24時間以上経過していれば自動的に呼び出される。課金可否
   * (`SUPPORT_IN_APP_BILLING`)には依存しない独立した経路。
   *
   * - 元Javaメソッド: `NtSysInfoManager.downloadSysInfo`
   *   (呼び出し元: `updateStateInnerAsync` ← `updateStateAsync` ←
   *   `NtDownloadManagerForMazecDic.checkUpdateAsync` ← `getUpdateInfo` ←
   *   `PurchaseManager.checkUpdateInfo` ← `MazecView.checkLangResourcesUpdate`)
   * - HTTPメソッド: GET
   * - ベースURL: `https://cdn-test.metamoji.com/` (ハードコード、本番ホストへの切り替えなし)
   * - パス組み立て: `String.format("%ssysinfo_%s.json", getCDNServer(), productName)`。
   *   `productName` は `AddonStoreUtil.getProductName()` の固定値 `"Android-Share-G-ClassRoom"`。
   */
  @get
  @route("sysinfo_Android-Share-G-ClassRoom.json")
  op getSysInfo(): MazecSysInfoResponse;
}
