.class public Lcom/metamoji/cm/RectEx;
.super Ljava/lang/Object;
.source "RectEx.java"


# instance fields
.field public height:F

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/metamoji/cm/RectEx;->height:F

    iput v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    iput v0, p0, Lcom/metamoji/cm/RectEx;->y:F

    iput v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/metamoji/cm/RectEx;->x:F

    .line 32
    iput p2, p0, Lcom/metamoji/cm/RectEx;->y:F

    .line 33
    iput p3, p0, Lcom/metamoji/cm/RectEx;->width:F

    .line 34
    iput p4, p0, Lcom/metamoji/cm/RectEx;->height:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    .line 43
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iput v0, p0, Lcom/metamoji/cm/RectEx;->y:F

    .line 44
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    .line 45
    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/metamoji/cm/RectEx;->height:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    .line 53
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcom/metamoji/cm/RectEx;->y:F

    .line 54
    iget p1, p2, Lcom/metamoji/cm/SizeF;->width:F

    iput p1, p0, Lcom/metamoji/cm/RectEx;->width:F

    .line 55
    iget p1, p2, Lcom/metamoji/cm/SizeF;->height:F

    iput p1, p0, Lcom/metamoji/cm/RectEx;->height:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/RectF;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    .line 77
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/metamoji/cm/RectEx;->y:F

    .line 78
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    .line 79
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iput p1, p0, Lcom/metamoji/cm/RectEx;->height:F

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cm/RectEx;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iget v0, p1, Lcom/metamoji/cm/RectEx;->x:F

    iput v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    .line 65
    iget v0, p1, Lcom/metamoji/cm/RectEx;->y:F

    iput v0, p0, Lcom/metamoji/cm/RectEx;->y:F

    .line 66
    iget v0, p1, Lcom/metamoji/cm/RectEx;->width:F

    iput v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    .line 67
    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    iput p1, p0, Lcom/metamoji/cm/RectEx;->height:F

    return-void
.end method

.method public static Intersection(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 304
    invoke-virtual {p0}, Lcom/metamoji/cm/RectEx;->getRectF()Landroid/graphics/RectF;

    move-result-object p0

    .line 305
    invoke-virtual {p1}, Lcom/metamoji/cm/RectEx;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    .line 306
    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 307
    new-instance p1, Lcom/metamoji/cm/RectEx;

    invoke-direct {p1, p0}, Lcom/metamoji/cm/RectEx;-><init>(Landroid/graphics/RectF;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static Intersects(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Z
    .locals 0

    .line 292
    invoke-virtual {p0}, Lcom/metamoji/cm/RectEx;->getRectF()Landroid/graphics/RectF;

    move-result-object p0

    .line 293
    invoke-virtual {p1}, Lcom/metamoji/cm/RectEx;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    .line 294
    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public static newInRect(FFFF)Landroid/graphics/Rect;
    .locals 5

    .line 219
    new-instance v0, Landroid/graphics/Rect;

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-float/2addr p0, p2

    float-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int p0, v3

    add-float/2addr p1, p3

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static newInRect(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Rect;
    .locals 5

    .line 261
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int p1, v3

    invoke-direct {v0, v1, p0, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static newInRect(Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;)Landroid/graphics/Rect;
    .locals 2

    .line 241
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Lcom/metamoji/cm/SizeF;->width:F

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v0, p0, v1, p1}, Lcom/metamoji/cm/RectEx;->newInRect(FFFF)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static newInRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 6

    .line 278
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p0, v4

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static newOutRect(FFFF)Landroid/graphics/Rect;
    .locals 5

    .line 226
    new-instance v0, Landroid/graphics/Rect;

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-float/2addr p0, p2

    float-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p0, v3

    add-float/2addr p1, p3

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static newOutRect(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Rect;
    .locals 5

    .line 265
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p0, v2

    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p1, v3

    invoke-direct {v0, v1, p0, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static newOutRect(Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;)Landroid/graphics/Rect;
    .locals 2

    .line 245
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Lcom/metamoji/cm/SizeF;->width:F

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v0, p0, v1, p1}, Lcom/metamoji/cm/RectEx;->newOutRect(FFFF)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static newOutRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 6

    .line 282
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p0, v4

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static newRect(FFFF)Landroid/graphics/Rect;
    .locals 3

    .line 203
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {v0, v1, v2, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static newRect(IIII)Landroid/graphics/Rect;
    .locals 1

    .line 196
    new-instance v0, Landroid/graphics/Rect;

    add-int/2addr p2, p0

    add-int/2addr p3, p1

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static newRect(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 3

    .line 253
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, p0, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static newRect(Landroid/graphics/Point;Lcom/metamoji/cm/Size;)Landroid/graphics/Rect;
    .locals 2

    .line 233
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget v1, p1, Lcom/metamoji/cm/Size;->width:I

    iget p1, p1, Lcom/metamoji/cm/Size;->height:I

    invoke-static {v0, p0, v1, p1}, Lcom/metamoji/cm/RectEx;->newRect(IIII)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static newRect(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Rect;
    .locals 3

    .line 257
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {v0, v1, p0, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static newRect(Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;)Landroid/graphics/Rect;
    .locals 2

    .line 237
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Lcom/metamoji/cm/SizeF;->width:F

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v0, p0, v1, p1}, Lcom/metamoji/cm/RectEx;->newRect(FFFF)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static newRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 4

    .line 274
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static newRectF(FFFF)Landroid/graphics/RectF;
    .locals 1

    .line 171
    new-instance v0, Landroid/graphics/RectF;

    add-float/2addr p2, p0

    add-float/2addr p3, p1

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static newRectF(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/RectF;
    .locals 3

    .line 186
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p0, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static newRectF(Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;)Landroid/graphics/RectF;
    .locals 5

    .line 178
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p0, Landroid/graphics/PointF;->x:F

    iget v4, p1, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v3, v4

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static setHeight(Landroid/graphics/RectF;F)V
    .locals 1

    .line 163
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static setRect(Landroid/graphics/Rect;FFFF)V
    .locals 1

    .line 210
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 211
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    add-float/2addr p1, p3

    .line 212
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    add-float/2addr p2, p4

    .line 213
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static setWidth(Landroid/graphics/RectF;F)V
    .locals 1

    .line 159
    iget v0, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    return-void
.end method


# virtual methods
.method public contains(Landroid/graphics/PointF;)Z
    .locals 2

    .line 149
    invoke-virtual {p0}, Lcom/metamoji/cm/RectEx;->getRectF()Landroid/graphics/RectF;

    move-result-object v0

    .line 150
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 322
    :cond_1
    check-cast p1, Lcom/metamoji/cm/RectEx;

    .line 323
    iget v2, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget v3, p1, Lcom/metamoji/cm/RectEx;->x:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/cm/RectEx;->y:F

    iget v3, p1, Lcom/metamoji/cm/RectEx;->y:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/cm/RectEx;->width:F

    iget v3, p1, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/cm/RectEx;->height:F

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getInRect()Landroid/graphics/Rect;
    .locals 4

    .line 130
    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget v1, p0, Lcom/metamoji/cm/RectEx;->y:F

    iget v2, p0, Lcom/metamoji/cm/RectEx;->width:F

    iget v3, p0, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/cm/RectEx;->newInRect(FFFF)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getOutRect()Landroid/graphics/Rect;
    .locals 4

    .line 123
    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget v1, p0, Lcom/metamoji/cm/RectEx;->y:F

    iget v2, p0, Lcom/metamoji/cm/RectEx;->width:F

    iget v3, p0, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/cm/RectEx;->newOutRect(FFFF)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 4

    .line 116
    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget v1, p0, Lcom/metamoji/cm/RectEx;->y:F

    iget v2, p0, Lcom/metamoji/cm/RectEx;->width:F

    iget v3, p0, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/cm/RectEx;->newRect(FFFF)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getRectF()Landroid/graphics/RectF;
    .locals 4

    .line 109
    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget v1, p0, Lcom/metamoji/cm/RectEx;->y:F

    iget v2, p0, Lcom/metamoji/cm/RectEx;->width:F

    iget v3, p0, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/cm/RectEx;->newRectF(FFFF)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 328
    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 329
    iget v2, p0, Lcom/metamoji/cm/RectEx;->y:F

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 330
    iget v2, p0, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v4, v2, v1

    if-eqz v4, :cond_2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 331
    iget v2, p0, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_3

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :cond_3
    add-int/2addr v0, v3

    return v0
.end method

.method public offset(FF)V
    .locals 1

    .line 139
    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    .line 140
    iget p1, p0, Lcom/metamoji/cm/RectEx;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/metamoji/cm/RectEx;->y:F

    return-void
.end method

.method public set(FFFF)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/metamoji/cm/RectEx;->x:F

    .line 98
    iput p2, p0, Lcom/metamoji/cm/RectEx;->y:F

    .line 99
    iput p3, p0, Lcom/metamoji/cm/RectEx;->width:F

    .line 100
    iput p4, p0, Lcom/metamoji/cm/RectEx;->height:F

    return-void
.end method

.method public set(Landroid/graphics/RectF;)V
    .locals 1

    .line 90
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    .line 91
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/metamoji/cm/RectEx;->y:F

    .line 92
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    .line 93
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iput p1, p0, Lcom/metamoji/cm/RectEx;->height:F

    return-void
.end method

.method public set(Lcom/metamoji/cm/RectEx;)V
    .locals 1

    .line 83
    iget v0, p1, Lcom/metamoji/cm/RectEx;->x:F

    iput v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    .line 84
    iget v0, p1, Lcom/metamoji/cm/RectEx;->y:F

    iput v0, p0, Lcom/metamoji/cm/RectEx;->y:F

    .line 85
    iget v0, p1, Lcom/metamoji/cm/RectEx;->width:F

    iput v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    .line 86
    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    iput p1, p0, Lcom/metamoji/cm/RectEx;->height:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RectEx("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/metamoji/cm/RectEx;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/metamoji/cm/RectEx;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/metamoji/cm/RectEx;->width:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
