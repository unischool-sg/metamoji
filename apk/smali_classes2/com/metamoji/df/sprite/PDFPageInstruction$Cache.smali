.class Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;
.super Ljava/lang/Object;
.source "PDFPageInstruction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/PDFPageInstruction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cache"
.end annotation


# instance fields
.field private bm:Landroid/graphics/Bitmap;

.field private scale:F

.field private tx:F

.field private ty:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private needsCreate(Lcom/metamoji/df/sprite/Context;)Z
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->bm:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 87
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 88
    iget-object v2, p0, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 90
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getSize()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 91
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getSize()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-lt v0, v3, :cond_2

    if-ge v2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->bm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->bm:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->scale:F

    .line 72
    iput v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->tx:F

    .line 73
    iput v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->ty:F

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->bm:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method doneUpdate([F)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    aget v0, p1, v0

    iput v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->scale:F

    const/4 v0, 0x2

    .line 115
    aget v0, p1, v0

    iput v0, p0, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->tx:F

    const/4 v0, 0x5

    .line 116
    aget p1, p1, v0

    iput p1, p0, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->ty:F

    return-void
.end method

.method getBitmap(Lcom/metamoji/df/sprite/Context;)Landroid/graphics/Bitmap;
    .locals 2

    .line 54
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->needsCreate(Lcom/metamoji/df/sprite/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 56
    invoke-interface {p1}, Lcom/metamoji/df/sprite/Context;->getSize()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 57
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->bm:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method needsUpdate([F)Z
    .locals 4

    const/4 v0, 0x0

    .line 104
    aget v1, p1, v0

    const/4 v2, 0x2

    .line 105
    aget v2, p1, v2

    const/4 v3, 0x5

    .line 106
    aget p1, p1, v3

    .line 107
    iget v3, p0, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->scale:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    iget v1, p0, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->tx:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/metamoji/df/sprite/PDFPageInstruction$Cache;->ty:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
