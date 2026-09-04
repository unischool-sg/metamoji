.class Lcom/metamoji/df/sprite/BitmapRectInstruction;
.super Ljava/lang/Object;
.source "BitmapRectInstruction.java"

# interfaces
.implements Lcom/metamoji/df/sprite/GraphicsInstruction;


# instance fields
.field private apaint:Landroid/graphics/Paint;

.field private bm:Landroid/graphics/Bitmap;

.field private destinationRect:Landroid/graphics/RectF;

.field private sourceRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/BitmapRectInstruction;->apaint:Landroid/graphics/Paint;

    .line 16
    iput-object p1, p0, Lcom/metamoji/df/sprite/BitmapRectInstruction;->bm:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public clone()Lcom/metamoji/df/sprite/GraphicsInstruction;
    .locals 2

    .line 58
    new-instance v0, Lcom/metamoji/df/sprite/BitmapRectInstruction;

    iget-object v1, p0, Lcom/metamoji/df/sprite/BitmapRectInstruction;->bm:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/BitmapRectInstruction;-><init>(Landroid/graphics/Bitmap;)V

    .line 59
    iget-object v1, p0, Lcom/metamoji/df/sprite/BitmapRectInstruction;->sourceRect:Landroid/graphics/Rect;

    iput-object v1, v0, Lcom/metamoji/df/sprite/BitmapRectInstruction;->sourceRect:Landroid/graphics/Rect;

    .line 60
    iget-object v1, p0, Lcom/metamoji/df/sprite/BitmapRectInstruction;->destinationRect:Landroid/graphics/RectF;

    iput-object v1, v0, Lcom/metamoji/df/sprite/BitmapRectInstruction;->destinationRect:Landroid/graphics/RectF;

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
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/BitmapRectInstruction;->clone()Lcom/metamoji/df/sprite/GraphicsInstruction;

    move-result-object v0

    return-object v0
.end method

.method public containsPoint(Landroid/graphics/PointF;)Z
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/BitmapRectInstruction;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/metamoji/df/sprite/BitmapRectInstruction;->destinationRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getDestinationRect()Landroid/graphics/RectF;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/df/sprite/BitmapRectInstruction;->destinationRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getSourceRect()Landroid/graphics/Rect;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/df/sprite/BitmapRectInstruction;->sourceRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public paint(Lcom/metamoji/df/sprite/Context;)V
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/metamoji/df/sprite/BitmapRectInstruction;->bm:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/metamoji/df/sprite/BitmapRectInstruction;->sourceRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/metamoji/df/sprite/BitmapRectInstruction;->destinationRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/metamoji/df/sprite/BitmapRectInstruction;->apaint:Landroid/graphics/Paint;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/metamoji/df/sprite/Context;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setDestinationRect(Landroid/graphics/RectF;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/metamoji/df/sprite/BitmapRectInstruction;->destinationRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setSourceRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/metamoji/df/sprite/BitmapRectInstruction;->sourceRect:Landroid/graphics/Rect;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Br"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " bounds="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/BitmapRectInstruction;->getBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/df/sprite/Geometry;->toString(Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
