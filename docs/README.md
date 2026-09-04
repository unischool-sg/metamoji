# 解析ドキュメント一覧

`apk/` に展開済みの `com.metamoji.share_classroom` (バージョン 3.15.1.0, versionCode 43) — 通称 **MetaMoJi Share Classroom**(手書きノートアプリ「Note Anytime」をベースにした教育・クラスルーム向け製品)を apktool で逆コンパイルした結果を解析し、Tauri (PC向け) での作り直しを検討するための資料をまとめたもの。

## ドキュメント構成

### 概要レベル

1. [01-architecture-analysis.md](01-architecture-analysis.md) — アーキテクチャ・設計分析
   ノート/ドキュメントのデータモデル、描画エンジン、手書き認識(mazec)、ローカルDB、メディア処理、クラウド/ネットワーク通信、認証まわりの内部設計をまとめたもの。
2. [02-feature-analysis.md](02-feature-analysis.md) — 機能分析
   画面(Activity)一覧、権限、ユーザーが実際に使える機能をカテゴリ別に整理したもの。
3. [03-tauri-migration-notes.md](03-tauri-migration-notes.md) — Tauri移植に向けた方針・論点
   何がそのまま設計を流用できて、何を作り直す必要があるか、スコープ・技術選定の論点整理(この段階ではまだ実装しない)。

### 詳細レベル(深掘り調査)

4. [04-atdoc-format-spec.md](04-atdoc-format-spec.md) — `.atdoc`バイナリフォーマットのバイト単位仕様(マジックナンバー、ヘッダレイアウト、ブロックアロケータ、モデルテーブル、Undoテーブル、V1〜V3の差分)
5. [05-unit-property-schema.md](05-unit-property-schema.md) — 各Unit(テキスト/画像/PDF/動画/音声/アンケート/付箋/フォーム系等)の実プロパティキー・型の一覧
6. [06-classroom-protocol-spec.md](06-classroom-protocol-spec.md) — 教室協働("Collabo")のREST API・ソケットワイヤプロトコル・Direction(操作)データモデルの詳細仕様
7. [07-local-db-schema.md](07-local-db-schema.md) — ローカルDB(ORMLite "Dm"/"Sd"、レガシーSQL "ctold")の完全スキーマ
8. [08-mazec-native-interface.md](08-mazec-native-interface.md) — mazec手書き認識エンジンのネイティブ(JNI)インターフェース、対応言語、辞書構造
9. [09-strings-and-assets-catalog.md](09-strings-and-assets-catalog.md) — UI文字列・アイコン・カラー/フォント等アセットの網羅カタログ

### 関連リソース(別セッションによる並行調査)

- [typespec/](typespec/) — `com.metamoji.cs.dc.CsCloudService`(DigitalCabinet/ClassShareクラウドAPI, 53エンドポイント)とWebDAVデータプレーンをTypeSpecとして再構築したもの。本ドキュメント群(特に[06-classroom-protocol-spec.md](06-classroom-protocol-spec.md))とは別の通信レイヤー(`CsCloudService`)を対象にしており、相互に補完関係にある。未解析領域は[typespec/ROADMAP.md](typespec/ROADMAP.md)を参照。

## 解析方法・注意事項

- 解析は apktool で展開した smali コード(約29,000クラスファイル、4つの dex に分割)、`AndroidManifest.xml`、`res/values/strings.xml`、`assets/`、`lib/*.so` のファイル名・シンボル・文字列定数を中心に行った(全コードの逐次解読ではなく、クラス名・フィールド・JNIシグネチャ・文字列リソースからアーキテクチャを推定する方式)。
- 本アプリは MetaMoJi 社の商用製品であり、手書き認識エンジン(mazec, ネイティブ実装)やサーバー(`cabinet.7knowledge.com` / `mps.metamoji.com` など)は同社の資産・サービスである。本解析はあくまで**自分のアプリを別実装で作り直すための設計理解**を目的としており、ネイティブ認識エンジンのアルゴリズム自体をリバースエンジニアリングして流用したり、MetaMoJi社のサーバーに無断で接続する互換クライアントを作ることは想定していない。Tauri版では独自のバックエンド・独自の認識手段に置き換える前提で設計する。
