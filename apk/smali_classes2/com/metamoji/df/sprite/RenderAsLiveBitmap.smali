.class Lcom/metamoji/df/sprite/RenderAsLiveBitmap;
.super Ljava/lang/Object;
.source "RenderAsLiveBitmap.java"

# interfaces
.implements Lcom/metamoji/df/sprite/Renderer;


# instance fields
.field private canvas:Landroid/graphics/Canvas;

.field private offscreenBitmap:Landroid/graphics/Bitmap;

.field private offscreenCtx:Lcom/metamoji/df/sprite/CanvasContext;

.field private offscreenSize:Landroid/graphics/Point;

.field private owner:Lcom/metamoji/df/sprite/Layer;

.field private renderAsVector:Lcom/metamoji/df/sprite/Renderer;


# direct methods
.method constructor <init>(Lcom/metamoji/df/sprite/RenderAsVector;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenSize:Landroid/graphics/Point;

    .line 28
    new-instance v0, Lcom/metamoji/df/sprite/CanvasContext;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/CanvasContext;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenCtx:Lcom/metamoji/df/sprite/CanvasContext;

    .line 31
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->canvas:Landroid/graphics/Canvas;

    .line 37
    iput-object p1, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->renderAsVector:Lcom/metamoji/df/sprite/Renderer;

    return-void
.end method

.method private static createBitmap(Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 2

    .line 126
    iget v0, p0, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_0

    .line 127
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getOffscreen(Landroid/graphics/RectF;Lcom/metamoji/df/sprite/CanvasContext;)Landroid/graphics/Bitmap;
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->owner:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->getLayerView()Lcom/metamoji/df/sprite/LayerView;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Lcom/metamoji/df/sprite/LayerView;->getSurfaceSize()Landroid/graphics/Point;

    move-result-object v1

    .line 74
    iget-object v2, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 76
    invoke-static {v1}, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->createBitmap(Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenBitmap:Landroid/graphics/Bitmap;

    .line 77
    iget-object p1, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenSize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 78
    iget-object p1, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 79
    invoke-interface {v0}, Lcom/metamoji/df/sprite/LayerView;->getSurfaceRect()Landroid/graphics/RectF;

    move-result-object p1

    goto :goto_1

    .line 82
    :cond_0
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-eq v2, v3, :cond_3

    .line 84
    :cond_1
    iget p1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt p1, v2, :cond_2

    iget p1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gt p1, v2, :cond_2

    .line 86
    iget-object p1, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object p1, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    invoke-static {v1}, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->createBitmap(Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenBitmap:Landroid/graphics/Bitmap;

    .line 92
    :goto_0
    iget-object p1, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenSize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 93
    iget-object p1, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 94
    invoke-interface {v0}, Lcom/metamoji/df/sprite/LayerView;->getSurfaceRect()Landroid/graphics/RectF;

    move-result-object p1

    .line 98
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->updateOffscreen(Landroid/graphics/RectF;Lcom/metamoji/df/sprite/CanvasContext;)V

    .line 101
    :cond_4
    iget-object p1, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private paintAsBitmap(Lcom/metamoji/df/sprite/CanvasContext;)V
    .locals 3

    .line 58
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/CanvasContext;->getDirtyRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->getOffscreen(Landroid/graphics/RectF;Lcom/metamoji/df/sprite/CanvasContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/CanvasContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private updateOffscreen(Landroid/graphics/RectF;Lcom/metamoji/df/sprite/CanvasContext;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 110
    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 111
    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 112
    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenCtx:Lcom/metamoji/df/sprite/CanvasContext;

    iget-object v1, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/sprite/CanvasContext;->setSize(II)V

    .line 113
    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenCtx:Lcom/metamoji/df/sprite/CanvasContext;

    iget-object v1, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/CanvasContext;->setCanvas(Landroid/graphics/Canvas;)V

    .line 114
    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenCtx:Lcom/metamoji/df/sprite/CanvasContext;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/CanvasContext;->setDirtyRect(Landroid/graphics/RectF;)V

    .line 115
    iget-object p1, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenCtx:Lcom/metamoji/df/sprite/CanvasContext;

    invoke-virtual {p2}, Lcom/metamoji/df/sprite/CanvasContext;->isDetailWindow()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/CanvasContext;->setDetailWindow(Z)V

    .line 117
    iget-object p1, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->renderAsVector:Lcom/metamoji/df/sprite/Renderer;

    iget-object p2, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenCtx:Lcom/metamoji/df/sprite/CanvasContext;

    invoke-interface {p1, p2}, Lcom/metamoji/df/sprite/Renderer;->paint(Lcom/metamoji/df/sprite/CanvasContext;)V

    .line 118
    iget-object p1, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public getOffscreenBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->offscreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public paint(Lcom/metamoji/df/sprite/CanvasContext;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->paintAsBitmap(Lcom/metamoji/df/sprite/CanvasContext;)V

    return-void
.end method

.method public setOwner(Lcom/metamoji/df/sprite/Layer;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/metamoji/df/sprite/RenderAsLiveBitmap;->owner:Lcom/metamoji/df/sprite/Layer;

    return-void
.end method
