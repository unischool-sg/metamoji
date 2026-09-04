.class public Lcom/metamoji/df/sprite/Rasterizer;
.super Ljava/lang/Object;
.source "Rasterizer.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0, v0, v0}, Lcom/metamoji/df/sprite/Rasterizer;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/metamoji/df/sprite/Rasterizer;->width:I

    .line 19
    iput p2, p0, Lcom/metamoji/df/sprite/Rasterizer;->height:I

    return-void
.end method

.method private ensure()Landroid/graphics/Canvas;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/metamoji/df/sprite/Rasterizer;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 50
    iget v0, p0, Lcom/metamoji/df/sprite/Rasterizer;->width:I

    iget v1, p0, Lcom/metamoji/df/sprite/Rasterizer;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/df/sprite/Rasterizer;->bitmap:Landroid/graphics/Bitmap;

    .line 51
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/metamoji/df/sprite/Rasterizer;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/Rasterizer;->canvas:Landroid/graphics/Canvas;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/Rasterizer;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/metamoji/df/sprite/Rasterizer;->bitmap:Landroid/graphics/Bitmap;

    .line 42
    iput-object v0, p0, Lcom/metamoji/df/sprite/Rasterizer;->canvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/metamoji/df/sprite/Rasterizer;->height:I

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/df/sprite/Rasterizer;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/metamoji/df/sprite/Rasterizer;->width:I

    return v0
.end method

.method public paint(Lcom/metamoji/df/sprite/Sprite;FFFF)V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/metamoji/df/sprite/Rasterizer;->ensure()Landroid/graphics/Canvas;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getX()F

    move-result v1

    mul-float/2addr v1, p4

    sub-float/2addr p2, v1

    .line 67
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getY()F

    move-result v1

    mul-float/2addr v1, p5

    sub-float/2addr p3, v1

    .line 69
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 71
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 72
    invoke-virtual {v1, p2, p3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 73
    invoke-virtual {v1, p4, p5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 74
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 76
    new-instance p2, Landroid/graphics/RectF;

    iget p3, p0, Lcom/metamoji/df/sprite/Rasterizer;->width:I

    int-to-float p3, p3

    iget p4, p0, Lcom/metamoji/df/sprite/Rasterizer;->height:I

    int-to-float p4, p4

    const/4 p5, 0x0

    invoke-direct {p2, p5, p5, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 77
    invoke-static {v1}, Lcom/metamoji/df/sprite/Geometry;->invert(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/metamoji/df/sprite/Geometry;->transform(Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p2

    .line 79
    new-instance p3, Lcom/metamoji/df/sprite/CanvasContext;

    invoke-direct {p3}, Lcom/metamoji/df/sprite/CanvasContext;-><init>()V

    .line 80
    invoke-virtual {p3, v0}, Lcom/metamoji/df/sprite/CanvasContext;->setCanvas(Landroid/graphics/Canvas;)V

    .line 81
    iget p4, p0, Lcom/metamoji/df/sprite/Rasterizer;->width:I

    iget p5, p0, Lcom/metamoji/df/sprite/Rasterizer;->height:I

    invoke-virtual {p3, p4, p5}, Lcom/metamoji/df/sprite/CanvasContext;->setSize(II)V

    .line 82
    iget-object p4, p0, Lcom/metamoji/df/sprite/Rasterizer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3, p4}, Lcom/metamoji/df/sprite/CanvasContext;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    invoke-virtual {p3, p2}, Lcom/metamoji/df/sprite/CanvasContext;->setDirtyRect(Landroid/graphics/RectF;)V

    .line 84
    invoke-virtual {p1, p3}, Lcom/metamoji/df/sprite/Sprite;->paint(Lcom/metamoji/df/sprite/Context;)V

    .line 86
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/metamoji/df/sprite/Rasterizer;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/metamoji/df/sprite/Rasterizer;->width:I

    return-void
.end method
