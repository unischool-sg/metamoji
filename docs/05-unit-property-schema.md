# Unit(キャンバスオブジェクト)プロパティスキーマ詳細

各Unit型が実際に読み書きしているプロパティキー(`getPropertyAsX`/`setPropertyAsX`呼び出し箇所)を精読して再構築したスキーマ。新アプリのデータモデルを型付きで設計する際の一次資料として使う。

## 1. `IModel` の型付きプロパティAPI(全型ボキャブラリ)

| アクセサ | 格納型 |
|---|---|
| `getPropertyAsInt` / `setProperty(name,int)` | int |
| `getPropertyAsDouble` / `setProperty(name,double)` | double |
| `getPropertyAsBool` / `setProperty(name,boolean)` | bool |
| `getPropertyAsString` / `setProperty(name,String)` | string |
| `getPropertyAsBlob` / `setProperty(name,Blob)` | バイナリBlob(`com.metamoji.cm.Blob`) |
| `getPropertyAsPointArray` / `setProperty(name,PointArray)` | 座標配列(`com.metamoji.cm.PointArray`、ジオメトリ用) |
| `getPropertyAsDictionary` / `setProperty(name,Map)` | 文字列キーMap |
| `getPropertyAsList` / `setProperty(name,List)` | リスト(プリミティブ or `IModel`) |
| `getPropertyAsModel` / `setProperty(name,IModel)` | 子モデルへの参照 |
| `getPropertyAsNumber`/`Object` | 汎用数値/オブジェクトラッパー |
| `deleteProperty` / `hasProperty` / `getAllPropertyNames` | — |

低レベルのシリアライズ形状としては`ModelType`クラスが`MAP`/`NODE`の2種類のみを定義しており、これはストレージ層が理解する箱の種類(バイナリストア自体が知っている2種類のコンテナ形状)。アプリレベルの型タグ(`$pdf`等)はあくまで`getModelType()`が返す文字列値であり、登録された列挙型ではない。

## 2. 共通基底スキーマ

全Unitは`DfController`(`com/metamoji/df/controller/DfController.smali`)のサブクラスとして、以下を直接読み書きする(すべてdouble):

| キー | 意味 |
|---|---|
| `x`, `y` | 位置(左上原点) |
| `width`, `height` | サイズ |
| `rotation` | 回転角 |
| `contentScale` | コンテンツ自体の拡縮率(フレームサイズとは別) |

加えて `NtUnitController$ModelDef` が `unitId`(string、Unit固有の安定ID)を、`DfLayerController` が `visible`(bool)を追加する。

## 3. MODELTYPE タグ カタログ

### ページツリー系
| タグ | 意味 |
|---|---|
| `docmeta` | ドキュメントメタデータのルート |
| `$freenote` | ノート/ドキュメントのルート(`MODELTYPE_NOTE`のエイリアス) |
| `$sharenote` | 共有/協働編集ノート(`MODELTYPE_COLLABO`) |
| `$page` | ページ |
| `pagethumbnail` | ページサムネイル(サブモデル) |
| `$layer` | レイヤー |

### Unit系
| タグ | クラス |
|---|---|
| `$draw` | 手書き/描画Unit(`DrUnUnitController`) |
| `$text` | テキストUnit |
| `$image` | 画像Unit |
| `$bgimage` | ページ背景画像 |
| `$pdf` | PDF埋め込みUnit |
| `$video` | 動画Unit |
| `$soundunit` | 音声Unit |
| `$surveyunit` | アンケート/クイズUnit |
| `$web` | Webビュー(埋め込みブラウザ)Unit |
| `$flipunit` | 付箋(フリップカード)Unit |
| `$dummy` | 未知/破損コンテンツのプレースホルダ |
| `$bgform` | フォーム系背景テンプレート |
| `$formparts` | フォーム部品(コンテナ) |
| `$table` | 表フォーム |
| `$ruledline` | 罫線フォーム |
| `$schedule` | スケジュール/カレンダーフォーム |
| `$squared` | 方眼/グリッドフォーム |
| `$labeledlist` | ラベル付きリストフォーム |

**リンクUnitは存在しない**: `MMJUnLinkUnit`はURL解析用のステートレスヘルパーであり、永続化されたモデルではない。ノート間ジャンプは`NtNoteController`直下の`linkjumps`(`MMJNT_MODELTYPE_LINKJUMPS`)というリスト構造として持たれ、各エントリは`MMJUnLinkInfo`のフィールド(`companyID`, `docID`, `driveID`, `pageID`, `roomID`, `title`, `isMyself`)を反映する。

## 4. Unitごとのプロパティスキーマ

### `$text`(UnTextUnit)
| キー | 型 | 意味 |
|---|---|---|
| `verticalWriting` | bool | 縦書きモード |
| `no.dropshadow` | bool | ドロップシャドウ無効化 |
| `not.del.when.empty` | bool | 空でも自動削除しない |
| `taskName` | string | 非同期タスク名 |
| `unitId` | string | 安定ID |
| `textmode.direction.regard` | bool | 書字方向考慮フラグ |
| `textmode.locationcheck.paper` | int | 用紙境界チェックモード |
| `textmode.sizecheck.doinit` | int | 初期化時サイズ再チェックモード |

リッチテキストのスタイル(段落/ラン単位)はUnit直下のフラットなプロパティではなく、CSSライクなキー体系(`DataUtil$KEY`)で個々のラン/段落に付与される: `color`, `backgroundColor`, `font-size`, `font-weight`, `italic`, `underline`, `line-through`、段落側は`text-align`, `text-indent`, `padding-left/right`, `list-type`, `list-level`, `list-mark`, `list-style-type`, `tag-id`, `author-info`。

ドキュメント全体のデフォルトテキストスタイル(`UnTextSettings$ModelProp`): `textUnitFontFamily`(+`ForG5`), `textUnitFontSize`, `textUnitFontColor`, `textUnitLineHeight`, `textUnitBackgroundColor`(+`Alpha`), `textUnitBorderStyle`, `textUnitRuledLineStyle`, `textUnitVerticalWriting`。

### `$image`(UnImageUnit)
| キー | 型 | 意味 |
|---|---|---|
| `imageTicket` | string | 画像アセットへの参照ID |
| `opacity` | double | 不透明度 |
| `hasShadow` | bool | ドロップシャドウ |
| `maskWidth`/`maskHeight` | double | クロップマスク矩形サイズ |
| `maskOffsetX`/`maskOffsetY` | double | クロップマスク矩形オフセット |
| `maskQCurvePath` | PointArray | 自由形状マスクの輪郭(2次曲線パス) |

### `$bgimage`(UnBGImageUnit)
| キー | 型 | 意味 |
|---|---|---|
| `bgStyle` | int | 背景スタイル(fill/tile/fit等) |
| `bgColor` | string | フォールバック塗り色 |
| `colorOpacity` | double | 色レイヤーの不透明度 |
| `opacity` | double | 画像の不透明度 |
| `imageTicket` | string | アセット参照 |

### `$pdf`(UnPDFUnit)
| キー | 型 | 意味 |
|---|---|---|
| `ticket` | string | PDFアセットへの参照 |
| `page` | int | PDF内の現在ページ番号 |
| `offsetX`/`offsetY` | double | パンオフセット |
| `scale` | double | 拡大率 |
| `orientation` | int | 回転/向き |

### `$video`(UnVideoUnit)
| キー | 型 | 意味 |
|---|---|---|
| `dataTicket` | string | 動画ファイルへの参照 |
| `thumbnailTicket` | string | ポスターフレームへの参照 |
| `playTo`/`startFrom` | double | トリム区間 |
| `thumbnailTime` | double | ポスター生成用タイムスタンプ |
| `isMuted` | bool | ミュート |
| `stillMode` | bool | 静止画表示モード |
| `markers`(サブモデル `video.markers`) | list | タイムラインマーカー |

### `$soundunit`(UnSoundUnit)
| キー | 型 | 意味 |
|---|---|---|
| `ticket` | string | 音声アセット参照 |
| `mediaId` | string | サーバー側メディアID |
| `recordId` | string | 録音セッションID |
| `url` | string | リモートURLフォールバック |
| `authorInfo` | string | 録音者メタ情報 |

### `$surveyunit`(UnSurveyUnit)
| キー | 型 | 意味 |
|---|---|---|
| `itemId`/`itemName` | string | 設問ID/ラベル |
| `question` | ? | 設問文 |
| `type` | enum(`CheckBox`/`RadioButton`) | 回答ウィジェット種別 |
| `choices` | list | 選択肢 |
| `graphType` | enum(`BarChart`/`PieChart`/`Table`/`SpecTable`) | 結果の可視化方式 |
| `allowAnswer`/`allowTeacherAnswer` | bool | 回答許可フラグ |
| `publish` | bool | 結果公開フラグ |
| `settings` | dict/model | 設定 |
| `answer`/`result`/`value` | dict | 回答データ(個別/集計) |
| `roll` | enum(`Student`/`Teacher`) | 回答者の役割 |
| `userId`/`userName` | string | 回答者ID/名前 |

### `$web`(UnWebUnit)
| キー | 型 | 意味 |
|---|---|---|
| `requestURL` | string | 表示中URL |
| `imageTicket` | string | ページスナップショット画像 |
| `hasShadow`/`opacity` | bool/double | 見た目 |
| `maskWidth/Height/OffsetX/OffsetY`, `maskQCurvePath` | — | `$image`と同じクロップマスク方式 |

### `$flipunit`(UnFlipUnit)
| キー | 型 | 意味 |
|---|---|---|
| `backgroundColor` | string | カード背景色 |
| `flipState` | int | 現在の表裏状態 |

### `$dummy`(UnDummyUnit)
| キー | 型 | 意味 |
|---|---|---|
| `c` | model | 元々あった(未対応/破損)Unitのモデル本体 |

## 5. フォームUnit群(`un/form/*`)の共有スキーマ

基底(`UnFormBase`):

| キー | 型 | 意味 |
|---|---|---|
| `sx`/`sy` | double | コンテンツ拡縮 |
| `ex`/`ey` | double | 終点(線形フォーム用) |
| `r` | double | 角丸半径 |
| `style` | int | 形状/線種enum |
| `halign`/`valign` | int | 配置 |
| `repeat` | int | タイル/繰り返し数 |
| `imageTicket` | string | 背景画像参照 |
| `path` | List | ベクタパス点列 |
| `images` | List | 埋め込み画像リスト |
| `shapes` | Model | ネストした図形サブツリー |
| `background-color`/`background-alpha` | string/double | 塗り |
| `border-color`/`border-alpha` | string/double | 枠線 |
| `border-weight-{top,bottom,left,right}` | double | 辺ごとの枠線幅 |
| `margin-*`/`padding-*` | double | 余白 |

**プレフィックス付きスタイルの再利用パターン**: `UnFormLineStyle`(`{prefix}-color/alpha/style/weight`)、`UnFormShapeStyle`(上記+`{prefix}-fillColor/fillAlpha`)、`UnFormTextStyle`(`{prefix}-fontName/fontSize/label/textAlpha/textColor`、いずれも配列)というスタイル定義クラスが、プレフィックス文字列を変えて各フォームUnit内で複数回インスタンス化される設計。観測されたプレフィックス:

| プレフィックス | 用途 |
|---|---|
| `ar-` | セルグリッド(`$table`の列/行数`ar-hcells`/`ar-vcells`等) |
| `rl-` | 罫線 |
| `dl-` | 日付/区切り線 |
| `cb-` | セル境界ボックス |
| `ml-` | 月ライン/マーカーライン |
| `gl-` | グリッド線(`$squared`) |
| `lb-` | ラベルボックス(`$schedule`/`$labeledlist`) |
| `month-label-` | カレンダー月見出し |

Unit固有の追加プロパティ: `$schedule`は`year`/`month`/`startDayOfTheWeek`/`weeks`/`type`、`$squared`は`border`(int)、`$bgform`は`frames`/`types`/`values`(汎用キー・バリュー形式のフォームフィールドデータ)+テキストデフォルト、`$formparts`は独自プロパティを持たない純粋なコンテナ。

## 6. ページ/レイヤー/ノートのコンテナスキーマ

**ページ**(`NtPageController$ModelDef`): `pageId`, `currentLayer`(モデル参照), `dw_lines`(自由罫線オーバーレイ), `forSchoolPageType`, `paperWidth`/`paperHeight`/`printWidth`/`printHeight`, `autoPaper`, `bgl`(背景レイヤー参照), `fml`(フォームレイヤー参照), `textUnitSettings`, `thumbModel`。

**レイヤー**(`NtLayerController$ModelDef`): `layerId`, `layerType`, `visible`。

**ドキュメントメタ**(`NtDocMetaDef`): `docMetaData`(モデル参照、`MODELTYPE="docmeta"`)。

## 7. 重要な注意: Undo記録スキーマとコンテンツスキーマは別物

`nx/ny/no/ns/nt/nc/nb/nh/nw/na/nr/nu/nm/nn/nv/nph/npw`のような2〜3文字略記キーの大半は、永続コンテンツのプロパティでは**なく**、一時的なUndoコマンドの子モデル(`pdflocationundo`, `imagegeopropundo`, `bgimageundo`, `soundUnitMediaId`, `flipUnitBackgroundColor`, `page.textunit.separate.undo`等)のペイロードである。`n*`=新値、`o*`=旧値というペア、または`m`/`f`/`t`/`i`(model/from/to-list/index)という汎用形もある。

**新アプリの設計では、これら略記キーをコンテンツスキーマに混ぜてはいけない** — Undo/Redoは別のコマンドログ構造として扱い、コンテンツ本体は本ドキュメント§4/§5の正式なキー名(`opacity`, `ticket`, `mediaId`, `backgroundColor`, `flipState`等)で設計する。

## 8. 手書きストローク(`$draw`)の実際の格納方式

`DrUnUnitController`自体が`IModel`経由で永続化しているのは`x`, `y`, `width`, `height`, `version`, `modelVersion`のみ(ネイティブ描画エンジンから計算された外接矩形とスケール)。ストロークの点列・色・太さは`getPropertyAs*`を通じて一切読み書きされていない。

実際のインク幾何情報は**ネイティブ/JNIコンポーネント**(`un/draw2/jni/DrawUnitComponent.smali`とその周辺、C++実装)が保持しており、smaliレベルでは不透明(公開された`IModel`文字列キーとしては露出しない)。

参考になる唯一の手がかりは、手書き→テキスト変換(mazec)機能でテキストラン内に埋め込まれるストロークのシリアライズキー体系(`un/text/DataUtil$KEY`):

| キー | 意味 |
|---|---|
| `m_handwriteStroke`/`m_handwriteStrokes` | 単一/複数のストローク記録 |
| `m_positionsStr` | 座標列を文字列化したパスデータ |
| `m_strokeStyle`/`m_strokeAttributes` | ストロークごとの描画属性 |
| `pa`(`M_PEN_ATTR`) | コンパクトなペン属性ペイロード |
| `m_bounds`/`m_yBaseLine`/`m_yTopLine` | 外接矩形/ベースライン/上端ライン |
| `m_segmentAttr`, `g`(粒度種別), `d`(デルタ) | ストローク簡略化/セグメンテーション情報 |
| `fp`(`SS_FOUNTAIN_PROP`)配下: `br/brd/brr, bs/bsd/bsr, er/erd/err, es/esd/esr, tr/trd/trr, ts/tsd/tsr, trans` | 万年筆風の筆圧/線幅テーパーカーブ(開始/維持/終了/末端の各区間のrate/delta) |
| `m_ssInkColor1/2`, `m_ssInkInkType`, `m_ssLineColor`, `m_ssLineWidth`, `m_ssPenType`, `m_ssCalliAngle`, `m_ssCalliPaintType`, `m_ssCalliRate` | インク色/種別、基本線色/幅、ペン種別、カリグラフィのペン角度/塗り方式/レート |

**新アプリへの推奨**: クローズドソースのネイティブパス/点エンコーディングを再現しようとするのではなく、`{ points: 座標+筆圧のポリライン, penAttributes: {color, width, penType, calligraphy:{angle,rate}, fountainTaper:{...}}, bounds }`のようなストロークごとのネストしたモデルとして自前設計する。上記の`DataUtil$KEY`語彙が現時点で得られる最も信頼できるスキーマ上のヒントである。
