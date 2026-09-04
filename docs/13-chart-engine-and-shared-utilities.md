# チャートエンジンと共通基盤パッケージ(`ch`/`cv`/`cm`/`rb`/`lb`)

前回までの調査で名前だけ把握していた未調査パッケージを精読した結果。特に`cv`パッケージの発見は[04-atdoc-format-spec.md](04-atdoc-format-spec.md)の内容と関わる重要な情報のため、末尾に補足を記載する。

## 1. チャートエンジン(`com.metamoji.ch.*`)

### データモデル
`IChDataSource`はチャート種別に依存しない汎用の「カテゴリ×シリーズ→値」の2次元表抽象(`getCategoryCount/getSeriesCount/categoryTitle/seriesTitle/data(categoryIndex,seriesIndex)`)。棒・折れ線・円・レーダー・散布図すべてが同じ`IChChart`インターフェース(`getChartSize/getDataSource/getLegendItems/getSprite/update`)を実装する。

### Transformerパイプライン(推測通りの内容を確認)
`com.metamoji.ch.internal.transformer.*`は純粋な2D座標変換の合成可能なツールキット:
- `ChIdentityTransformer`(恒等), `ChOffsetTransformer`(平行移動), `ChFlipVerticalTransformer`(Y軸反転), `ChRotateTransformer`(回転), `ChXYTransposeTransformer`(X/Y入れ替え ─ 横棒グラフを縦棒グラフと同じロジックで描く鍵), `ChCompositeTransformer`(複数変換の合成)

`ChBarChart`はY軸反転+XY転置を合成して「横棒」を実現しており、**1つのレイアウト/描画アルゴリズムを向き非依存に保つための再利用可能な幾何変換基盤**であることが確定した。

### 描画方式
チャートは`android.graphics.Canvas`を直接叩かず、[10-rendering-engine.md](10-rendering-engine.md)で解説した`com.metamoji.df.sprite`のSprite/Graphics経由で描画される(`IChChart.getSprite()`がインターフェースの一部)。

### パレット・軸スケール・凡例
- `ChAutoColor`: 54色の固定テーブルをmodulo indexで循環参照する単純なカテゴリカルパレット
- `ChNiceScale`: 古典的な「nice numbers」目盛りアルゴリズム(最大10目盛り)
- `ChLegend`/`IChLegendSetting`: 凡例ボックスのレイアウト
- `ChHorizontalAxisLabels`/`ChNumberFormatter`: 軸ラベルのテキスト/切り詰め処理

### アンケート結果→チャート化の全経路
1. アンケート回答集計は`com.metamoji.un.survey`側で`Map<String,Object>`の`"result"`キー(`List<List<Any>>`)に格納される。各行は`[選択肢ラベル, 回答数, インデックス]`の3要素固定(enum `UnSurveyUnitResultData`)
2. `UnSurveyChartDataSource`が`IChDataSource`を直接実装し、この配列をチャートエンジンのデータ形式に変換(シリーズ数は常に1 ─ アンケートは常に単一シリーズ)
3. `UnSurveyChartUtil.createBarChartImage()`が最大値の1.25倍(最低2.0)を上限に設定、`UnSurveyChartAutoColor`(24色、`ChAutoColor`とは別のアンケート専用パレット)でスタイル設定、`ChBarChart`をインスタンス化して`update()`
4. 背景付きSpriteツリーを組み、**`Rasterizer`でBitmap化**([10-rendering-engine.md](10-rendering-engine.md)参照)してノートに静的画像として埋め込む(ライブなインタラクティブSpriteとしては保持しない)

つまりアンケートチャートは特別なコードではなく、汎用の`ch`エンジンを薄いアダプタ経由で使い、最終的に静止画へ焼き込むという設計。

## 2. `com.metamoji.rb` ─ ラバーバンド選択/変形ハンドルウィジェット

選択したオブジェクト(画像・付箋・図形等)の周りに表示される、移動/リサイズ/回転ハンドル付きバウンディングボックスUIコンポーネント。

- `RbConstants$HandleType`: `Move`, `Resize_{Top,Bottom,Left,Right,UpperLeft,UpperRight,LowerLeft,LowerRight}`, `Rotate_{Left,Right}`, `StepRotate_{Left,Right}`, `Scale_{UpperLeft,LowerRight}`
- `RbConstants$ActionType`: `MOVED`, `RESIZED`, `ROTATED`, `REACTED`(ハンドル操作完了時のコールバックイベント)
- `RbRubberBand`: 中心点/角度/方向、最小/最大スケール・サイズ、アスペクト比ロック、回転計算用の`_Jacobian`、枠線/ハンドルの見た目設定(`RbPathStyle`/`RbHandleStyle`)を保持
- `com.metamoji.cm`の幾何型(`RectEx`, `SizeF`)に依存 ─ `cm`が共通基盤であることの裏付けの一つ

## 3. `com.metamoji.cv` ─ モデル⇄XMLシリアライズ基盤(重要な発見)

**単なる「変換」ではなく、ノート文書オブジェクトモデルのXML(+ZIP)シリアライズ層**であることが判明。

- `ICvSubconverter`(プラグインインターフェース: `accept/convert/getKey`)
- `CvModelConverter`(レジストリ/ディスパッチャ): `registerSubconverter`/`exportModels(IModel, CvConvertContext)`/`importModels(Object, CvConvertContext)`という**Unitモデル⇄外部表現**の変換API
- `cv/xml/**`配下に、**Unit種別ごとに`*Def`(XML要素/属性名定数)+`*IncomingSubconverter`(XML→モデル)+`*OutgoingSubconverter`(モデル→XML)の三つ組**が存在: `draw`, `drawelements`(+旧版`drawelementsold`), `text`, `image`, `video`, `sound`, `voice`, `pdf`, `sqldb`, `form`, `freenotesheet`, `bgimage`, `flip`, `attachments`, `valuelist`, `web`, `survey`、および文書レベルの`docmanifest`, `partmanifest`, `docsettings`, `collabosettings`, `MediaFiles`

**これは実質的に「ノートファイルフォーマットのUnit種別ごとの正式仕様」に相当する情報源であり、[05-unit-property-schema.md](05-unit-property-schema.md)のプロパティスキーマ推定を裏付け・補強する一次資料になる。**

### 04番ドキュメントとの関係(未解決の論点として明記)
[04-atdoc-format-spec.md](04-atdoc-format-spec.md)では`.atdoc`は独自バイナリコンテナ(`StateData`/`ModelManager`によるブロックアロケータ形式)であることを確認した。一方この`cv`パッケージはXML(+`docmanifest`/`partmanifest`という命名からZIPコンテナの気配)ベースのシリアライズを行う。両者の関係は静的解析だけでは断定できていないが、以下のいずれかが有力な仮説:

1. **`.btshare`(共有ドライブパッケージ)や`.product`(ライブラリアイテム)など、`.atdoc`とは別のファイル形式がこの`cv`/XML経路を使っている**(`docmanifest`/`partmanifest`という命名はOPC/Office Open XML風のマニフェスト構造を示唆し、ZIPベースのパッケージ形式である可能性が高い)
2. **旧バージョンの`.atdoc`形式(過去のフォーマットバージョン)がXMLベースだった名残で、`drawelementsold`のような"old"接尾辞のコンバータが存在する**
3. **サーバー同期(WebDAV/`SdCloudService`)時のワイヤ表現としてXMLが使われ、ローカルディスク上は`StateData`バイナリに変換される**

**Tauri版の設計としては、`cv/xml`配下の`*Def`定数(XML要素/属性名)をUnitごとのプロパティスキーマ辞書として直接参照するのが最も実用的**であり、コンテナ形式そのもの(ZIP+XML vs 独自バイナリ)の対応関係の解明は優先度を下げてよい。

## 4. `com.metamoji.cm` ─ 全社共通ユーティリティ基盤

これまで散発的に登場していた`CmException`/`CmLog`/`CmJson`/`CmTaskManager`/`CmUtils`の正体が確定。全173クラスがアプリ全体の下敷きとなる共通基盤:

| カテゴリ | 主なクラス |
|---|---|
| エラー処理 | `CmException`(コード+原因コード付きRuntimeException) |
| ロギング | `CmLog`(debug/info/error、ログレベルゲート) |
| JSON変換 | `CmJson`(Map⇄`org.json.JSONObject`) |
| 非同期/スレッド管理 | `CmTaskManager`(1300行超、UIスレッド/バックグラウンドディスパッチ、モーダル待機画面、キャンセル可能タスクキュー) |
| 汎用コンテキスト | `CmContext`(拡張可能なキー・バリュー「エクストラデータ」バッグの基底クラス、`CvConvertContext`等が継承) |
| 幾何/コレクション | `RectEx`, `SizeF`, `Size`, `Range`, `MinMaxF`, `PointArray`, `PointUtils`, `RectUtils`, `ListUtils`, `TypeUtils` |
| Out引数ボックス | `cm/mutable/Mutable{Int,Boolean,Double,...}` |
| バイナリ構造体 | `Structured`(リトルエンディアンint/float等のメンバ定義、[04番ドキュメント](04-atdoc-format-spec.md)のフォーマット解析で使われていたヘルパー) |
| セキュリティ/ファイル | `EncryptUtil`, `HashGenerator`, `PBE`, `SecureFile`, `DataArchiver`, `TempFileRef` |
| 画像 | `ImageUtils`, `BitmapEx`, `ColorUtils`, `WebColor` |
| アプリライフサイクル | `ICmApplication`, `ICmAppLowMemory`, `ICmUIProvider` |

## 5. `com.metamoji.lb` ─ ライブラリ/ストア(拡張確認)

「テンプレート/ステッカー/背景カタログ + ストアログイン/購入」という前回の推測を裏付け、拡張:

- `LbLibraryItemManager`(シングルトン、5000行超) ─ カタログ全体の中枢マネージャ。`downloadProduct`/`registerLibraryItemFromFile`/`deleteItem`/`migration()`/`loadPageDataArray`/`updateItemBookmarked`等、[12-dm-sync-framework.md](12-dm-sync-framework.md)の`DmLibraryItemMetaData`(ORMLiteエンティティ)と直結
- `LbLibraryBgImageManager`/`LbLibrarySheetTemplateManager` ─ 背景画像/シートテンプレートのサブカタログ
- `LbDownloadUtil.login()` ─ ダウンロード前のストアログイン
- `LbInAppPurchaseManager`/`Utils`/`Constants` ─ Google Play課金フロー(mazec言語アドオン等)
- `LbShare`/`LbShareItem`/`LbShareUtils` ─ ライブラリアイテムの共有
- `LbPartsUtils` ─ ライブラリの「パーツ」をノートモデルへインポート

## 6. `com.metamoji.rc` / `com.metamoji.lc`(簡易確認のみ)

- `rc`: `RcConvertRequestURLConnection`等5クラス、`HttpURLConnection`ベースの遠隔ファイル変換サービスクライアント。**別セッション(TypeSpec調査)によりこのアプリ変種では呼び出し元が存在せず到達不能(デッドコード)と既に確認済み** ─ 深追い不要
- `lc`: ライセンスアクティベーション(`LicenseChecker`/`LicenseUtil`等28クラス)。既に`docs/typespec/licensing/license-activation.tsp`で詳細仕様化済み

## Tauri版への示唆

- チャートエンジンの「Transformer合成による向き非依存レイアウト」パターンは、グラフ/チャート機能を実装する際にそのまま応用できる汎用設計
- `cm`相当の共通基盤(エラー型、ロギング、非同期タスク管理、幾何ユーティリティ)は、Rust版でも早期に整備しておくと後続の実装が楽になる
- `cv/xml`のUnit種別ごとの要素/属性定義は、[05-unit-property-schema.md](05-unit-property-schema.md)と合わせて新データモデルのプロパティ辞書設計の一次資料として活用する

## 参照ファイル
`apk/smali_classes2/com/metamoji/ch/**`(bar/line/pie/radar/scatter/internal/internal/transformer)、`apk/smali_classes3/com/metamoji/un/survey/{UnSurveyChartDataSource,UnSurveyChartUtil$Companion,UnSurveyUnitUtil$UnSurveyUnitResultData}.smali`、`apk/smali_classes3/com/metamoji/rb/**`、`apk/smali_classes2/com/metamoji/cv/**`、`apk/smali_classes2/com/metamoji/cm/**`、`apk/smali*/com/metamoji/lb/**`、`apk/smali_classes3/com/metamoji/rc/**`、`apk/smali*/com/metamoji/lc/**`
