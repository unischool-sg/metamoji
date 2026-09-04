# 描画/キャンバスエンジン詳細(`df.sprite` + ジェスチャー認識)

ノートキャンバスが実際にどう画面に描画され、タッチ入力がどう処理されるかを、データモデル層(04/05)とは独立に精読した結果。

## 1. 全体アーキテクチャ: 保持モード(retained-mode)のシーングラフ

`com.metamoji.df.sprite.*` は **Sprite木構造 + ダーティ矩形による部分再描画** を持つ保持モードの描画エンジンで、Android標準`Canvas`のAPIをそのまま叩くのではなく、独自の`Graphics`/`Context`抽象を経由する。SVGやCoreAnimationのレイヤーツリーに近い設計。

### Graphics: ディスプレイリスト
`Graphics`は`GraphicsInstruction`のリストを保持する**保持モードのディスプレイリスト**。`drawPath`/`drawRect`等の呼び出しはその場でCanvasに描くのではなく`GraphicsInstruction`(`PathInstruction`, `BitmapInstruction`, `BitmapRectInstruction`, `BitmapTiledInstruction`, `TextInstruction`等)を生成してリストに追加するだけ。再生(`paint(Context)`)時に、各命令の`getBounds()`が`Context.getDirtyRect()`と交差する場合のみ`paint()`を呼ぶ ─ ダーティ矩形カリングによる部分再描画。

### Paint階層
`Paint`は`resolve(android.graphics.Paint): android.graphics.Paint`という1メソッドのインターフェースで、`PaintAndroid`(直接ラップ)、`PaintSolid`(単色、遅延生成)、`PaintLinearGradient`(線形グラデーション)が実装。線幅/キャップ/ジョイン/ダッシュ/アルファ等のストローク属性は`Paint`側ではなく`Graphics`側のフィールドとして保持され、`draw()`時に実際の`android.graphics.Paint`へ焼き込まれる。

### Path
`Path`は`android.graphics.Path`のラッパーで、自身も`GraphicsInstruction`を実装(`Graphics.drawPath(Path)`にそのまま渡せる)。ヒットテストは自前アルゴリズムではなく、`android.graphics.Region.setPath()`によるネイティブラスタライザ委譲(`PathUtil.fillContainsPoint`)。ベジェ平滑化等の独自幾何処理はこの層には無い(`android.graphics.Path`任せ)。

### FillRule/LineCap/LineJoin
標準Java enumで`android.graphics.Path$FillType`/`Paint$Cap`/`Paint$Join`と1:1変換するだけの薄いラッパー。CSS/Canvas2Dの同名概念とほぼ対応するため、Tauri版(Web Canvas/`lyon`/`kurbo`)への移植は素直。

## 2. Sprite/Layer/Stage シーングラフ

- **Sprite**: `parent`/`children`リスト+ノードごとの変換(`x,y,scaleX,scaleY,rotation,alpha,width,height`)を持つ木構造ノード。変換行列は遅延構築・キャッシュ(`ENABLED_MATRIX`ダーティフラグ)。`getGlobalMatrix()`は親を辿って行列を`postConcat`していく手動の変換スタック
- **無効化(invalidate)は2方向**: ①`boundsChange()`はジオメトリ変更時に**親へ向かって**再帰、②`invalidate(RectF)`は矩形をグローバル座標に変換した上で**ルートのSpriteOwner(=Stage)へ直接**ジャンプし、`Stage→Layer→LayerView.setNeedsDisplay(RectF)`と伝播。バッチ処理(`queueingRect`)により多数の無効化を1つの矩形にまとめてから反映するモードもある
- **描画(paint)**: `Sprite.paint(Context)`が`save→concat(matrix)→クリップ→自分のGraphicsを描画→子を再帰的にpaint→restore`という深さ優先走査(SVG/Flash/CoreAnimationと同じセマンティクス)
- **Renderer戦略が3種類、Layer単位で切替可能**:
  - `RenderAsVector` ─ 毎フレームSprite木を再走査する即時ベクタ描画(=`Stage.paint()`をそのまま呼ぶ)
  - `RenderAsLiveBitmap` ─ オフスクリーンBitmap+専用Canvasを保持し、ダーティ領域のみベクタ再描画してキャッシュに焼き込み、画面には`drawBitmap`のみ ─ 「サブツリーをラスタライズしてキャッシュする」最適化
  - `RenderAsFreezedBitmap` ─ 静止画キャプチャを固定変換で描くのみ。`Layer.beginScreenShot()/endScreenShot()`でページめくり等のアニメーション中に一時的に切り替え、ライブツリーの再描画コストを回避する
- **Geometry**: `MatrixPool`/`RectFPool`という固定容量プールでホットパスのアロケーションを回避。`union/intersects/inflate/deflate`等の静的幾何ユーティリティ
- **Context/CanvasContext**: `Context`は描画操作を抽象化したインターフェース(`drawBitmap/drawPath/drawText/clipRect/concat`等)で、`getCanvas()`は`@Deprecated`。`CanvasContext`が唯一の実装で`android.graphics.Canvas`への薄いパススルー。`getBitmap()/isPDF()/pdfOutputInfo`もインターフェースに存在し、PDF書き出し等の非対話的ターゲットも同じ抽象で扱える設計。**この`Context`という継ぎ目こそが、Tauri/wgpu版で新しいバックエンドに差し替えるべき箇所** ─ Sprite/Layer/Stageの走査ロジックには一切手を入れずに済む

### Rasterizer(オフスクリーン変換)
`Rasterizer`は`ARGB_8888 Bitmap`+専用`Canvas`を遅延生成し、指定した`Sprite`を任意のx/y/スケールで`CanvasContext`経由でオフスクリーンに描画する。サムネイル生成・ズームアウト時の凍結表示・エクスポート(チャート画像化含む、13番ドキュメント参照)に使われる汎用の「Sprite→Bitmap」変換ユーティリティ。

## 3. LayerView: View vs TextureView

`LayerView`インターフェース(`asView/setNeedsDisplay/tick/updateFromMonitor`)に2実装:

- **`LayerViewOrdinaryView`**(標準`View`) ─ `onDraw(Canvas)`で同期描画、`postInvalidate()`で無効化。ソフトウェアパス
- **`LayerViewTextureView`**(`TextureView`) ─ `setOpaque(false)`でアルファブレンド可能、`lockCanvas()/unlockCanvasAndPost()`によるCanvas APIのままGPU合成される`SurfaceTexture`を利用。オーバーレイレイヤー用に`MIN_PAINT_INTERVAL`によるフレームレート上限(`Thread.sleep`によるスロットリング)を持つ

どちらを使うかはレイヤーの用途(メインコンテンツ vs オーバーレイ)による使い分けと推測される。

### スレッド構成
`Viewport`が2本の常駐スレッドを起動する:
- `"ViewportLoop"`(~30fps、33ms周期) ─ `mainLayer.tick()`を呼び、Tweenerをステップ実行
- `"monitorThread"`(~30fps) ─ `updateFromMonitor()`を呼ぶ

`LayerViewTextureView`自体は専用レンダースレッドを持たず、`synchronized`ロックでこれらのスレッドからの`lockCanvas`呼び出しを保護する設計。

## 4. Viewport: パン/ズーム/慣性リバウンド

- パン(`scrollTranslate: PointF`)とズーム(`Stage.getZoom()`、Viewportではなく**Stage側**が保持)は別々に管理される。Viewportの変換行列は平行移動のみで、拡大縮小はStage側の変換と合成される
- `minZoomScale`/`maxZoomScale`でクランプ。ピンチ終了時、範囲外なら`pinchZoomRebound()`が200msの`easeOutQuad`イージングでスナップバックする弾性(エラスティック)アニメーションを構築。パンの範囲外オーバースクロールも同様に`panScrollRebound()`でリバウンド
- `Tweener`は単純な命令的トゥイーンリスト。イージング関数は`easeNone`と`easeOutQuad`の2種類のみ
- `ViewportListener`がスクロール/ズームの開始・変化中・終了・慣性開始/終了イベントをUI層に通知する別チャンネル(再描画パイプラインとは独立)

### Nt層(NtNoteController/NtPageController)の関与
`_viewport`フィールドは実は基底クラス`DfNoteController`が持ち、Nt層は`getViewport()`経由で薄く委譲するのみ。Nt層独自の付加価値は「Changing/Changed」の2種類のビューポートイベントハンドラだけで、これは**レンダリング最適化ではなく協働編集の「プレゼンター追従」同期**(ジェスチャー中か確定後かをコラボ相手に伝える)のために存在する。メッシュ再構築やLODのようなレンダリング都合のフックはこの層には無い(存在するとすれば`df.sprite.Viewport/Stage/Sprite`自体の内部)。

## 5. ジェスチャー認識(`AllInOneGesture`)

Androidの標準`GestureDetector`/`ScaleGestureDetector`を使わず、**1つの巨大なStateパターンオブジェクト**が全タッチストリームを処理する。

### 10状態の有限状態機械
`_0`(アイドル), `_1Tap`, `_1Hold`(長押し), `_1Drag`(単指ドラッグ), `_2Tap`(2本指判定中), `_2Pan`, `_2PanCarved`(パン確定), `_1Pan`(2→1本指に減った後のパン継続), `_2Pinch`, `_1Pinch`(2→1本指に減った後のピンチ継続)。各状態は`down/move/up/plus/minus/cancel/setup/timeout`を実装し、戻り値が次の状態になる ─ 遷移テーブルそのものがコードとして書かれている

### 3本指以上は無視
`ACTION_POINTER_DOWN`は`pointerCount==2`のときのみ`plus()`を呼ぶ設計のため、3本目のタッチは新しいジェスチャーを開始しない(単純な2本指上限)。

### パン/ピンチの排他制御(明示的な優先度ロジック)
- `_2Tap.move()`が移動量から`dragThreshold`/`zoomMinThreshold~zoomMaxThreshold`と比較してパンかピンチかを判定
- `_2Pan`は`panThreshold`(100px)を超えたら`_2PanCarved`(パン確定)に「彫り込まれる」が、確定前にスケール比が閾値を外れれば**ピンチにプリエンプトされる**(逆方向の遷移は無い ─ 一度ピンチが始まったらパンには戻らない)
- 指が1本減ると`_2Pan→_1Pan`、`_2Pinch→_1Pinch`と段階的に縮退し、ジェスチャーを完全に終了させない
- `ACTION_CANCEL`は全状態から`_0`へ強制遷移

### PinchSolver
`NaivePinchSolver`が2点間距離比からスケール、2点の中点からタッチ中心を軸にした平行移動を計算する標準的な「タッチ中心を軸にしたピンチズーム」数式(`ScaleTranslate{scale,tx,ty}`)。ただし`AllInOneGesture`自体はこのクラスを直接呼ばず類似のインライン計算を持っており、`PinchSolver`は別の利用箇所向けの独立ユーティリティの可能性がある。

### DirectionalLock
パン開始直後、傾き比0.3・閾値100pxで「水平/垂直」にロックする小さな状態機械(`Undetermined→Horizontal|Vertical`)。ロック後は直交軸のデルタを0にクランプする。一方向スクロールUIコンポーネント向けと推測される。

### TouchEvent抽象化
`MotionEvent`を直接扱わず、`TouchEvent`インターフェース(`MOTION`/`WithID`/`WithHistory`/合成の`OnPoint`/`OnTwoPoints`)でラップ。特に`WithID`はポインタの**永続ID**でトラッキングするため、他の指が離れてインデックスが振り直されても同じ指を追い続けられる。

## 6. インク描画エンジン(`draw2`)とSpriteの統合

`DrModule`はある1文書分の描画エンジンインスタンスを組み立てる「合成ルート」で、実データは`DrModuleContext`(抽象、`m_canvas: Sprite`フィールドを持つ ─ **これがSpriteツリーへの実際の接続点**)が保持する。

- 各インク要素(`DrElement`)は自分専用の`Sprite`を1つ持ち(`DrAcSprite.newSprite()`)、`DrElementManager`がそれを`DrModuleContext.canvas()`の子として`addChild`する ─ **インクは一般のSpriteツリーをバイパスせず、その一員として描かれる**
- `DrSimpleStrokeElement.repaintToSprite()`は`android.graphics.Path`(ベジェ)を構築し、`setLineDash/setLineCap/setLineWidth/setLineColor`等をSprite越しに設定してから`drawPath()`を呼ぶ ─ ストロークはベクタPathとして記録した描画命令をSpriteに流し込む方式で、直接ピクセルを書くわけではない
- **空間インデックス(`DrMsMeshManager`)の更新戦略**: `activate()`時に追加、`editWithContext()`時にセグメント数が変わらなければ`updateBlock`でインプレース更新、変わったら削除して再追加、`deactivate()`時に削除。**キャンバス全体のバウンズが大きく変化したときのみ**フルリビルド(`updateBounds`)が走る ─ 通常編集では常にインクリメンタル更新
- `DfController.setSpriteGeometry()`はモデルの`x/y/width/height/rotation`プロパティを読み取り、Spriteの`setX/setY/...`に直接反映する**同期的なプル型**の伝播で、明示的なダーティフラグやオブザーバーパターンではない(Sprite自身のセッター内部で無効化が起きると推測されるが、その内部までは未確認)

## 7. Tauri版への実務的示唆

- **保持モード+ダーティ矩形**という設計方針自体は、Web Canvas 2DでもWebGL/wgpuでも再現価値が高い(毎フレーム全体を再描画しない)
- **`Context`という薄い描画抽象の継ぎ目**は真似すべき設計 ─ Rust側で`trait DrawContext { draw_path, draw_bitmap, clip_rect, ... }`を定義し、画面描画・PDFエクスポート・サムネイル生成の3ターゲットを同じSprite走査ロジックで賄える
- **3段階レンダリング戦略(即時ベクタ/オフスクリーンキャッシュ/フリーズビットマップ)**は、パフォーマンスが要求される操作(ページめくりアニメーション等)で参考になる
- **ジェスチャー認識は単一の手書き有限状態機械**として実装するのが良い(個別のRecognizerを並べて競合裁定する設計より優位性が確認されている)。Rustなら10バリアントのenumステートに`down/move/up/pointer_down/pointer_up/cancel/timeout`の遷移関数を書く形が素直
- インク描画は「ベクタPathとして記録→専用シーングラフノードに流し込む→空間インデックスはインクリメンタル更新」という設計を踏襲するとよい。ヒットテストは自前アルゴリズムを書かず、既存の幾何ライブラリ(`lyon`, `kurbo`)やWeb Canvasの`isPointInPath`相当に委譲できる
