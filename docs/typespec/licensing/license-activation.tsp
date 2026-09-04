import "@typespec/http";
import "./common.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// ライセンスアクティベーション (LicenseUtil / com.metamoji.lc)
// ============================================================
//
// `com.metamoji.lc.LicenseUtil` (apk/smali_classes2/com/metamoji/lc/LicenseUtil.smali)。
// `CsCloudService`/`DvmCloudService`とは完全に独立した、別ホスト・別プロトコルの
// オフラインライセンスキー(シリアルキー)アクティベーションAPI。`HttpUtil.postJson`
// (`Content-Type: application/json`, 200のみ成功として扱う) 経由で通信する。
//
// ⚠️ **このAPIが実際に使われているかは要確認**: `getProductId()`が返す製品IDは
// 固定文字列 `"Android-Note-Business_3.1.8"` であり、`share_classroom`
// (`com.metamoji.share_classroom`, versionName 3.15.1.0)とは異なる別製品
// ("Note Business" 3.1.8)のものになっている。呼び出し元は
// `com.metamoji.noteanytime.EntryActivity` と `AndroidManifest.xml` に登録された
// `LicenseKeyInputProxyActivity` (taskAffinity `com.metamoji.license`) で、
// コード自体は到達可能だが、実際にこの画面がユーザーに提示される経路(オンプレミス版/
// 買い切りシリアルキー版など)は未確認。共有ライブラリ由来のレガシー機能である可能性が高い。
//
// **ベースURL**: 本番 `https://license.metamoji.com/mmjlicense/`、
// 検証用(`ModelInfo.isEvalEdition`時) `https://license-test.metamoji.com/mmjlicense/`。
// 各エンドポイントのパスは `{BASE_URL}{command}/` (末尾に`/`が付与される) で組み立てられる。
//
// **改ざん検知用ハッシュ**: すべてのリクエスト/レスポンスに `tt_hash` フィールドがあり、
// `MD5("mmj" + ":" + arg1 + ":" + arg2 + ... )` (`createHash`、`StringUtil.md5`) で
// 算出される。引数の順序はエンドポイントごとに異なる(各operationのdocコメント参照)。

model LicenseActivateRequest {
  /** 初回起動時に生成されローカル保存される乱数UUID */
  tt_deviceid: string;

  /** 固定文字列 `"Android-Note-Business_3.1.8"` (`getProductId()`) */
  tt_productid: string;

  /** ユーザーが入力したライセンスキー文字列 */
  tt_licensekey: string;

  /** `Build.BRAND + " " + Build.MODEL` */
  tt_devicename: string;

  /** `MD5("mmj:{tt_deviceid}:{tt_productid}:{tt_licensekey}:{tt_devicename}")` */
  tt_hash: string;
}

model LicenseActivateResponse {
  /** `MD5("mmj:{tt_deviceid}:{tt_productid}:{i_result}:{i_status}")`。クライアント側で検証し、
   * 不一致の場合はエラー扱いになる。 */
  tt_hash?: string;

  /** 0 = 成功。負値はネットワーク/フォーマットエラー扱い */
  i_status?: int32;

  /** アクティベーション結果コード (詳細は未確認。0のとき有効ライセンスとして扱われる) */
  i_result?: int32;
}

model LicenseGetRemainingDaysRequest {
  tt_deviceid: string;
  tt_productid: string;

  /** 現在アクティベート済みのライセンスキー (`LicenseUtil.mKey`) */
  tt_licensekey: string;

  tt_devicename: string;

  /** `MD5("mmj:{tt_deviceid}:{tt_productid}:{tt_licensekey}:{tt_devicename}")` */
  tt_hash: string;
}

model LicenseGetRemainingDaysResponse {
  /** `MD5("mmj:{tt_deviceid}:{tt_productid}:{i_result}:{i_days}:{i_status}")` */
  tt_hash?: string;

  i_status?: int32;
  i_result?: int32;

  /** 今日から起算した有効残日数。`addDays(today, i_days)` で有効期限日付を算出する */
  i_days?: int32;
}

interface LicenseActivation {
  /**
   * ライセンスキーをオンラインでアクティベートする。
   *
   * - 元Javaメソッド: `LicenseUtil.onlineActivate`
   * - HTTPメソッド: POST (`Content-Type: application/json`)
   * - パス: `{BASE_URL}license/activate2/`
   */
  @post
  @route("license/activate2/")
  op activate(@body body: LicenseActivateRequest): LicenseActivateResponse;

  /**
   * アクティベート済みライセンスの残り有効日数を問い合わせる。
   *
   * - 元Javaメソッド: `LicenseUtil.queryRestDays`
   * - HTTPメソッド: POST (`Content-Type: application/json`)
   * - パス: `{BASE_URL}license/getremainingdays/`
   */
  @post
  @route("license/getremainingdays/")
  op getRemainingDays(@body body: LicenseGetRemainingDaysRequest): LicenseGetRemainingDaysResponse;
}
