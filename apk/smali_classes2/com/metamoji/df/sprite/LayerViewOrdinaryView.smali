.class Lcom/metamoji/df/sprite/LayerViewOrdinaryView;
.super Landroid/view/View;
.source "LayerViewOrdinaryView.java"

# interfaces
.implements Lcom/metamoji/df/sprite/LayerView;


# instance fields
.field private ctx:Lcom/metamoji/df/sprite/CanvasContext;

.field private layer:Lcom/metamoji/df/sprite/Layer;

.field private surfaceRect:Landroid/graphics/RectF;

.field private surfaceSize:Landroid/graphics/Point;

.field private work:Landroid/graphics/Rect;

.field workR:Landroid/graphics/Rect;

.field workRF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->surfaceSize:Landroid/graphics/Point;

    .line 49
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->surfaceRect:Landroid/graphics/RectF;

    .line 52
    new-instance p1, Lcom/metamoji/df/sprite/CanvasContext;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/CanvasContext;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->ctx:Lcom/metamoji/df/sprite/CanvasContext;

    .line 56
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->work:Landroid/graphics/Rect;

    .line 67
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->workR:Landroid/graphics/Rect;

    .line 68
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->workRF:Landroid/graphics/RectF;

    .line 24
    invoke-direct {p0}, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->surfaceSize:Landroid/graphics/Point;

    .line 49
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->surfaceRect:Landroid/graphics/RectF;

    .line 52
    new-instance p1, Lcom/metamoji/df/sprite/CanvasContext;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/CanvasContext;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->ctx:Lcom/metamoji/df/sprite/CanvasContext;

    .line 56
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->work:Landroid/graphics/Rect;

    .line 67
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->workR:Landroid/graphics/Rect;

    .line 68
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->workRF:Landroid/graphics/RectF;

    .line 32
    invoke-direct {p0}, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->surfaceSize:Landroid/graphics/Point;

    .line 49
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->surfaceRect:Landroid/graphics/RectF;

    .line 52
    new-instance p1, Lcom/metamoji/df/sprite/CanvasContext;

    invoke-direct {p1}, Lcom/metamoji/df/sprite/CanvasContext;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->ctx:Lcom/metamoji/df/sprite/CanvasContext;

    .line 56
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->work:Landroid/graphics/Rect;

    .line 67
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->workR:Landroid/graphics/Rect;

    .line 68
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->workRF:Landroid/graphics/RectF;

    .line 41
    invoke-direct {p0}, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->setup()V

    return-void
.end method

.method private paint(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->layer:Lcom/metamoji/df/sprite/Layer;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->ctx:Lcom/metamoji/df/sprite/CanvasContext;

    iget-object v1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->surfaceSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->surfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/sprite/CanvasContext;->setSize(II)V

    .line 137
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->ctx:Lcom/metamoji/df/sprite/CanvasContext;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/CanvasContext;->setCanvas(Landroid/graphics/Canvas;)V

    .line 138
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->ctx:Lcom/metamoji/df/sprite/CanvasContext;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/CanvasContext;->getDirtyRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->roundOutTo(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 139
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->ctx:Lcom/metamoji/df/sprite/CanvasContext;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/CanvasContext;->getDirtyRect()Landroid/graphics/RectF;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->surfaceRect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 140
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->ctx:Lcom/metamoji/df/sprite/CanvasContext;

    iget-object p2, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->layer:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {p2}, Lcom/metamoji/df/sprite/Layer;->isDetail()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/CanvasContext;->setDetailWindow(Z)V

    .line 141
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->layer:Lcom/metamoji/df/sprite/Layer;

    iget-object p2, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->ctx:Lcom/metamoji/df/sprite/CanvasContext;

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Layer;->paint(Lcom/metamoji/df/sprite/CanvasContext;)V

    :cond_0
    return-void
.end method

.method private roundOutTo(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->work:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 59
    iget-object p2, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->work:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private setup()V
    .locals 0

    return-void
.end method


# virtual methods
.method public asView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->layer:Lcom/metamoji/df/sprite/Layer;

    return-void
.end method

.method public eventStart()V
    .locals 0

    return-void
.end method

.method public eventStop()V
    .locals 0

    return-void
.end method

.method public getLayer()Lcom/metamoji/df/sprite/Layer;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->layer:Lcom/metamoji/df/sprite/Layer;

    return-object v0
.end method

.method public getSurfaceRect()Landroid/graphics/RectF;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->surfaceRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSurfaceSize()Landroid/graphics/Point;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->surfaceSize:Landroid/graphics/Point;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->workR:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->workRF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->workR:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 74
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->workRF:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0}, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->paint(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->layer:Lcom/metamoji/df/sprite/Layer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Layer;->isOverlay()Z

    move-result p1

    if-nez p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->layer:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Layer;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Viewport;->fireRepaintCallback()V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 113
    iget-object p3, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->surfaceRect:Landroid/graphics/RectF;

    int-to-float p4, p1

    int-to-float v0, p2

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, p4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 114
    iget-object p3, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->surfaceSize:Landroid/graphics/Point;

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public setLayer(Lcom/metamoji/df/sprite/Layer;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->layer:Lcom/metamoji/df/sprite/Layer;

    return-void
.end method

.method public setNeedsDisplay()V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->postInvalidate()V

    return-void
.end method

.method public setNeedsDisplay(Landroid/graphics/RectF;)V
    .locals 4

    .line 87
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->workR:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 91
    iget-object p1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->workR:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->workR:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->workR:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->workR:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/metamoji/df/sprite/LayerViewOrdinaryView;->postInvalidate(IIII)V

    return-void
.end method

.method public tick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateFromMonitor()V
    .locals 0

    return-void
.end method
