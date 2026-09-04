.class Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;
.super Ljava/lang/Object;
.source "RenderAsFreezedBitmap.java"

# interfaces
.implements Lcom/metamoji/df/sprite/Renderer;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private height:F

.field private mAi:Landroid/graphics/Matrix;

.field private owner:Lcom/metamoji/df/sprite/Layer;

.field private scaleA:F

.field private thumbBitmap:Landroid/graphics/Bitmap;

.field private white:Landroid/graphics/Paint;

.field private width:F


# direct methods
.method static bridge synthetic -$$Nest$fputthumbBitmap(Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->thumbBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method constructor <init>(Lcom/metamoji/df/sprite/Viewport;Landroid/graphics/Bitmap;FF)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    iput v0, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->scaleA:F

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->white:Landroid/graphics/Paint;

    .line 40
    iput-object p2, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 41
    iput p3, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->width:F

    .line 42
    iput p4, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->height:F

    .line 44
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Viewport;->getTurnOverMediator()Lcom/metamoji/df/sprite/TurnOverMediator;

    move-result-object p2

    .line 46
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Viewport;->getScrollTranslate()Landroid/graphics/PointF;

    move-result-object p3

    .line 47
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Viewport;->getZoomScale()F

    move-result p1

    iput p1, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->scaleA:F

    .line 48
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 49
    iget p4, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p4, p3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 50
    iget p3, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->scaleA:F

    invoke-virtual {p1, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 51
    invoke-static {p1}, Lcom/metamoji/df/sprite/Geometry;->invert(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->mAi:Landroid/graphics/Matrix;

    .line 53
    iget-object p1, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->white:Landroid/graphics/Paint;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    new-instance p1, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap$1;

    invoke-direct {p1, p0}, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap$1;-><init>(Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;)V

    .line 60
    invoke-interface {p2, p1}, Lcom/metamoji/df/sprite/TurnOverMediator;->requestThumbnail(Lcom/metamoji/df/sprite/ThumbnailRequest;)Z

    return-void
.end method

.method private paintThumb(Landroid/graphics/Canvas;)V
    .locals 7

    .line 68
    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->thumbBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 70
    iget v4, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->width:F

    iget v5, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->height:F

    iget-object v6, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->white:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    move-object v1, p1

    .line 73
    new-instance p1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p1, v3, v3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 74
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->width:F

    iget v4, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->height:F

    invoke-direct {v0, v3, v3, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 75
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 76
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, p1, v0, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 77
    iget-object p1, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->thumbBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public paint(Lcom/metamoji/df/sprite/CanvasContext;)V
    .locals 5

    .line 91
    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->owner:Lcom/metamoji/df/sprite/Layer;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Layer;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getScrollTranslate()Landroid/graphics/PointF;

    move-result-object v1

    .line 94
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getZoomScale()F

    move-result v0

    .line 96
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 98
    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 100
    iget-object v1, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->mAi:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-static {v1, v3}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 101
    invoke-static {v2, v1}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 103
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 104
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 105
    iget v4, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->scaleA:F

    div-float/2addr v0, v4

    .line 107
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 108
    invoke-virtual {v4, v3, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 109
    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 111
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/CanvasContext;->getCanvas()Landroid/graphics/Canvas;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 114
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->paintThumb(Landroid/graphics/Canvas;)V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 118
    iget-object v0, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p1, v0, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setOwner(Lcom/metamoji/df/sprite/Layer;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/metamoji/df/sprite/RenderAsFreezedBitmap;->owner:Lcom/metamoji/df/sprite/Layer;

    return-void
.end method
