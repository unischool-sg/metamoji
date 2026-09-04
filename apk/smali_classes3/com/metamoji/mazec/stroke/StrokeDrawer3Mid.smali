.class public Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;
.super Lcom/metamoji/mazec/stroke/StrokeDrawer;
.source "StrokeDrawer3Mid.java"


# instance fields
.field private mCurPath:Landroid/graphics/Path;

.field private mDrawRect:Landroid/graphics/RectF;

.field private mLastMidX1:F

.field private mLastMidX2:F

.field private mLastMidX3:F

.field private mLastMidY1:F

.field private mLastMidY2:F

.field private mLastMidY3:F

.field private mLastX:F

.field private mLastY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/StrokeDrawer;-><init>()V

    return-void
.end method


# virtual methods
.method public addPoint(Lcom/metamoji/mazec/stroke/StrokeTouch;)Landroid/graphics/RectF;
    .locals 14

    .line 61
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mCurPath:Landroid/graphics/Path;

    .line 62
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    .line 64
    iget v2, p1, Lcom/metamoji/mazec/stroke/StrokeTouch;->x:F

    .line 65
    iget v3, p1, Lcom/metamoji/mazec/stroke/StrokeTouch;->y:F

    .line 67
    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStroke;->countOfPoints()I

    move-result v4

    .line 68
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeTouch;->getPoint()Landroid/graphics/PointF;

    move-result-object p1

    if-nez v4, :cond_0

    .line 70
    invoke-virtual {v1, p1}, Lcom/metamoji/mazec/stroke/HwStroke;->setStartPoint(Landroid/graphics/PointF;)V

    .line 71
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 73
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mDrawRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 74
    iput v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidX1:F

    .line 75
    iput v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidY1:F

    .line 76
    iput v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidX2:F

    .line 77
    iput v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidY2:F

    .line 78
    iput v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidX3:F

    .line 79
    iput v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidY3:F

    goto/16 :goto_5

    .line 81
    :cond_0
    iget v5, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastX:F

    add-float/2addr v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 82
    iget v7, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastY:F

    add-float/2addr v7, v3

    div-float/2addr v7, v6

    .line 83
    iget v8, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidX1:F

    add-float/2addr v8, v5

    div-float/2addr v8, v6

    .line 84
    iget v9, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidY1:F

    add-float/2addr v9, v7

    div-float/2addr v9, v6

    .line 85
    iget v10, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidX2:F

    add-float/2addr v10, v8

    div-float/2addr v10, v6

    .line 86
    iget v11, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidY2:F

    add-float/2addr v11, v9

    div-float/2addr v11, v6

    .line 88
    iput v8, p1, Landroid/graphics/PointF;->x:F

    .line 89
    iput v9, p1, Landroid/graphics/PointF;->y:F

    .line 90
    invoke-virtual {v1, p1}, Lcom/metamoji/mazec/stroke/HwStroke;->addPoint(Landroid/graphics/PointF;)V

    const/4 p1, 0x1

    if-ne v4, p1, :cond_1

    .line 93
    invoke-virtual {v0, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 95
    :cond_1
    iget p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidX2:F

    iget v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidY2:F

    invoke-virtual {v0, p1, v1, v10, v11}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 99
    :goto_0
    iget p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidX3:F

    .line 100
    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidY3:F

    .line 101
    iget v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidX2:F

    cmpg-float v4, p1, v1

    if-gez v4, :cond_2

    move v13, v1

    move v1, p1

    move p1, v13

    goto :goto_1

    :cond_2
    cmpl-float v4, p1, v1

    if-lez v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, p1

    .line 103
    :goto_1
    iget v4, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidY2:F

    cmpg-float v6, v0, v4

    if-gez v6, :cond_4

    move v13, v4

    move v4, v0

    move v0, v13

    goto :goto_2

    :cond_4
    cmpl-float v6, v0, v4

    if-lez v6, :cond_5

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    cmpg-float v6, p1, v10

    if-gez v6, :cond_6

    move p1, v10

    goto :goto_3

    :cond_6
    cmpl-float v6, v1, v10

    if-lez v6, :cond_7

    move v1, v10

    :cond_7
    :goto_3
    cmpg-float v6, v0, v11

    if-gez v6, :cond_8

    move v0, v11

    goto :goto_4

    :cond_8
    cmpl-float v6, v4, v11

    if-lez v6, :cond_9

    move v4, v11

    .line 110
    :cond_9
    :goto_4
    iget-object v6, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mDrawRect:Landroid/graphics/RectF;

    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr p1, v12

    add-float/2addr v0, v12

    invoke-virtual {v6, v1, v4, p1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 112
    iput v5, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidX1:F

    .line 113
    iput v7, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidY1:F

    .line 114
    iput v8, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidX2:F

    .line 115
    iput v9, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidY2:F

    .line 116
    iput v10, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidX3:F

    .line 117
    iput v11, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidY3:F

    .line 120
    :goto_5
    iput v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastX:F

    .line 121
    iput v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastY:F

    .line 122
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mDrawRect:Landroid/graphics/RectF;

    return-object p1
.end method

.method public attachHwStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeDrawer;->attachHwStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mCurPath:Landroid/graphics/Path;

    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mCurPath:Landroid/graphics/Path;

    .line 47
    :goto_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mDrawRect:Landroid/graphics/RectF;

    return-void
.end method

.method public canDraw(Lcom/metamoji/mazec/stroke/StrokeStyle;)Z
    .locals 1

    .line 52
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

    .line 187
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object p1

    .line 188
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 190
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v2, 0x0

    .line 194
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 195
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 197
    iget p1, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, v4

    iget v1, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v4

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 199
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 200
    iget v5, v3, Landroid/graphics/PointF;->x:F

    .line 201
    iget v3, v3, Landroid/graphics/PointF;->y:F

    .line 202
    iget v6, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v5

    div-float/2addr v6, v4

    iget v2, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v2, 0x2

    :goto_0
    if-ge v2, v1, :cond_2

    .line 207
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 208
    iget v7, v6, Landroid/graphics/PointF;->x:F

    .line 209
    iget v6, v6, Landroid/graphics/PointF;->y:F

    add-float v8, v7, v5

    div-float/2addr v8, v4

    add-float v9, v6, v3

    div-float/2addr v9, v4

    .line 210
    invoke-virtual {v0, v5, v3, v8, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v2, v2, 0x1

    move v3, v6

    move v5, v7

    goto :goto_0

    .line 214
    :cond_2
    invoke-virtual {v0, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 216
    :goto_1
    new-instance p1, Lcom/metamoji/mazec/stroke/drawable/PathCurve;

    invoke-direct {p1, v0}, Lcom/metamoji/mazec/stroke/drawable/PathCurve;-><init>(Landroid/graphics/Path;)V

    return-object p1
.end method

.method public endStroke()Landroid/graphics/RectF;
    .locals 8

    .line 131
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mCurPath:Landroid/graphics/Path;

    .line 133
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/HwStroke;->countOfPoints()I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    if-gt v1, v2, :cond_1

    if-nez v1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStroke;->endStroke()V

    .line 137
    sget-object v0, Lcom/metamoji/mazec/stroke/StrokeConstants;->RectNull:Landroid/graphics/RectF;

    return-object v0

    .line 142
    :cond_0
    iget v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastX:F

    add-float/2addr v1, v3

    iget v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 143
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mDrawRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastX:F

    iget v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastY:F

    const/high16 v3, 0x40400000    # 3.0f

    add-float v4, v1, v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_6

    .line 146
    :cond_1
    iget v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastX:F

    iget v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidX1:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    .line 147
    iget v2, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastY:F

    iget v4, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidY1:F

    add-float/2addr v2, v4

    div-float/2addr v2, v3

    .line 148
    iget-object v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/metamoji/mazec/stroke/HwStroke;->addPoint(Landroid/graphics/PointF;)V

    .line 149
    iget-object v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    new-instance v4, Landroid/graphics/PointF;

    iget v5, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastX:F

    iget v6, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastY:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v4}, Lcom/metamoji/mazec/stroke/HwStroke;->addPoint(Landroid/graphics/PointF;)V

    .line 151
    iget v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidX2:F

    iget v4, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidY2:F

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 152
    iget v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastX:F

    iget v4, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastY:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 155
    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidX3:F

    .line 156
    iget v3, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidY3:F

    .line 157
    iget v4, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidX2:F

    cmpg-float v5, v0, v4

    if-gez v5, :cond_2

    move v7, v4

    move v4, v0

    move v0, v7

    goto :goto_0

    :cond_2
    cmpl-float v5, v0, v4

    if-lez v5, :cond_3

    goto :goto_0

    :cond_3
    move v4, v0

    .line 159
    :goto_0
    iget v5, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastMidY2:F

    cmpg-float v6, v3, v5

    if-gez v6, :cond_4

    move v7, v5

    move v5, v3

    move v3, v7

    goto :goto_1

    :cond_4
    cmpl-float v6, v3, v5

    if-lez v6, :cond_5

    goto :goto_1

    :cond_5
    move v5, v3

    :goto_1
    cmpg-float v6, v0, v1

    if-gez v6, :cond_6

    goto :goto_2

    :cond_6
    cmpl-float v6, v4, v1

    if-lez v6, :cond_7

    move v4, v1

    :cond_7
    move v1, v0

    :goto_2
    cmpg-float v0, v3, v2

    if-gez v0, :cond_8

    goto :goto_3

    :cond_8
    cmpl-float v0, v5, v2

    if-lez v0, :cond_9

    move v5, v2

    :cond_9
    move v2, v3

    .line 165
    :goto_3
    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastX:F

    cmpg-float v3, v1, v0

    if-gez v3, :cond_a

    move v1, v0

    goto :goto_4

    :cond_a
    cmpl-float v3, v4, v0

    if-lez v3, :cond_b

    move v4, v0

    .line 167
    :cond_b
    :goto_4
    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mLastY:F

    cmpg-float v3, v2, v0

    if-gez v3, :cond_c

    move v2, v0

    goto :goto_5

    :cond_c
    cmpl-float v3, v5, v0

    if-lez v3, :cond_d

    move v5, v0

    .line 170
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mDrawRect:Landroid/graphics/RectF;

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 173
    :goto_6
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mHwStroke:Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStroke;->endStroke()V

    .line 175
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mDrawRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getCurrentDrawable()Lcom/metamoji/mazec/stroke/drawable/Drawable;
    .locals 2

    .line 221
    new-instance v0, Lcom/metamoji/mazec/stroke/drawable/PathCurve;

    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeDrawer3Mid;->mCurPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/metamoji/mazec/stroke/drawable/PathCurve;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method
