import "@typespec/http";
import "./common.tsp";

using TypeSpec.Http;

namespace MetamojiClassShare;

// ============================================================
// ライセンス・課金 (Licensing)
// ============================================================

model CsInkAmountSyncParams extends CsRequestBase {
  update?: Record<unknown>;
}

model CsInkAmountSyncResponse extends CsResponseBase {
  licenseList?: unknown[];
  result?: string;
  version?: string;
}

model CsPurchaseParam extends CsRequestBase {
  m_paramDic?: CsNameValuePair[];
}

model CsPurchaseResponse extends CsResponseBase {
  result?: string;
  version?: string;
}

model CsProductLicenseSyncParam extends CsRequestBase {
  update?: Record<unknown>;
}

model CsProductLicenseSyncResponse extends CsResponseBase {
  licenseList?: unknown[];
  result?: string;
  version?: string;
}

model CsSimulationPurchaseParam extends CsRequestBase {
  m_paramDic?: CsNameValuePair[];
}

model CsSimulationPurchaseResponse extends CsResponseBase {}

model CsGetShareInfoParam extends CsRequestBase {}

model CsGetShareInfoResponse extends CsResponseBase {
  hasBaseLicense?: boolean;
  message?: string;
  result?: string;
  version?: string;
}

interface Licensing {
  /**
   * 手書きインク使用量をサーバーと同期する。
   *
   * - 元Javaメソッド: `CsCloudService.executeInkAmountSyncWithParams`
   * - HTTPメソッド: POST
   * - パス: `/License`
   */
  @post
  @route("/License")
  op inkAmountSync(@body body: CsInkAmountSyncParams): CsInkAmountSyncResponse;

  /**
   * ライセンスを購入する。
   *
   * - 元Javaメソッド: `CsCloudService.executePurchaseLicenseWithParams`
   * - HTTPメソッド: POST
   * - パス: `/Purchase`
   */
  @post
  @route("/Purchase")
  op purchaseLicense(@body body: CsPurchaseParam): CsPurchaseResponse;

  /**
   * 検証用のダミー購入を行う(課金テスト用エンドポイント)。
   *
   * - 元Javaメソッド: `CsCloudService.executeDummyPurchaseLicenseWithParams`
   * - HTTPメソッド: POST
   * - パス: `/DummyPurchase`
   */
  @post
  @route("/DummyPurchase")
  op dummyPurchaseLicense(@body body: CsPurchaseParam): CsPurchaseResponse;

  /**
   * 製品ライセンス情報をサーバーと同期する。
   *
   * - 元Javaメソッド: `CsCloudService.executeProductLicenseSyncWithParams`
   * - HTTPメソッド: POST
   * - パス: `/ProductLicense`
   */
  @post
  @route("/ProductLicense")
  op productLicenseSync(@body body: CsProductLicenseSyncParam): CsProductLicenseSyncResponse;

  /**
   * 購入シミュレーションを実行する(検証用)。
   *
   * - 元Javaメソッド: `CsCloudService.executeSimulationPurchaseWithParams`
   * - HTTPメソッド: POST
   * - パス: `/SimPurchase`
   */
  @post
  @route("/SimPurchase")
  op simulationPurchase(@body body: CsSimulationPurchaseParam): CsSimulationPurchaseResponse;

  /**
   * 共有機能に関する情報(上限数など)を取得する。
   *
   * - 元Javaメソッド: `CsCloudService.executeGetShareInfoWithParams`
   * - HTTPメソッド: POST
   * - パス: `/GetShareInfo`
   */
  @post
  @route("/GetShareInfo")
  op getShareInfo(@body body: CsGetShareInfoParam): CsGetShareInfoResponse;

}
