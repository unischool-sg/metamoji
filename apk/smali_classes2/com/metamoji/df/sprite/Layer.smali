.class public Lcom/metamoji/df/sprite/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# static fields
.field private static final DETAIL:I = 0x2

.field public static LAYER_VIEW_IS_A_TEXTURE_VIEW:Z = true

.field private static final OVERLAY:I = 0x1


# instance fields
.field private defaultRenderer:Lcom/metamoji/df/sprite/Renderer;

.field private flags:I

.field private mainRenderer:Lcom/metamoji/df/sprite/Renderer;

.field private overRenderer:Lcom/metamoji/df/sprite/Renderer;

.field private renderAsBitmap:Lcom/metamoji/df/sprite/RenderAsLiveBitmap;

.field private renderAsScreenShot:Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;

.field private renderAsVector:Lcom/metamoji/df/sprite/RenderAsVector;

.field private stage:Lcom/metamoji/df/sprite/Stage;

.field private view:Lcom/metamoji/df/sprite/LayerView;

.field private viewport:Lcom/metamoji/df/sprite/Viewport;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/sprite/Stage;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/Layer;->setStage(Lcom/metamoji/df/sprite/Stage;)V

    .line 22
    new-instance p1, Lcom/metamoji/df/sprite/RenderAsVector;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/RenderAsVector;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/Layer;->renderAsVector:Lcom/metamoji/df/sprite/RenderAsVector;

    .line 23
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/RenderAsVector;->setOwner(Lcom/metamoji/df/sprite/Layer;)V

    .line 24
    new-instance p1, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;

    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->renderAsVector:Lcom/metamoji/df/sprite/RenderAsVector;

    invoke-direct {p1, v0}, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;-><init>(Lcom/metamoji/df/sprite/RenderAsVector;)V

    iput-object p1, p0, Lcom/metamoji/df/sprite/Layer;->renderAsBitmap:Lcom/metamoji/df/sprite/RenderAsLiveBitmap;

    .line 25
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->setOwner(Lcom/metamoji/df/sprite/Layer;)V

    .line 27
    sget-boolean p1, Lcom/metamoji/df/sprite/Layer;->LAYER_VIEW_IS_A_TEXTURE_VIEW:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/df/sprite/Layer;->renderAsBitmap:Lcom/metamoji/df/sprite/RenderAsLiveBitmap;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/metamoji/df/sprite/Layer;->renderAsVector:Lcom/metamoji/df/sprite/RenderAsVector;

    :goto_0
    iput-object p1, p0, Lcom/metamoji/df/sprite/Layer;->defaultRenderer:Lcom/metamoji/df/sprite/Renderer;

    .line 29
    iput-object p1, p0, Lcom/metamoji/df/sprite/Layer;->mainRenderer:Lcom/metamoji/df/sprite/Renderer;

    return-void
.end method

.method private IS_DETAIL()Z
    .locals 1

    .line 38
    iget v0, p0, Lcom/metamoji/df/sprite/Layer;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private IS_OVERLAY()Z
    .locals 2

    .line 36
    iget v0, p0, Lcom/metamoji/df/sprite/Layer;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private SET_DETAIL(Z)I
    .locals 1

    .line 39
    iget v0, p0, Lcom/metamoji/df/sprite/Layer;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x2

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Layer;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x3

    goto :goto_0
.end method

.method private SET_OVERLAY(Z)I
    .locals 1

    .line 37
    iget v0, p0, Lcom/metamoji/df/sprite/Layer;->flags:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x1

    :goto_0
    iput p1, p0, Lcom/metamoji/df/sprite/Layer;->flags:I

    return p1

    :cond_0
    and-int/lit8 p1, v0, -0x2

    goto :goto_0
.end method

.method private createView()Lcom/metamoji/df/sprite/LayerView;
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->viewport:Lcom/metamoji/df/sprite/Viewport;

    if-eqz v0, :cond_1

    .line 221
    sget-boolean v0, Lcom/metamoji/df/sprite/Layer;->LAYER_VIEW_IS_A_TEXTURE_VIEW:Z

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Lcom/metamoji/df/sprite/LayerViewTextureView;

    iget-object v1, p0, Lcom/metamoji/df/sprite/Layer;->viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/LayerViewTextureView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;

    iget-object v1, p0, Lcom/metamoji/df/sprite/Layer;->viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;-><init>(Landroid/content/Context;)V

    .line 224
    :goto_0
    invoke-interface {v0, p0}, Lcom/metamoji/df/sprite/LayerView;->setLayer(Lcom/metamoji/df/sprite/Layer;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public beginScreenShot()V
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->renderAsScreenShot:Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->renderAsBitmap:Lcom/metamoji/df/sprite/RenderAsLiveBitmap;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->getOffscreenBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/metamoji/df/sprite/Layer;->stage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Stage;->getSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v2

    .line 177
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v1

    .line 178
    new-instance v3, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;

    iget-object v4, p0, Lcom/metamoji/df/sprite/Layer;->viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;-><init>(Lcom/metamoji/df/sprite/Viewport;Landroid/graphics/Bitmap;FF)V

    iput-object v3, p0, Lcom/metamoji/df/sprite/Layer;->renderAsScreenShot:Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;

    .line 179
    invoke-virtual {v3, p0}, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->setOwner(Lcom/metamoji/df/sprite/Layer;)V

    .line 180
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->renderAsScreenShot:Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;

    iput-object v0, p0, Lcom/metamoji/df/sprite/Layer;->mainRenderer:Lcom/metamoji/df/sprite/Renderer;

    :cond_0
    return-void
.end method

.method dispose()V
    .locals 2

    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/metamoji/df/sprite/Layer;->viewport:Lcom/metamoji/df/sprite/Viewport;

    .line 261
    iget-object v1, p0, Lcom/metamoji/df/sprite/Layer;->stage:Lcom/metamoji/df/sprite/Stage;

    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Stage;->dispose()V

    .line 263
    iput-object v0, p0, Lcom/metamoji/df/sprite/Layer;->stage:Lcom/metamoji/df/sprite/Stage;

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/metamoji/df/sprite/Layer;->view:Lcom/metamoji/df/sprite/LayerView;

    if-eqz v1, :cond_1

    .line 266
    invoke-interface {v1}, Lcom/metamoji/df/sprite/LayerView;->dispose()V

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/metamoji/df/sprite/Layer;->renderAsBitmap:Lcom/metamoji/df/sprite/RenderAsLiveBitmap;

    if-eqz v1, :cond_2

    .line 269
    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->setOwner(Lcom/metamoji/df/sprite/Layer;)V

    .line 270
    iget-object v1, p0, Lcom/metamoji/df/sprite/Layer;->renderAsBitmap:Lcom/metamoji/df/sprite/RenderAsLiveBitmap;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->dispose()V

    .line 271
    iput-object v0, p0, Lcom/metamoji/df/sprite/Layer;->renderAsBitmap:Lcom/metamoji/df/sprite/RenderAsLiveBitmap;

    :cond_2
    return-void
.end method

.method public endScreenShot()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->renderAsScreenShot:Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 190
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->setOwner(Lcom/metamoji/df/sprite/Layer;)V

    .line 191
    iput-object v1, p0, Lcom/metamoji/df/sprite/Layer;->renderAsScreenShot:Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;

    .line 192
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->defaultRenderer:Lcom/metamoji/df/sprite/Renderer;

    iput-object v0, p0, Lcom/metamoji/df/sprite/Layer;->mainRenderer:Lcom/metamoji/df/sprite/Renderer;

    .line 193
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->view:Lcom/metamoji/df/sprite/LayerView;

    invoke-interface {v0}, Lcom/metamoji/df/sprite/LayerView;->setNeedsDisplay()V

    :cond_0
    return-void
.end method

.method eventStart()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->view:Lcom/metamoji/df/sprite/LayerView;

    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0}, Lcom/metamoji/df/sprite/LayerView;->eventStart()V

    :cond_0
    return-void
.end method

.method eventStop()V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->view:Lcom/metamoji/df/sprite/LayerView;

    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0}, Lcom/metamoji/df/sprite/LayerView;->eventStop()V

    :cond_0
    return-void
.end method

.method forceUpdate(Landroid/graphics/Canvas;)V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->renderAsBitmap:Lcom/metamoji/df/sprite/RenderAsLiveBitmap;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->getOffscreenBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 315
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method getBounds()Landroid/graphics/RectF;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->view:Lcom/metamoji/df/sprite/LayerView;

    invoke-interface {v0}, Lcom/metamoji/df/sprite/LayerView;->getSurfaceRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method getLayerView()Lcom/metamoji/df/sprite/LayerView;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->view:Lcom/metamoji/df/sprite/LayerView;

    return-object v0
.end method

.method getOverRenderer()Lcom/metamoji/df/sprite/Renderer;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->overRenderer:Lcom/metamoji/df/sprite/Renderer;

    return-object v0
.end method

.method getSize()Landroid/graphics/Point;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->view:Lcom/metamoji/df/sprite/LayerView;

    invoke-interface {v0}, Lcom/metamoji/df/sprite/LayerView;->getSurfaceSize()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getStage()Lcom/metamoji/df/sprite/Stage;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->stage:Lcom/metamoji/df/sprite/Stage;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->view:Lcom/metamoji/df/sprite/LayerView;

    if-nez v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Layer;->createView()Lcom/metamoji/df/sprite/LayerView;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/df/sprite/Layer;->view:Lcom/metamoji/df/sprite/LayerView;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->view:Lcom/metamoji/df/sprite/LayerView;

    invoke-interface {v0}, Lcom/metamoji/df/sprite/LayerView;->asView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewNoCreate()Landroid/view/View;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->view:Lcom/metamoji/df/sprite/LayerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    invoke-interface {v0}, Lcom/metamoji/df/sprite/LayerView;->asView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewport()Lcom/metamoji/df/sprite/Viewport;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->viewport:Lcom/metamoji/df/sprite/Viewport;

    return-object v0
.end method

.method invalidate()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->view:Lcom/metamoji/df/sprite/LayerView;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Lcom/metamoji/df/sprite/LayerView;->setNeedsDisplay()V

    :cond_0
    return-void
.end method

.method invalidateStageRect(Landroid/graphics/RectF;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->viewport:Lcom/metamoji/df/sprite/Viewport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->view:Lcom/metamoji/df/sprite/LayerView;

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/metamoji/df/sprite/Geometry;->rectPool:Lcom/metamoji/df/sprite/Geometry$RectFPool;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Geometry$RectFPool;->withdraw()Landroid/graphics/RectF;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/metamoji/df/sprite/Layer;->view:Lcom/metamoji/df/sprite/LayerView;

    iget-object v2, p0, Lcom/metamoji/df/sprite/Layer;->viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v2, v0, p1}, Lcom/metamoji/df/sprite/Viewport;->stageToViewport(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/metamoji/df/sprite/LayerView;->setNeedsDisplay(Landroid/graphics/RectF;)V

    .line 152
    sget-object p1, Lcom/metamoji/df/sprite/Geometry;->rectPool:Lcom/metamoji/df/sprite/Geometry$RectFPool;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Geometry$RectFPool;->deposit(Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method isDetail()Z
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Layer;->IS_DETAIL()Z

    move-result v0

    return v0
.end method

.method isOverlay()Z
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Layer;->IS_OVERLAY()Z

    move-result v0

    return v0
.end method

.method monitorNotify()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->viewport:Lcom/metamoji/df/sprite/Viewport;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->monitorNotify()V

    :cond_0
    return-void
.end method

.method public paint(Lcom/metamoji/df/sprite/CanvasContext;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->mainRenderer:Lcom/metamoji/df/sprite/Renderer;

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/Renderer;->paint(Lcom/metamoji/df/sprite/CanvasContext;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->overRenderer:Lcom/metamoji/df/sprite/Renderer;

    if-eqz v0, :cond_1

    .line 164
    invoke-interface {v0, p1}, Lcom/metamoji/df/sprite/Renderer;->paint(Lcom/metamoji/df/sprite/CanvasContext;)V

    :cond_1
    return-void
.end method

.method setDetail(Z)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Layer;->SET_DETAIL(Z)I

    return-void
.end method

.method setOverRenderer(Lcom/metamoji/df/sprite/Renderer;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->overRenderer:Lcom/metamoji/df/sprite/Renderer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 102
    invoke-interface {v0, v1}, Lcom/metamoji/df/sprite/Renderer;->setOwner(Lcom/metamoji/df/sprite/Layer;)V

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/metamoji/df/sprite/Layer;->overRenderer:Lcom/metamoji/df/sprite/Renderer;

    if-eqz p1, :cond_1

    .line 106
    invoke-interface {p1, p0}, Lcom/metamoji/df/sprite/Renderer;->setOwner(Lcom/metamoji/df/sprite/Layer;)V

    :cond_1
    return-void
.end method

.method setOverlay(Z)V
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/Layer;->SET_OVERLAY(Z)I

    if-eqz p1, :cond_0

    .line 121
    iget-object p1, p0, Lcom/metamoji/df/sprite/Layer;->renderAsVector:Lcom/metamoji/df/sprite/RenderAsVector;

    iput-object p1, p0, Lcom/metamoji/df/sprite/Layer;->mainRenderer:Lcom/metamoji/df/sprite/Renderer;

    :cond_0
    return-void
.end method

.method public setStage(Lcom/metamoji/df/sprite/Stage;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->stage:Lcom/metamoji/df/sprite/Stage;

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 89
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Stage;->setLayer(Lcom/metamoji/df/sprite/Layer;)V

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/metamoji/df/sprite/Layer;->stage:Lcom/metamoji/df/sprite/Stage;

    if-eqz p1, :cond_1

    .line 93
    invoke-virtual {p1, p0}, Lcom/metamoji/df/sprite/Stage;->setLayer(Lcom/metamoji/df/sprite/Layer;)V

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Layer;->invalidate()V

    :cond_2
    return-void
.end method

.method public setViewport(Lcom/metamoji/df/sprite/Viewport;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/metamoji/df/sprite/Layer;->viewport:Lcom/metamoji/df/sprite/Viewport;

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Layer;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 279
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/Layer;->getViewNoCreate()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    .line 284
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method tick()Z
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->view:Lcom/metamoji/df/sprite/LayerView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/metamoji/df/sprite/LayerView;->tick()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Layer"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Layer;->IS_OVERLAY()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    const-string v1, " overlay=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Layer;->IS_DETAIL()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    const-string v1, " detail=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " stage="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/df/sprite/Layer;->stage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateFromMonitor()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/metamoji/df/sprite/Layer;->view:Lcom/metamoji/df/sprite/LayerView;

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0}, Lcom/metamoji/df/sprite/LayerView;->updateFromMonitor()V

    :cond_0
    return-void
.end method
