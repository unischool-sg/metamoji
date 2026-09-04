.class public Lcom/metamoji/mazec/stroke/StrokeSmoothUtil;
.super Ljava/lang/Object;
.source "StrokeSmoothUtil.java"


# static fields
.field private static final middlePointAngleMin:D = 1.5707963267948966


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MMJmiddlePointSmooth([F[FII[F[F)I
    .locals 17

    sub-int v0, p3, p2

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-gt v1, v5, :cond_1

    .line 140
    aget v6, p0, p2

    .line 141
    aget v7, p1, p2

    .line 142
    aput v6, p4, v2

    .line 143
    aput v7, p5, v2

    if-ne v1, v4, :cond_0

    return v4

    :cond_0
    if-ne v1, v5, :cond_1

    add-int/lit8 v0, p2, 0x1

    .line 147
    aget v1, p0, v0

    .line 148
    aget v0, p1, v0

    add-float/2addr v6, v1

    div-float/2addr v6, v3

    .line 149
    aput v6, p4, v4

    add-float/2addr v7, v0

    div-float/2addr v7, v3

    .line 150
    aput v7, p5, v4

    .line 151
    aput v1, p4, v5

    .line 152
    aput v0, p5, v5

    const/4 v0, 0x3

    return v0

    .line 161
    :cond_1
    aget v1, p0, p2

    .line 162
    aget v6, p1, p2

    add-int/lit8 v7, p2, 0x1

    .line 163
    aget v8, p0, v7

    .line 164
    aget v9, p1, v7

    .line 165
    aput v1, p4, v2

    .line 166
    aput v6, p5, v2

    :goto_0
    if-ge v7, v0, :cond_5

    add-int/lit8 v7, v7, 0x1

    .line 169
    aget v2, p0, v7

    .line 170
    aget v10, p1, v7

    add-float v11, v1, v8

    div-float/2addr v11, v3

    add-float v12, v6, v9

    div-float/2addr v12, v3

    sub-float v1, v8, v1

    float-to-double v13, v1

    sub-float v1, v9, v6

    move/from16 p3, v3

    move/from16 p2, v4

    float-to-double v3, v1

    sub-float v1, v2, v8

    move v15, v5

    float-to-double v5, v1

    sub-float v1, v10, v9

    move/from16 v16, v0

    float-to-double v0, v1

    .line 177
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    .line 178
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    sub-double/2addr v3, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    cmpl-double v0, v3, v0

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v0, :cond_2

    sub-double/2addr v3, v5

    :cond_2
    const-wide v0, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v0, v3, v0

    if-gez v0, :cond_3

    add-double/2addr v3, v5

    .line 186
    :cond_3
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 188
    aput v11, p4, p2

    add-int/lit8 v4, p2, 0x1

    .line 189
    aput v12, p5, p2

    const-wide v5, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v0, v0, v5

    if-ltz v0, :cond_4

    .line 191
    aput v8, p4, v4

    add-int/lit8 v0, p2, 0x2

    .line 192
    aput v9, p5, v4

    move v4, v0

    :cond_4
    move/from16 v3, p3

    move v1, v8

    move v6, v9

    move v9, v10

    move v5, v15

    move/from16 v0, v16

    move v8, v2

    goto :goto_0

    :cond_5
    move/from16 p3, v3

    move/from16 p2, v4

    move v15, v5

    add-float/2addr v1, v8

    div-float v1, v1, p3

    .line 200
    aput v1, p4, p2

    add-int/lit8 v4, p2, 0x1

    add-float/2addr v6, v9

    div-float v6, v6, p3

    .line 201
    aput v6, p5, p2

    .line 203
    aput v8, p4, v4

    add-int/lit8 v0, p2, 0x2

    .line 204
    aput v9, p5, v4

    return v0
.end method

.method public static MMJmiddlePointSmooth([Landroid/graphics/PointF;II[Landroid/graphics/PointF;)I
    .locals 16

    sub-int v0, p2, p1

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-gt v1, v5, :cond_1

    .line 22
    aget-object v6, p0, p1

    .line 23
    aput-object v6, p3, v2

    if-ne v1, v4, :cond_0

    return v4

    :cond_0
    if-ne v1, v5, :cond_1

    add-int/lit8 v0, p1, 0x1

    .line 27
    aget-object v0, p0, v0

    .line 28
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v6, Landroid/graphics/PointF;->x:F

    iget v7, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v7

    div-float/2addr v2, v3

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v7

    div-float/2addr v6, v3

    invoke-direct {v1, v2, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 29
    aput-object v1, p3, v4

    .line 30
    aput-object v0, p3, v5

    const/4 v0, 0x3

    return v0

    .line 39
    :cond_1
    aget-object v1, p0, p1

    add-int/lit8 v6, p1, 0x1

    .line 40
    aget-object v7, p0, v6

    .line 41
    aput-object v1, p3, v2

    :goto_0
    if-ge v6, v0, :cond_5

    add-int/lit8 v6, v6, 0x1

    .line 44
    aget-object v2, p0, v6

    .line 45
    new-instance v8, Landroid/graphics/PointF;

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v10

    div-float/2addr v9, v3

    iget v10, v1, Landroid/graphics/PointF;->y:F

    iget v11, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v11

    div-float/2addr v10, v3

    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 46
    iget v9, v7, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v10

    float-to-double v9, v9

    .line 47
    iget v11, v7, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v1

    float-to-double v11, v11

    .line 48
    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v13, v7, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v13

    float-to-double v13, v1

    .line 49
    iget v1, v2, Landroid/graphics/PointF;->y:F

    iget v15, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v15

    move/from16 p2, v3

    move/from16 p1, v4

    float-to-double v3, v1

    .line 50
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    .line 51
    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    sub-double/2addr v9, v3

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    cmpl-double v1, v9, v3

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    if-lez v1, :cond_2

    sub-double/2addr v9, v3

    :cond_2
    const-wide v11, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v1, v9, v11

    if-gez v1, :cond_3

    add-double/2addr v9, v3

    .line 59
    :cond_3
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    add-int/lit8 v1, p1, 0x1

    .line 61
    aput-object v8, p3, p1

    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v3, v3, v8

    if-ltz v3, :cond_4

    add-int/lit8 v4, p1, 0x2

    .line 63
    aput-object v7, p3, v1

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_1
    move/from16 v3, p2

    move-object v1, v7

    move-object v7, v2

    goto :goto_0

    :cond_5
    move/from16 p2, v3

    move/from16 p1, v4

    .line 69
    new-instance v0, Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    div-float v2, v2, p2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v3

    div-float v1, v1, p2

    invoke-direct {v0, v2, v1}, Landroid/graphics/PointF;-><init>(FF)V

    add-int/lit8 v4, p1, 0x1

    .line 70
    aput-object v0, p3, p1

    add-int/lit8 v0, p1, 0x2

    .line 72
    aput-object v7, p3, v4

    return v0
.end method

.method public static MMJmiddlePointSmoothWithoutAngle([Landroid/graphics/PointF;II[Landroid/graphics/PointF;)I
    .locals 9

    sub-int/2addr p2, p1

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-gt v0, v4, :cond_1

    .line 80
    aget-object v5, p0, p1

    .line 81
    aput-object v5, p3, v1

    if-ne v0, v3, :cond_0

    return v3

    :cond_0
    if-ne v0, v4, :cond_1

    add-int/2addr p1, v3

    .line 85
    aget-object p0, p0, p1

    .line 86
    new-instance p1, Landroid/graphics/PointF;

    iget p2, v5, Landroid/graphics/PointF;->x:F

    iget v0, p0, Landroid/graphics/PointF;->x:F

    add-float/2addr p2, v0

    div-float/2addr p2, v2

    iget v0, v5, Landroid/graphics/PointF;->y:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    invoke-direct {p1, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 87
    aput-object p1, p3, v3

    .line 88
    aput-object p0, p3, v4

    const/4 p0, 0x3

    return p0

    .line 94
    :cond_1
    aget-object v0, p0, p1

    add-int/2addr p1, v3

    .line 95
    aget-object v5, p0, p1

    .line 96
    aput-object v0, p3, v1

    :goto_0
    if-ge p1, p2, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 99
    aget-object v1, p0, p1

    .line 100
    new-instance v6, Landroid/graphics/PointF;

    iget v7, v0, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v8

    div-float/2addr v7, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v8

    div-float/2addr v0, v2

    invoke-direct {v6, v7, v0}, Landroid/graphics/PointF;-><init>(FF)V

    add-int/lit8 v0, v3, 0x1

    .line 118
    aput-object v6, p3, v3

    move v3, v0

    move-object v0, v5

    move-object v5, v1

    goto :goto_0

    .line 129
    :cond_2
    new-instance p0, Landroid/graphics/PointF;

    iget p1, v0, Landroid/graphics/PointF;->x:F

    iget p2, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr p1, p2

    div-float/2addr p1, v2

    iget p2, v0, Landroid/graphics/PointF;->y:F

    iget v0, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr p2, v0

    div-float/2addr p2, v2

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    add-int/lit8 p1, v3, 0x1

    .line 130
    aput-object p0, p3, v3

    add-int/2addr v3, v4

    .line 132
    aput-object v5, p3, p1

    return v3
.end method
