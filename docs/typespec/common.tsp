import "@typespec/http";

using TypeSpec.Http;

namespace MetamojiClassShare;

/**
 * すべてのリクエストボディに自動付与される共通フィールド。
 * `CsParamBaseAbstract`(Java)が持つ値で、アプリのビルド/実行時コンテキストから設定される。
 */
model CsRequestBase {
  /** 端末名 (`CsCloudServiceContext#getDeviceName`) */
  deviceName?: string;

  /** アプリ製品名 (`CsCloudServiceContext#getProductName`) */
  productName?: string;

  /** アプリのバージョン文字列 */
  productVersion?: string;

  /** 端末ロケール (例: "ja_JP") */
  locale?: string;

  /** 端末タイムゾーン */
  timezone?: string;
}

/**
 * すべてのレスポンスボディに共通するフィールド。
 * `CsResponseBaseAbstract`(Java)由来。`errorCode`が0以外の場合はエラー応答。
 */
model CsResponseBase {
  /** 0=成功、0以外=エラーコード */
  errorCode?: int32;

  /** エラー種別を表す識別子文字列 */
  errorName?: string;

  /** エラーメッセージ (ユーザー表示用) */
  errorMessage?: string;

  /** エラーに付随する任意の追加データ */
  errorData?: Record<unknown>;

  /** レスポンスJSONの生ボディ (型付きプロパティに写像されなかったキーも含む) */
  bodyMessage?: Record<unknown>;

  /** HTTPステータスコード (クライアント側で複写した値) */
  httpStatusCode?: int32;

  /** メンテナンス中かどうか */
  isUnderMaintenance?: boolean;

  /** メンテナンス中に表示するメッセージ */
  maintMessage?: string;

  /** 現在のEULAバージョン */
  currentEULAVersion?: int32;

  /** 同意が必要なEULAバージョン */
  requiredEULAVersion?: int32;
}

/** ログイン情報 (自動ログイン等で使用される、保存済みアカウントの1件分) */
model CsLoginInfo {
  serverUrl?: string;
  isOnPremise?: boolean;
  isClassRoom?: boolean;
  coLoginId?: string;
  userId?: string;
  qwd?: string;
  companyName?: string;
}

/** 汎用キー・バリューペア (課金APIのクエリパラメータ組み立てに使用) */
model CsNameValuePair {
  name?: string;
  value?: string;
}

/** `CsUpdateClassBoxParam.ClassBoxJoinStatus` (Java enum) */
enum CsClassBoxJoinStatus {
  ENABLED,
  DISABLED,
  NO_VALUE,
}
