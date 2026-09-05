# MetaMoJi 参照バックエンド

スコープ B(クラウド同期)とスコープ C(教室協働)のための参照実装。

`docs/03-tauri-migration-notes.md` §2 が明記しているとおり、MetaMoJi 社の
サーバーには接続できない・すべきではない。したがってこの2機能は
自前バックエンドの新規構築が前提になる。これがそのバックエンドで、
規模ではなく読みやすさを優先している(SQLite、単一プロセス、クラスタなし)。

## 設計

エンドポイントの形は `docs/06-classroom-protocol-spec.md` に倣う。
ルーム仲介とドキュメント同期の REST 面があり、REST 側がリアルタイム接続の
アドレスを返す。この2段構成は docs/06 §7 が「理にかなっており踏襲すべき」と
結論づけているもの。

一方、独自のタブ/空白/コロン区切りテキストプロトコル(docs/06 §3)は
再現しない。同じ情報(booth、パケット番号、コマンド、key:value)は
JSON エンベロープで表現できる ── これも docs/06 §7 の推奨どおり。

## 起動

```bash
cd server
bun run start          # http://localhost:8787
PORT=9000 bun run start
METAMOJI_DB=/path/to.sqlite bun run start
bun test
```

## 同期(スコープ B)

| メソッド | パス | 内容 |
|---|---|---|
| POST | `/auth/register` | アカウント作成 |
| POST | `/auth/login` | セッショントークン取得 |
| POST | `/auth/logout` | セッション破棄 |
| GET | `/auth/me` | 現在のユーザー |
| GET | `/sync/delta?since=N` | リビジョン N 以降に変わったドキュメント |
| GET | `/sync/documents/:id` | 本体を取得 |
| PUT | `/sync/documents/:id` | 保存(`check` が楽観ロック) |
| DELETE | `/sync/documents/:id` | 論理削除 |

ドライブは単調増加のリビジョンを持ち、「N より後に変わったもの」を
1回のインデックス検索で答えられる。全ドキュメントの差分を取る必要はない。

書き込みには `check`(クライアントが最後に見たリビジョン)を添える。
サーバーが先に進んでいれば **409** とサーバー側の現在値を返す。
`docs/12-dm-sync-framework.md` §4 のとおり **サーバー優先 + 複製保存** で、
クライアントは自分の版を複製として残す。ノートアプリで2つに分岐した
ページツリーを自動マージすると、どちらのユーザーも描いていないものが
できあがるため、この方針を採る。

削除は行削除ではなく墓標を残す。オフラインだったクライアントに
「消えた」ことを伝える必要があり、行が無い状態は
「まだ見たことがない」と区別できないため。

## 教室(スコープ C)

| メソッド | パス | 内容 |
|---|---|---|
| GET/POST | `/classroom/rooms` | 一覧 / 作成 |
| POST | `/classroom/join` | 参加コードで参加。WebSocket URL を返す |
| GET | `/classroom/rooms/:id` | 詳細・メンバー・接続中の一覧 |
| GET | `/classroom/rooms/:id/directions?since=N` | 再接続時のリプレイ |
| POST | `/classroom/rooms/:id/lock` | 締切・読み取り専用(教師のみ) |
| POST | `/classroom/rooms/:id/attention` | 注目(教師のみ) |
| POST | `/classroom/rooms/:id/distribute` | ノート配信(教師のみ) |
| GET | `/classroom/rooms/:id/distributions` | 配信済み一覧 |
| GET/POST | `/classroom/rooms/:id/presence` | モニタリング |

WebSocket は `/ws?room=<id>&token=<session>`。

メッセージ型: `direction` / `presence` / `ping`(送信)、
`direction` / `direction.ack` / `direction.rejected` / `presence` /
`member.online` / `member.offline` / `room.locked` / `room.attention` /
`room.distributed` / `pong`(受信)。

### 配信の保証

`docs/06` §4 の「順序付き・少なくとも1回・非冪等」を踏まえた設計:

- Direction にはルームごとの単調増加シーケンス番号が付く
- クライアントは ack を見るまで永続キューに保持し、再送する
- 同じ `editId` の再送は **元の番号を返し、再ブロードキャストしない**
  ── docs/06 §4 が exactly-once 適用のために推奨するサーバー側重複排除
- 取りこぼしたピアは `directions?since=N` で追いつく

モニタリングは動画配信ではなく、ページ番号とサムネイルの定期収集。
`docs/01-architecture-analysis.md` §11 が記録している元アプリの方式と同じ。

## 実装していないもの

`docs/14-login-startup-offline-edit.md` §1 は元アプリのログインドライバーを
5種類(通常 / 簡易 / Google / SSO / 外部)挙げている。ここでは通常ログインのみを
実装し、他は形だけ残した。どの方式もセッショントークンという同じ出口に
到達するため、変わるのはクライアント側の `LoginStrategy` だけになる。
