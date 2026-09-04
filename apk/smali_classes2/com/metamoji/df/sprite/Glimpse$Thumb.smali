.class abstract Lcom/metamoji/df/sprite/Glimpse$Thumb;
.super Ljava/lang/Object;
.source "Glimpse.java"

# interfaces
.implements Lcom/metamoji/df/sprite/ThumbnailRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/df/sprite/Glimpse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Thumb"
.end annotation


# instance fields
.field private height:F

.field private thumbnail:Landroid/graphics/Bitmap;

.field private width:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/df/sprite/Glimpse-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/df/sprite/Glimpse$Thumb;-><init>()V

    return-void
.end method


# virtual methods
.method getPaperRect()Landroid/graphics/RectF;
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/metamoji/df/sprite/Glimpse$Thumb;->thumbnail:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/metamoji/df/sprite/Glimpse$Thumb;->width:F

    iget v3, p0, Lcom/metamoji/df/sprite/Glimpse$Thumb;->height:F

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    .line 223
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 224
    iget-object v2, p0, Lcom/metamoji/df/sprite/Glimpse$Thumb;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 225
    new-instance v3, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v2, v2

    invoke-direct {v3, v1, v1, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method paint(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 5

    .line 201
    sget-object v0, Lcom/metamoji/df/sprite/Geometry;->matrixPool:Lcom/metamoji/df/sprite/Geometry$MatrixPool;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->withdraw()Landroid/graphics/Matrix;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/metamoji/df/sprite/Glimpse$Thumb;->thumbnail:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/metamoji/df/sprite/Glimpse$Thumb;->width:F

    iget v4, p0, Lcom/metamoji/df/sprite/Glimpse$Thumb;->height:F

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 204
    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, p2, v2}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 206
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 207
    invoke-static {}, Lcom/metamoji/df/sprite/Glimpse;->-$$Nest$sfgetwhite()Landroid/graphics/Paint;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 211
    iget-object v3, p0, Lcom/metamoji/df/sprite/Glimpse$Thumb;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 212
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v3, v3

    invoke-direct {v4, v2, v2, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 213
    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v4, p2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 214
    iget-object p2, p0, Lcom/metamoji/df/sprite/Glimpse$Thumb;->thumbnail:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/metamoji/df/sprite/Glimpse;->-$$Nest$sfgetwhite()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 216
    :goto_0
    sget-object p1, Lcom/metamoji/df/sprite/Geometry;->matrixPool:Lcom/metamoji/df/sprite/Geometry$MatrixPool;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Geometry$MatrixPool;->deposit(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public putSize(FF)V
    .locals 0

    .line 188
    iput p1, p0, Lcom/metamoji/df/sprite/Glimpse$Thumb;->width:F

    .line 189
    iput p2, p0, Lcom/metamoji/df/sprite/Glimpse$Thumb;->height:F

    return-void
.end method

.method public putThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/metamoji/df/sprite/Glimpse$Thumb;->thumbnail:Landroid/graphics/Bitmap;

    return-void
.end method
