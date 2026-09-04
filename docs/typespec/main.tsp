import "@typespec/http";
import "@typespec/openapi";

// 認証・ユーザー
import "./auth/auth.tsp";
import "./auth/user.tsp";

// ドライブ・同期
import "./drive/drive.tsp";
import "./drive/sync-drive.tsp";
import "./drive/webdav.tsp";

// 授業ルーム(クラスボックス・リアルタイム共有・配信・成績)
import "./classroom/classbox.tsp";
import "./classroom/collabo.tsp";
import "./classroom/distribute.tsp";
import "./classroom/gradebook.tsp";

// メディア(ギャラリー・動画)
import "./media/gallery-media.tsp";
import "./media/video.tsp";

// メッセージング
import "./messaging/messaging.tsp";

// ライセンス・課金
import "./licensing/license.tsp";
import "./licensing/license-activation.tsp";
import "./licensing/mazec-purchase.tsp";

// アプリ設定・メンテナンス
import "./system/settings.tsp";
import "./system/sysinfo.tsp";
import "./system/misc.tsp";

// レガシー・到達不能なAPI
import "./legacy/library-store.tsp";
import "./legacy/remote-converter.tsp";

// 共通モデル(すべてのドメインファイルから参照される基底型)
import "./common.tsp";

using TypeSpec.Http;
using TypeSpec.OpenAPI;

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
// レガシー・到達不能 (先に宣言するとタグ一覧の末尾に出力される)
@tagMetadata("リモートファイル変換", #{ description: "3ステップの非同期ファイル形式変換ジョブ。**呼び出し元が存在せず到達不能と確認済み** (legacy/remote-converter.tsp)。" })
@tagMetadata("レガシーコンテンツストア", #{ description: "旧世代のコンテンツストア(ゲストログイン/ページ一覧/商品情報、`com.metamoji.lb`) (legacy/library-store.tsp)。" })
// アプリ設定・メンテナンス
@tagMetadata("メンテナンス・ログ", #{ description: "メンテナンス情報の取得、操作ログ・クラッシュログの送信 (system/misc.tsp)。" })
@tagMetadata("アプリ設定マニフェスト", #{ description: "起動時に取得するEULA/バージョン情報・ヘルプリンク・辞書/フォントのダウンロードURLなどの静的マニフェスト (`NtSysInfoManager`) (system/sysinfo.tsp)。" })
@tagMetadata("クライアント設定", #{ description: "アプリのクライアント設定・設定ファイルのサーバー同期 (system/settings.tsp)。" })
// ライセンス・課金
@tagMetadata("Mazec辞書アドオン", #{ description: "手書き認識エンジン「Mazec」の追加言語辞書アドオンの更新チェック (licensing/mazec-purchase.tsp)。" })
@tagMetadata("ライセンスアクティベーション", #{ description: "オフラインライセンスキー(シリアルキー)のオンラインアクティベーション/残日数照会。別ホスト `license.metamoji.com` (licensing/license-activation.tsp)。" })
@tagMetadata("ライセンス・課金", #{ description: "ライセンス購入・インク残量同期・共有機能の利用可否確認 (licensing/license.tsp)。" })
// メッセージング
@tagMetadata("ダイレクトメッセージ", #{ description: "ユーザー間のダイレクトメッセージの取得・削除 (messaging/messaging.tsp)。" })
// メディア
@tagMetadata("動画ノート", #{ description: "ノートに埋め込む動画クリップの録画・アップロード・一覧・削除。動的な「Flora」サーバーを使用 (media/video.tsp)。" })
@tagMetadata("ギャラリーメディア", #{ description: "ノートに添付する音声・写真のアップロード/一覧/削除 (`Media*`) (media/gallery-media.tsp)。" })
// 授業ルーム
@tagMetadata("成績表・テストログ", #{ description: "授業ルーム内の小テスト実施ログ・採点・レポート提出状況 (`forSchool.service`) (classroom/gradebook.tsp)。" })
@tagMetadata("クラス配信", #{ description: "教師が作成したノートを変換ジョブとして登録し生徒へ配信する機能、およびクラッシュログ送信 (`DvmCloudService`) (classroom/distribute.tsp)。" })
@tagMetadata("授業ルーム共有 (リアルタイム)", #{ description: "教員・生徒が同時参加する授業ルームの作成/ログイン/ロール管理/設定同期/ギャラリー投稿 (`NsCollabo`) (classroom/collabo.tsp)。" })
@tagMetadata("クラスボックス", #{ description: "オンライン授業ルーム(クラスボックス)の作成・管理 (classroom/classbox.tsp)。" })
// ドライブ・同期
@tagMetadata("WebDAV データプレーン", #{ description: "ノート/ドキュメント本体のアップロード・ダウンロード・削除・一覧取得 (GET/PUT/DELETE/HEAD/MKCOL/MOVE/PROPFIND/PROPPATCH) (drive/webdav.tsp)。" })
@tagMetadata("ドライブ同期 (次世代REST API)", #{ description: "`SdCloudService` によるドライブ/ドキュメント同期。WebDAV経路と並行して稼働する新世代API (drive/sync-drive.tsp)。" })
@tagMetadata("ドライブ・共有フォルダ", #{ description: "共有フォルダ(ドライブ)の作成・削除・メンバー管理・共有リンク発行 (drive/drive.tsp)。" })
// 認証・ユーザー
@tagMetadata("ユーザー・組織情報", #{ description: "ログイン中ユーザーおよび所属組織(グループ)の情報取得 (auth/user.tsp)。" })
@tagMetadata("認証・アカウント管理", #{ description: "login / logout / register / パスワード変更 / EULA同意 / SSO資格情報の取得など (auth/auth.tsp)。" })
namespace MetamojiClassShare;
