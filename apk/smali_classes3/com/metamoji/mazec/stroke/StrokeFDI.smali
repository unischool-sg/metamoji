.class public Lcom/metamoji/mazec/stroke/StrokeFDI;
.super Ljava/lang/Object;
.source "StrokeFDI.java"


# static fields
.field private static final FDI_ALPHA_DEFAULT:F = 1.0f

.field private static final FDI_DIVISION_FACTOR:I = 0x4

.field private static final FDI_EPS_DASH:F = 0.0f

.field private static final FDI_EPS_DEFAULT:F = 1.5f

.field private static final FDI_REDUCE_THRESHOLD_DEFAULT:F = 1.0f

.field private static final FDI_WEIGHT:D = 16.0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static DeFitDEx([Landroid/graphics/PointF;DFFFFII)[Landroid/graphics/PointF;
    .locals 46

    move/from16 v0, p8

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    move v1, v0

    .line 73
    :cond_0
    new-array v1, v1, [I

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v4, v2, p1

    const/16 v17, 0x0

    move/from16 v6, p7

    move/from16 v7, v17

    :goto_0
    const/4 v8, 0x1

    if-le v6, v8, :cond_10

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v6, v17

    :goto_1
    sub-int v7, v0, v18

    if-ge v6, v7, :cond_f

    if-nez v6, :cond_2

    mul-int/lit8 v7, v18, 0x2

    if-lt v7, v0, :cond_1

    goto/16 :goto_a

    :cond_1
    move v9, v7

    move/from16 v7, v17

    move v11, v7

    move/from16 v10, v18

    goto :goto_2

    :cond_2
    mul-int/lit8 v7, v18, 0x2

    add-int/2addr v7, v6

    add-int/lit8 v9, v0, -0x1

    if-le v7, v9, :cond_3

    sub-int v7, v6, v18

    add-int v9, v6, v18

    move v11, v6

    move v10, v9

    goto :goto_2

    :cond_3
    if-ne v6, v9, :cond_4

    move-object/from16 v23, v1

    move-wide/from16 v21, v2

    move v1, v6

    goto :goto_3

    :cond_4
    sub-int v9, v6, v18

    add-int v10, v6, v18

    move v11, v9

    move v9, v7

    move v7, v11

    move v11, v6

    :goto_2
    add-int/lit8 v20, v11, 0x1

    .line 109
    aget v12, v1, v20

    if-ne v12, v8, :cond_5

    shl-int/lit8 v7, v18, 0x1

    sub-int v7, v7, v18

    move-object/from16 v23, v1

    move-wide/from16 v21, v2

    move v1, v6

    move/from16 v18, v7

    :goto_3
    move/from16 v41, v8

    move/from16 v3, p3

    goto/16 :goto_9

    .line 117
    :cond_5
    aget-object v12, p0, v7

    iget v12, v12, Landroid/graphics/PointF;->x:F

    float-to-double v12, v12

    .line 118
    aget-object v7, p0, v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    float-to-double v14, v7

    .line 120
    aget-object v7, p0, v11

    iget v7, v7, Landroid/graphics/PointF;->x:F

    move-wide/from16 v21, v2

    float-to-double v2, v7

    .line 121
    aget-object v7, p0, v11

    iget v7, v7, Landroid/graphics/PointF;->y:F

    move-object/from16 v23, v1

    move-wide/from16 p1, v2

    float-to-double v1, v7

    .line 123
    aget-object v3, p0, v10

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-wide/from16 v24, v1

    float-to-double v1, v3

    .line 124
    aget-object v3, p0, v10

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-wide/from16 v26, v1

    float-to-double v1, v3

    .line 126
    aget-object v3, p0, v9

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move v7, v9

    float-to-double v8, v3

    .line 127
    aget-object v3, p0, v7

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-wide/from16 v28, v1

    float-to-double v1, v3

    add-double v30, p1, v26

    sub-double v11, v30, v12

    sub-double/2addr v11, v8

    add-double v32, v24, v28

    sub-double v7, v32, v14

    sub-double v1, v7, v1

    mul-float v3, p6, p6

    float-to-double v7, v3

    const-wide/high16 v13, 0x4030000000000000L    # 16.0

    mul-double/2addr v7, v13

    mul-double/2addr v7, v13

    const-wide/high16 v13, 0x4010000000000000L    # 4.0

    mul-double/2addr v7, v13

    mul-double v13, v11, v11

    mul-double v15, v1, v1

    add-double/2addr v13, v15

    cmpl-double v3, v13, v7

    if-lez v3, :cond_6

    move/from16 v3, p3

    move v1, v6

    const/16 v41, 0x1

    goto/16 :goto_9

    :cond_6
    move/from16 v3, v20

    :goto_4
    if-ge v3, v10, :cond_d

    .line 142
    aget-object v7, p0, v3

    iget v7, v7, Landroid/graphics/PointF;->x:F

    float-to-double v7, v7

    .line 143
    aget-object v9, p0, v3

    iget v9, v9, Landroid/graphics/PointF;->y:F

    float-to-double v13, v9

    move-wide/from16 v34, v1

    sub-double v1, v26, p1

    sub-double v15, v7, p1

    mul-double/2addr v15, v1

    move/from16 v38, v3

    move-wide/from16 v36, v4

    sub-double v3, v28, v24

    sub-double v39, v13, v24

    mul-double v39, v39, v3

    add-double v15, v15, v39

    move v9, v6

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 145
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v39

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v41

    add-double v39, v39, v41

    div-double v15, v15, v39

    const-wide/16 v39, 0x0

    cmpl-double v39, v15, v39

    if-nez v39, :cond_7

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-wide v15, v7

    move-wide/from16 v39, v24

    goto :goto_6

    :cond_7
    cmpl-double v39, v15, v21

    if-nez v39, :cond_8

    move/from16 v3, p3

    move-wide v15, v7

    move-wide/from16 v1, v26

    move-wide/from16 v39, v28

    goto :goto_6

    :cond_8
    const-wide/high16 v39, 0x3fe0000000000000L    # 0.5

    cmpl-double v39, v15, v39

    if-nez v39, :cond_9

    div-double v1, v30, v5

    div-double v3, v32, v5

    :goto_5
    move-wide/from16 v39, v3

    move-wide v15, v7

    move/from16 v3, p3

    goto :goto_6

    :cond_9
    cmpl-double v5, p1, v26

    if-nez v5, :cond_a

    cmpl-double v5, v24, v28

    if-nez v5, :cond_a

    move/from16 v3, p3

    move v1, v9

    move v2, v10

    move-wide/from16 v42, v11

    move-wide/from16 v11, v34

    move-wide/from16 v4, v36

    const/16 v41, 0x1

    goto :goto_7

    :cond_a
    mul-double/2addr v1, v15

    add-double v1, p1, v1

    mul-double/2addr v15, v3

    add-double v3, v24, v15

    goto :goto_5

    :goto_6
    float-to-double v6, v3

    move/from16 v4, p4

    move v5, v9

    float-to-double v8, v4

    move-wide/from16 v44, v1

    move v1, v5

    move-wide/from16 v4, v36

    move-wide/from16 v36, v13

    move-wide/from16 v13, v44

    move v2, v10

    const/16 v41, 0x1

    move/from16 v10, p5

    .line 161
    invoke-static/range {v4 .. v16}, Lcom/metamoji/mazec/stroke/StrokeFDI;->check_range(DDDFDDD)Z

    move-result v13

    move-wide/from16 v42, v11

    if-nez v13, :cond_b

    goto :goto_9

    :cond_b
    move/from16 v10, p5

    move-wide/from16 v11, v34

    move-wide/from16 v15, v36

    move-wide/from16 v13, v39

    .line 165
    invoke-static/range {v4 .. v16}, Lcom/metamoji/mazec/stroke/StrokeFDI;->check_range(DDDFDDD)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_9

    :cond_c
    :goto_7
    add-int/lit8 v6, v38, 0x1

    move v10, v2

    move v3, v6

    move v6, v1

    move-wide v1, v11

    move-wide/from16 v11, v42

    goto/16 :goto_4

    :cond_d
    move/from16 v3, p3

    move v1, v6

    move v2, v10

    const/16 v41, 0x1

    move/from16 v6, v20

    :goto_8
    if-ge v6, v2, :cond_e

    .line 172
    aput v41, v23, v6

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_e
    :goto_9
    add-int v6, v1, v18

    move-wide/from16 v2, v21

    move-object/from16 v1, v23

    move/from16 v8, v41

    goto/16 :goto_1

    :cond_f
    :goto_a
    move-object/from16 v23, v1

    move-wide/from16 v21, v2

    move/from16 v3, p3

    shr-int/lit8 v6, v18, 0x1

    move/from16 v7, v19

    move-wide/from16 v2, v21

    move-object/from16 v1, v23

    goto/16 :goto_0

    :cond_10
    move-object/from16 v23, v1

    sub-int v1, v0, v7

    .line 180
    new-array v1, v1, [Landroid/graphics/PointF;

    move/from16 v2, v17

    :goto_b
    if-ge v2, v0, :cond_12

    .line 183
    aget v3, v23, v2

    if-nez v3, :cond_11

    .line 184
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 185
    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    add-int/lit8 v4, v17, 0x1

    .line 186
    aput-object v3, v1, v17

    move/from16 v17, v4

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_12
    return-object v1
.end method

.method private static check_range(DDDFDDD)Z
    .locals 4

    float-to-double v0, p6

    sub-double v2, p9, p11

    .line 197
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double p6, v0, v2

    const/4 v0, 0x1

    if-lez p6, :cond_0

    return v0

    :cond_0
    const-wide/16 v1, 0x0

    cmpl-double p6, p7, v1

    const/4 v1, 0x0

    if-ltz p6, :cond_2

    mul-double/2addr p4, p7

    sub-double p4, p9, p4

    cmpl-double p4, p11, p4

    if-ltz p4, :cond_1

    mul-double/2addr p2, p7

    mul-double/2addr p2, p0

    add-double/2addr p9, p2

    cmpg-double p0, p11, p9

    if-gtz p0, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    mul-double/2addr p2, p7

    mul-double/2addr p2, p0

    add-double/2addr p2, p9

    cmpl-double p0, p11, p2

    if-ltz p0, :cond_3

    mul-double/2addr p4, p7

    sub-double/2addr p9, p4

    cmpg-double p0, p11, p9

    if-gtz p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public static fdiReduce(Ljava/util/List;)[Landroid/graphics/PointF;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)[",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    const/16 v0, 0x12

    .line 23
    invoke-static {p0, v0}, Lcom/metamoji/mazec/stroke/StrokeFDI;->fdiReduce(Ljava/util/List;I)[Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static fdiReduce(Ljava/util/List;I)[Landroid/graphics/PointF;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;I)[",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 28
    new-array p1, p1, [Landroid/graphics/PointF;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, [Landroid/graphics/PointF;

    .line 30
    array-length v8, v0

    const/4 p0, 0x2

    if-gt v8, p0, :cond_0

    return-object v0

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v3, 0x3fc00000    # 1.5f

    const-wide/high16 v1, 0x4030000000000000L    # 16.0

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x4

    .line 65
    invoke-static/range {v0 .. v8}, Lcom/metamoji/mazec/stroke/StrokeFDI;->DeFitDEx([Landroid/graphics/PointF;DFFFFII)[Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method
