.class public Lcom/sevenknowledge/common/SerializableUtil;
.super Ljava/lang/Object;
.source "SerializableUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readPointF(Ljava/io/ObjectInputStream;Landroid/graphics/PointF;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v0

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 31
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result p0

    iput p0, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public static readRectF(Ljava/io/ObjectInputStream;Landroid/graphics/RectF;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 20
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 21
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    .line 22
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result p0

    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static writePointF(Ljava/io/ObjectOutputStream;Landroid/graphics/PointF;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 27
    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    return-void
.end method

.method public static writeRectF(Ljava/io/ObjectOutputStream;Landroid/graphics/RectF;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 14
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 15
    iget v0, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 16
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, p1}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    return-void
.end method
