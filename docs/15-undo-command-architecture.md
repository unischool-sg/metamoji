# Undo/コマンドディスパッチ体系の詳細

[04-atdoc-format-spec.md](04-atdoc-format-spec.md)(Undoテーブルのバイナリ形式)と[06-classroom-protocol-spec.md](06-classroom-protocol-spec.md)(Directionのネットワーク送受信)の**間**にある、ユーザー操作→コマンド→モデル変更→Undo記録→(必要なら)ネットワーク配信、という連結層を精読した結果。

## 1. `NtCommand`: ディスパッチロジックを持たない純粋なenum

`com.metamoji.nt.NtCommand`(8522行)は**443個の`CMD_*`定数を持つ単純なJava enum**。switch文もハンドラ参照も持たない、純粋な識別子空間。

### カテゴリ別内訳(代表例)
| カテゴリ | 件数目安 | 代表例 |
|---|---|---|
| `CMD_SCHOOL_*`(教室/教師専用) | 54 | `CMD_SCHOOL_ATTENTION_START`, `CMD_SCHOOL_BTNMENU_TEACHERMODE` |
| `CMD_VC_*`(音声/動画注釈) | 33 | `CMD_VC_PLAY`, `CMD_VC_ADD_INDEX` |
| `CMD_COLLABO_*`(協働セッション) | 31 | `CMD_COLLABO_BECOME_PRESENTER`, `CMD_COLLABO_ENABLE_WRITE_ACCESS` |
| `CMD_SEND_*`(エクスポート/送信) | 19 | `CMD_SEND_FILE_FORMAT_PDF` |
| `CMD_PAGE_*`/`CMD_JUMP_*`(ページ管理) | 24 | `CMD_PAGE_COPY`, `CMD_PAGE_DELETE` |
| `CMD_CABINET_*`(ファイルブラウザ) | 15 | `CMD_CABINET_MAKE_FOLDER` |
| `CMD_CAN_NOTEMODE_*`/`CMD_PEN_*`(編集ツール/モード) | — | `CMD_CAN_NOTEMODE_ERASER`, `CMD_CAN_NOTEMODE_PEN` |
| その他 | — | Unit操作(`CMD_ADD_*`)、文書レベル(`CMD_CLOSE_DOCUMENT`, `CMD_SAVE*`)、デバッグ用 |

## 2. ディスパッチ機構: スコープごとのコマンドマネージャ + 委譲チェーン

`ICommandProcessor`(`performCommand`/`processEnableCommand`/`processInhibitCommand`/`processSelectCommand`)を各スコープ(エディタウィンドウ、文書、Unit、ダイアログ等)が実装する。`NtCommandManager`は**1つの`_processor`だけを保持する薄いラッパー**で、有効/無効判定をキャッシュしつつ`performCommand`に委譲する ─ **グローバルな単一レジストリは存在しない**。

`NtEditorWindowController.performCommand`が最外殻の巨大な`packed-switch`(ordinal基準のジャンプテーブル)で、多くのコマンドをその場で処理しつつ、一部は明示的に**内側のコントローラへ委譲**する(例: `NtDocument.performCommand`, `ScMonitoringManager.performCommand`)。実態は**手書きの責任の連鎖(Chain of Responsibility)**: 外側コントローラのswitch→該当なしなら内側コントローラのswitch→最終的にUnit/モデル層、という多段委譲構造。

Undo/Redoの有効判定は`NtDocument.processInhibitCommand`が`ModelManager.canUndo()/canRedo()`を参照し、実行は`ModelManager.undo()/redo()`(バイト単位で解析済みのUndoテーブルを操作)を呼ぶ。

## 3. 編集トランザクションのグルーピング: `EditContext` + `CompoundUndo`

**すべての`setProperty`が個別にUndo記録されるわけではない** ─ 明確なトランザクション概念が存在する。

- `DfController.beginEdit()/endEdit()`はドキュメントルートまで単純に転送
- 実体は`NtDocument.beginEdit/endEdit`。**再入可能(reentrant)**: ネストした`beginEdit`は`_editContextExtraInfoStack`に積むだけで、同じ外側の`EditContext`を共有する。スタックが空になった最外殻の`endEdit`でのみ実際の処理(`EditContext.detachUndo()`→`ModelManager.addUndo()`)が走る ─ **ネストした複数の操作が1つの論理トランザクションに畳み込まれる**
- `CompoundUndo`/`CompoundUndoPerformer`が実際のグルーピングを担う: 1回のUndo記録として`"compoundundo"`型のモデルを作り、複数の子モデル(プロパティ変更1件ずつ)をその子として吊り下げる。`CompoundUndoPerformer.performUndoOrRedo`は子を順方向(Redo)/逆方向(Undo)に辿って個々の変更を適用する ─ **1回のユーザージェスチャー(例: 1本のペンストローク全体)が1つのUndoテーブルエントリになり、内部で多数のモデル変更に展開されて一括Undo/Redoされる**

## 4. Direction(ネットワーク配信)への分岐点: 単一の関所ではなく分散した明示呼び出し

想定と異なり、**`sendDirection`は単一の関所(例: `ensureSavedToStateData`)から自動発火するのではなく、多数の個別クラスから明示的に呼ばれる**。`NsDirectionManager.sendDirection(...)`(5つのオーバーロード)の呼び出し元は`NtNoteController`, `AttachmentsManager`, `VcRecordingsController`、そして**各Unit型自身**(`DrUnUnitController`, `UnTextUnit`, `UnImageUnit`, `UnFlipUnit`, `UnSoundUnit`, `UnSurveyUnit`, `UnWebUnit`, `UnVideoOperation`)に分散している。

`DrUnUnitController`では、`sendDirection`呼び出しは`beginEdit`/`endEdit`のブラケットとは**別のタイミング**(ストローク確定処理の特定箇所)で行われる ─ **「この操作は配信すべきか」の判断は各Unit型の業務ロジックに個別に埋め込まれており、汎用のUndoトランザクション機構とは独立して配線されている**。設計上はUndoとネットワーク配信が疎結合という利点がある一方、新しいUnit型を追加するたびに配信呼び出しを書き忘れるリスクを内包している。

## 5. Undo/RedoのUI: 単純な2ボタン、タイムラインは無い

`editor_dwindow.xml`/`editor_floater.xml`の`undo`/`redo`ボタンは、`NtDocument.updateUndoRedoCommandState()`(`endEdit`コミット後・`undo()`/`redo()`実行後に呼ばれる)が`canUndo()/canRedo()`を再計算し`NtCommandManager`のグレーアウト状態を更新する「プル→プッシュ」型の更新。`IUndoOrRedoEventHandler`(`willUndoOrRedo`/`didUndoOrRedo`)によりUnitコントローラが進行中のジェスチャーをUndo/Redo前後にキャンセルできる。

**訂正**: 過去の調査で「Undo履歴タイムライン」と推測した`editor_history_bar.xml`/`control_history_menu.xml`は誤りで、実際には**最近/現在開いているドキュメントのタブバー**(ブラウザのタブに近い、`HistoryBarDriver`/`HistoryTab`)であり、Undo/Redoスタックとは無関係。アプリ全体を通じてUndo/Redoの視覚的タイムラインは存在しない。

## 6. Tauri版への推奨

三層構造(コマンド→トランザクション→配信)は踏襲しつつ、脆弱な箇所を改善する:

1. **コマンドをドメインごとに分割したenum**(`EditCommand`/`CollaborationCommand`/`ClassroomCommand`/`FileCommand`)にし、443個をフラットに1つのenumへ詰め込む(&`NtEditorWindowController`の1万行超switch)設計は避ける。各スコープに`CommandProcessor`traitを持たせる点は維持しつつ、Rustの網羅的`match`で手書きの委譲チェーンを置き換える
2. **`begin_edit()/end_edit()`によるRAII的トランザクションブラケット**は良いパターンとして維持(再入カウンタ+最外殻コミットで`CompoundEdit{children: Vec<ModelDelta>}`を生成) ─ 1ジェスチャー=1Undo単位という対応関係も、バイナリUndoテーブルの設計思想と一致するため踏襲する
3. **Direction送信をUndoコミットから明示的に切り離しつつ、単一のフックにまとめる**: 元アプリの弱点は`sendDirection`が十数箇所のUnitクラスに散在していること(新Unit型追加時に書き忘れるリスク、監査しづらい)。Tauri版では`end_edit()`から**1種類の`ModelChanged`イベント**(Undoで使うのと同じ`CompoundEdit`を運ぶ)を必ず発行し、協働同期レイヤー側がそれをDirectionとして送るかどうかを一元的に判断する設計にすれば、Undoとネットワークの関心分離を保ちながら元設計の脆さを解消できる
4. **Undo/Redo有効状態はプッシュ通知ではなく購読可能なシグナル(リアクティブ値)として実装**し、ツールバーボタンが明示的なリフレッシュ呼び出しなしに追従するようにする

## 参照ファイル
`apk/smali_classes3/com/metamoji/nt/{NtCommand,ICommandProcessor,NtCommandProcessor,NtCommandManager,NtEditorWindowController,NtDocument}.smali`, `apk/smali_classes2/com/metamoji/df/controller/{DfController,EditContext}.smali`, `apk/smali_classes2/com/metamoji/df/model/{ModelManager,CompoundUndo,CompoundUndoPerformer}.smali`, `apk/smali_classes3/com/metamoji/ns/direction/NsDirectionManager.smali`, `apk/smali_classes3/com/metamoji/un/draw2/unit/DrUnUnitController.smali`, `apk/res/layout/{editor_dwindow,editor_floater,editor_history_bar,control_history_menu}.xml`, `apk/smali_classes3/com/metamoji/ui/{HistoryBarDriver,HistoryTab}.smali`
