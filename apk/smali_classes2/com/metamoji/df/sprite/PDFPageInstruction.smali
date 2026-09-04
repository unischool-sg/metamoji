.class public Lcom/metamoji/df/sprite/PDFPageInstruction;
.super Ljava/lang/Object;
.source "PDFPageInstruction.java"

# interfaces
.implements Lcom/metamoji/df/sprite/GraphicsInstruction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;
    }
.end annotation


# instance fields
.field private apaint:Landroid/graphics/Paint;

.field private destinationRect:Landroid/graphics/RectF;

.field private detail:Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;

.field private height:F

.field private main:Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;

.field private page:Lcom/metamoji/df/sprite/pdf/PDFPage;

.field private width:F


# direct methods
.method public constructor <init>(Lcom/metamoji/df/sprite/pdf/PDFPage;FF)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    .line 137
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->apaint:Landroid/graphics/Paint;

    .line 24
    iput-object p1, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->page:Lcom/metamoji/df/sprite/pdf/PDFPage;

    .line 26
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->width:F

    .line 27
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getHeight()F

    move-result p1

    iput p1, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->height:F

    .line 28
    iget-object v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->width:F

    add-float/2addr v1, p2

    add-float/2addr p1, p3

    invoke-virtual {v0, p2, p3, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private paintAsBitmap(Lcom/metamoji/df/sprite/Context;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 170
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->save()V

    .line 172
    iget-object v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/Context;->clipRect(Landroid/graphics/RectF;)V

    .line 174
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-interface {p1, v0}, Lcom/metamoji/df/sprite/Context;->setMatrix(Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    .line 175
    iget-object v1, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->apaint:Landroid/graphics/Paint;

    invoke-interface {p1, p2, v0, v0, v1}, Lcom/metamoji/df/sprite/Context;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 176
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->restore()V

    return-void
.end method

.method private paintCooked(Lcom/metamoji/df/sprite/Context;)V
    .locals 1

    .line 209
    invoke-virtual {p0, p1}, Lcom/metamoji/df/sprite/PDFPageInstruction;->getCache(Lcom/metamoji/df/sprite/Context;)Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;-><init>()V

    .line 212
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/df/sprite/PDFPageInstruction;->setCache(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;)V

    .line 214
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/metamoji/df/sprite/PDFPageInstruction;->updatedBitmap(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 216
    invoke-direct {p0, p1, v0}, Lcom/metamoji/df/sprite/PDFPageInstruction;->paintAsBitmap(Lcom/metamoji/df/sprite/Context;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method private paintPdf(Lcom/metamoji/df/sprite/Context;)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->page:Lcom/metamoji/df/sprite/pdf/PDFPage;

    iget-object v1, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    invoke-interface {p1, v0, v1}, Lcom/metamoji/df/sprite/Context;->drawPDFPage(Lcom/metamoji/df/sprite/pdf/PDFPage;Landroid/graphics/RectF;)V

    return-void
.end method

.method private paintRaw(Lcom/metamoji/df/sprite/Context;)V
    .locals 4

    .line 225
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 228
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, -0x1

    .line 229
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 231
    sget-object v1, Lcom/metamoji/df/sprite/Geometry;->matrixPool:Lcom/metamoji/df/sprite/Geometry$MatrixPool;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->withdraw()Landroid/graphics/Matrix;

    move-result-object v1

    .line 232
    invoke-interface {p1, v1}, Lcom/metamoji/df/sprite/Context;->getMatrix(Landroid/graphics/Matrix;)V

    .line 233
    iget-object v2, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 234
    iget-object v2, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->page:Lcom/metamoji/df/sprite/pdf/PDFPage;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/metamoji/df/sprite/pdf/PDFPage;->renderToBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Matrix;)V

    .line 236
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->save()V

    .line 237
    iget-object v2, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    invoke-interface {p1, v2}, Lcom/metamoji/df/sprite/Context;->clipRect(Landroid/graphics/RectF;)V

    .line 238
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 239
    invoke-interface {p1, v1}, Lcom/metamoji/df/sprite/Context;->setMatrix(Landroid/graphics/Matrix;)V

    const/4 v2, 0x0

    .line 240
    iget-object v3, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->apaint:Landroid/graphics/Paint;

    invoke-interface {p1, v0, v2, v2, v3}, Lcom/metamoji/df/sprite/Context;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 241
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->restore()V

    .line 242
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 243
    sget-object p1, Lcom/metamoji/df/sprite/Geometry;->matrixPool:Lcom/metamoji/df/sprite/Geometry$MatrixPool;

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->deposit(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private updatedBitmap(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;)Landroid/graphics/Bitmap;
    .locals 4

    .line 185
    invoke-virtual {p2, p1}, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->getBitmap(Lcom/metamoji/df/sprite/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    sget-object v1, Lcom/metamoji/df/sprite/Geometry;->matrixPool:Lcom/metamoji/df/sprite/Geometry$MatrixPool;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->withdraw()Landroid/graphics/Matrix;

    move-result-object v1

    .line 188
    invoke-interface {p1, v1}, Lcom/metamoji/df/sprite/Context;->getMatrix(Landroid/graphics/Matrix;)V

    .line 189
    iget-object p1, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, p1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/16 p1, 0x9

    .line 190
    new-array p1, p1, [F

    .line 191
    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 192
    invoke-virtual {p2, p1}, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->needsUpdate([F)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    .line 194
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 196
    iget-object v2, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->page:Lcom/metamoji/df/sprite/pdf/PDFPage;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Lcom/metamoji/df/sprite/pdf/PDFPage;->renderToBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Matrix;)V

    .line 198
    invoke-virtual {p2, p1}, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->doneUpdate([F)V

    .line 200
    :cond_0
    sget-object p1, Lcom/metamoji/df/sprite/Geometry;->matrixPool:Lcom/metamoji/df/sprite/Geometry$MatrixPool;

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->deposit(Landroid/graphics/Matrix;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public clone()Lcom/metamoji/df/sprite/GraphicsInstruction;
    .locals 4

    .line 291
    new-instance v0, Lcom/metamoji/df/sprite/PDFPageInstruction;

    iget-object v1, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->page:Lcom/metamoji/df/sprite/pdf/PDFPage;

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/PDFPageInstruction;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/metamoji/df/sprite/PDFPageInstruction;->getY()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/df/sprite/PDFPageInstruction;-><init>(Lcom/metamoji/df/sprite/pdf/PDFPage;FF)V

    .line 292
    iget v1, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->width:F

    iput v1, v0, Lcom/metamoji/df/sprite/PDFPageInstruction;->width:F

    .line 293
    iget v1, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->height:F

    iput v1, v0, Lcom/metamoji/df/sprite/PDFPageInstruction;->height:F

    .line 294
    iget-object v1, v0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/PDFPageInstruction;->clone()Lcom/metamoji/df/sprite/GraphicsInstruction;

    move-result-object v0

    return-object v0
.end method

.method public containsPoint(Landroid/graphics/PointF;)Z
    .locals 2

    .line 283
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/PDFPageInstruction;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method getCache(Lcom/metamoji/df/sprite/Context;)Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;
    .locals 0

    .line 126
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->isDetailWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->detail:Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->main:Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;

    return-object p1
.end method

.method public getX()F
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method public paint(Lcom/metamoji/df/sprite/Context;)V
    .locals 1

    .line 260
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->isPDF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->page:Lcom/metamoji/df/sprite/pdf/PDFPage;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/pdf/PDFPage;->getTicket()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/PDFPageInstruction;->paintPdf(Lcom/metamoji/df/sprite/Context;)V

    return-void

    .line 262
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 263
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/PDFPageInstruction;->paintRaw(Lcom/metamoji/df/sprite/Context;)V

    return-void

    .line 265
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/PDFPageInstruction;->paintCooked(Lcom/metamoji/df/sprite/Context;)V

    return-void
.end method

.method setCache(Lcom/metamoji/df/sprite/Context;Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;)V
    .locals 0

    .line 129
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->isDetailWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    iput-object p2, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->detail:Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;

    return-void

    .line 132
    :cond_0
    iput-object p2, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->main:Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;

    return-void
.end method

.method public setX(F)V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 149
    iget-object v1, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->width:F

    add-float/2addr v2, p1

    iget v3, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->height:F

    add-float/2addr v3, v0

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setY(F)V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 162
    iget-object v1, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->width:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->height:F

    add-float/2addr v3, p1

    invoke-virtual {v1, v0, p1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Pp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " page="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->page:Lcom/metamoji/df/sprite/pdf/PDFPage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " destinationRect="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/df/sprite/PDFPageInstruction;->destinationRect:Landroid/graphics/RectF;

    invoke-static {v2}, Lcom/metamoji/df/sprite/Geometry;->toString(Landroid/graphics/RectF;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
