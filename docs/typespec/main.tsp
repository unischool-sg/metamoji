import "@typespec/http";

import "./common.tsp";
import "./auth.tsp";
import "./user.tsp";
import "./drive.tsp";
import "./classbox.tsp";
import "./messaging.tsp";
import "./settings.tsp";
import "./license.tsp";
import "./misc.tsp";

using TypeSpec.Http;

/**
 * MetaMoji ClassShare (share_classroom) クラウド連携API
 *
 * `com.metamoji.share_classroom` APK (versionName 3.15.1.0 / versionCode 43) を
 * apktoolで展開したsmaliコードを解析して再構築した非公式ドキュメントです。
 * 実装は `com.metamoji.cs.dc.CsCloudService` (JSON-RPC風のクラウドAPIクライアント)
 * および付随する `com.metamoji.cs.dc.params.*` / `com.metamoji.cs.dc.response.*` の
 * Param/Responseクラス群から抽出しています。詳細な前提・注意点は [README](./README.md) を参照してください。
 */
@service({ title: "MetaMoji ClassShare Cloud API (Unofficial / Reverse-Engineered)" })
@server(
  "https://mps.metamoji.com",
  "ブートストラップ用ルートサーバー。ログイン前のエンドポイント (`/users3/login` 等) やルートサーバー直下の静的/特殊エンドポイント (`/sso/requestcredential`, `/mpsroot/crashlog/upload`, `/maintenance2_common.txt`) はここを基点とする。"
)
namespace MetamojiClassShare;
