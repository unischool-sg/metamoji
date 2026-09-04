.class Lcom/metamoji/df/sprite/BitmapInstruction;
.super Ljava/lang/Object;
.source "BitmapInstruction.java"

# interfaces
.implements Lcom/metamoji/df/sprite/GraphicsInstruction;


# instance fields
.field private apaint:Landroid/graphics/Paint;

.field private bm:Landroid/graphics/Bitmap;

.field private matrix:Landroid/graphics/Matrix;

.field private scaleX:F

.field private scaleY:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 21
    iput v0, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->scaleX:F

    .line 22
    iput v0, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->scaleY:F

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->apaint:Landroid/graphics/Paint;

    .line 16
    iput-object p1, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->bm:Landroid/graphics/Bitmap;

    return-void
.end method

.method private createMatrix()Landroid/graphics/Matrix;
    .locals 3

    .line 39
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 40
    iget v1, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->x:F

    iget v2, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 41
    iget v1, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->scaleX:F

    iget v2, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->scaleY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    return-object v0
.end method

.method private getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->matrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/metamoji/df/sprite/BitmapInstruction;->createMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->matrix:Landroid/graphics/Matrix;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->matrix:Landroid/graphics/Matrix;

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/metamoji/df/sprite/GraphicsInstruction;
    .locals 2

    .line 87
    new-instance v0, Lcom/metamoji/df/sprite/BitmapInstruction;

    iget-object v1, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->bm:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/BitmapInstruction;-><init>(Landroid/graphics/Bitmap;)V

    .line 88
    iget v1, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->x:F

    iput v1, v0, Lcom/metamoji/df/sprite/BitmapInstruction;->x:F

    .line 89
    iget v1, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->y:F

    iput v1, v0, Lcom/metamoji/df/sprite/BitmapInstruction;->y:F

    .line 90
    iget v1, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->scaleX:F

    iput v1, v0, Lcom/metamoji/df/sprite/BitmapInstruction;->scaleX:F

    .line 91
    iget v1, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->scaleY:F

    iput v1, v0, Lcom/metamoji/df/sprite/BitmapInstruction;->scaleY:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/BitmapInstruction;->clone()Lcom/metamoji/df/sprite/GraphicsInstruction;

    move-result-object v0

    return-object v0
.end method

.method public containsPoint(Landroid/graphics/PointF;)Z
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/BitmapInstruction;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->scaleX:F

    mul-float/2addr v0, v1

    .line 69
    iget-object v1, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->scaleY:F

    mul-float/2addr v1, v2

    .line 70
    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->x:F

    iget v4, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->y:F

    add-float/2addr v0, v3

    add-float/2addr v1, v4

    invoke-direct {v2, v3, v4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public getScaleX()F
    .locals 1

    .line 30
    iget v0, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 32
    iget v0, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->scaleY:F

    return v0
.end method

.method public getX()F
    .locals 1

    .line 26
    iget v0, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 28
    iget v0, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->y:F

    return v0
.end method

.method public paint(Lcom/metamoji/df/sprite/Context;)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->bm:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/metamoji/df/sprite/BitmapInstruction;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->apaint:Landroid/graphics/Paint;

    invoke-interface {p1, v0, v1, v2}, Lcom/metamoji/df/sprite/Context;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->scaleX:F

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->scaleY:F

    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->x:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/metamoji/df/sprite/BitmapInstruction;->y:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Bi"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " bounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/BitmapInstruction;->getBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/df/sprite/Geometry;->toString(Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
