# MetaMoJi (Tauri + React)

`docs/` の解析結果をもとに、MetaMoJi Share Classroom をデスクトップアプリとして
作り直したもの。Tauri v2 + React 19 + TypeScript + Vite。

## スコープ

`docs/03-tauri-migration-notes.md` §1 の A / B / C をすべて実装した。
項目ごとの状況は [FEATURES.md](FEATURES.md) を参照。

- **A. スタンドアロン・ノートアプリ** — 手書き(筆圧)、消しゴム、なげなわ、
  図形、表・罫線、テキスト、付箋、画像、アンケート、レーザーポインタ、
  複数ページとレイヤー、PDF 入出力、`.atdoc` 取り込み、
  フォルダ・タグ・全文検索、日本語/英語。
- **B. クラウド同期** — リビジョン同期。競合は `docs/12` §4 の
  サーバー優先 + 複製保存。
- **C. 教室協働** — WebSocket リレー、Direction 配信、教師用の操作
  (締切・ロック / 注目 / 配信 / モニタリング)、オフライン編集。

B と C のサーバーは [`../server/`](../server/) の参照実装。

## サインイン

サインインは **MetaMoJi のサーバー**(`mps.metamoji.com`)に対して行う。
`docs/typespec/auth/auth.tsp` のプロトコルを実装したもので、
実装は [`src-tauri/src/cloud.rs`](src-tauri/src/cloud.rs)。

| 方式 | 入力 | 元ドライバー(`docs/14` §1) |
|---|---|---|
| 学校ID とユーザーID | 学校ID + ユーザーID + パスワード | `NormalLoginDriver` |
| 簡易ログイン | 学校ID + クラス + 出席番号 + パスワード | `SimpleLoginDriver` |
| QR コード | `$cid=…,uid=…` + パスワード | `QRCodeParser` → `NormalLoginDriver` |
| SSO | — | `SSODriver`(未実装) |

**2段階**になっている。学校IDだけでは接続先が決まらないため、まず
`GET <root>mpsroot/RequestServlet?coLoginId=…` でテナントのサーバーを引き、
その上で `POST <server>mmjeditor2/2.0/users3/login` を投げる。UI に「確認」
ボタンがあるのはそのためで、パスワードを入力する前に学校IDの誤りが分かる。

**HTTP は Rust 側で行う。** `mps.metamoji.com` が `tauri://localhost`
オリジンに CORS を返す理由はないので、WebView からの `fetch` は端末を出る前に
ブロックされる。セッションが Cookie であることも Rust 側に置く理由になっている。

**セッションは永続化しない。** 元アプリは `qwd`(パスワード相当のトークン)を
保存してサイレント再ログインするが、それを `localStorage` に置くと WebView 上の
任意のコードから読める。Cookie は Rust プロセスが持ち、プロセスとともに消える
── 起動のたびに入力を求める代わりに、資格情報がディスクに残らない。

## 教室(実サーバー)

MetaMoJi の教室は2階建てで、UI もそれに合わせてある。

- **クラスボックス**(`/users3/crbox/*`)— クラスで共有するドライブ。
  先生が作り、参加コードを読み上げ、生徒はそのコードで一度だけ参加する。
- **ルーム**(`cosmos/*` + 中継ソケット)— その中で開く授業のセッション。

ルームに入るのは3手で、途中で失敗したら何も残らないよう一括で行う:

```
cosmos/LoginRoom  → 中継サーバーのアドレス + sessionID
TLS 接続          → まだセッションの無いソケット
ソケット LoginRoom → ここでセッションが始まる
```

**中継は WebSocket ではない。** 生の TLS 上の独自行プロトコルで、
`\n{boothId}\t{packetNo}\t{params}\n[生バイト]` というフレームを
`NsCollaboSocket` が手で組んでいる。ペイロードは長さ指定で続くだけで区切りが無く、
中に改行が入りうるため、行単位ではなくバイト単位で読む必要がある
([`src-tauri/src/collabo/wire.rs`](src-tauri/src/collabo/wire.rs))。

クライアントから ping は打たない。サーバーの `Ping` に答えつつ、
30秒受信が無ければ切る ── 死活は「応答が無いこと」で判定する仕様。

`cosmos/*` は `users3/*` とは別のサービスで、multipart かつ **リクエストごとに
`authInfo` で認証する**(Cookie ではない)。そのためパスワード相当の資格情報を
サインイン中だけ Rust プロセス内に保持する。WebView には渡らず、保存もしない。

### まだ動かないもの

**編集内容の送受信。** Direction のペイロードは `.atdoc` と同じ `IModel` 形式で
シリアライズされた `direction` 型モデル1個
(`collabo-socket-protocol.md` §6.1)で、このビルドはその形式を**読めるが書けない**。
`.atdoc` は「読み込みのみ」という当初の方針でリーダーしか作っていないため。

したがって現状は、教室・参加者・ロール・先生からのメッセージは動き、
ストロークは端末内にとどまる。受信した Direction は件数だけ画面に出して、
欠けていることが見えるようにしてある。塞ぐには `atdoc/` にライターが要る。

### 参照バックエンド(`server/`)

スコープ B/C は元々 `server/` 向けに作ってあり、コードとテストは残っている。
現在 UI から到達しないだけで、
[`src/sync/referenceBackend.ts`](src/sync/referenceBackend.ts) に
セッションを与えれば戻る。

### JSON のキー名は Java のフィールド名と一致しない

`docs/typespec/` のモデルは `CsXxxResponse` の**フィールド名**から起こしてあり、
ワイヤ上のキーとは別物のことがある。実サーバーで確認した実例:

| TypeSpec / Java フィールド | 実際の JSON キー |
|---|---|
| `serverUrl` | **`serverURL`** |
| `allList` | **`alllist`** |
| `userId`(ログイン応答) | **`uuid`** |

`CsCloudService` が `bodyMessage` を手で読んでいる箇所(`const-string` のリテラル)
が正解で、フィールド名は当てにならない。エラーも同様で、REST API は
`{name, message, data:{errorCode}}` と入れ子になっており、トップレベルの
`errorCode` は `RequestServlet` だけの形。

### `productName` / `productVersion` はプロトコル定数

サーバーはこの2つを**検証している**。自前のバージョン(`0.1.0`)を送ったところ
「The product version is not supported」でログインを拒否された。したがって
`Android-Share-G-ClassRoom` / `3.15.1.0`(解析対象 APK の `versionName`)を
そのまま送る。テレメトリではなく契約の一部で、MetaMoJi 社がこのリリースの
サポートを打ち切ったら上げ直す必要がある ── `apk/apktool.yml` と定数が
ずれないようテストで固定してある。

このクライアントの正体は `deviceName` に入れてある
(`ホスト名 (MetaMoJi Desktop 0.1.0)`)。学校の管理者が端末一覧で見るのは
この欄なので、Android 端末のふりをしたまま黙っていることにはならない。

### 検証について

学校のアカウントを持っていないため、**サインインそのものは実サーバーで確認できていない。**
ログイン前の2つのエンドポイントは実際に叩いて確認した:

```
GET  mpsroot/RequestServlet?coLoginId=…    → serverURL / isClassRoom
POST /users3/getclassroominfo              → 59クラス(出席番号つき)
```

`src-tauri/src/cloud_wire_tests.rs` はその実応答を切り詰めたものを fixture に
使っており、URL の組み立て、`X-DM-*` ヘッダ、共通パラメータ、両方のエラー封筒、
テナントホストの切り替えを検証している。

## 意図的に実装しないもの

- **手書き文字認識**。元アプリの mazec はプロプライエタリで流用できない
  (`docs/03` §2)。ストロークの取得・保存・描画のみを行う。
  認識を後から足す場合は `Recognizer` インターフェースを1つ足すだけで済むよう、
  ストロークは時刻と筆圧を保持している。
- **`.atdoc` の書き出し**。読み込みのみ(ユーザー指定)。
- **課金・ライセンス**。同社の商流に紐づくため移植対象外。
- **動画・音声 Unit**。デスクトップでは ffmpeg 前提になりスコープ A の
  中核から外れるため、取り込み時はプレースホルダーとして保持する。

## 開発

```bash
bun install
bun run tauri dev
```

| コマンド | 内容 |
|---|---|
| `bun run tauri dev` | アプリを開発モードで起動 |
| `bun run tauri build` | 配布用ビルド |
| `bun run test` | フロントエンドのテスト |
| `bun run typecheck` | 型チェック |
| `bun run gen:tokens` | Material のカラートークンを再生成 |
| `bun run gen:icons` | 使用アイコンのパスデータを再生成 |
| `bun run gen:icon` | アプリアイコン(`.icns`/`.ico`/PNG)を再生成 |
| `cd src-tauri && cargo test` | Rust のテスト(`.atdoc` パーサ含む) |
| `cd ../server && bun run start` | 同期・教室のバックエンド |
| `cd ../server && bun test` | サーバーのテスト |

## 設計

### レイヤー構成

```
              [型付きドメインモデル]        types.ts / factory.ts
                      ↕  converter.ts
              [汎用モデルツリー]            generic.ts
              (型タグ + プロパティ辞書)
                      ↕  IPC
   Rust        [SQLite]                     storage.rs
                      ↑
              [.atdoc インポータ]           atdoc/
```

エディタとレンダラは**型付きモデル**だけを見る。保存・インポート・同期は
すべて**汎用モデルツリー**を経由する。この分離が、ユーザー指定の
「軽いレンダラを作りつつ、内部で入出力の互換性を保つ converter」にあたる。

汎用ツリーは元アプリの「モデルツリー + 型タグ付きプロパティ辞書」という考え方
(`docs/01` §2)をそのまま踏襲しており、`.atdoc` インポータの出力先も同じ形。
そのため legacy 取り込みは別パイプラインではなく converter の問題になっている。

往復での欠落を防ぐため:

- converter が解釈しなかったプロパティは `_extra` に退避し、保存時に書き戻す
- 未対応の Unit 種別は `$dummy` として原本を保持する
  (元アプリの `$dummy` Unit と同じ発想 — `docs/05` §4)

### 編集と Undo

`docs/15` §6 の4つの提言をそのまま実装している。

- コマンドはドメインごとに分割(443個のフラットな enum は作らない)
- `beginEdit`/`endEdit` は再入可能。**1ジェスチャー = 1 CompoundEdit = 1 Undo**
- `endEdit` は**必ず1つの `ModelChanged`** を発行する。
  元アプリは `sendDirection` が十数個の Unit クラスに散在しており、
  新しい Unit 型を足すたびに配信の書き忘れリスクがあった(`docs/15` §4)。
  ここでは配信するかどうかを Unit 側が知る必要がない。
- `canUndo`/`canRedo` は購読可能な状態で、ボタンは明示的な更新なしに追従する

### 見た目 — Material 3

UI は Material Design 3 に従っている。元アプリの UI は 531 個のカスタムレイアウト
でできており、Android のドローアブルも流用できない(`docs/02` §4)。どのみち
一から作る必要があったので、独自のルック&フィールを発明するより、仕様が公開されて
いて検証もできる体系に乗せた。

**色は手で選んでいない。** `scripts/gen-tokens.ts` が Google の
`material-color-utilities` にシード色を渡し、`--md-sys-color-*` の全ロールを
生成して `src/styles/tokens.css` を書き出す。シードは元アプリのアクセント
`#32a5ff`(`docs/09` §5)なので、Material の既定の紫ではなく MetaMoJi の青のまま。

- 既定の *tonal spot* ではなく *fidelity* スキームを使っている。tonal spot は
  シードを意図的にくすませ、`#32a5ff` が `#33618d` になってしまう。fidelity は
  ブランド色をそのままロールとして残す(明暗どちらでも `primary-container`)。
- on/container の組み合わせはすべて 4.5:1 以上を確認済み。仕様どおりの生成物
  なので、これは偶然ではなく構造的にそうなる。
- **`tokens.css` は生成物なので手で編集しない。** シードを変えたら
  `bun run gen:tokens`。

**アイコンは Material Symbols**(outlined / weight 400)。`scripts/gen-icons.ts`
が `@material-symbols/svg-400` から必要な分だけパスデータを抜き出して
`src/components/icons.generated.ts` を作る。アイコンフォントを読み込まないので
FOUT もネットワークアクセスも無い。

**コンポーネントは `global.css` に自前で書いている**。`@material/web` は
Web Components で、自前で DOM を持つ React ツリー(特にキャンバス)に
Shadow DOM を混ぜると得より面倒が多い。ステートレイヤー・エレベーション・
シェイプスケール・タイプスケールはトークンから引いている。

リップルだけは CSS で書けない — 押した位置が中心になるため。
`components/ripple.ts` が一箇所の委譲リスナーとして入れている。

### 描画

`docs/10` の Sprite/Layer/Stage シーングラフは**再現していない**。あれは
すべての再描画が Android の View 境界をまたぐ環境で意味があった構造で、
自前のキャンバスではドキュメントツリー自体がシーングラフとして機能する。

採用したのは効果のある部分だけ:

- ビューポートカリング(Unit 単位の矩形判定)
- wet/dry インク分離 — 確定インクは `scene` に一度描き、ペン先のストロークだけを
  `overlay` に単独で描く。ポインタ移動が React にも確定インクにも触れないため、
  ストローク遅延がページの内容量に依存しない
- 画面・サムネイル・書き出しが同じ描画関数を通る(`docs/10` §7 の `Context` の seam)

`renderPage` は**最初にキャンバスをクリアする**。したがって台紙・用紙の影・
作業領域の色は、呼び出し側が先に塗るのではなく `renderPage` のオプションとして
渡す。ここを間違えても画面上は「ちょっと暗い背景」にしか見えないため気づけない
(不透明キャンバスのクリアは黒になる)。PDF 書き出しが真っ黒になったのも
同じ罠で、いまは `render/renderer.test.ts` と `io/pageRender.test.ts` の
両方が順序を固定している。

キャンバスの**内容**(用紙の色、罫線、ヘッダー・フッター)はトークンを使わず
リテラルのまま。同じ関数が画面・サムネイル・PDF を描くので、ダークモードで
書き出した PDF が黒くなっては困る。テーマに追従するのは選択枠やレーザーなどの
**クローム**だけで、それは `canvas/theme.ts` がトークンから読む。

線幅可変のインクは**アウトライン多角形を1回 fill** する。サンプルごとに円を
スタンプする方式は、半透明のマーカーが重なりで濁るうえ描画呼び出しが
サンプル数に比例するため採らなかった。

### 保存形式

- `library.db` — ノート一覧のカタログ
- ノート1件 = `<id>.mmnote`(SQLite ファイル1つ)

モデル行は `docs/04` §10 が推奨する `(id, parent_id, model_type, props_json)`。
1ノート1ファイルにしているのは、コピー・バックアップ・書き出しが素直になり、
1件の破損がライブラリ全体に波及しないため。`revision` はスコープ A の時点から
持たせてあり、同期を足すときにスキーマ変更が要らなかった。

## `.atdoc` インポート

**docs の2つの記述は誤っている。** 実装にあたって smali を読み直した結果:

| docs の記述 | 実際 |
|---|---|
| `docs/04` §9: `PlainValueSerializer` のタグ体系は未解析 | 単純な switch で完全に読める。全14タグを解読し、実ファイルに対してバイト単位で検証済み |
| `docs/05` §8: インク幾何はネイティブの `DrawUnitComponent` 内にあり IModel には露出しない | `DrawUnitComponent.smali` は `System.loadLibrary` のスタブで、native メソッドを1つも宣言していない。ストローク座標は通常の `PointArray` プロパティとして保存されている |

`docs/04` §3 §5 にも2点の誤りがあり、コード中のコメントに記録した。
`docs/14` §1 のログイン成功条件も逆になっている(`src-tauri/src/cloud.rs` の
`check_error_code` を参照)。

### 復元できるもの / できないもの

| 内容 | 精度 |
|---|---|
| コンテナ、モデルツリー、モデルタイプ、プロパティ値 | 完全 |
| **手書きストローク**(座標・色・太さ・不透明度・ペン種別・変形) | 復元可能 |
| ページ、レイヤー、画像、Unit の配置 | 完全 |
| 点ごとの筆圧 | **不可**。元形式が float32 の x/y のみを保持しているため。一定値になり、線幅はペンスタイル由来になる |
| リッチテキストの本文 | **未対応**。テキストモデルはプロパティマップの後ろに `DataArchiver` 形式のペイロードを追加しており、これは別のエンコーディング。位置と書式のみ取り込む |
| 未実装 Unit 種別(動画・音声・アンケート等) | 位置とサイズを保った**プレースホルダー**として取り込む。バイト列は破棄しない |

Undo テーブルから到達できるモデルは**意図的に除外**している。`docs/05` §7 が
警告するとおり、Undo レコードは `n*`/`o*` という別語彙を使っており、
コンテンツスキーマに混ぜると壊れる。

### テスト

リポジトリに `.atdoc` のサンプルは無いが、`apk/assets/init/` に
**同じ形式の実ドキュメント**が同梱されている。これを golden corpus として使用:

```
start guide: v2 | 1303 models | 4 pages | 1076 strokes | 0 undecoded
```

`apk/` が無いチェックアウトではこのテストは自動的にスキップされる。

`.atdoc` の**関連付けは登録していない**。両方インストールされている環境で
本家アプリの関連付けを奪ってしまうため、取り込みはメニューからの明示操作のみ。

## 同期と教室協働

**同期(B)** はモデル層に一切手を入れずに載った。`EditSession` の
`ModelChanged` を購読するだけで編集経路に入れる設計にしてあったため。
カタログの `server_revision` が `docs/06` §5 の楽観ロックトークンで、
書き込み時に `check` として送る。

**教室協働(C)** も同じフックに1箇所つないだだけで済んでいる
(`src/classroom/bridge.ts`)。Unit 側のコードはネットワークの存在を知らない。
`docs/15` §4 が指摘する「`sendDirection` が十数個の Unit クラスに散在し、
新しい Unit 型を足すたびに書き忘れる」という弱点は構造的に起こらない。

`EditSource` が `local`/`undo`/`redo`/`remote` を区別するため、
受け取った編集をそのまま送り返すエコーも起きない。

**オフライン編集**は `docs/14` §2 のレイヤー分離方式。
切断中の作業は専用レイヤーに隔離され、復帰時にまるごと個人レイヤーへ移る。
他の誰も書き込まないレイヤーにしか着地しないため衝突が起こりえない
── 解決するのではなく設計で消している。スコープ A の時点で存在した
delta 語彙だけで書けており、新しいプリミティブは要らなかった。
