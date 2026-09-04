# `.atdoc` バイナリフォーマット詳細仕様(静的解析による再構築)

`com/metamoji/df/model/{StateDataHeader,StateData,ModelManager,Model,ModelTableHeader,ModelTableItem,ByteData}.smali` 等をバイト操作コード(`readInt`/`writeSInt32LE`等)まで精読して再構築した`.atdoc`(および`.atdo`/`.atdoc.page`)の内部フォーマット。**このフォーマットをそのまま再現する必要はない**(方針は[03-tauri-migration-notes.md](03-tauri-migration-notes.md)参照)が、設計思想(ヒープ的ブロックアロケータ+モデルテーブル+Undoテーブルという構成)は参考になる。静的解析で確定できなかった部分は明記する。

## 1. 全体構造

```
[ファイルヘッダ 42バイト]
...(ブロックアロケータが管理する自由領域)...
[モデルテーブル (可変長ブロック)]
[Undoテーブル (可変長ブロック)]
[エクストラテーブル (可変長ブロック、フォーマットバージョンにより中身が異なる)]
...(各モデルノードのプロパティデータブロック、多数)...
```

全ての「テーブル」「モデルデータ」はそれぞれ独立したブロックとしてファイル内に配置され、ヘッダが各テーブルの先頭ブロックへのバイトオフセットを保持する。ブロック自体はヒープアロケータ(§3)によって管理され、再配置(サイズ変更で別位置に移動)されることがある。

## 2. ファイルヘッダ(42バイト、`StateDataHeader`)

マジックナンバーは ASCII `"MMJDrawModels"`(13バイト)+ バージョンバイト `0x01` の計14バイト(`FILEID_V1`定数)。

| オフセット | サイズ | フィールド | 内容 |
|---|---|---|---|
| 0x00 | 14 | fileID+version | `"MMJDrawModels"` + `0x01` |
| 0x0E | 2 | headerSize | ヘッダ自体のサイズ(=0x2a固定と推定) |
| 0x10 | 2 | formatVersion | 1〜3(後述) |
| 0x12 | 8 | modelTablePos | モデルテーブルのファイル内オフセット |
| 0x1A | 8 | undoTablePos | Undoテーブルのファイル内オフセット |
| 0x22 | 8 | extraTablePos | エクストラテーブルのファイル内オフセット |

合計 14+2+2+8+8+8 = 42バイト(`SIZE_OF_HEADER = 0x2a`)と整合。数値はすべて**リトルエンディアン**(`BytesUtils`のプリミティブ書き込みヘルパーで確認)。

## 3. ブロックアロケータ(`StateData`)

ファイル全体をヒープのように扱う、自由リスト方式の可変長ブロックアロケータ。

- 各ブロックの先頭に8バイトのブロックヘッダ: `blockSize`(u32LE, ブロック全体の確保サイズ)+ `usedSize`(u32LE, 実際に使用中のバイト数。`0xFFFFFFFF`は「空きブロック」を示すセンチネル)
- 最小ブロックサイズ 0x40(64バイト)
- 空きブロックはサイズ順(または位置順)にリスト管理され、書き込み時に再利用される(`StateData$StateDataBlockIterator`, `StateData$StateDataBlockInfo`, 比較器 `StateData$1`)
- `IRandomIO`インターフェースの2実装:
  - `RandomFileIO` — `java.io.RandomAccessFile`への薄いラッパー。`flush()`は`FileDescriptor.sync()`でfsyncを強制。`read([B)`はJavaの`RandomAccessFile.read([B)`を1回呼ぶだけで、ショートリードのケアはしていない(呼び出し側の責務)
  - `RandomMemoryIO` — `byte[]`ベースのインメモリ実装。成長戦略は**倍々ではなく固定1KB加算**(`ALLOC_SIZE=0x400`)。コンストラクタに「コピーする/しない」の bool 引数があり、falseの場合は呼び出し元の配列をそのまま参照として保持(エイリアシングに注意)

## 4. モデルテーブル

```
[ModelTableHeader 8バイト]
[ModelTableItem × N (28バイト固定長)]
```

### ModelTableHeader(8バイト)
| フィールド | 型 | 意味 |
|---|---|---|
| `treeRootIndex` | SInt32LE | モデルツリーのルートノードのインデックス(`-1`=未設定) |
| `boneyardTopIndex` | SInt32LE | フリーリスト(後述"boneyard")の先頭インデックス(`-1`=空) |

### ModelTableItem(28バイト、モデル1件=1スロット)
| フィールド | 型 | 意味 |
|---|---|---|
| `dataPosition` | UInt64LE | このモデルのプロパティデータブロックへのオフセット(`-1`=未書込) |
| `parent` | SInt32LE | 親モデルのインデックス |
| `firstChild` | SInt32LE | 最初の子モデルのインデックス |
| `lastChild` | SInt32LE | 最後の子モデルのインデックス |
| `nextSibling` | SInt32LE | 次の兄弟(**boneyard時はフリーリストの次ポインタとして再利用**) |
| `prevSibling` | SInt32LE | 前の兄弟 |

8(u64) + 4×5(SInt32) = 28バイトで一致。モデルID(`index`)はこのテーブル内の配列インデックスそのもの(`ModelTableHeader.SIZE + index * ModelTableItem.SIZE`のオフセットに存在)。

### "boneyard"(モデルスロットのフリーリスト)

削除(`destroyModel`)されたモデルのスロットは即座に切り詰められず、単方向リンクリストとしてtable内に残る(LIFO=スタック方式)。

- **Push(削除時)**: 削除対象の`parent/firstChild/lastChild/prevSibling`を`-1`にリセット後、`nextSibling`に「現在の`boneyardTopIndex`」を書き込み、`boneyardTopIndex`を「削除対象自身のインデックス」に更新
- **Pop(新規作成時)**: `boneyardTopIndex != -1`ならそのスロットを再利用(`boneyardTopIndex`を`nextSibling`の値に更新、再利用スロットの`nextSibling`は`-1`にリセット)。空ならテーブル末尾に新規28バイトスロットを追加してテーブルを拡張

削除時はモデルのデータブロック(`dataPosition`が有効なら)も遅延削除キューに積まれ、次回保存時に実際にfreeされる。並行して「プリロード済みプロパティテーブル」側の対応スロットも`typeIndex = 0xFFFF`(無効マーカー)でトゥームストーン化される。

## 5. モデルノード1件のシリアライズ(`Model` ↔ `PlainValueSerializer`)

`Model`クラス自体はバイト操作を一切行わず、以下の2クラスに委譲する:
- `PlainValueSerializer` — 値(スカラー/Map/List/Blob/PointArray/IModel参照等)⇄バイト列の変換
- `ModelManager` — `StateData`ブロックI/Oとの橋渡し(`writeModelData`/`readModelData`)

保存フロー(`ensureSavedToStateData`):
1. `contentModified`がfalseなら即return(何もしない)
2. `props`(動的プロパティのMap全体)を`PlainValueSerializer.writeValue(props, byteData)`で**まるごと1つの値として**シリアライズ(プロパティ名や個数を`Model`自身は書かない — それは`PlainValueSerializer`内部の責務)
3. `saveAdditionalContent(byteData)`というprotectedフック(基底`Model`ではno-op、サブクラスが追記データを付け足せる)を呼ぶ
4. `manager.writeModelData(byteData, index, saveContext)`で実際にStateDataへ書き込み

読み込みフロー(`readyContent`)はこの逆で、`PlainValueSerializer.readValue([B, MutableInt)`がバイト列からMapを復元し、消費したバイト数をカーソルで返す(サブクラスが追記データの開始位置を知るため)。

**重要な設計上の注意**: `"!type"`(モデルタイプ)と`"!version"`(バージョン)は通常のプロパティキーとして扱われる(`getModelType()`は`getPropertyAsString("!type")`と同義)。ただし公開APIの`setPropertyRaw`/`deleteProperty`は`"!type"`の変更・削除を例外(`CmException MD0021`/`MD0022`)で禁止しており、モデル生成時のみ別経路で設定されると推測される(該当箇所は未特定)。

### プリロードプロパティ vs 動的プロパティ

各プロパティアクセスは`manager.isPreloadProperty(name)`で経路が分岐する:
- **プリロードプロパティ**: `ModelManager`内の別領域(モデルタイプごとに固定スキーマを持つスロット、後述のモデルタイプ辞書と連動)に直接読み書き。上記の`props`シリアライズには**含まれない**
- **動的プロパティ**: 上記`props`のMapに格納され、`PlainValueSerializer`でまるごとシリアライズされる

どのプロパティがどちらに属するかの判定ロジック自体は`ModelManager`内(未完全解析)。

## 6. エクストラテーブル(フォーマットバージョン1〜3で構造が異なる)

`STATE_DATA_VERSION_1/2/3`という3世代のフォーマットが存在し、**モデルテーブル・モデルデータブロック・Undoテーブル・プリロードプロパティ項目のバイト形状は3世代で完全に同一**。違いは「エクストラテーブル」の持ち方だけ。

### V1/V2
`extraTablePos`が指す先は**プリロードプロパティテーブルのバイト列そのもの**(td/viの位置がその中の固定ヘッダフィールドとして埋め込まれる)。
- V1ヘッダ(8バイト): `modelTypeDicPosition`のみ相当の情報。読込時にV2形状へその場でアップグレードされる
- V2ヘッダ(16バイト): `modelTypeDicPosition`(8B) + `versionInfoPosition`(8B)
- "ci"(作成者情報)キー自体がV1/V2には**存在しない**

### V3
`extraTablePos`が指す先は**`PlainValueSerializer`でシリアライズされた`Map<String, List<Number>>`**。各エントリの値は2要素の`List`で、`[0]`=位置の下位32bit、`[1]`=位置の上位32bit(共に`Integer`としてボックス化)、合成すると64bitのStateDataオフセットになる。長さフィールドは無し(StateDataブロック自身が`usedSize`を持つため不要)。キーは以下の4種:

| キー | 内容 |
|---|---|
| `"pp"` | プリロードプロパティテーブル(ヘッダなし、V3ではアイテムがオフセット0から並ぶ) |
| `"td"` | モデルタイプ辞書 |
| `"vi"` | バージョン情報辞書 |
| `"ci"` | 作成者情報(V3のみ) |

V3ファイルは保存の度に`"ci"`を再生成する(`creatorInfoNeeded`が常にtrueになる)。

### モデルタイプ辞書("td")

**ゼロ終端UTF-8文字列の単純な連結**(件数プレフィックスなし、バイト列の終端まで読み進める)。`typeIndex`はそのモデルタイプ名が辞書に初めて登場した際の0始まり配列インデックス。辞書サイズ上限は`0xFFFE`件(`0xFFFF`は「無効」センチネルとして予約、これを超えると`CmException MD0017`)。

### バージョン情報辞書("vi")

`Map<String modelType, Set<Integer version>>`を`PlainValueSerializer`でまるごとシリアライズしたもの。`Model.setVersion()`が呼ばれる度に該当モデルタイプの使用バージョン集合へ追加登録される(スキーマ移行/互換性チェック用の帳簿と推測)。

### 作成者情報("ci"、V3のみ)

`Map<String,Object>`: `"pnm"`=プロダクト名、`"pvs"`=プロダクトバージョン、`"cpb"`=ケーパビリティリスト(観測範囲では常に空配列)。

## 7. Undoテーブル(全バージョン共通、バージョン依存コードなし)

```
[UndoTableHeader 4バイト: currentUndoIndex (SInt32LE)]
[UndoTableItem × N (4バイト固定長: dataModel = モデルインデックス SInt32LE)]
```

- **線形Undo/破壊的Redo方式**: 新規操作を記録する際、`currentUndoIndex`以降(=Redo可能だった範囲)のエントリが指すモデルは**即座に`destroy()`される**(Redo履歴は保持されない、通常の元に戻す/やり直すサイクル中のみ有効)
- `undo()`: `currentUndoIndex`を1減らし、そのインデックスのモデルで`isUndo=true`としてUndo実行
- `redo()`: `currentUndoIndex`のエントリを`isUndo=false`で再実行し、`currentUndoIndex`を1増やす
- `clearAllUndo()`: 全エントリの参照先モデルを破棄しテーブルをヘッダのみに切り詰め

## 8. センチネル値一覧

| 値 | 意味 |
|---|---|
| `-1`(SInt32では`0xFFFFFFFF`、UInt64では`0xFFFFFFFFFFFFFFFF`) | 「該当なし」全般(親/子/兄弟なし、boneyard空、データ未書込等) |
| `0xFFFF` | モデルタイプ辞書インデックスの「無効/破棄済み」マーカー、かつ辞書サイズの事実上の上限 |

## 9. 静的解析で確定できなかった点

- `PlainValueSerializer`自体の詳細なタグ体系(スカラー型ごとのバイトタグ、Map/Listのエントリ区切り方式、`IModel`参照の実際のエンコード=モデルID直書きか別形式か)は未解析(次に読むべきファイルとして特定済み: `com/metamoji/df/model/PlainValueSerializer.smali`)
- プリロードプロパティの正確なスキーマ定義元(モデルタイプごとにどのプロパティ名がプリロード対象になるかの設定箇所)
- `"!type"`プロパティが最初にどの経路で設定されるか(公開APIでは変更不可なため、モデル生成時の内部専用パスがあるはずだが未特定)

## 10. Tauri版への実務的示唆

このフォーマットの**バイト互換な再実装は推奨しない**(そのまま`.atdoc`を読み込みたい場合は上記仕様をベースにパーサーを書けるレベルの情報はあるが、優先度は低い)。設計として参考にすべきは:

- 「モデルツリー + 型タグ付きプロパティ辞書」というスキーマレスな設計自体は良いパターンで、SQLiteの1テーブル(`model_id, parent_id, model_type, props_json`)や、JSON/CBORのネストしたドキュメントとして素直に再現できる
- Undo/Redoを「変更されたモデルIDの列 + 現在位置ポインタ」で表現する設計はシンプルで流用価値がある(ただし新規操作でRedoテールを破棄する破壊的Redoの挙動は要件次第で見直してよい)
