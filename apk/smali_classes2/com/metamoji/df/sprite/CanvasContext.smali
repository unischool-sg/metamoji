.class public Lcom/metamoji/df/sprite/CanvasContext;
.super Ljava/lang/Object;
.source "CanvasContext.java"

# interfaces
.implements Lcom/metamoji/df/sprite/Context;


# instance fields
.field private alpha:F

.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private detailWindow:Z

.field private dirtyRect:Landroid/graphics/RectF;

.field private dropShadow:Lcom/metamoji/df/sprite/DropShadow;

.field private dummyPaint:Landroid/graphics/Paint;

.field private pdfMarker:[F

.field private pdfMarkerMatrix:Landroid/graphics/Matrix;

.field private pdfOutputInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;",
            ">;"
        }
    .end annotation
.end field

.field private size:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->alpha:F

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->dirtyRect:Landroid/graphics/RectF;

    .line 38
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->size:Landroid/graphics/Point;

    .line 327
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->pdfMarkerMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    .line 328
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->pdfMarker:[F

    .line 329
    new-instance v0, Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->dummyPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private formula(FLandroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 3

    .line 84
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/CanvasContext;->mul(F)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 86
    iget-object p1, p0, Lcom/metamoji/df/sprite/CanvasContext;->dropShadow:Lcom/metamoji/df/sprite/DropShadow;

    if-eqz p1, :cond_0

    .line 87
    iget p1, p1, Lcom/metamoji/df/sprite/DropShadow;->blur:F

    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->dropShadow:Lcom/metamoji/df/sprite/DropShadow;

    iget v0, v0, Lcom/metamoji/df/sprite/DropShadow;->x:F

    iget-object v1, p0, Lcom/metamoji/df/sprite/CanvasContext;->dropShadow:Lcom/metamoji/df/sprite/DropShadow;

    iget v1, v1, Lcom/metamoji/df/sprite/DropShadow;->y:F

    iget-object v2, p0, Lcom/metamoji/df/sprite/CanvasContext;->dropShadow:Lcom/metamoji/df/sprite/DropShadow;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/DropShadow;->getARGB()I

    move-result v2

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-object p2

    .line 89
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Paint;->clearShadowLayer()V

    return-object p2
.end method

.method private mul(F)I
    .locals 2

    const/high16 v0, 0x437f0000    # 255.0f

    .line 75
    iget v1, p0, Lcom/metamoji/df/sprite/CanvasContext;->alpha:F

    mul-float/2addr v1, v0

    mul-float/2addr v1, p1

    float-to-int p1, v1

    return p1
.end method


# virtual methods
.method public clipPath(Landroid/graphics/Path;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method public clipRect(FFFF)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    return-void
.end method

.method public clipRect(Landroid/graphics/RectF;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    return-void
.end method

.method public concat(Landroid/graphics/Matrix;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, p4}, Lcom/metamoji/df/sprite/CanvasContext;->formula(FLandroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, p3}, Lcom/metamoji/df/sprite/CanvasContext;->formula(FLandroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, p4}, Lcom/metamoji/df/sprite/CanvasContext;->formula(FLandroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPDFPage(Lcom/metamoji/df/sprite/pdf/PDFPage;Landroid/graphics/RectF;)V
    .locals 8

    .line 337
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->pdfOutputInfo:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getTicket()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 341
    iget v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 347
    :cond_0
    new-instance v0, Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;

    invoke-direct {v0, p1, p2}, Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;-><init>(Lcom/metamoji/df/sprite/pdf/PDFPage;Landroid/graphics/RectF;)V

    .line 348
    iget-object p2, p0, Lcom/metamoji/df/sprite/CanvasContext;->pdfOutputInfo:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object p2, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 356
    iget-object p2, p0, Lcom/metamoji/df/sprite/CanvasContext;->pdfMarker:[F

    const/4 v1, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    aput v2, p2, v1

    const/4 v1, 0x3

    const/high16 v2, 0x40a00000    # 5.0f

    .line 357
    aput v2, p2, v1

    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, 0x1

    .line 358
    aput v1, p2, v2

    const/4 v1, 0x4

    const/high16 v3, 0x40800000    # 4.0f

    .line 359
    aput v3, p2, v1

    const/16 v1, 0x8

    const/high16 v3, 0x3f800000    # 1.0f

    .line 360
    aput v3, p2, v1

    const/4 v1, 0x2

    .line 364
    aput v3, p2, v1

    .line 365
    iget-object v1, p0, Lcom/metamoji/df/sprite/CanvasContext;->pdfOutputInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x5

    aput v1, p2, v2

    .line 367
    iget-object p2, p0, Lcom/metamoji/df/sprite/CanvasContext;->pdfMarkerMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/metamoji/df/sprite/CanvasContext;->pdfMarker:[F

    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 368
    iget-object p2, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/metamoji/df/sprite/CanvasContext;->pdfMarkerMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 374
    iget-object v2, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    const v6, 0x459c4000    # 5000.0f

    iget-object v7, p0, Lcom/metamoji/df/sprite/CanvasContext;->dummyPaint:Landroid/graphics/Paint;

    const v3, -0x3a63c000    # -5000.0f

    const v4, -0x3a63c000    # -5000.0f

    const v5, 0x459c4000    # 5000.0f

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 376
    iget-object p2, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 378
    iget-object p2, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 382
    iget-object p2, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 385
    iget-object p2, p0, Lcom/metamoji/df/sprite/CanvasContext;->dummyPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x437f0000    # 255.0f

    iget v1, p0, Lcom/metamoji/df/sprite/CanvasContext;->alpha:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 386
    iget-object v1, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getWidth()F

    move-result v4

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/metamoji/df/sprite/CanvasContext;->dummyPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 387
    iget-object p1, p0, Lcom/metamoji/df/sprite/CanvasContext;->dummyPaint:Landroid/graphics/Paint;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 389
    iget-object p1, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 338
    :cond_1
    new-instance p1, Ljava/lang/Error;

    const-string p2, "N/A"

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public drawPath(Landroid/graphics/Path;FLandroid/graphics/Paint;FLandroid/graphics/Paint;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 307
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p2, p3}, Lcom/metamoji/df/sprite/CanvasContext;->formula(FLandroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    if-eqz p5, :cond_1

    .line 310
    iget-object p2, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-direct {p0, p4, p5}, Lcom/metamoji/df/sprite/CanvasContext;->formula(FLandroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, p2}, Lcom/metamoji/df/sprite/CanvasContext;->formula(FLandroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawPathList(Ljava/util/List;Landroid/graphics/Paint;)V
    .locals 4
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

    const/high16 v0, 0x3f800000    # 1.0f

    .line 287
    invoke-direct {p0, v0, p2}, Lcom/metamoji/df/sprite/CanvasContext;->formula(FLandroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p2

    .line 288
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 290
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Path;

    .line 292
    iget-object v3, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v2, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drawText(Ljava/lang/String;FFFLandroid/graphics/Paint;)V
    .locals 2

    .line 322
    invoke-virtual {p5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 323
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    .line 324
    iget-object v1, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    add-float/2addr p3, v0

    invoke-direct {p0, p4, p5}, Lcom/metamoji/df/sprite/CanvasContext;->formula(FLandroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object p4

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 124
    iget v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->alpha:F

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getClipBounds()Landroid/graphics/Rect;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getDirtyRect()Landroid/graphics/RectF;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->dirtyRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getDropShadow()Lcom/metamoji/df/sprite/DropShadow;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->dropShadow:Lcom/metamoji/df/sprite/DropShadow;

    return-object v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getSize()Landroid/graphics/Point;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->size:Landroid/graphics/Point;

    return-object v0
.end method

.method public isDetailWindow()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->detailWindow:Z

    return v0
.end method

.method public isPDF()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->pdfOutputInfo:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public restore()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public save()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/metamoji/df/sprite/CanvasContext;->alpha:F

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/metamoji/df/sprite/CanvasContext;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setCanvas(Landroid/graphics/Canvas;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    return-void
.end method

.method public setDetailWindow(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/metamoji/df/sprite/CanvasContext;->detailWindow:Z

    return-void
.end method

.method public setDirtyRect(Landroid/graphics/RectF;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->dirtyRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setDropShadow(Lcom/metamoji/df/sprite/DropShadow;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/metamoji/df/sprite/CanvasContext;->dropShadow:Lcom/metamoji/df/sprite/DropShadow;

    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setPDFOutputInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/df/sprite/pdf/PDFOutputInfo;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/metamoji/df/sprite/CanvasContext;->pdfOutputInfo:Ljava/util/List;

    return-void
.end method

.method public setSize(II)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/metamoji/df/sprite/CanvasContext;->size:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{CanvasContext"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " canvas="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/df/sprite/CanvasContext;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " alpha="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/metamoji/df/sprite/CanvasContext;->alpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " dropShadow="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/df/sprite/CanvasContext;->dropShadow:Lcom/metamoji/df/sprite/DropShadow;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
