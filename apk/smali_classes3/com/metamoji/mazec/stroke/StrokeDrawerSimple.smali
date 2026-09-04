.class public Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;
.super Lcom/metamoji/mazec/stroke/StrokeDrawer;
.source "StrokeDrawerSimple.java"


# instance fields
.field private mCurPath:Landroid/graphics/Path;

.field private mDrawRect:Landroid/graphics/RectF;

.field private mLastPathX:F

.field private mLastPathY:F

.field private mLastX:F

.field private mLastY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/StrokeDrawer;-><init>()V

    return-void
.end method


# virtual methods
.method public addPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)Landroid/graphics/RectF;
    .locals 10

    .line 54
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mCurPath:Landroid/graphics/Path;

    .line 55
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeTouch;->getPoint()Landroid/graphics/PointF;

    move-result-object p1

    .line 56
    iget v1, p1, Landroid/graphics/PointF;->x:F

    .line 57
    iget v2, p1, Landroid/graphics/PointF;->y:F

    .line 59
    iget-object v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v3}, Lcom/metamoji/mazec/stroke/HwStroke;->countOfPoints()I

    move-result v3

    if-nez v3, :cond_0

    .line 60
    iget-object v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v3, p1}, Lcom/metamoji/mazec/stroke/HwStroke;->setStartPoint(Landroid/graphics/PointF;)V

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 63
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 64
    iput v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastPathX:F

    .line 65
    iput v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastPathY:F

    goto/16 :goto_4

    .line 67
    :cond_0
    iget-object v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v3, p1}, Lcom/metamoji/mazec/stroke/HwStroke;->addPoint(Landroid/graphics/PointF;)V

    .line 69
    iget p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastX:F

    add-float v3, v1, p1

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 70
    iget v5, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastY:F

    add-float v6, v2, v5

    div-float/2addr v6, v4

    .line 71
    invoke-virtual {v0, p1, v5, v3, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 74
    iget p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastPathX:F

    .line 75
    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastPathY:F

    .line 76
    iget v4, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastX:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_1

    move v9, v4

    move v4, p1

    move p1, v9

    goto :goto_0

    :cond_1
    cmpl-float v5, p1, v4

    if-lez v5, :cond_2

    goto :goto_0

    :cond_2
    move v4, p1

    .line 78
    :goto_0
    iget v5, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastY:F

    cmpg-float v7, v0, v5

    if-gez v7, :cond_3

    move v9, v5

    move v5, v0

    move v0, v9

    goto :goto_1

    :cond_3
    cmpl-float v7, v0, v5

    if-lez v7, :cond_4

    goto :goto_1

    :cond_4
    move v5, v0

    :goto_1
    cmpg-float v7, p1, v3

    if-gez v7, :cond_5

    move p1, v3

    goto :goto_2

    :cond_5
    cmpl-float v7, v4, v3

    if-lez v7, :cond_6

    move v4, v3

    :cond_6
    :goto_2
    cmpg-float v7, v0, v6

    if-gez v7, :cond_7

    move v0, v6

    goto :goto_3

    :cond_7
    cmpl-float v7, v5, v6

    if-lez v7, :cond_8

    move v5, v6

    .line 85
    :cond_8
    :goto_3
    iget-object v7, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mDrawRect:Landroid/graphics/RectF;

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr p1, v8

    add-float/2addr v0, v8

    invoke-virtual {v7, v4, v5, p1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 86
    iput v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastPathX:F

    .line 87
    iput v6, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastPathY:F

    .line 90
    :goto_4
    iput v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastX:F

    .line 91
    iput v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastY:F

    .line 92
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mDrawRect:Landroid/graphics/RectF;

    return-object p1
.end method

.method public attachHwStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->attachHwStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    .line 39
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mDrawRect:Landroid/graphics/RectF;

    return-void
.end method

.method public canDraw(Lcom/metamoji/mazec/stroke/StrokeStyle;)Z
    .locals 1

    .line 43
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getPenType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public cancelStroke()V
    .locals 0

    return-void
.end method

.method public drawableForStroke(Lcom/metamoji/mazec/stroke/HwStroke;)Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 10

    .line 161
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object p1

    .line 162
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 164
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v2, 0x0

    .line 168
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 169
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 171
    iget p1, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, v4

    iget v1, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v4

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 174
    :cond_1
    iget v5, v2, Landroid/graphics/PointF;->x:F

    .line 175
    iget v2, v2, Landroid/graphics/PointF;->y:F

    :goto_0
    if-ge v3, v1, :cond_2

    .line 177
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 178
    iget v7, v6, Landroid/graphics/PointF;->x:F

    .line 179
    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float v8, v7, v5

    div-float/2addr v8, v4

    add-float v9, v6, v2

    div-float/2addr v9, v4

    .line 180
    invoke-virtual {v0, v5, v2, v8, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v3, v3, 0x1

    move v2, v6

    move v5, v7

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {v0, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    :goto_1
    new-instance p1, Lcom/metamoji/mazec/stroke/drawable/PathCurve;

    invoke-direct {p1, v0}, Lcom/metamoji/mazec/stroke/drawable/PathCurve;-><init>(Landroid/graphics/Path;)V

    return-object p1
.end method

.method public endStroke()Landroid/graphics/RectF;
    .locals 7

    .line 102
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mCurPath:Landroid/graphics/Path;

    .line 104
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStroke;->countOfPoints()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    if-nez v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStroke;->endStroke()V

    .line 108
    sget-object v0, Lcom/metamoji/mazec/stroke/StrokeConstants;->RectNull:Landroid/graphics/RectF;

    return-object v0

    .line 111
    :cond_0
    iget v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastX:F

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    iget v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastY:F

    add-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 112
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mDrawRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastX:F

    iget v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastY:F

    const/high16 v3, 0x40400000    # 3.0f

    add-float v4, v1, v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 116
    :cond_1
    iget v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastX:F

    iget v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 119
    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastPathX:F

    iget v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastX:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    goto :goto_0

    :cond_2
    move v6, v1

    move v1, v0

    move v0, v6

    .line 126
    :goto_0
    iget v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastPathY:F

    iget v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mLastY:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_3

    goto :goto_1

    :cond_3
    move v6, v3

    move v3, v2

    move v2, v6

    .line 134
    :goto_1
    iget-object v4, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mDrawRect:Landroid/graphics/RectF;

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v1, v5

    add-float/2addr v3, v5

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    :goto_2
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStroke;->endStroke()V

    .line 139
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mDrawRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getCurrentDrawable()Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 2

    .line 191
    new-instance v0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;

    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawerSimple;->mCurPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/metamoji/mazec/stroke/drawable/PathCurve;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method
