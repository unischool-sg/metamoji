# 解析ドキュメント一覧

`apk/` に展開済みの `com.metamoji.share_classroom` (バージョン 3.15.1.0, versionCode 43) — 通称 **MetaMoJi Share Classroom**(手書きノートアプリ「Note Anytime」をベースにした教育・クラスルーム向け製品)を apktool で逆コンパイルした結果を解析し、Tauri (PC向け) での作り直しを検討するための資料をまとめたもの。

## ドキュメント構成

1. [01-architecture-analysis.md](01-architecture-analysis.md) — アーキテクチャ・設計分析
   ノート/ドキュメントのデータモデル、描画エンジン、手書き認識(mazec)、ローカルDB、メディア処理、クラウド/ネットワーク通信、認証まわりの内部設計をまとめたもの。
2. [02-feature-analysis.md](02-feature-analysis.md) — 機能分析
   画面(Activity)一覧、権限、ユーザーが実際に使える機能をカテゴリ別に整理したもの。
3. [03-tauri-migration-notes.md](03-tauri-migration-notes.md) — Tauri移植に向けた方針・論点
   何がそのまま設計を流用できて、何を作り直す必要があるか、スコープ・技術選定の論点整理(この段階ではまだ実装しない)。

## 解析方法・注意事項

- 解析は apktool で展開した smali コード(約29,000クラスファイル、4つの dex に分割)、`AndroidManifest.xml`、`res/values/strings.xml`、`assets/`、`lib/*.so` のファイル名・シンボル・文字列定数を中心に行った(全コードの逐次解読ではなく、クラス名・フィールド・JNIシグネチャ・文字列リソースからアーキテクチャを推定する方式)。
- 本アプリは MetaMoJi 社の商用製品であり、手書き認識エンジン(mazec, ネイティブ実装)やサーバー(`cabinet.7knowledge.com` / `mps.metamoji.com` など)は同社の資産・サービスである。本解析はあくまで**自分のアプリを別実装で作り直すための設計理解**を目的としており、ネイティブ認識エンジンのアルゴリズム自体をリバースエンジニアリングして流用したり、MetaMoJi社のサーバーに無断で接続する互換クライアントを作ることは想定していない。Tauri版では独自のバックエンド・独自の認識手段に置き換える前提で設計する。
