.class Lcom/metamoji/df/sprite/BitmapTiledInstruction;
.super Ljava/lang/Object;
.source "BitmapTiledInstruction.java"

# interfaces
.implements Lcom/metamoji/df/sprite/GraphicsInstruction;


# instance fields
.field private apaint:Landroid/graphics/Paint;

.field private bm:Landroid/graphics/Bitmap;

.field private matrix:Landroid/graphics/Matrix;

.field private rect:Landroid/graphics/RectF;

.field private scaleX:F

.field private scaleY:F


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/RectF;FF)V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->apaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->matrix:Landroid/graphics/Matrix;

    .line 18
    iput-object p1, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->bm:Landroid/graphics/Bitmap;

    .line 19
    iput-object p2, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->rect:Landroid/graphics/RectF;

    .line 20
    iput p3, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->scaleX:F

    .line 21
    iput p4, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->scaleY:F

    return-void
.end method

.method private drawBitmap(Lcom/metamoji/df/sprite/Context;FFFFLandroid/graphics/Paint;)V
    .locals 3

    float-to-double v0, p2

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p2, v0

    float-to-double v0, p3

    .line 56
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p3, v0

    float-to-double v0, p4

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p4, v0

    float-to-double v1, p5

    .line 58
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float p5, v1

    add-float/2addr p5, v0

    sub-float/2addr p4, p2

    .line 59
    iget-object v0, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p4, v0

    sub-float/2addr p5, p3

    .line 60
    iget-object v0, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p5, v0

    .line 62
    iget-object v0, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 63
    iget-object p2, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p4, p5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 64
    iget-object p2, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->bm:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->matrix:Landroid/graphics/Matrix;

    invoke-interface {p1, p2, p3, p6}, Lcom/metamoji/df/sprite/Context;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public clone()Lcom/metamoji/df/sprite/GraphicsInstruction;
    .locals 5

    .line 89
    new-instance v0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;

    iget-object v1, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->bm:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->rect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->scaleX:F

    iget v4, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->scaleY:F

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/metamoji/df/sprite/BitmapTiledInstruction;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/RectF;FF)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->clone()Lcom/metamoji/df/sprite/GraphicsInstruction;

    move-result-object v0

    return-object v0
.end method

.method public containsPoint(Landroid/graphics/PointF;)Z
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->rect:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->rect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public paint(Lcom/metamoji/df/sprite/Context;)V
    .locals 10

    .line 39
    iget-object v0, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->scaleX:F

    mul-float/2addr v0, v1

    .line 40
    iget-object v1, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->scaleY:F

    mul-float/2addr v1, v2

    .line 41
    iget-object v2, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    move v6, v2

    :goto_0
    iget-object v2, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v2, v6, v2

    if-gez v2, :cond_1

    .line 42
    iget-object v2, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move v5, v2

    :goto_1
    iget-object v2, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v2, v5, v2

    if-gez v2, :cond_0

    add-float v7, v5, v0

    add-float v8, v6, v1

    .line 43
    iget-object v9, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->apaint:Landroid/graphics/Paint;

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->drawBitmap(Lcom/metamoji/df/sprite/Context;FFFFLandroid/graphics/Paint;)V

    move v5, v7

    goto :goto_1

    :cond_0
    move-object v4, p1

    add-float/2addr v6, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Bt"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " rect="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/df/sprite/BitmapTiledInstruction;->rect:Landroid/graphics/RectF;

    invoke-static {v2}, Lcom/metamoji/df/sprite/Geometry;->toString(Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
