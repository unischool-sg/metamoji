.class public Lcom/metamoji/cm/RectUtils;
.super Ljava/lang/Object;
.source "RectUtils.java"


# static fields
.field public static final Empty:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LeftTop(Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 2

    .line 44
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static Point(DD)Landroid/graphics/PointF;
    .locals 1

    .line 20
    new-instance v0, Landroid/graphics/PointF;

    double-to-float p0, p0

    double-to-float p1, p2

    invoke-direct {v0, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static Rect(DDDD)Landroid/graphics/RectF;
    .locals 1

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    double-to-float p0, p0

    double-to-float p1, p2

    double-to-float p2, p4

    double-to-float p3, p6

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static Rect(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/RectF;
    .locals 3

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p0, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static Rect(Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;)Landroid/graphics/RectF;
    .locals 5

    .line 36
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

.method public static RectBySize(DDDD)Landroid/graphics/RectF;
    .locals 0

    add-double/2addr p4, p0

    add-double/2addr p6, p2

    .line 28
    invoke-static/range {p0 .. p7}, Lcom/metamoji/cm/RectUtils;->Rect(DDDD)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public static RectSize(Landroid/graphics/RectF;)Lcom/metamoji/cm/SizeF;
    .locals 2

    .line 40
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v0
.end method

.method public static RightBottom(Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 2

    .line 48
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/RectF;->right:F

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static Size(DD)Lcom/metamoji/cm/SizeF;
    .locals 1

    .line 16
    new-instance v0, Lcom/metamoji/cm/SizeF;

    double-to-float p0, p0

    double-to-float p1, p2

    invoke-direct {v0, p0, p1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v0
.end method

.method public static clipRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 146
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_0

    .line 147
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 149
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_1

    .line 150
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 152
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_2

    .line 153
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 155
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_3

    .line 156
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    return-void
.end method

.method public static getOrigin(Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 2

    .line 52
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    iget p0, p0, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static getSize(Landroid/graphics/RectF;)Lcom/metamoji/cm/SizeF;
    .locals 2

    .line 55
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v0
.end method

.method public static inset(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;
    .locals 1

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 115
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->inset(FF)V

    return-object v0
.end method

.method public static intersection(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .line 134
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 135
    invoke-virtual {v0, p0, p1}, Landroid/graphics/RectF;->setIntersect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public static isSameSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 126
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSameSize(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2

    .line 130
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static offset(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;
    .locals 1

    .line 120
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 121
    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    return-object v0
.end method

.method public static setHeight(Landroid/graphics/RectF;F)V
    .locals 1

    .line 62
    iget v0, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static setLeft(Landroid/graphics/RectF;F)V
    .locals 2

    .line 71
    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 72
    iput p1, p0, Landroid/graphics/RectF;->left:F

    return-void
.end method

.method public static setOrigin(Landroid/graphics/RectF;FF)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method public static setOrigin(Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 1

    .line 65
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Landroid/graphics/RectF;->offsetTo(FF)V

    return-void
.end method

.method public static setOriginSize(Landroid/graphics/Rect;IIII)V
    .locals 0

    .line 100
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 101
    iput p2, p0, Landroid/graphics/Rect;->top:I

    .line 102
    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Rect;->right:I

    .line 103
    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p4

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static setOriginSize(Landroid/graphics/RectF;FFFF)V
    .locals 0

    .line 93
    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 94
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 95
    iget p1, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr p1, p3

    iput p1, p0, Landroid/graphics/RectF;->right:F

    .line 96
    iget p1, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p4

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static setOriginSize(Landroid/graphics/RectF;Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;)V
    .locals 1

    .line 107
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 108
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Landroid/graphics/RectF;->top:F

    .line 109
    iget p1, p0, Landroid/graphics/RectF;->left:F

    iget v0, p2, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr p1, v0

    iput p1, p0, Landroid/graphics/RectF;->right:F

    .line 110
    iget p1, p0, Landroid/graphics/RectF;->top:F

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static setSize(Landroid/graphics/Rect;II)V
    .locals 1

    .line 88
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 89
    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public static setSize(Landroid/graphics/RectF;FF)V
    .locals 1

    .line 83
    iget v0, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 84
    iget p1, p0, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static setSize(Landroid/graphics/RectF;Lcom/metamoji/cm/SizeF;)V
    .locals 2

    .line 79
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 80
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public static setTop(Landroid/graphics/RectF;F)V
    .locals 2

    .line 75
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    sub-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 76
    iput p1, p0, Landroid/graphics/RectF;->top:F

    return-void
.end method

.method public static setWidth(Landroid/graphics/RectF;F)V
    .locals 1

    .line 59
    iget v0, p0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    return-void
.end method

.method public static union(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .line 140
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 141
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    return-object v0
.end method
