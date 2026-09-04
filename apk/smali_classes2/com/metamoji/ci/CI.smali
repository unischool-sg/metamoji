.class Lcom/metamoji/ci/CI;
.super Ljava/lang/Object;
.source "CI.java"


# static fields
.field static final PEN_ATTR_DENSITY_RECORD:B = 0x0t

.field static final PEN_ATTR_GO_EDGE_TYPE:B = 0x0t

.field static final PEN_ATTR_HEAD_EDGE_OFF:I = 0x1

.field static final PEN_ATTR_HIDDEN_HEAD_POINTS1_OLD_RECORD:B = 0x1t

.field static final PEN_ATTR_HIDDEN_HEAD_POINTS1_RECORD:B = 0x5t

.field static final PEN_ATTR_HIDDEN_HEAD_POINTS2_OLD_RECORD:B = 0x2t

.field static final PEN_ATTR_HIDDEN_HEAD_POINTS2_RECORD:B = 0x6t

.field static final PEN_ATTR_HIDDEN_OLD_RECORD_SIZE:I = 0x15

.field static final PEN_ATTR_HIDDEN_RECORD_SIZE:I = 0x19

.field static final PEN_ATTR_HIDDEN_TAIL_POINTS1_OLD_RECORD:B = 0x3t

.field static final PEN_ATTR_HIDDEN_TAIL_POINTS1_RECORD:B = 0x7t

.field static final PEN_ATTR_HIDDEN_TAIL_POINTS2_OLD_RECORD:B = 0x4t

.field static final PEN_ATTR_HIDDEN_TAIL_POINTS2_RECORD:B = 0x8t

.field static final PEN_ATTR_REDUCE_COUNT_BITOFF:I = 0x2

.field static final PEN_ATTR_REDUCE_COUNT_MAX:I = 0xf

.field static final PEN_ATTR_REDUCE_COUNT_OFF:I = 0x3

.field static final PEN_ATTR_STOP_EDGE_TYPE:B = 0x1t

.field static final PEN_ATTR_TAIL_EDGE_OFF:I = 0x2

.field static final PEN_ATTR_VER:B = -0x10t

.field static final SEGMENT_ATTR_LINEAR:I = 0x0

.field static final SEGMENT_ATTR_MASK:I = 0x3

.field static final SEGMENT_ATTR_NONREDUCED:I = 0x2

.field static final SEGMENT_ATTR_REDUCED:I = 0x1

.field static final SEGMENT_ATTR_SIZE:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 71
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method static angle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 87
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    .line 88
    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v0

    float-to-double v5, v5

    .line 89
    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v7, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v7

    float-to-double v7, v0

    .line 90
    iget v0, v2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    mul-double v9, v3, v3

    mul-double v11, v5, v5

    add-double/2addr v9, v11

    .line 91
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    mul-double v11, v7, v7

    mul-double v13, v0, v0

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    mul-double v11, v3, v0

    mul-double v13, v7, v5

    sub-double/2addr v11, v13

    div-double/2addr v11, v9

    .line 93
    invoke-static {v11, v12}, Ljava/lang/Math;->asin(D)D

    move-result-wide v11

    const-wide v13, 0x4066800000000000L    # 180.0

    mul-double/2addr v11, v13

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v11, v15

    mul-double/2addr v3, v7

    mul-double/2addr v5, v0

    add-double/2addr v3, v5

    div-double/2addr v3, v9

    .line 95
    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    mul-double/2addr v0, v13

    div-double/2addr v0, v15

    const-wide/16 v2, 0x0

    cmpg-double v2, v11, v2

    if-gez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method static bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 4

    .line 107
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    .line 108
    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p0

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    .line 109
    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p3

    add-float/2addr p0, v2

    .line 110
    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    mul-float/2addr p2, p3

    add-float/2addr v2, p2

    .line 111
    new-instance p1, Landroid/graphics/PointF;

    sub-float/2addr p0, v0

    mul-float/2addr p0, p3

    add-float/2addr v0, p0

    sub-float/2addr v2, v1

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method static bezier(Ljava/util/List;F)Landroid/graphics/PointF;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;F)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    float-to-int v0, p1

    .line 116
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 117
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    add-int/lit8 v3, v1, 0x1

    .line 118
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    add-int/lit8 v1, v1, 0x2

    .line 119
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 120
    invoke-static {v2, v3, p0, p1}, Lcom/metamoji/ci/CI;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 2

    .line 101
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 102
    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    float-to-double p0, p0

    mul-double/2addr v0, v0

    mul-double/2addr p0, p0

    add-double/2addr v0, p0

    .line 103
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static hiddenRecordSize(B)I
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/metamoji/ci/CI;->isHiddenOldRecord(B)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x15

    return p0

    :cond_0
    const/16 p0, 0x19

    return p0
.end method

.method static im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 0

    .line 83
    invoke-static {p1, p0}, Lcom/metamoji/ci/CI;->sub(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/metamoji/ci/CI;->mul(Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/metamoji/ci/CI;->add(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static isHiddenHeadRecord(B)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method static isHiddenOldRecord(B)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method static isHiddenPoint2Record(B)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static isHiddenTailRecord(B)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static mul(Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 2

    .line 75
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, p1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method static nearestParamOnBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 12

    const/4 v0, 0x0

    .line 126
    invoke-static {p1, p2, p3, v0}, Lcom/metamoji/ci/CI;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    .line 127
    invoke-static {p0, v1}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 128
    invoke-static {p1, p2, p3, v4}, Lcom/metamoji/ci/CI;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v5

    .line 129
    invoke-static {p0, v5}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v6

    .line 130
    :goto_0
    invoke-static {v1, v5}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v8

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v8, v8, v10

    const/high16 v9, 0x40000000    # 2.0f

    if-lez v8, :cond_1

    add-float v8, v0, v4

    div-float/2addr v8, v9

    cmpl-double v9, v2, v6

    if-lez v9, :cond_0

    .line 134
    invoke-static {p1, p2, p3, v8}, Lcom/metamoji/ci/CI;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 135
    invoke-static {p0, v0}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v1

    move-wide v2, v1

    move-object v1, v0

    move v0, v8

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {p1, p2, p3, v8}, Lcom/metamoji/ci/CI;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v4

    .line 139
    invoke-static {p0, v4}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v5

    move-wide v6, v5

    move-object v5, v4

    move v4, v8

    goto :goto_0

    :cond_1
    add-float/2addr v0, v4

    div-float/2addr v0, v9

    return v0
.end method

.method static sub(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 79
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method
