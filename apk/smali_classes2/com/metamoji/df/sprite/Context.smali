.class public interface abstract Lcom/metamoji/df/sprite/Context;
.super Ljava/lang/Object;
.source "Context.java"


# virtual methods
.method public abstract clipPath(Landroid/graphics/Path;)V
.end method

.method public abstract clipRect(FFFF)V
.end method

.method public abstract clipRect(Landroid/graphics/RectF;)V
.end method

.method public abstract concat(Landroid/graphics/Matrix;)V
.end method

.method public abstract drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
.end method

.method public abstract drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
.end method

.method public abstract drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
.end method

.method public abstract drawPDFPage(Lcom/metamoji/df/sprite/pdf/PDFPage;Landroid/graphics/RectF;)V
.end method

.method public abstract drawPath(Landroid/graphics/Path;FLandroid/graphics/Paint;FLandroid/graphics/Paint;)V
.end method

.method public abstract drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
.end method

.method public abstract drawPathList(Ljava/util/List;Landroid/graphics/Paint;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Landroid/graphics/Paint;",
            ")V"
        }
    .end annotation
.end method

.method public abstract drawText(Ljava/lang/String;FFFLandroid/graphics/Paint;)V
.end method

.method public abstract getAlpha()F
.end method

.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getCanvas()Landroid/graphics/Canvas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getClipBounds()Landroid/graphics/Rect;
.end method

.method public abstract getDirtyRect()Landroid/graphics/RectF;
.end method

.method public abstract getDropShadow()Lcom/metamoji/df/sprite/DropShadow;
.end method

.method public abstract getMatrix(Landroid/graphics/Matrix;)V
.end method

.method public abstract getSize()Landroid/graphics/Point;
.end method

.method public abstract isDetailWindow()Z
.end method

.method public abstract isPDF()Z
.end method

.method public abstract restore()V
.end method

.method public abstract save()V
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setDirtyRect(Landroid/graphics/RectF;)V
.end method

.method public abstract setDropShadow(Lcom/metamoji/df/sprite/DropShadow;)V
.end method

.method public abstract setMatrix(Landroid/graphics/Matrix;)V
.end method

.method public abstract setSize(II)V
.end method
