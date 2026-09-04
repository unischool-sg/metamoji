.class public Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;
.super Ljava/lang/Object;
.source "DrUtMathUtility.java"


# static fields
.field static final CURVE_COSINE_CRITERION:F = 0.9961947f

.field private static final DECIMAL_DIGIT_10:[F

.field static final M_PI:F = 3.1415927f

.field static final M_PI_2:F = 1.5707964f

.field public static final TEMP_FLOAT_ARRAY_SIZE:I = 0x10

.field private static TLSFloatArray:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 28
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->DECIMAL_DIGIT_10:[F

    .line 2505
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility$1;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility$1;-><init>()V

    sput-object v0, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->TLSFloatArray:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3c23d70a    # 0.01f
        0x3a83126f    # 0.001f
        0x38d1b717    # 1.0E-4f
        0x3727c5ac    # 1.0E-5f
        0x358637bd    # 1.0E-6f
        0x33d6bf95    # 1.0E-7f
        0x322bcc77    # 1.0E-8f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDegree(D)D
    .locals 4

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    add-double/2addr p0, v0

    :cond_0
    return-wide p0
.end method

.method public static adjustDegree(F)F
    .locals 2

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p0, v0

    const/4 v1, 0x0

    cmpg-float v1, p0, v1

    if-gez v1, :cond_0

    add-float/2addr p0, v0

    :cond_0
    return p0
.end method

.method public static adjustFloatValue([FFFI)Z
    .locals 4

    const/4 v0, 0x0

    .line 668
    aget v1, p0, v0

    cmpl-float v2, v1, p1

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    cmpl-float v2, v1, p2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-gez p3, :cond_2

    cmpg-float p3, v1, p1

    if-gez p3, :cond_1

    .line 673
    aput p1, p0, v0

    return v0

    :cond_1
    cmpl-float p1, v1, p2

    if-lez p1, :cond_6

    .line 676
    aput p2, p0, v0

    return v0

    :cond_2
    cmpl-float v2, v1, p1

    if-eqz v2, :cond_3

    .line 680
    invoke-static {v1, p1, p3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 681
    aput p1, p0, v0

    goto :goto_0

    .line 682
    :cond_3
    aget v1, p0, v0

    cmpl-float v2, v1, p2

    if-eqz v2, :cond_4

    invoke-static {v1, p2, p3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 683
    aput p2, p0, v0

    goto :goto_0

    .line 684
    :cond_4
    aget p3, p0, v0

    cmpg-float v1, p3, p1

    if-gez v1, :cond_5

    .line 685
    aput p1, p0, v0

    return v0

    :cond_5
    cmpl-float p1, p3, p2

    if-lez p1, :cond_6

    .line 688
    aput p2, p0, v0

    return v0

    :cond_6
    :goto_0
    return v3
.end method

.method public static adjustPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;I)Z
    .locals 4

    .line 702
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v0

    .line 703
    iget v1, p0, Landroid/graphics/PointF;->x:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 704
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    invoke-static {v0, v1, v3, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v1

    .line 707
    aget v3, v0, v2

    iput v3, p0, Landroid/graphics/PointF;->x:F

    .line 708
    iget v3, p0, Landroid/graphics/PointF;->y:F

    aput v3, v0, v2

    .line 709
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    invoke-static {v0, v3, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result p1

    if-nez p1, :cond_0

    move v1, v2

    .line 712
    :cond_0
    aget p1, v0, v2

    iput p1, p0, Landroid/graphics/PointF;->y:F

    return v1
.end method

.method public static adjustRadian(D)D
    .locals 4

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    rem-double/2addr p0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    add-double/2addr p0, v0

    :cond_0
    return-wide p0
.end method

.method public static adjustRadian(F)F
    .locals 4

    float-to-double v0, p0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    rem-double/2addr v0, v2

    double-to-float p0, v0

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    float-to-double v0, p0

    add-double/2addr v0, v2

    double-to-float p0, v0

    :cond_0
    return p0
.end method

.method public static adjustSize(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;Z)Lcom/metamoji/cm/SizeF;
    .locals 6

    .line 620
    iget v0, p0, Lcom/metamoji/cm/SizeF;->width:F

    .line 621
    iget v1, p0, Lcom/metamoji/cm/SizeF;->height:F

    const/4 v2, 0x0

    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    move v0, v2

    :cond_0
    cmpg-float v3, v1, v2

    if-gez v3, :cond_1

    move v1, v2

    .line 628
    :cond_1
    iget v3, p1, Lcom/metamoji/cm/SizeF;->width:F

    .line 629
    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v4, v3, v2

    if-gez v4, :cond_2

    move v3, v2

    :cond_2
    cmpg-float v4, p1, v2

    if-gez v4, :cond_3

    move p1, v2

    :cond_3
    cmpl-float v4, v0, v2

    if-eqz v4, :cond_a

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_a

    cmpl-float v4, v1, v2

    if-eqz v4, :cond_a

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_a

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    div-float p2, v3, v0

    div-float v2, p1, v1

    cmpl-float v4, p2, v2

    if-nez v4, :cond_5

    .line 642
    new-instance p0, Lcom/metamoji/cm/SizeF;

    invoke-direct {p0, v3, p1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object p0

    :cond_5
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, p2, v4

    if-ltz v5, :cond_6

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_6

    return-object p0

    :cond_6
    cmpg-float p0, p2, v2

    if-gez p0, :cond_8

    mul-float/2addr v1, p2

    cmpl-float p0, v1, p1

    if-lez p0, :cond_7

    goto :goto_0

    :cond_7
    move p1, v1

    .line 652
    :goto_0
    new-instance p0, Lcom/metamoji/cm/SizeF;

    invoke-direct {p0, v3, p1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object p0

    :cond_8
    mul-float/2addr v0, v2

    cmpl-float p0, v0, v3

    if-lez p0, :cond_9

    goto :goto_1

    :cond_9
    move v3, v0

    .line 658
    :goto_1
    new-instance p0, Lcom/metamoji/cm/SizeF;

    invoke-direct {p0, v3, p1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object p0

    .line 637
    :cond_a
    :goto_2
    new-instance p0, Lcom/metamoji/cm/SizeF;

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object p0
.end method

.method public static angleInDegreesMadeByPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    .line 1074
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, v1

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    .line 1075
    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 1074
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    return p0
.end method

.method public static angleInDegreesMadeByVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 0

    .line 1049
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInRadiansMadeByVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_0

    .line 1051
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p0

    return p0

    :cond_0
    neg-float p0, p0

    .line 1053
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method public static angleInRadiansMadeByPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    .line 1078
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, v1

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    .line 1079
    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 1078
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInRadiansMadeByVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    return p0
.end method

.method public static angleInRadiansMadeByVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    .line 1058
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->crossProductOfVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 1059
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->dotProductOfVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float v1, v0, p1

    if-nez v1, :cond_1

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    return p1

    :cond_0
    const p0, 0x40490fdb    # (float)Math.PI

    return p0

    :cond_1
    cmpl-float p1, p0, p1

    if-nez p1, :cond_3

    if-ltz v1, :cond_2

    const p0, 0x3fc90fdb

    return p0

    :cond_2
    const p0, -0x4036f025

    return p0

    :cond_3
    float-to-double v0, v0

    float-to-double p0, p0

    .line 1065
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static applyScaleToRect(Lcom/metamoji/cm/RectEx;FFLandroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;
    .locals 3

    .line 879
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    .line 881
    iget v1, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget v2, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    iget v2, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/metamoji/cm/RectEx;->x:F

    .line 882
    iget v1, p0, Lcom/metamoji/cm/RectEx;->y:F

    iget v2, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    iget p3, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p3

    iput v1, v0, Lcom/metamoji/cm/RectEx;->y:F

    .line 883
    iget p3, p0, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr p3, p1

    iput p3, v0, Lcom/metamoji/cm/RectEx;->width:F

    .line 884
    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr p0, p2

    iput p0, v0, Lcom/metamoji/cm/RectEx;->height:F

    return-object v0
.end method

.method public static applyScaleWithoutReversingToRect(Lcom/metamoji/cm/RectEx;FFLandroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;
    .locals 7

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_c

    cmpl-float v2, p2, v0

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 900
    :cond_0
    iget v3, p3, Landroid/graphics/PointF;->x:F

    .line 901
    iget p3, p3, Landroid/graphics/PointF;->y:F

    .line 902
    iget v4, p0, Lcom/metamoji/cm/RectEx;->x:F

    .line 903
    iget v5, p0, Lcom/metamoji/cm/RectEx;->y:F

    .line 904
    iget v6, p0, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v6, v4

    .line 905
    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr p0, v5

    sub-float/2addr v4, v3

    mul-float/2addr v4, p1

    add-float/2addr v4, v3

    sub-float/2addr v5, p3

    mul-float/2addr v5, p2

    add-float/2addr v5, p3

    sub-float/2addr v6, v3

    mul-float/2addr v6, p1

    add-float/2addr v6, v3

    sub-float/2addr p0, p3

    mul-float/2addr p0, p2

    add-float/2addr p0, p3

    if-lez v1, :cond_6

    if-lez v2, :cond_3

    cmpl-float p1, v6, v4

    if-ltz p1, :cond_1

    sub-float/2addr v6, v4

    goto :goto_0

    :cond_1
    move v6, v0

    :goto_0
    cmpl-float p1, p0, v5

    if-ltz p1, :cond_2

    sub-float v0, p0, v5

    .line 912
    :cond_2
    invoke-static {v4, v5, v6, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0

    :cond_3
    cmpl-float p1, v6, v4

    if-ltz p1, :cond_4

    sub-float/2addr v6, v4

    goto :goto_1

    :cond_4
    move v6, v0

    :goto_1
    cmpl-float p1, v5, p0

    if-ltz p1, :cond_5

    sub-float v0, v5, p0

    .line 914
    :cond_5
    invoke-static {v4, p0, v6, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0

    :cond_6
    if-lez v2, :cond_9

    cmpl-float p1, v4, v6

    if-ltz p1, :cond_7

    sub-float/2addr v4, v6

    goto :goto_2

    :cond_7
    move v4, v0

    :goto_2
    cmpl-float p1, p0, v5

    if-ltz p1, :cond_8

    sub-float v0, p0, v5

    .line 918
    :cond_8
    invoke-static {v6, v5, v4, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0

    :cond_9
    cmpl-float p1, v4, v6

    if-ltz p1, :cond_a

    sub-float/2addr v4, v6

    goto :goto_3

    :cond_a
    move v4, v0

    :goto_3
    cmpl-float p1, v5, p0

    if-ltz p1, :cond_b

    sub-float v0, v5, p0

    .line 920
    :cond_b
    invoke-static {v6, p0, v4, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_4
    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 897
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 898
    sget-object p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    return-object p0
.end method

.method public static approximateToSolutionOfQuarticEquationByNewtonRaphsonMethodFromValue(DIDDDDDD[D)Z
    .locals 21

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    mul-double v0, v0, p5

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double v2, v2, p7

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v4, v4, p9

    const/4 v6, 0x0

    move-wide/from16 v7, p0

    move/from16 v9, p2

    move v10, v6

    :goto_0
    if-ge v10, v9, :cond_2

    mul-double v11, v7, v7

    mul-double v13, v7, v11

    mul-double v15, v7, v13

    mul-double v17, v0, v13

    mul-double v19, v2, v11

    add-double v17, v17, v19

    mul-double v19, v4, v7

    add-double v17, v17, v19

    add-double v17, v17, p11

    const-wide/16 v19, 0x0

    cmpl-double v19, v17, v19

    if-nez v19, :cond_0

    goto :goto_1

    :cond_0
    mul-double v15, v15, p5

    mul-double v13, v13, p7

    add-double/2addr v15, v13

    mul-double v11, v11, p9

    add-double/2addr v15, v11

    mul-double v11, p11, v7

    add-double/2addr v15, v11

    add-double v15, v15, p13

    div-double v15, v15, v17

    sub-double v11, v7, v15

    sub-double/2addr v7, v11

    .line 2250
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, p3

    if-gtz v7, :cond_1

    .line 2251
    aput-wide v11, p15, v6

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v10, v10, 0x1

    move-wide v7, v11

    goto :goto_0

    .line 2256
    :cond_2
    :goto_1
    aput-wide v7, p15, v6

    return v6
.end method

.method public static boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 418
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0
.end method

.method public static boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 437
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0
.end method

.method public static boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 458
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0
.end method

.method public static boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 5

    .line 463
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 464
    iget v1, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 465
    :goto_0
    iget v2, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v2, v0

    if-gez v3, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    cmpl-float v3, v2, v1

    if-lez v3, :cond_3

    move v1, v2

    .line 466
    :cond_3
    :goto_1
    iget v2, p3, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v2, v0

    if-gez v3, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    cmpl-float v3, v2, v1

    if-lez v3, :cond_5

    move v1, v2

    .line 467
    :cond_5
    :goto_2
    iput v0, p4, Lcom/metamoji/cm/RectEx;->x:F

    sub-float/2addr v1, v0

    .line 468
    iput v1, p4, Lcom/metamoji/cm/RectEx;->width:F

    .line 470
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 471
    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, p1, p0

    if-gez v0, :cond_6

    move v4, p1

    move p1, p0

    move p0, v4

    goto :goto_3

    :cond_6
    cmpl-float v0, p1, p0

    if-lez v0, :cond_7

    goto :goto_3

    :cond_7
    move p1, p0

    .line 472
    :goto_3
    iget p2, p2, Landroid/graphics/PointF;->y:F

    cmpg-float v0, p2, p0

    if-gez v0, :cond_8

    move p0, p2

    goto :goto_4

    :cond_8
    cmpl-float v0, p2, p1

    if-lez v0, :cond_9

    move p1, p2

    .line 473
    :cond_9
    :goto_4
    iget p2, p3, Landroid/graphics/PointF;->y:F

    cmpg-float p3, p2, p0

    if-gez p3, :cond_a

    move p0, p2

    goto :goto_5

    :cond_a
    cmpl-float p3, p2, p1

    if-lez p3, :cond_b

    move p1, p2

    .line 474
    :cond_b
    :goto_5
    iput p0, p4, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr p1, p0

    .line 475
    iput p1, p4, Lcom/metamoji/cm/RectEx;->height:F

    return-object p4
.end method

.method public static boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 5

    .line 442
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 443
    iget v1, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 444
    :goto_0
    iget v2, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v2, v0

    if-gez v3, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    cmpl-float v3, v2, v1

    if-lez v3, :cond_3

    move v1, v2

    .line 445
    :cond_3
    :goto_1
    iput v0, p3, Lcom/metamoji/cm/RectEx;->x:F

    sub-float/2addr v1, v0

    .line 446
    iput v1, p3, Lcom/metamoji/cm/RectEx;->width:F

    .line 448
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 449
    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, p1, p0

    if-gez v0, :cond_4

    move v4, p1

    move p1, p0

    move p0, v4

    goto :goto_2

    :cond_4
    cmpl-float v0, p1, p0

    if-lez v0, :cond_5

    goto :goto_2

    :cond_5
    move p1, p0

    .line 450
    :goto_2
    iget p2, p2, Landroid/graphics/PointF;->y:F

    cmpg-float v0, p2, p0

    if-gez v0, :cond_6

    move p0, p2

    goto :goto_3

    :cond_6
    cmpl-float v0, p2, p1

    if-lez v0, :cond_7

    move p1, p2

    .line 451
    :cond_7
    :goto_3
    iput p0, p3, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr p1, p0

    .line 452
    iput p1, p3, Lcom/metamoji/cm/RectEx;->height:F

    return-object p3
.end method

.method public static boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 4

    .line 423
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 424
    iget v1, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v1, v0

    if-gez v2, :cond_0

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 425
    :goto_0
    iput v0, p2, Lcom/metamoji/cm/RectEx;->x:F

    sub-float/2addr v1, v0

    .line 426
    iput v1, p2, Lcom/metamoji/cm/RectEx;->width:F

    .line 428
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 429
    iget p1, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, p1, p0

    if-gez v0, :cond_2

    move v3, p1

    move p1, p0

    move p0, v3

    goto :goto_1

    :cond_2
    cmpl-float v0, p1, p0

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    move p1, p0

    .line 430
    :goto_1
    iput p0, p2, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr p1, p0

    .line 431
    iput p1, p2, Lcom/metamoji/cm/RectEx;->height:F

    return-object p2
.end method

.method public static boundsOfPoints(Lcom/metamoji/cm/PointArray;)Lcom/metamoji/cm/RectEx;
    .locals 8

    .line 391
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 392
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0

    .line 395
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-nez v0, :cond_1

    .line 397
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0

    .line 399
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    .line 400
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 401
    iget v1, v1, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    move v2, v1

    move v3, v4

    :goto_0
    if-ge v5, v0, :cond_6

    .line 404
    invoke-static {v5, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v6

    .line 405
    iget v7, v6, Landroid/graphics/PointF;->x:F

    cmpg-float v7, v7, v3

    if-gez v7, :cond_2

    iget v3, v6, Landroid/graphics/PointF;->x:F

    goto :goto_1

    .line 406
    :cond_2
    iget v7, v6, Landroid/graphics/PointF;->x:F

    cmpl-float v7, v7, v4

    if-lez v7, :cond_3

    iget v4, v6, Landroid/graphics/PointF;->x:F

    .line 407
    :cond_3
    :goto_1
    iget v7, v6, Landroid/graphics/PointF;->y:F

    cmpg-float v7, v7, v1

    if-gez v7, :cond_4

    iget v1, v6, Landroid/graphics/PointF;->y:F

    goto :goto_2

    .line 408
    :cond_4
    iget v7, v6, Landroid/graphics/PointF;->y:F

    cmpl-float v7, v7, v2

    if-lez v7, :cond_5

    iget v2, v6, Landroid/graphics/PointF;->y:F

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    sub-float/2addr v4, v3

    sub-float/2addr v2, v1

    .line 410
    invoke-static {v3, v1, v4, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0
.end method

.method public static boundsOfRect(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 1

    .line 536
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 537
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Landroid/graphics/RectF;)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->rotationWithAngleInRadians(FLandroid/graphics/PointF;)Landroid/graphics/Matrix;

    move-result-object p0

    .line 538
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public static centerBaseBoundsFromOriginBaseBoundsInDegrees(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;
    .locals 8

    .line 948
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    return-object p0

    .line 954
    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 955
    iget v1, p0, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v1, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iget v4, p0, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v4, p2

    div-float/2addr v4, v3

    invoke-virtual {v2, p1, v1, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 956
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v3

    const/4 p1, 0x1

    .line 957
    aput v0, v3, p1

    const/4 p2, 0x0

    aput v0, v3, p2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    move-object v5, v3

    .line 958
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 959
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0, p0}, Lcom/metamoji/cm/RectEx;-><init>(Lcom/metamoji/cm/RectEx;)V

    .line 960
    iget p0, v0, Lcom/metamoji/cm/RectEx;->x:F

    aget p2, v3, p2

    sub-float/2addr p0, p2

    iput p0, v0, Lcom/metamoji/cm/RectEx;->x:F

    .line 961
    iget p0, v0, Lcom/metamoji/cm/RectEx;->y:F

    aget p1, v3, p1

    sub-float/2addr p0, p1

    iput p0, v0, Lcom/metamoji/cm/RectEx;->y:F

    return-object v0
.end method

.method public static centerBaseBoundsFromOriginBaseBoundsInRadians(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 965
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerBaseBoundsFromOriginBaseBoundsInDegrees(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0
.end method

.method public static centerOfRect(Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 2

    .line 484
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;
    .locals 4

    .line 487
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget v2, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/metamoji/cm/RectEx;->y:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p0, v3

    add-float/2addr v2, p0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static checkAcutenessOfAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 3

    const/4 v0, 0x5

    .line 765
    invoke-static {p0, p1, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {p1, p2, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 768
    :cond_0
    invoke-static {p0, p2, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 771
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->cosineOfAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    const p1, 0x3f7f069e

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2

    return v1

    :cond_2
    :goto_0
    return v2
.end method

.method public static checkAxisSwitchingZoneForAngleInDegrees(F)Z
    .locals 1

    const/high16 v0, 0x42340000    # 45.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x43070000    # 135.0f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_1

    :cond_0
    const/high16 v0, 0x43610000    # 225.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_2

    const v0, 0x439d8000    # 315.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static checkAxisSwitchingZoneForAngleInRadians(F)Z
    .locals 0

    .line 724
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkAxisSwitchingZoneForAngleInDegrees(F)Z

    move-result p0

    return p0
.end method

.method public static checkBoundaryOfRect(Lcom/metamoji/cm/RectEx;F)Z
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 110
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 112
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_1

    .line 113
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_1

    .line 114
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_1

    .line 115
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static checkCornerOfRectInRadians(Lcom/metamoji/cm/RectEx;FLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 19

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 501
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    .line 502
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    .line 503
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v7

    .line 504
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v9, v0, v9

    if-eqz v9, :cond_0

    .line 506
    invoke-static/range {p0 .. p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->rotationWithAngleInRadians(FLandroid/graphics/PointF;)Landroid/graphics/Matrix;

    move-result-object v10

    .line 507
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->TLSFloatArray:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, [F

    const/4 v0, 0x0

    .line 508
    aput v5, v11, v0

    const/4 v9, 0x1

    .line 509
    aput v7, v11, v9

    const/16 v16, 0x2

    .line 510
    aput v6, v11, v16

    const/16 v17, 0x3

    .line 511
    aput v7, v11, v17

    const/4 v7, 0x4

    .line 512
    aput v5, v11, v7

    const/4 v5, 0x5

    .line 513
    aput v8, v11, v5

    const/16 v18, 0x6

    .line 514
    aput v6, v11, v18

    const/4 v6, 0x7

    .line 515
    aput v8, v11, v6

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/4 v12, 0x0

    move-object v13, v11

    .line 516
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 517
    aget v0, v11, v0

    aget v8, v11, v9

    invoke-virtual {v1, v0, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 518
    aget v0, v11, v16

    aget v1, v11, v17

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 519
    aget v0, v11, v7

    aget v1, v11, v5

    invoke-virtual {v3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 520
    aget v0, v11, v18

    aget v1, v11, v6

    invoke-virtual {v4, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void

    .line 522
    :cond_0
    invoke-virtual {v1, v5, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 523
    invoke-virtual {v2, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 524
    invoke-virtual {v3, v5, v8}, Landroid/graphics/PointF;->set(FF)V

    .line 525
    invoke-virtual {v4, v6, v8}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public static checkDegeneracyOfPointArray(Lcom/metamoji/cm/PointArray;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 266
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 269
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 278
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_2

    .line 280
    invoke-static {v4, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v5

    if-nez v5, :cond_1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v0
.end method

.method public static checkDegeneracyOfPointArray(Lcom/metamoji/cm/PointArray;I)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 288
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 300
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_2

    .line 302
    invoke-static {v4, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    invoke-static {v3, v5, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v5

    if-nez v5, :cond_1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v0
.end method

.method public static checkDegeneracyOfPointArrayInAxes(Lcom/metamoji/cm/PointArray;)[Z
    .locals 11

    const/4 v0, 0x2

    if-eqz p0, :cond_7

    .line 312
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 317
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x0

    .line 332
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v1, :cond_4

    .line 334
    invoke-static {v5, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v8

    if-eqz v6, :cond_1

    .line 335
    iget v9, v4, Landroid/graphics/PointF;->x:F

    iget v10, v8, Landroid/graphics/PointF;->x:F

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_1

    move v6, v3

    :cond_1
    if-eqz v7, :cond_2

    .line 338
    iget v9, v4, Landroid/graphics/PointF;->y:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    cmpl-float v8, v9, v8

    if-eqz v8, :cond_2

    move v7, v3

    :cond_2
    if-nez v6, :cond_3

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 345
    :cond_4
    :goto_1
    new-array p0, v0, [Z

    aput-boolean v6, p0, v3

    aput-boolean v7, p0, v2

    return-object p0

    .line 326
    :cond_5
    new-array p0, v0, [Z

    fill-array-data p0, :array_0

    return-object p0

    .line 322
    :cond_6
    new-array p0, v0, [Z

    fill-array-data p0, :array_1

    return-object p0

    .line 315
    :cond_7
    :goto_2
    new-array p0, v0, [Z

    fill-array-data p0, :array_2

    return-object p0

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public static checkDegeneracyOfPointArrayInAxes(Lcom/metamoji/cm/PointArray;I)[Z
    .locals 11

    const/4 v0, 0x2

    if-eqz p0, :cond_7

    .line 351
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 356
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x0

    .line 371
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v1, :cond_4

    .line 373
    invoke-static {v5, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v8

    if-eqz v6, :cond_1

    .line 374
    iget v9, v4, Landroid/graphics/PointF;->x:F

    iget v10, v8, Landroid/graphics/PointF;->x:F

    invoke-static {v9, v10, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v9

    if-nez v9, :cond_1

    move v6, v3

    :cond_1
    if-eqz v7, :cond_2

    .line 377
    iget v9, v4, Landroid/graphics/PointF;->y:F

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v9, v8, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v8

    if-nez v8, :cond_2

    move v7, v3

    :cond_2
    if-nez v6, :cond_3

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 384
    :cond_4
    :goto_1
    new-array p0, v0, [Z

    aput-boolean v6, p0, v3

    aput-boolean v7, p0, v2

    return-object p0

    .line 365
    :cond_5
    new-array p0, v0, [Z

    fill-array-data p0, :array_0

    return-object p0

    .line 361
    :cond_6
    new-array p0, v0, [Z

    fill-array-data p0, :array_1

    return-object p0

    .line 354
    :cond_7
    :goto_2
    new-array p0, v0, [Z

    fill-array-data p0, :array_2

    return-object p0

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public static checkEquality(DDI)Z
    .locals 8

    cmpl-double v0, p0, p2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 145
    :cond_0
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(D)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(D)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-gt v1, p4, :cond_2

    .line 148
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->DECIMAL_DIGIT_10:[F

    array-length v2, v0

    if-ge p4, v2, :cond_2

    .line 149
    aget p4, v0, p4

    float-to-double v4, p4

    goto :goto_0

    :cond_2
    rsub-int/lit8 p4, p4, 0x1

    int-to-double v4, p4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    :goto_0
    sub-double/2addr p0, p2

    .line 150
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, v4

    if-gez p0, :cond_3

    return v1

    :cond_3
    return v3

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    return v1

    :cond_5
    return v3
.end method

.method public static checkEquality(FFI)Z
    .locals 8

    cmpl-float v0, p0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 125
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-gt v1, p2, :cond_2

    .line 128
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->DECIMAL_DIGIT_10:[F

    array-length v2, v0

    if-ge p2, v2, :cond_2

    .line 129
    aget p2, v0, p2

    goto :goto_0

    :cond_2
    rsub-int/lit8 p2, p2, 0x1

    int-to-double v4, p2

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float p2, v4

    .line 130
    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    sub-float/2addr p0, p1

    .line 132
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    mul-float/2addr p2, v0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_3

    return v1

    :cond_3
    return v3

    :cond_4
    sub-float/2addr p0, p1

    .line 134
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_5

    return v1

    :cond_5
    return v3

    :cond_6
    :goto_1
    if-nez v0, :cond_7

    return v1

    :cond_7
    return v3
.end method

.method public static checkEquality(Landroid/graphics/Matrix;Landroid/graphics/Matrix;I)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    return v3

    .line 192
    :cond_0
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 197
    aget v0, v4, v9

    .line 198
    aget v12, v4, v8

    .line 199
    aget v13, v4, v3

    .line 200
    aget v14, v4, v7

    .line 201
    aget v15, v4, v6

    .line 202
    aget v16, v4, v5

    move/from16 v17, v16

    move/from16 v16, v3

    move/from16 v3, v17

    goto :goto_0

    :cond_1
    move/from16 v16, v3

    move v0, v10

    move v14, v0

    move v3, v11

    move v12, v3

    move v13, v12

    move v15, v13

    :goto_0
    if-eqz v1, :cond_2

    .line 207
    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->getValues([F)V

    .line 208
    aget v10, v4, v9

    .line 209
    aget v11, v4, v8

    .line 210
    aget v1, v4, v16

    .line 211
    aget v7, v4, v7

    .line 212
    aget v6, v4, v6

    .line 213
    aget v4, v4, v5

    goto :goto_1

    :cond_2
    move v7, v10

    move v1, v11

    move v4, v1

    move v6, v4

    .line 216
    :goto_1
    invoke-static {v0, v10, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    invoke-static {v12, v11, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    invoke-static {v13, v1, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    invoke-static {v14, v7, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    invoke-static {v15, v6, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    invoke-static {v3, v4, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_3

    return v16

    :cond_3
    return v9
.end method

.method public static checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z
    .locals 2

    .line 157
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 158
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkEquality(Landroid/graphics/RectF;Landroid/graphics/RectF;I)Z
    .locals 2

    .line 173
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 174
    invoke-static {v0, v1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 175
    invoke-static {v0, v1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 176
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkEquality(Lcom/metamoji/cm/PointArray;Lcom/metamoji/cm/PointArray;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 229
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 234
    :goto_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 235
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 236
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    .line 235
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static checkEquality(Lcom/metamoji/cm/PointArray;Lcom/metamoji/cm/PointArray;I)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 244
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 249
    :goto_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 250
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 251
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    .line 250
    invoke-static {v2, v3, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static checkEquality(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;I)Z
    .locals 2

    .line 179
    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget v1, p1, Lcom/metamoji/cm/RectEx;->x:F

    invoke-static {v0, v1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/metamoji/cm/RectEx;->y:F

    iget v1, p1, Lcom/metamoji/cm/RectEx;->y:F

    .line 180
    invoke-static {v0, v1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    iget v1, p1, Lcom/metamoji/cm/RectEx;->width:F

    .line 181
    invoke-static {v0, v1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    .line 182
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkEquality(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;I)Z
    .locals 2

    .line 165
    iget v0, p0, Lcom/metamoji/cm/SizeF;->width:F

    iget v1, p1, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v0, v1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/metamoji/cm/SizeF;->height:F

    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    .line 166
    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkFinitePoint(Landroid/graphics/PointF;)Z
    .locals 1

    .line 52
    iget v0, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkFiniteRect(Landroid/graphics/RectF;)Z
    .locals 1

    .line 66
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkFiniteRect(Lcom/metamoji/cm/RectEx;)Z
    .locals 1

    .line 69
    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/metamoji/cm/RectEx;->y:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkFiniteSize(Lcom/metamoji/cm/SizeF;)Z
    .locals 1

    .line 59
    iget v0, p0, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkInnerPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 5

    .line 732
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iget v3, p0, Landroid/graphics/PointF;->y:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->crossProductOfVector(FFFF)F

    move-result v0

    .line 733
    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p3, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p2

    iget p2, p0, Landroid/graphics/PointF;->x:F

    iget v3, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, v3

    iget v3, p0, Landroid/graphics/PointF;->y:F

    iget v4, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-static {v1, v2, p2, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->crossProductOfVector(FFFF)F

    move-result p2

    .line 734
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p3

    iget p3, p0, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p3, v3

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    invoke-static {v1, v2, p3, p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->crossProductOfVector(FFFF)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p3, v0, p1

    if-ltz p3, :cond_0

    cmpl-float p3, p2, p1

    if-ltz p3, :cond_0

    cmpl-float p3, p0, p1

    if-gez p3, :cond_1

    :cond_0
    cmpg-float p3, v0, p1

    if-gtz p3, :cond_2

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_2

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static checkInnerPointWithAngleInDegrees(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;F)Z
    .locals 1

    .line 743
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->radianFromDegree(F)F

    move-result p2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    neg-float p2, p2

    .line 745
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->rotationWithAngleInRadians(FLandroid/graphics/PointF;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p0

    .line 747
    :cond_0
    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectContainsPoint(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;)Z

    move-result p0

    return p0
.end method

.method public static checkInnerPointWithAngleInRadians(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;F)Z
    .locals 1

    .line 750
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustRadian(F)F

    move-result p2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    neg-float p2, p2

    .line 752
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->rotationWithAngleInRadians(FLandroid/graphics/PointF;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p0

    .line 754
    :cond_0
    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectContainsPoint(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;)Z

    move-result p0

    return p0
.end method

.method public static checkMorphedEllipseRadiuses(Landroid/graphics/PointF;Landroid/graphics/PointF;FFFF)Landroid/graphics/PointF;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    .line 1131
    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    .line 1132
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v0

    sub-float v0, v2, p2

    sub-float v5, v3, p3

    const/4 v6, 0x0

    cmpl-float v7, v0, v6

    if-eqz v7, :cond_7

    cmpl-float v12, v5, v6

    if-nez v12, :cond_0

    goto/16 :goto_5

    :cond_0
    div-float/2addr v4, v0

    float-to-double v6, v4

    mul-double/2addr v6, v6

    div-float v4, v2, v0

    float-to-double v12, v4

    div-float/2addr v1, v5

    float-to-double v14, v1

    mul-double/2addr v14, v14

    div-float v1, v3, v5

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    float-to-double v10, v1

    sub-double v16, v12, v10

    mul-double v18, v16, v16

    add-double v20, v6, v14

    div-double v22, v18, p0

    add-double v8, v20, v22

    sub-double/2addr v6, v14

    mul-double v6, v6, v16

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    div-double v14, v18, v14

    sub-double v20, v20, v14

    mul-double v20, v20, v18

    add-double/2addr v12, v10

    div-double v12, v12, p0

    neg-double v10, v8

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    div-double/2addr v10, v14

    mul-double v16, v10, v10

    div-double v18, v20, v14

    sub-double v16, v16, v18

    add-double v18, v10, v8

    mul-double v18, v18, v10

    add-double v18, v18, v20

    mul-double v18, v18, v10

    mul-double v22, v8, v20

    add-double v18, v18, v22

    mul-double v22, v6, v6

    sub-double v18, v18, v22

    move-wide/from16 p2, v14

    div-double v14, v18, p0

    const-wide/16 v18, 0x0

    cmpl-double v1, v14, v18

    if-eqz v1, :cond_2

    mul-double v22, v14, v14

    mul-double v26, v16, v16

    mul-double v26, v26, v16

    sub-double v22, v22, v26

    cmpl-double v1, v22, v18

    if-lez v1, :cond_1

    .line 1168
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    add-double v24, v24, v22

    move-wide/from16 v22, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v6

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v6

    div-double v16, v16, v6

    add-double v6, v6, v16

    sub-double/2addr v10, v6

    goto :goto_0

    :cond_1
    move-wide/from16 v22, v6

    .line 1171
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double v26, v6, p0

    mul-double v16, v16, v6

    div-double v6, v14, v16

    .line 1173
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move-wide/from16 v16, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v6

    neg-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    div-double v6, v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v26, v26, v6

    add-double v10, v10, v26

    goto :goto_1

    :cond_2
    move-wide/from16 v22, v6

    :goto_0
    move-wide/from16 v16, v8

    :goto_1
    add-double v8, v16, v10

    const-wide v6, 0x3d06849b86a12b9bL    # 1.0E-14

    cmpg-double v1, v8, v6

    if-gez v1, :cond_3

    mul-double v6, v10, v10

    add-double v6, v6, v20

    .line 1184
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double v6, v6, p0

    move-wide/from16 v8, v18

    goto :goto_2

    .line 1186
    :cond_3
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double v8, v22, p0

    div-double/2addr v8, v6

    move-wide/from16 v28, v8

    move-wide v8, v6

    move-wide/from16 v6, v28

    :goto_2
    sub-double v10, v16, v10

    add-double v14, v10, v6

    sub-double/2addr v10, v6

    cmpg-double v1, v14, v18

    if-gez v1, :cond_4

    cmpg-double v4, v10, v18

    if-gez v4, :cond_4

    div-double v8, v8, p0

    sub-double/2addr v12, v8

    goto :goto_4

    :cond_4
    if-gez v1, :cond_5

    .line 1193
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    add-double/2addr v6, v8

    :goto_3
    div-double v6, v6, p0

    sub-double/2addr v12, v6

    goto :goto_4

    :cond_5
    cmpg-double v1, v10, v18

    if-gez v1, :cond_6

    .line 1195
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    sub-double/2addr v6, v8

    goto :goto_3

    .line 1197
    :cond_6
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    sub-double/2addr v6, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    add-double/2addr v10, v8

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    goto :goto_3

    .line 1200
    :goto_4
    new-instance v1, Landroid/graphics/PointF;

    float-to-double v6, v2

    float-to-double v8, v0

    mul-double/2addr v8, v12

    sub-double/2addr v6, v8

    double-to-float v0, v6

    float-to-double v2, v3

    float-to-double v4, v5

    mul-double/2addr v12, v4

    sub-double/2addr v2, v12

    double-to-float v2, v2

    invoke-direct {v1, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    :cond_7
    :goto_5
    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    if-nez v7, :cond_8

    move/from16 v0, p2

    goto :goto_6

    .line 1138
    :cond_8
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float v2, v1, p3

    float-to-double v2, v2

    move-wide/from16 v7, p0

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    sub-double v8, v24, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v0, v2

    :goto_6
    cmpl-float v2, v5, v6

    if-nez v2, :cond_9

    move/from16 v1, p3

    goto :goto_7

    .line 1139
    :cond_9
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v4, v4, p2

    float-to-double v2, v4

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    sub-double v8, v24, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v1, v2

    .line 1140
    :goto_7
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method public static checkTransform(Landroid/graphics/Matrix;[F)V
    .locals 4

    .line 794
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v0

    .line 795
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p0, 0x0

    .line 797
    aget v1, v0, p0

    aput v1, p1, p0

    const/4 p0, 0x3

    .line 798
    aget v1, v0, p0

    const/4 v2, 0x1

    aput v1, p1, v2

    .line 799
    aget v1, v0, v2

    const/4 v2, 0x2

    aput v1, p1, v2

    const/4 v1, 0x4

    .line 800
    aget v3, v0, v1

    aput v3, p1, p0

    .line 801
    aget p0, v0, v2

    aput p0, p1, v1

    const/4 p0, 0x5

    .line 802
    aget v0, v0, p0

    aput v0, p1, p0

    return-void
.end method

.method public static checkValidFloat(F)Z
    .locals 1

    .line 76
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x4f000000

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkValidPoint(Landroid/graphics/PointF;)Z
    .locals 1

    .line 83
    iget v0, p0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 84
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkValidRect(Lcom/metamoji/cm/RectEx;)Z
    .locals 1

    .line 99
    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/metamoji/cm/RectEx;->y:F

    .line 100
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    .line 101
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    .line 102
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkValidSize(Lcom/metamoji/cm/SizeF;)Z
    .locals 1

    .line 91
    iget v0, p0, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/metamoji/cm/SizeF;->height:F

    .line 92
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static cosineOfAngle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 10

    .line 775
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, v2

    float-to-double v2, p0

    .line 776
    iget p0, p2, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, v4

    float-to-double v4, p0

    iget p0, p2, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p1

    float-to-double p0, p0

    .line 777
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 778
    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/16 v8, 0x0

    cmpl-double p2, v6, v8

    if-nez p2, :cond_0

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    :cond_0
    mul-double/2addr v0, v4

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    div-double/2addr v0, v6

    double-to-float p0, v0

    return p0
.end method

.method public static crossProductOfVector(FFFF)F
    .locals 0

    mul-float/2addr p0, p3

    mul-float/2addr p1, p2

    sub-float/2addr p0, p1

    return p0
.end method

.method public static crossProductOfVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    .line 1038
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p0, p1

    sub-float/2addr v0, p0

    return v0
.end method

.method public static degreeFromRadian(F)F
    .locals 2

    float-to-double v0, p0

    .line 552
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result p0

    return p0
.end method

.method public static degreeFromRadian(FI)F
    .locals 4

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p1

    .line 575
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    goto :goto_0

    :cond_0
    const p1, 0x47c35000    # 100000.0f

    goto :goto_0

    :cond_1
    const p1, 0x461c4000    # 10000.0f

    goto :goto_0

    :cond_2
    const/high16 p1, 0x447a0000    # 1000.0f

    goto :goto_0

    :cond_3
    const/high16 p1, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_4
    const/high16 p1, 0x41200000    # 10.0f

    goto :goto_0

    :cond_5
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr p0, v0

    const v0, 0x40490fdb    # (float)Math.PI

    div-float/2addr p0, v0

    mul-float/2addr p0, p1

    float-to-double v0, p0

    .line 578
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float p0, v0

    div-float/2addr p0, p1

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result p0

    return p0
.end method

.method public static determinantOfTransform(Landroid/graphics/Matrix;)F
    .locals 4

    .line 836
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v0

    .line 837
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 p0, 0x0

    .line 838
    aget p0, v0, p0

    const/4 v1, 0x3

    .line 839
    aget v1, v0, v1

    const/4 v2, 0x1

    .line 840
    aget v2, v0, v2

    const/4 v3, 0x4

    .line 841
    aget v0, v0, v3

    mul-float/2addr p0, v0

    mul-float/2addr v1, v2

    sub-float/2addr p0, v1

    return p0
.end method

.method public static dotProductOfVector(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    .line 1031
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static inversionOfTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 2

    .line 851
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->determinantOfTransform(Landroid/graphics/Matrix;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformInvert(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public static originBaseBoundsFromCenterBaseBoundsInDegrees(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;
    .locals 8

    .line 969
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    return-object p0

    .line 975
    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 976
    iget v1, p0, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v1, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iget v4, p0, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v4, p2

    div-float/2addr v4, v3

    invoke-virtual {v2, p1, v1, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 977
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v3

    const/4 p1, 0x1

    .line 978
    aput v0, v3, p1

    const/4 p2, 0x0

    aput v0, v3, p2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    move-object v5, v3

    .line 979
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    .line 980
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0, p0}, Lcom/metamoji/cm/RectEx;-><init>(Lcom/metamoji/cm/RectEx;)V

    .line 981
    iget p0, v0, Lcom/metamoji/cm/RectEx;->x:F

    aget p2, v3, p2

    add-float/2addr p0, p2

    iput p0, v0, Lcom/metamoji/cm/RectEx;->x:F

    .line 982
    iget p0, v0, Lcom/metamoji/cm/RectEx;->y:F

    aget p1, v3, p1

    add-float/2addr p0, p1

    iput p0, v0, Lcom/metamoji/cm/RectEx;->y:F

    return-object v0
.end method

.method public static originBaseBoundsFromCenterBaseBoundsInRadians(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 986
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->originBaseBoundsFromCenterBaseBoundsInDegrees(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0
.end method

.method public static pointOffsetByRotationWithAngleInDegrees(DLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 929
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOffsetByRotationWithAngleInRadians(DLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static pointOffsetByRotationWithAngleInRadians(DLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 6

    .line 934
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 935
    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p2

    float-to-double p2, p3

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr p0, v2

    .line 936
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    mul-double/2addr v4, v2

    .line 937
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p2

    add-double/2addr p2, p0

    .line 938
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    neg-double p0, p0

    mul-double/2addr p0, v4

    .line 939
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double/2addr v4, p2

    .line 940
    new-instance p2, Landroid/graphics/PointF;

    double-to-float p0, p0

    double-to-float p1, v4

    invoke-direct {p2, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
.end method

.method public static pointOnCircleWithCenterInDegrees(Landroid/graphics/PointF;FD)Landroid/graphics/PointF;
    .locals 0

    .line 1086
    invoke-static {p2, p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnCircleWithCenterInRadians(Landroid/graphics/PointF;FD)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static pointOnCircleWithCenterInRadians(Landroid/graphics/PointF;FD)Landroid/graphics/PointF;
    .locals 3

    .line 1089
    iget v0, p0, Landroid/graphics/PointF;->x:F

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    double-to-float p2, p2

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static pointOnEllipseWithCenterInDegrees(Landroid/graphics/PointF;FFD)Landroid/graphics/PointF;
    .locals 0

    .line 1096
    invoke-static {p3, p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p3

    invoke-static {p0, p1, p2, p3, p4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnEllipseWithCenterInRadians(Landroid/graphics/PointF;FFD)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static pointOnEllipseWithCenterInRadians(Landroid/graphics/PointF;FFD)Landroid/graphics/PointF;
    .locals 5

    float-to-double v0, p1

    .line 1100
    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    float-to-double v2, p2

    .line 1101
    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    mul-double/2addr v2, p3

    const-wide/16 p3, 0x0

    cmpl-double v4, v0, p3

    if-nez v4, :cond_1

    cmpl-double v0, v2, p3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide p3, 0x400921fb60000000L    # 3.1415927410125732

    goto :goto_0

    :cond_1
    cmpl-double p3, v2, p3

    if-nez p3, :cond_3

    if-ltz v4, :cond_2

    const-wide p3, 0x3ff921fb60000000L    # 1.5707963705062866

    goto :goto_0

    :cond_2
    const-wide p3, -0x4006de04a0000000L    # -1.5707963705062866

    goto :goto_0

    .line 1108
    :cond_3
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p3

    .line 1110
    :goto_0
    iget v0, p0, Landroid/graphics/PointF;->x:F

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    double-to-float p1, p3

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static radianFromDegree(F)F
    .locals 2

    .line 549
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static resizeRectArray(Ljava/lang/Object;FF)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    const/high16 v4, -0x3fc00000    # -3.0f

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_1

    cmpg-float v6, v2, v4

    if-gtz v6, :cond_1

    return-object v0

    .line 1221
    :cond_1
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->checkRectArray(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_2

    .line 1222
    invoke-static {v7, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v3

    .line 1225
    :cond_2
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_3

    .line 1227
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->newRectArray()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1229
    :cond_3
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->newRectArrayWithCapacity(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v8, 0x0

    cmpl-float v9, v1, v8

    const/high16 v10, 0x40000000    # 2.0f

    if-lez v9, :cond_4

    cmpl-float v9, v2, v8

    if-lez v9, :cond_4

    div-float v4, v1, v10

    div-float v5, v2, v10

    :goto_0
    if-ge v7, v3, :cond_1d

    .line 1234
    invoke-static {v7, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->rectAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/RectEx;

    move-result-object v8

    .line 1235
    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v9

    sub-float/2addr v9, v4

    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v8

    sub-float/2addr v8, v5

    invoke-static {v9, v8, v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->addRect(Lcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    const v9, -0x800001

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v12, -0x40800000    # -1.0f

    const/high16 v13, -0x40000000    # -2.0f

    const/4 v14, 0x4

    const/4 v15, 0x3

    move/from16 v16, v4

    const/4 v4, 0x2

    const/4 v7, 0x1

    if-gtz v5, :cond_5

    move v5, v7

    goto :goto_1

    :cond_5
    cmpg-float v5, v1, v13

    if-gtz v5, :cond_6

    move v5, v4

    move v1, v11

    goto :goto_1

    :cond_6
    cmpg-float v5, v1, v12

    if-gtz v5, :cond_7

    move v1, v8

    move v5, v15

    goto :goto_1

    :cond_7
    cmpg-float v5, v1, v8

    if-gtz v5, :cond_8

    move v1, v9

    move v5, v14

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    :goto_1
    cmpg-float v16, v2, v16

    if-gtz v16, :cond_9

    move v8, v7

    goto :goto_2

    :cond_9
    cmpg-float v13, v2, v13

    if-gtz v13, :cond_a

    move v8, v4

    move v2, v11

    goto :goto_2

    :cond_a
    cmpg-float v11, v2, v12

    if-gtz v11, :cond_b

    move v2, v8

    move v8, v15

    goto :goto_2

    :cond_b
    cmpg-float v8, v2, v8

    if-gtz v8, :cond_c

    move v2, v9

    move v8, v14

    goto :goto_2

    :cond_c
    const/4 v8, 0x0

    .line 1266
    :goto_2
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArrayWithCapacity(I)Lcom/metamoji/cm/PointArray;

    move-result-object v9

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v3, :cond_15

    .line 1268
    invoke-static {v11, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->rectAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/RectEx;

    move-result-object v12

    .line 1269
    invoke-static {v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v13

    move/from16 v16, v10

    invoke-static {v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v10

    invoke-static {v13, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    if-eq v5, v4, :cond_f

    if-eq v5, v15, :cond_e

    if-eq v5, v14, :cond_d

    goto :goto_4

    .line 1280
    :cond_d
    iget v10, v12, Lcom/metamoji/cm/RectEx;->width:F

    cmpg-float v10, v1, v10

    if-gez v10, :cond_10

    .line 1281
    iget v1, v12, Lcom/metamoji/cm/RectEx;->width:F

    goto :goto_4

    .line 1277
    :cond_e
    iget v10, v12, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v1, v10

    goto :goto_4

    .line 1272
    :cond_f
    iget v10, v12, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v10, v1, v10

    if-lez v10, :cond_10

    .line 1273
    iget v1, v12, Lcom/metamoji/cm/RectEx;->width:F

    :cond_10
    :goto_4
    if-eq v8, v4, :cond_13

    if-eq v8, v15, :cond_12

    if-eq v8, v14, :cond_11

    goto :goto_5

    .line 1297
    :cond_11
    iget v10, v12, Lcom/metamoji/cm/RectEx;->height:F

    cmpg-float v10, v2, v10

    if-gez v10, :cond_14

    .line 1298
    iget v2, v12, Lcom/metamoji/cm/RectEx;->height:F

    goto :goto_5

    .line 1294
    :cond_12
    iget v10, v12, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr v2, v10

    goto :goto_5

    .line 1289
    :cond_13
    iget v10, v12, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v10, v2, v10

    if-lez v10, :cond_14

    .line 1290
    iget v2, v12, Lcom/metamoji/cm/RectEx;->height:F

    :cond_14
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v16

    goto :goto_3

    :cond_15
    move/from16 v16, v10

    if-ne v5, v4, :cond_16

    int-to-float v10, v3

    div-float/2addr v1, v10

    :cond_16
    if-ne v8, v4, :cond_17

    int-to-float v4, v3

    div-float/2addr v2, v4

    :cond_17
    div-float v4, v1, v16

    div-float v10, v2, v16

    if-eq v5, v7, :cond_19

    if-ne v8, v7, :cond_18

    goto :goto_6

    :cond_18
    const/4 v11, 0x0

    goto :goto_7

    :cond_19
    :goto_6
    move v11, v7

    :goto_7
    const/4 v12, 0x0

    :goto_8
    if-ge v12, v3, :cond_1d

    .line 1316
    sget-object v13, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    if-eqz v11, :cond_1a

    .line 1318
    invoke-static {v12, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->rectAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/RectEx;

    move-result-object v13

    .line 1320
    :cond_1a
    invoke-static {v12, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v14

    if-ne v5, v7, :cond_1b

    .line 1323
    iget v15, v13, Lcom/metamoji/cm/RectEx;->x:F

    .line 1324
    iget v7, v13, Lcom/metamoji/cm/RectEx;->width:F

    goto :goto_9

    .line 1326
    :cond_1b
    iget v7, v14, Landroid/graphics/PointF;->x:F

    sub-float v15, v7, v4

    move v7, v1

    :goto_9
    const/4 v0, 0x1

    if-ne v8, v0, :cond_1c

    .line 1330
    iget v14, v13, Lcom/metamoji/cm/RectEx;->y:F

    .line 1331
    iget v13, v13, Lcom/metamoji/cm/RectEx;->height:F

    goto :goto_a

    .line 1333
    :cond_1c
    iget v13, v14, Landroid/graphics/PointF;->y:F

    sub-float v14, v13, v10

    move v13, v2

    .line 1336
    :goto_a
    invoke-static {v15, v14, v7, v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->addRect(Lcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    move v7, v0

    move-object/from16 v0, p0

    goto :goto_8

    :cond_1d
    return-object v6
.end method

.method public static resizeRects(Ljava/util/Map;FF)Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;",
            "Lcom/metamoji/cm/RectEx;",
            ">;FF)",
            "Ljava/util/Map<",
            "TT;",
            "Lcom/metamoji/cm/RectEx;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/high16 v3, -0x3fc00000    # -3.0f

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_1

    cmpg-float v5, v2, v3

    if-gtz v5, :cond_1

    return-object v0

    .line 1348
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 1349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0

    .line 1351
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    cmpl-float v7, v1, v6

    const/high16 v8, 0x40000000    # 2.0f

    if-lez v7, :cond_4

    cmpl-float v7, v2, v6

    if-lez v7, :cond_4

    div-float v3, v1, v8

    div-float v4, v2, v8

    .line 1355
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1356
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1357
    instance-of v9, v8, Lcom/metamoji/cm/RectEx;

    if-eqz v9, :cond_3

    .line 1358
    check-cast v8, Lcom/metamoji/cm/RectEx;

    .line 1359
    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v9

    sub-float/2addr v9, v3

    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v8

    sub-float/2addr v8, v4

    invoke-static {v9, v8, v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const v7, -0x800001

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v10, -0x40800000    # -1.0f

    const/high16 v11, -0x40000000    # -2.0f

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v15, 0x2

    move/from16 v16, v3

    if-gtz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    cmpg-float v4, v1, v11

    if-gtz v4, :cond_6

    move v1, v9

    move v4, v15

    goto :goto_1

    :cond_6
    cmpg-float v4, v1, v10

    if-gtz v4, :cond_7

    move v1, v6

    move v4, v13

    goto :goto_1

    :cond_7
    cmpg-float v4, v1, v6

    if-gtz v4, :cond_8

    move v1, v7

    move v4, v12

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    :goto_1
    cmpg-float v16, v2, v16

    if-gtz v16, :cond_9

    const/4 v6, 0x1

    goto :goto_2

    :cond_9
    cmpg-float v11, v2, v11

    if-gtz v11, :cond_a

    move v2, v9

    move v6, v15

    goto :goto_2

    :cond_a
    cmpg-float v9, v2, v10

    if-gtz v9, :cond_b

    move v2, v6

    move v6, v13

    goto :goto_2

    :cond_b
    cmpg-float v6, v2, v6

    if-gtz v6, :cond_c

    move v2, v7

    move v6, v12

    goto :goto_2

    :cond_c
    const/4 v6, 0x0

    .line 1391
    :goto_2
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1393
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move/from16 v16, v8

    .line 1394
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1395
    instance-of v14, v8, Lcom/metamoji/cm/RectEx;

    if-eqz v14, :cond_15

    .line 1396
    check-cast v8, Lcom/metamoji/cm/RectEx;

    .line 1397
    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v14

    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    invoke-static {v14, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v7, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v4, v15, :cond_f

    if-eq v4, v13, :cond_e

    if-eq v4, v12, :cond_d

    goto :goto_4

    .line 1408
    :cond_d
    iget v3, v8, Lcom/metamoji/cm/RectEx;->width:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_10

    .line 1409
    iget v1, v8, Lcom/metamoji/cm/RectEx;->width:F

    goto :goto_4

    .line 1405
    :cond_e
    iget v3, v8, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v1, v3

    goto :goto_4

    .line 1400
    :cond_f
    iget v3, v8, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v3, v1, v3

    if-lez v3, :cond_10

    .line 1401
    iget v1, v8, Lcom/metamoji/cm/RectEx;->width:F

    :cond_10
    :goto_4
    if-eq v6, v15, :cond_13

    if-eq v6, v13, :cond_12

    if-eq v6, v12, :cond_11

    goto :goto_5

    .line 1425
    :cond_11
    iget v3, v8, Lcom/metamoji/cm/RectEx;->height:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_14

    .line 1426
    iget v2, v8, Lcom/metamoji/cm/RectEx;->height:F

    goto :goto_5

    .line 1422
    :cond_12
    iget v3, v8, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr v2, v3

    goto :goto_5

    .line 1417
    :cond_13
    iget v3, v8, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_14

    .line 1418
    iget v2, v8, Lcom/metamoji/cm/RectEx;->height:F

    :cond_14
    :goto_5
    add-int/lit8 v10, v10, 0x1

    :cond_15
    move/from16 v8, v16

    goto :goto_3

    :cond_16
    move/from16 v16, v8

    if-ne v4, v15, :cond_17

    if-lez v10, :cond_17

    int-to-float v3, v10

    div-float/2addr v1, v3

    :cond_17
    if-ne v6, v15, :cond_18

    if-lez v10, :cond_18

    int-to-float v3, v10

    div-float/2addr v2, v3

    :cond_18
    div-float v3, v1, v16

    div-float v8, v2, v16

    const/4 v9, 0x1

    if-eq v4, v9, :cond_1a

    if-ne v6, v9, :cond_19

    goto :goto_6

    :cond_19
    const/4 v14, 0x0

    goto :goto_7

    :cond_1a
    :goto_6
    const/4 v14, 0x1

    .line 1444
    :goto_7
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 1446
    sget-object v11, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    if-eqz v14, :cond_1b

    .line 1448
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/cm/RectEx;

    .line 1450
    :cond_1b
    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    const/4 v13, 0x1

    if-ne v4, v13, :cond_1c

    .line 1453
    iget v15, v11, Lcom/metamoji/cm/RectEx;->x:F

    .line 1454
    iget v13, v11, Lcom/metamoji/cm/RectEx;->width:F

    goto :goto_9

    .line 1456
    :cond_1c
    iget v13, v12, Landroid/graphics/PointF;->x:F

    sub-float v15, v13, v3

    move v13, v1

    :goto_9
    const/4 v0, 0x1

    if-ne v6, v0, :cond_1d

    .line 1460
    iget v12, v11, Lcom/metamoji/cm/RectEx;->y:F

    .line 1461
    iget v11, v11, Lcom/metamoji/cm/RectEx;->height:F

    goto :goto_a

    .line 1463
    :cond_1d
    iget v11, v12, Landroid/graphics/PointF;->y:F

    sub-float v12, v11, v8

    move v11, v2

    .line 1466
    :goto_a
    invoke-static {v15, v12, v13, v11}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    goto :goto_8

    :cond_1e
    return-object v5
.end method

.method public static resizeValueForRect(Lcom/metamoji/cm/RectEx;DIDDZ)D
    .locals 31

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p6

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-le v1, v7, :cond_0

    const/4 v0, 0x0

    .line 1509
    invoke-static {v6, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-wide v4

    .line 1512
    :cond_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v12, p1, v10

    move-wide/from16 v16, v4

    const/4 v6, 0x2

    const-wide v19, 0x4046800000000000L    # 45.0

    const/4 v13, 0x1

    if-ltz v12, :cond_1

    cmpg-double v12, p1, v19

    if-gtz v12, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    :cond_1
    cmpl-double v12, p1, v19

    const-wide v19, 0x4056800000000000L    # 90.0

    if-lez v12, :cond_2

    cmpg-double v12, p1, v19

    if-gez v12, :cond_2

    move v12, v13

    goto :goto_0

    :cond_2
    cmpl-double v12, p1, v19

    const-wide v19, 0x4060e00000000000L    # 135.0

    if-ltz v12, :cond_3

    cmpg-double v12, p1, v19

    if-gez v12, :cond_3

    move v12, v6

    goto :goto_0

    :cond_3
    cmpl-double v12, p1, v19

    const-wide v19, 0x4066800000000000L    # 180.0

    if-ltz v12, :cond_4

    cmpg-double v12, p1, v19

    if-gez v12, :cond_4

    const/4 v12, 0x3

    goto :goto_0

    :cond_4
    cmpl-double v12, p1, v19

    const-wide v19, 0x406c200000000000L    # 225.0

    if-ltz v12, :cond_5

    cmpg-double v12, p1, v19

    if-gtz v12, :cond_5

    const/4 v12, 0x4

    goto :goto_0

    :cond_5
    cmpl-double v12, p1, v19

    const-wide v19, 0x4070e00000000000L    # 270.0

    if-lez v12, :cond_6

    cmpg-double v12, p1, v19

    if-gez v12, :cond_6

    move v12, v7

    goto :goto_0

    :cond_6
    cmpl-double v12, p1, v19

    if-ltz v12, :cond_7

    const-wide v19, 0x4073b00000000000L    # 315.0

    cmpg-double v12, p1, v19

    if-gez v12, :cond_7

    const/4 v12, 0x6

    goto :goto_0

    :cond_7
    const/4 v12, 0x7

    .line 1531
    :goto_0
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v14

    move-wide/from16 v19, v10

    float-to-double v10, v14

    .line 1532
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v14

    move-wide/from16 v21, v8

    float-to-double v7, v14

    .line 1533
    iget v9, v0, Lcom/metamoji/cm/RectEx;->width:F

    float-to-double v4, v9

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    div-double v4, v4, v23

    .line 1534
    iget v9, v0, Lcom/metamoji/cm/RectEx;->height:F

    float-to-double v14, v9

    div-double v25, v14, v23

    .line 1535
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->sin(D)D

    move-result-wide v27

    .line 1536
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    if-eqz v1, :cond_15

    if-eq v1, v13, :cond_11

    if-eq v1, v6, :cond_10

    const/4 v9, 0x3

    if-eq v1, v9, :cond_c

    const/4 v14, 0x4

    if-eq v1, v14, :cond_8

    move-wide/from16 v29, v7

    move-wide/from16 p1, v10

    const/4 v0, 0x6

    move-wide/from16 v6, v29

    goto/16 :goto_6

    :cond_8
    if-eqz v12, :cond_b

    if-eq v12, v13, :cond_b

    if-eq v12, v6, :cond_a

    if-eq v12, v9, :cond_a

    if-eq v12, v14, :cond_9

    const/4 v9, 0x5

    if-eq v12, v9, :cond_9

    .line 1614
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v9

    float-to-double v14, v9

    sub-double/2addr v14, v10

    mul-double v14, v14, v27

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    move-wide/from16 v29, v7

    float-to-double v6, v0

    sub-double v6, v6, v29

    mul-double v6, v6, v21

    add-double/2addr v14, v6

    add-double v14, v14, v29

    goto :goto_2

    :cond_9
    move-wide/from16 v29, v7

    .line 1611
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v10

    mul-double v6, v6, v27

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_1

    :cond_a
    move-wide/from16 v29, v7

    .line 1607
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v10

    mul-double v6, v6, v27

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_1

    :cond_b
    move-wide/from16 v29, v7

    .line 1603
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v10

    mul-double v6, v6, v27

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    :goto_1
    float-to-double v14, v0

    sub-double v14, v14, v29

    mul-double v14, v14, v21

    add-double/2addr v6, v14

    add-double v14, v6, v29

    :goto_2
    move-wide/from16 p1, v10

    move-wide v6, v14

    goto :goto_4

    :cond_c
    move-wide/from16 v29, v7

    if-eqz v12, :cond_f

    if-eq v12, v13, :cond_f

    const/4 v9, 0x2

    if-eq v12, v9, :cond_e

    const/4 v6, 0x3

    if-eq v12, v6, :cond_e

    const/4 v14, 0x4

    if-eq v12, v14, :cond_d

    const/4 v6, 0x5

    if-eq v12, v6, :cond_d

    .line 1595
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v10

    mul-double v6, v6, v27

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    move-wide/from16 p1, v10

    goto :goto_3

    :cond_d
    move-wide/from16 p1, v10

    .line 1592
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double v6, v6, p1

    mul-double v6, v6, v27

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_3

    :cond_e
    move-wide/from16 p1, v10

    .line 1588
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double v6, v6, p1

    mul-double v6, v6, v27

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_3

    :cond_f
    move-wide/from16 p1, v10

    .line 1584
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double v6, v6, p1

    mul-double v6, v6, v27

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    :goto_3
    float-to-double v9, v0

    sub-double v9, v9, v29

    mul-double v9, v9, v21

    add-double/2addr v6, v9

    add-double v6, v6, v29

    goto :goto_4

    :cond_10
    move-wide/from16 v29, v7

    move-wide/from16 p1, v10

    move-wide/from16 v6, p1

    :goto_4
    const/4 v0, 0x6

    goto/16 :goto_6

    :cond_11
    move-wide/from16 v29, v7

    move-wide/from16 p1, v10

    if-eqz v12, :cond_14

    if-eq v12, v13, :cond_14

    const/4 v9, 0x2

    if-eq v12, v9, :cond_13

    const/4 v6, 0x3

    if-eq v12, v6, :cond_13

    const/4 v14, 0x4

    if-eq v12, v14, :cond_12

    const/4 v6, 0x5

    if-eq v12, v6, :cond_12

    .line 1573
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double v6, v6, p1

    mul-double v6, v6, v21

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto/16 :goto_5

    .line 1570
    :cond_12
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double v6, v6, p1

    mul-double v6, v6, v21

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_5

    .line 1566
    :cond_13
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double v6, v6, p1

    mul-double v6, v6, v21

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_5

    .line 1562
    :cond_14
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double v6, v6, p1

    mul-double v6, v6, v21

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_5

    :cond_15
    move-wide/from16 v29, v7

    move-wide/from16 p1, v10

    if-eqz v12, :cond_18

    if-eq v12, v13, :cond_18

    const/4 v9, 0x2

    if-eq v12, v9, :cond_17

    const/4 v6, 0x3

    if-eq v12, v6, :cond_17

    const/4 v14, 0x4

    if-eq v12, v14, :cond_16

    const/4 v6, 0x5

    if-eq v12, v6, :cond_16

    .line 1554
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double v6, v6, p1

    mul-double v6, v6, v21

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_5

    .line 1551
    :cond_16
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double v6, v6, p1

    mul-double v6, v6, v21

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_5

    .line 1547
    :cond_17
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double v6, v6, p1

    mul-double v6, v6, v21

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_5

    .line 1543
    :cond_18
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double v6, v6, p1

    mul-double v6, v6, v21

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    :goto_5
    float-to-double v10, v0

    sub-double v10, v10, v29

    mul-double v10, v10, v27

    sub-double/2addr v6, v10

    add-double v6, v6, p1

    goto/16 :goto_4

    .line 1622
    :goto_6
    invoke-static {v6, v7, v2, v3, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v8

    if-eqz v8, :cond_19

    return-wide v16

    :cond_19
    sub-double v6, v2, v6

    sub-double v10, v2, p4

    mul-double/2addr v6, v10

    cmpg-double v0, v6, v19

    if-gez v0, :cond_1a

    mul-double v6, v2, v23

    sub-double v6, v6, p4

    move/from16 v18, v13

    goto :goto_7

    :cond_1a
    move-wide/from16 v6, p4

    const/16 v18, 0x0

    :goto_7
    sub-double/2addr v6, v2

    const/4 v9, 0x2

    if-gt v1, v9, :cond_1b

    sub-double v10, p1, v2

    goto :goto_8

    :cond_1b
    sub-double v10, v29, v2

    :goto_8
    if-eqz v1, :cond_23

    if-eq v1, v13, :cond_22

    const/4 v9, 0x3

    if-eq v1, v9, :cond_1d

    const/4 v14, 0x4

    if-eq v1, v14, :cond_1c

    :goto_9
    move-wide/from16 v1, v19

    const/4 v0, 0x6

    goto/16 :goto_20

    :cond_1c
    packed-switch v12, :pswitch_data_0

    goto :goto_d

    :pswitch_0
    if-eqz p8, :cond_20

    goto :goto_f

    :pswitch_1
    if-eqz p8, :cond_21

    goto :goto_10

    :pswitch_2
    if-eqz p8, :cond_1e

    goto :goto_a

    :pswitch_3
    if-eqz p8, :cond_1f

    goto :goto_b

    :cond_1d
    packed-switch v12, :pswitch_data_1

    :cond_1e
    :pswitch_4
    mul-double v27, v27, v4

    sub-double v6, v6, v27

    goto :goto_12

    :pswitch_5
    if-eqz p8, :cond_1e

    :goto_a
    mul-double v21, v21, v25

    add-double v6, v6, v21

    goto :goto_c

    :pswitch_6
    if-eqz p8, :cond_1f

    :goto_b
    mul-double v21, v21, v25

    sub-double v6, v6, v21

    :goto_c
    mul-double v27, v27, v4

    goto :goto_16

    :cond_1f
    :pswitch_7
    mul-double v27, v27, v4

    sub-double v6, v6, v27

    goto :goto_e

    :cond_20
    :goto_d
    :pswitch_8
    mul-double v27, v27, v4

    add-double v6, v6, v27

    :goto_e
    mul-double v21, v21, v25

    goto :goto_19

    :pswitch_9
    if-eqz p8, :cond_20

    :goto_f
    mul-double v21, v21, v25

    sub-double v6, v6, v21

    goto :goto_11

    :pswitch_a
    if-eqz p8, :cond_21

    :goto_10
    mul-double v21, v21, v25

    add-double v6, v6, v21

    :goto_11
    mul-double v27, v27, v4

    goto :goto_1d

    :cond_21
    :pswitch_b
    mul-double v27, v27, v4

    add-double v6, v6, v27

    :goto_12
    mul-double v21, v21, v25

    goto :goto_1f

    :cond_22
    packed-switch v12, :pswitch_data_2

    goto :goto_17

    :pswitch_c
    if-eqz p8, :cond_26

    goto :goto_1a

    :pswitch_d
    if-eqz p8, :cond_27

    goto :goto_1b

    :pswitch_e
    if-eqz p8, :cond_24

    goto :goto_13

    :pswitch_f
    if-eqz p8, :cond_25

    goto :goto_14

    :cond_23
    packed-switch v12, :pswitch_data_3

    :cond_24
    :pswitch_10
    mul-double v27, v27, v25

    sub-double v6, v6, v27

    goto :goto_1e

    :pswitch_11
    if-eqz p8, :cond_24

    :goto_13
    mul-double v21, v21, v4

    add-double v6, v6, v21

    goto :goto_15

    :pswitch_12
    if-eqz p8, :cond_25

    :goto_14
    mul-double v21, v21, v4

    sub-double v6, v6, v21

    :goto_15
    mul-double v27, v27, v25

    :goto_16
    add-double v10, v10, v27

    goto :goto_9

    :cond_25
    :pswitch_13
    mul-double v27, v27, v25

    sub-double v6, v6, v27

    goto :goto_18

    :cond_26
    :goto_17
    :pswitch_14
    mul-double v27, v27, v25

    add-double v6, v6, v27

    :goto_18
    mul-double v21, v21, v4

    :goto_19
    add-double v10, v10, v21

    goto/16 :goto_9

    :pswitch_15
    if-eqz p8, :cond_26

    :goto_1a
    mul-double v21, v21, v4

    sub-double v6, v6, v21

    goto :goto_1c

    :pswitch_16
    if-eqz p8, :cond_27

    :goto_1b
    mul-double v21, v21, v4

    add-double v6, v6, v21

    :goto_1c
    mul-double v27, v27, v25

    :goto_1d
    sub-double v10, v10, v27

    goto/16 :goto_9

    :cond_27
    :pswitch_17
    mul-double v27, v27, v25

    add-double v6, v6, v27

    :goto_1e
    mul-double v21, v21, v4

    :goto_1f
    sub-double v10, v10, v21

    goto/16 :goto_9

    .line 1860
    :goto_20
    invoke-static {v10, v11, v1, v2, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v0

    if-eqz v0, :cond_28

    return-wide v16

    :cond_28
    if-eqz v18, :cond_29

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    mul-double/2addr v6, v0

    :cond_29
    div-double/2addr v6, v10

    return-wide v6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_b
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_17
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method public static resizeValueForTotalHeight(Lcom/metamoji/cm/SizeF;DDZ)Lcom/metamoji/cm/SizeF;
    .locals 30

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 2147
    iget v5, v0, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v5, :cond_10

    iget v5, v0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v5

    if-nez v5, :cond_10

    sget-object v5, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeZero:Lcom/metamoji/cm/SizeF;

    invoke-static {v0, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeEqualToSize(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Z

    move-result v5

    if-nez v5, :cond_10

    const-wide v7, 0x4046800000000000L    # 45.0

    const/4 v5, 0x6

    .line 2148
    invoke-static {v1, v2, v7, v8, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v9

    if-nez v9, :cond_10

    const-wide v9, 0x4060e00000000000L    # 135.0

    .line 2149
    invoke-static {v1, v2, v9, v10, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v11

    if-nez v11, :cond_10

    const-wide v11, 0x406c200000000000L    # 225.0

    .line 2150
    invoke-static {v1, v2, v11, v12, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v13

    if-nez v13, :cond_10

    const-wide v13, 0x4073b00000000000L    # 315.0

    .line 2151
    invoke-static {v1, v2, v13, v14, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v15

    if-eqz v15, :cond_0

    goto/16 :goto_9

    :cond_0
    move-wide v15, v7

    const-wide/16 v7, 0x0

    .line 2154
    invoke-static {v1, v2, v7, v8, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v7

    if-nez v7, :cond_e

    move-wide/from16 v17, v9

    const/4 v7, 0x0

    const-wide v8, 0x4066800000000000L    # 180.0

    .line 2155
    invoke-static {v1, v2, v8, v9, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v7

    goto/16 :goto_7

    :cond_1
    move v10, v7

    move-wide/from16 v19, v8

    const-wide v7, 0x4056800000000000L    # 90.0

    .line 2157
    invoke-static {v1, v2, v7, v8, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v9

    if-nez v9, :cond_c

    move-wide/from16 v21, v7

    const-wide v7, 0x4070e00000000000L    # 270.0

    .line 2158
    invoke-static {v1, v2, v7, v8, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_5

    .line 2161
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 2162
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 2163
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    mul-double v23, v23, v9

    mul-double v23, v23, v9

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    sub-double v23, v23, v25

    div-double v27, v25, v9

    sub-double v27, v27, v9

    div-double v25, v25, v5

    sub-double v25, v25, v5

    cmpg-double v21, v1, v21

    const/16 v22, 0x1

    const/16 v29, 0x0

    if-gez v21, :cond_4

    cmpg-double v1, v1, v15

    if-gez v1, :cond_3

    .line 2171
    iget v1, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v1, v1

    mul-double/2addr v1, v9

    iget v7, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v7, v7

    mul-double v7, v7, v25

    add-double/2addr v1, v7

    move/from16 v22, v29

    goto/16 :goto_3

    .line 2173
    :cond_3
    iget v1, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v1, v1

    mul-double v1, v1, v27

    iget v7, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v7, v7

    mul-double/2addr v7, v5

    add-double/2addr v1, v7

    goto :goto_3

    :cond_4
    cmpg-double v15, v1, v19

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    if-gez v15, :cond_6

    cmpg-double v1, v1, v17

    if-gez v1, :cond_5

    .line 2178
    iget v1, v0, Lcom/metamoji/cm/SizeF;->height:F

    neg-float v1, v1

    float-to-double v1, v1

    mul-double v1, v1, v27

    iget v7, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v7, v7

    mul-double/2addr v7, v5

    add-double/2addr v1, v7

    goto :goto_0

    .line 2181
    :cond_5
    iget v1, v0, Lcom/metamoji/cm/SizeF;->height:F

    neg-float v1, v1

    float-to-double v1, v1

    mul-double/2addr v1, v9

    iget v7, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v7, v7

    mul-double v7, v7, v25

    add-double/2addr v1, v7

    move/from16 v22, v29

    :goto_0
    mul-double v9, v9, v19

    goto :goto_3

    :cond_6
    cmpg-double v7, v1, v7

    if-gez v7, :cond_8

    cmpg-double v1, v1, v11

    if-gez v1, :cond_7

    .line 2186
    iget v1, v0, Lcom/metamoji/cm/SizeF;->height:F

    neg-float v1, v1

    float-to-double v1, v1

    mul-double/2addr v1, v9

    iget v7, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v7, v7

    mul-double v7, v7, v25

    sub-double/2addr v1, v7

    move/from16 v22, v29

    goto :goto_1

    .line 2188
    :cond_7
    iget v1, v0, Lcom/metamoji/cm/SizeF;->height:F

    neg-float v1, v1

    float-to-double v1, v1

    mul-double v1, v1, v27

    iget v7, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v7, v7

    mul-double/2addr v7, v5

    sub-double/2addr v1, v7

    :goto_1
    mul-double v9, v9, v19

    goto :goto_2

    :cond_8
    cmpg-double v1, v1, v13

    if-gez v1, :cond_9

    .line 2195
    iget v1, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v1, v1

    mul-double v1, v1, v27

    iget v7, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v7, v7

    mul-double/2addr v7, v5

    sub-double/2addr v1, v7

    goto :goto_2

    .line 2198
    :cond_9
    iget v1, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v1, v1

    mul-double/2addr v1, v9

    iget v7, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v7, v7

    mul-double v7, v7, v25

    sub-double/2addr v1, v7

    move/from16 v22, v29

    :goto_2
    mul-double v5, v5, v19

    :goto_3
    cmpl-double v7, v3, v1

    if-ltz v7, :cond_a

    const-wide v3, 0x3fefae147ae147aeL    # 0.99

    mul-double/2addr v1, v3

    goto :goto_4

    :cond_a
    move-wide v1, v3

    .line 2205
    :goto_4
    iget v3, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v3, v3

    mul-double/2addr v3, v9

    iget v7, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v7, v7

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    mul-double v7, v3, v9

    mul-double v11, v1, v5

    sub-double/2addr v7, v11

    .line 2206
    iget v11, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v11, v11

    mul-double v11, v11, v23

    div-double/2addr v7, v11

    double-to-float v7, v7

    mul-double/2addr v1, v9

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    .line 2207
    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v3, v0

    mul-double v3, v3, v23

    div-double/2addr v1, v3

    double-to-float v0, v1

    if-eqz p5, :cond_b

    if-eqz v22, :cond_b

    .line 2209
    invoke-static {v0, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0

    .line 2211
    :cond_b
    invoke-static {v7, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0

    .line 2159
    :cond_c
    :goto_5
    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v1, v1, v10

    if-lez v1, :cond_d

    double-to-float v1, v3

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr v1, v0

    goto :goto_6

    :cond_d
    move v1, v6

    :goto_6
    invoke-static {v6, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0

    :cond_e
    const/4 v10, 0x0

    .line 2156
    :goto_7
    iget v1, v0, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v1, v1, v10

    if-lez v1, :cond_f

    double-to-float v1, v3

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v1, v0

    goto :goto_8

    :cond_f
    move v1, v6

    :goto_8
    invoke-static {v6, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0

    .line 2152
    :cond_10
    :goto_9
    invoke-static {v6, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0
.end method

.method public static resizeValueForTotalWidth(Lcom/metamoji/cm/SizeF;DDZ)Lcom/metamoji/cm/SizeF;
    .locals 30

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 2075
    iget v5, v0, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v5, :cond_10

    iget v5, v0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v5

    if-nez v5, :cond_10

    sget-object v5, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeZero:Lcom/metamoji/cm/SizeF;

    invoke-static {v0, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeEqualToSize(Lcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;)Z

    move-result v5

    if-nez v5, :cond_10

    const-wide v7, 0x4046800000000000L    # 45.0

    const/4 v5, 0x6

    .line 2076
    invoke-static {v1, v2, v7, v8, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v9

    if-nez v9, :cond_10

    const-wide v9, 0x4060e00000000000L    # 135.0

    .line 2077
    invoke-static {v1, v2, v9, v10, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v11

    if-nez v11, :cond_10

    const-wide v11, 0x406c200000000000L    # 225.0

    .line 2078
    invoke-static {v1, v2, v11, v12, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v13

    if-nez v13, :cond_10

    const-wide v13, 0x4073b00000000000L    # 315.0

    .line 2079
    invoke-static {v1, v2, v13, v14, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v15

    if-eqz v15, :cond_0

    goto/16 :goto_9

    :cond_0
    move-wide v15, v7

    const-wide/16 v7, 0x0

    .line 2082
    invoke-static {v1, v2, v7, v8, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v7

    if-nez v7, :cond_e

    move-wide/from16 v17, v9

    const/4 v7, 0x0

    const-wide v8, 0x4066800000000000L    # 180.0

    .line 2083
    invoke-static {v1, v2, v8, v9, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v7

    goto/16 :goto_7

    :cond_1
    move v10, v7

    move-wide/from16 v19, v8

    const-wide v7, 0x4056800000000000L    # 90.0

    .line 2085
    invoke-static {v1, v2, v7, v8, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v9

    if-nez v9, :cond_c

    move-wide/from16 v21, v7

    const-wide v7, 0x4070e00000000000L    # 270.0

    .line 2086
    invoke-static {v1, v2, v7, v8, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_5

    .line 2089
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 2090
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    .line 2091
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    mul-double v23, v23, v9

    mul-double v23, v23, v9

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    sub-double v23, v23, v25

    div-double v27, v25, v9

    sub-double v27, v27, v9

    div-double v25, v25, v5

    sub-double v25, v25, v5

    cmpg-double v21, v1, v21

    const/16 v22, 0x1

    const/16 v29, 0x0

    if-gez v21, :cond_4

    cmpg-double v1, v1, v15

    if-gez v1, :cond_3

    .line 2099
    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v1, v1

    mul-double/2addr v1, v9

    iget v7, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v7, v7

    mul-double v7, v7, v25

    add-double/2addr v1, v7

    move/from16 v22, v29

    goto/16 :goto_3

    .line 2101
    :cond_3
    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v1, v1

    mul-double v1, v1, v27

    iget v7, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v7, v7

    mul-double/2addr v7, v5

    add-double/2addr v1, v7

    goto :goto_3

    :cond_4
    cmpg-double v15, v1, v19

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    if-gez v15, :cond_6

    cmpg-double v1, v1, v17

    if-gez v1, :cond_5

    .line 2106
    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    neg-float v1, v1

    float-to-double v1, v1

    mul-double v1, v1, v27

    iget v7, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v7, v7

    mul-double/2addr v7, v5

    add-double/2addr v1, v7

    goto :goto_0

    .line 2109
    :cond_5
    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    neg-float v1, v1

    float-to-double v1, v1

    mul-double/2addr v1, v9

    iget v7, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v7, v7

    mul-double v7, v7, v25

    add-double/2addr v1, v7

    move/from16 v22, v29

    :goto_0
    mul-double v9, v9, v19

    goto :goto_3

    :cond_6
    cmpg-double v7, v1, v7

    if-gez v7, :cond_8

    cmpg-double v1, v1, v11

    if-gez v1, :cond_7

    .line 2114
    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    neg-float v1, v1

    float-to-double v1, v1

    mul-double/2addr v1, v9

    iget v7, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v7, v7

    mul-double v7, v7, v25

    sub-double/2addr v1, v7

    move/from16 v22, v29

    goto :goto_1

    .line 2116
    :cond_7
    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    neg-float v1, v1

    float-to-double v1, v1

    mul-double v1, v1, v27

    iget v7, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v7, v7

    mul-double/2addr v7, v5

    sub-double/2addr v1, v7

    :goto_1
    mul-double v9, v9, v19

    goto :goto_2

    :cond_8
    cmpg-double v1, v1, v13

    if-gez v1, :cond_9

    .line 2123
    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v1, v1

    mul-double v1, v1, v27

    iget v7, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v7, v7

    mul-double/2addr v7, v5

    sub-double/2addr v1, v7

    goto :goto_2

    .line 2126
    :cond_9
    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v1, v1

    mul-double/2addr v1, v9

    iget v7, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v7, v7

    mul-double v7, v7, v25

    sub-double/2addr v1, v7

    move/from16 v22, v29

    :goto_2
    mul-double v5, v5, v19

    :goto_3
    cmpl-double v7, v3, v1

    if-ltz v7, :cond_a

    const-wide v3, 0x3fefae147ae147aeL    # 0.99

    mul-double/2addr v1, v3

    double-to-float v1, v1

    float-to-double v1, v1

    goto :goto_4

    :cond_a
    move-wide v1, v3

    .line 2133
    :goto_4
    iget v3, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v3, v3

    mul-double/2addr v3, v5

    iget v7, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v7, v7

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    mul-double v7, v1, v9

    mul-double v11, v3, v5

    sub-double/2addr v7, v11

    .line 2134
    iget v11, v0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v11, v11

    mul-double v11, v11, v23

    div-double/2addr v7, v11

    double-to-float v7, v7

    mul-double/2addr v3, v9

    mul-double/2addr v1, v5

    sub-double/2addr v3, v1

    .line 2135
    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v0, v0

    mul-double v0, v0, v23

    div-double/2addr v3, v0

    double-to-float v0, v3

    if-eqz p5, :cond_b

    if-eqz v22, :cond_b

    .line 2137
    invoke-static {v0, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0

    .line 2139
    :cond_b
    invoke-static {v7, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0

    .line 2087
    :cond_c
    :goto_5
    iget v1, v0, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v1, v1, v10

    if-lez v1, :cond_d

    double-to-float v1, v3

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v1, v0

    goto :goto_6

    :cond_d
    move v1, v6

    :goto_6
    invoke-static {v1, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0

    :cond_e
    const/4 v10, 0x0

    .line 2084
    :goto_7
    iget v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v1, v1, v10

    if-lez v1, :cond_f

    double-to-float v1, v3

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr v1, v0

    goto :goto_8

    :cond_f
    move v1, v6

    :goto_8
    invoke-static {v1, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0

    .line 2080
    :cond_10
    :goto_9
    invoke-static {v6, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0
.end method

.method public static rotationWithAngleInDegrees(FLandroid/graphics/PointF;)Landroid/graphics/Matrix;
    .locals 2

    .line 863
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 864
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0, v1, p1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    return-object v0
.end method

.method public static rotationWithAngleInRadians(FLandroid/graphics/PointF;)Landroid/graphics/Matrix;
    .locals 2

    float-to-double v0, p0

    .line 868
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->rotationWithAngleInDegrees(FLandroid/graphics/PointF;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static scale(FFLandroid/graphics/PointF;)Landroid/graphics/Matrix;
    .locals 2

    .line 858
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 859
    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0, p1, v1, p2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    return-object v0
.end method

.method public static scaleValueForRect(Lcom/metamoji/cm/RectEx;DIDD)D
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-wide/from16 v2, p6

    const/4 v4, 0x5

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    const/4 v7, 0x0

    if-le v1, v4, :cond_0

    const/4 v0, 0x0

    .line 1885
    invoke-static {v7, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-wide v5

    .line 1888
    :cond_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v4, p1, v10

    const-wide v12, 0x4056800000000000L    # 90.0

    move-wide/from16 v16, v5

    const/4 v5, 0x1

    if-ltz v4, :cond_1

    cmpg-double v4, p1, v12

    if-gez v4, :cond_1

    move v4, v7

    goto :goto_0

    :cond_1
    cmpl-double v4, p1, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    if-ltz v4, :cond_2

    cmpg-double v4, p1, v12

    if-gez v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    cmpl-double v4, p1, v12

    if-ltz v4, :cond_3

    const-wide v12, 0x4070e00000000000L    # 270.0

    cmpg-double v4, p1, v12

    if-gez v4, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    .line 1899
    :goto_0
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v12, v6

    .line 1900
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    move-wide/from16 v19, v8

    float-to-double v7, v6

    .line 1901
    iget v6, v0, Lcom/metamoji/cm/RectEx;->width:F

    move-wide/from16 v21, v10

    float-to-double v10, v6

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    div-double v10, v10, v23

    .line 1902
    iget v6, v0, Lcom/metamoji/cm/RectEx;->height:F

    float-to-double v14, v6

    div-double v14, v14, v23

    .line 1903
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    .line 1904
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    const/4 v6, 0x4

    if-eqz v1, :cond_11

    if-eq v1, v5, :cond_d

    const/4 v9, 0x2

    if-eq v1, v9, :cond_c

    const/4 v9, 0x3

    if-eq v1, v9, :cond_8

    if-eq v1, v6, :cond_4

    move-wide/from16 v27, v7

    move-wide/from16 v6, v27

    goto/16 :goto_3

    :cond_4
    if-eqz v4, :cond_7

    if-eq v4, v5, :cond_6

    const/4 v9, 0x2

    if-eq v4, v9, :cond_5

    .line 1970
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v9

    move-wide/from16 v27, v7

    float-to-double v6, v9

    sub-double/2addr v6, v12

    mul-double v6, v6, v25

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_1

    :cond_5
    move-wide/from16 v27, v7

    .line 1967
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v12

    mul-double v6, v6, v25

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_1

    :cond_6
    move-wide/from16 v27, v7

    .line 1964
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v12

    mul-double v6, v6, v25

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_1

    :cond_7
    move-wide/from16 v27, v7

    .line 1961
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v12

    mul-double v6, v6, v25

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_1

    :cond_8
    move-wide/from16 v27, v7

    if-eqz v4, :cond_b

    if-eq v4, v5, :cond_a

    const/4 v9, 0x2

    if-eq v4, v9, :cond_9

    .line 1954
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v12

    mul-double v6, v6, v25

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_1

    .line 1951
    :cond_9
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v12

    mul-double v6, v6, v25

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_1

    .line 1948
    :cond_a
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v12

    mul-double v6, v6, v25

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_1

    .line 1945
    :cond_b
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v12

    mul-double v6, v6, v25

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    :goto_1
    float-to-double v8, v0

    sub-double v8, v8, v27

    mul-double v8, v8, v19

    add-double/2addr v6, v8

    add-double v6, v6, v27

    goto/16 :goto_3

    :cond_c
    move-wide/from16 v27, v7

    move-wide v6, v12

    goto/16 :goto_3

    :cond_d
    move-wide/from16 v27, v7

    if-eqz v4, :cond_10

    if-eq v4, v5, :cond_f

    const/4 v9, 0x2

    if-eq v4, v9, :cond_e

    .line 1935
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v12

    mul-double v6, v6, v19

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_2

    .line 1932
    :cond_e
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v12

    mul-double v6, v6, v19

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_2

    .line 1929
    :cond_f
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v12

    mul-double v6, v6, v19

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_2

    .line 1926
    :cond_10
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v12

    mul-double v6, v6, v19

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_2

    :cond_11
    move-wide/from16 v27, v7

    if-eqz v4, :cond_14

    if-eq v4, v5, :cond_13

    const/4 v9, 0x2

    if-eq v4, v9, :cond_12

    .line 1919
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v12

    mul-double v6, v6, v19

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_2

    .line 1916
    :cond_12
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v12

    mul-double v6, v6, v19

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_2

    .line 1913
    :cond_13
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v12

    mul-double v6, v6, v19

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    goto :goto_2

    .line 1910
    :cond_14
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    float-to-double v6, v6

    sub-double/2addr v6, v12

    mul-double v6, v6, v19

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    :goto_2
    float-to-double v8, v0

    sub-double v8, v8, v27

    mul-double v8, v8, v25

    sub-double/2addr v6, v8

    add-double/2addr v6, v12

    :goto_3
    const/4 v0, 0x6

    .line 1978
    invoke-static {v6, v7, v2, v3, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v8

    if-eqz v8, :cond_15

    return-wide v16

    :cond_15
    sub-double v6, v2, v6

    sub-double v8, v2, p4

    mul-double/2addr v6, v8

    cmpg-double v6, v6, v21

    if-gez v6, :cond_16

    mul-double v6, v2, v23

    sub-double v6, v6, p4

    move/from16 v18, v5

    goto :goto_4

    :cond_16
    move-wide/from16 v6, p4

    const/16 v18, 0x0

    :goto_4
    sub-double/2addr v6, v2

    const/4 v9, 0x2

    if-gt v1, v9, :cond_17

    sub-double/2addr v12, v2

    goto :goto_5

    :cond_17
    sub-double v12, v27, v2

    :goto_5
    if-eqz v1, :cond_1f

    if-eq v1, v5, :cond_1e

    const/4 v9, 0x3

    if-eq v1, v9, :cond_19

    const/4 v2, 0x4

    if-eq v1, v2, :cond_18

    :goto_6
    move-wide/from16 v1, v21

    goto :goto_f

    :cond_18
    if-eqz v4, :cond_1b

    if-eq v4, v5, :cond_1a

    const/4 v9, 0x2

    if-eq v4, v9, :cond_1d

    goto :goto_8

    :cond_19
    if-eqz v4, :cond_1d

    if-eq v4, v5, :cond_1c

    const/4 v9, 0x2

    if-eq v4, v9, :cond_1b

    :cond_1a
    mul-double v19, v19, v14

    sub-double v12, v12, v19

    goto :goto_7

    :cond_1b
    mul-double v19, v19, v14

    add-double v12, v12, v19

    :goto_7
    mul-double v25, v25, v10

    goto :goto_b

    :cond_1c
    :goto_8
    mul-double v19, v19, v14

    add-double v12, v12, v19

    goto :goto_9

    :cond_1d
    mul-double v19, v19, v14

    sub-double v12, v12, v19

    :goto_9
    mul-double v25, v25, v10

    goto :goto_e

    :cond_1e
    if-eqz v4, :cond_21

    if-eq v4, v5, :cond_20

    const/4 v9, 0x2

    if-eq v4, v9, :cond_23

    goto :goto_c

    :cond_1f
    if-eqz v4, :cond_23

    if-eq v4, v5, :cond_22

    const/4 v9, 0x2

    if-eq v4, v9, :cond_21

    :cond_20
    mul-double v19, v19, v10

    sub-double v12, v12, v19

    goto :goto_a

    :cond_21
    mul-double v19, v19, v10

    add-double v12, v12, v19

    :goto_a
    mul-double v25, v25, v14

    :goto_b
    add-double v12, v12, v25

    goto :goto_6

    :cond_22
    :goto_c
    mul-double v19, v19, v10

    add-double v12, v12, v19

    goto :goto_d

    :cond_23
    mul-double v19, v19, v10

    sub-double v12, v12, v19

    :goto_d
    mul-double v25, v25, v14

    :goto_e
    sub-double v12, v12, v25

    goto :goto_6

    .line 2056
    :goto_f
    invoke-static {v12, v13, v1, v2, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v0

    if-eqz v0, :cond_24

    return-wide v16

    :cond_24
    if-eqz v18, :cond_25

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    mul-double/2addr v6, v0

    :cond_25
    div-double/2addr v6, v12

    return-wide v6
.end method

.method public static scaleValueForSnapPositionValue(DDD)D
    .locals 1

    const/4 v0, 0x6

    .line 1482
    invoke-static {p2, p3, p4, p5, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 1483
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_0
    sub-double/2addr p0, p4

    sub-double/2addr p2, p4

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static solveCubicEquationWithCoefficients(DDDD[D)I
    .locals 21

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    const/4 v4, 0x6

    .line 2313
    invoke-static {v0, v1, v2, v3, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2314
    invoke-static/range {p2 .. p8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->solveQuadraticEquationWithCoefficients(DDD[D)I

    move-result v0

    return v0

    :cond_0
    div-double v5, p6, v0

    div-double v7, p4, v0

    div-double v0, p2, v0

    mul-double v9, v0, v0

    mul-double v11, v7, v0

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    div-double/2addr v11, v13

    sub-double/2addr v5, v11

    mul-double v11, v9, v0

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double/2addr v11, v15

    const-wide/high16 v17, 0x403b000000000000L    # 27.0

    div-double v11, v11, v17

    add-double/2addr v5, v11

    div-double/2addr v9, v13

    sub-double/2addr v7, v9

    div-double v9, v5, v15

    div-double v11, v7, v13

    mul-double v17, v9, v9

    mul-double v19, v11, v11

    mul-double v19, v19, v11

    move-wide/from16 p0, v13

    add-double v13, v17, v19

    neg-double v0, v0

    div-double v0, v0, p0

    .line 2326
    invoke-static {v13, v14, v2, v3, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v17

    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v20, 0x0

    if-eqz v17, :cond_2

    .line 2327
    invoke-static {v5, v6, v2, v3, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7, v8, v2, v3, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2328
    aput-wide v0, p8, v20

    return v19

    :cond_1
    neg-double v2, v9

    .line 2331
    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v2

    mul-double/2addr v15, v2

    add-double/2addr v15, v0

    .line 2332
    aput-wide v15, p8, v20

    sub-double/2addr v0, v2

    .line 2333
    aput-wide v0, p8, v19

    return v18

    :cond_2
    cmpg-double v2, v13, v2

    if-gez v2, :cond_5

    neg-double v2, v11

    .line 2337
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v2, v15

    mul-double/2addr v11, v2

    div-double/2addr v5, v11

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v5, v7

    if-lez v4, :cond_3

    :goto_0
    move-wide v5, v7

    goto :goto_1

    :cond_3
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    cmpg-double v4, v5, v7

    if-gez v4, :cond_4

    goto :goto_0

    .line 2344
    :cond_4
    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    div-double v4, v4, p0

    .line 2345
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v2

    add-double/2addr v6, v0

    aput-wide v6, p8, v20

    const-wide v6, 0x4000c15240000000L    # 2.094395160675049

    add-double/2addr v6, v4

    .line 2346
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v2

    add-double/2addr v6, v0

    aput-wide v6, p8, v19

    const-wide v6, 0x4010c15240000000L    # 4.188790321350098

    add-double/2addr v4, v6

    .line 2347
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    aput-wide v0, p8, v18

    const/4 v0, 0x3

    return v0

    :cond_5
    neg-double v2, v9

    .line 2351
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double v6, v2, v4

    .line 2352
    invoke-static {v6, v7}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v6

    add-double/2addr v0, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    aput-wide v0, p8, v20

    return v19
.end method

.method public static solveQuadraticEquationWithCoefficients(DDD[D)I
    .locals 16

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    const-wide/16 v6, 0x0

    const/4 v8, 0x6

    .line 2274
    invoke-static {v0, v1, v6, v7, v8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_1

    .line 2275
    invoke-static {v2, v3, v6, v7, v8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v0

    if-eqz v0, :cond_0

    return v11

    :cond_0
    neg-double v0, v4

    div-double/2addr v0, v2

    .line 2278
    aput-wide v0, p6, v11

    return v10

    :cond_1
    mul-double v12, v2, v2

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    mul-double/2addr v14, v0

    mul-double/2addr v14, v4

    sub-double/2addr v12, v14

    .line 2282
    invoke-static {v12, v13, v6, v7, v8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    if-eqz v4, :cond_2

    neg-double v2, v2

    mul-double/2addr v0, v8

    div-double/2addr v2, v0

    .line 2283
    aput-wide v2, p6, v11

    return v10

    :cond_2
    cmpl-double v4, v12, v6

    if-lez v4, :cond_3

    .line 2286
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v0, v8

    neg-double v2, v2

    add-double v6, v2, v4

    div-double/2addr v6, v0

    .line 2288
    aput-wide v6, p6, v11

    sub-double/2addr v2, v4

    div-double/2addr v2, v0

    .line 2289
    aput-wide v2, p6, v10

    const/4 v0, 0x2

    return v0

    :cond_3
    return v11
.end method

.method public static solveQuarticEquationWithCoefficients(DDDDD[D)I
    .locals 23

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    const/4 v4, 0x6

    .line 2377
    invoke-static {v0, v1, v2, v3, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2378
    invoke-static/range {p2 .. p10}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->solveCubicEquationWithCoefficients(DDDD[D)I

    move-result v0

    return v0

    :cond_0
    div-double v5, p8, v0

    div-double v7, p6, v0

    div-double v9, p4, v0

    div-double v0, p2, v0

    mul-double v11, v0, v0

    mul-double v13, v11, v0

    mul-double v15, v7, v0

    const-wide/high16 v17, 0x4010000000000000L    # 4.0

    div-double v15, v15, v17

    sub-double/2addr v5, v15

    mul-double v15, v9, v11

    const-wide/high16 v19, 0x4030000000000000L    # 16.0

    div-double v15, v15, v19

    add-double/2addr v5, v15

    mul-double v15, v13, v0

    const-wide/high16 v19, 0x4008000000000000L    # 3.0

    mul-double v15, v15, v19

    const-wide/high16 v21, 0x4070000000000000L    # 256.0

    div-double v15, v15, v21

    sub-double/2addr v5, v15

    mul-double v15, v9, v0

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    div-double v15, v15, v21

    sub-double/2addr v7, v15

    const-wide/high16 v15, 0x4020000000000000L    # 8.0

    div-double/2addr v13, v15

    add-double/2addr v7, v13

    mul-double v11, v11, v19

    div-double/2addr v11, v15

    sub-double/2addr v9, v11

    const/4 v11, 0x3

    .line 2390
    new-array v12, v11, [D

    mul-double v13, v9, v21

    mul-double v15, v9, v9

    mul-double v5, v5, v17

    sub-double/2addr v15, v5

    neg-double v5, v7

    mul-double/2addr v5, v7

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-wide/from16 p6, v5

    move-object/from16 p8, v12

    move-wide/from16 p2, v13

    move-wide/from16 p4, v15

    move-wide/from16 p0, v19

    .line 2391
    invoke-static/range {p0 .. p8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->solveCubicEquationWithCoefficients(DDDD[D)I

    move-result v5

    move-wide/from16 v12, p2

    move-object/from16 v6, p8

    const/16 p0, 0x0

    .line 2392
    aget-wide v14, v6, p0

    const/4 v2, 0x1

    aget-wide v11, v6, v2

    const/16 p4, 0x2

    aget-wide v3, v6, p4

    if-eq v5, v2, :cond_b

    move/from16 v13, p4

    if-eq v5, v13, :cond_6

    const/4 v13, 0x3

    if-eq v5, v13, :cond_1

    return p0

    :cond_1
    move-wide/from16 p5, v7

    const-wide/16 v6, 0x0

    const/4 v13, 0x6

    .line 2418
    invoke-static {v14, v15, v6, v7, v13}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2419
    invoke-static {v11, v12, v6, v7, v13}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2420
    invoke-static {v3, v4, v6, v7, v13}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    cmpl-double v5, v14, v6

    if-lez v5, :cond_3

    goto :goto_0

    :cond_3
    cmpl-double v5, v11, v6

    if-lez v5, :cond_4

    goto :goto_1

    :cond_4
    cmpl-double v5, v3, v6

    if-lez v5, :cond_5

    move-wide v14, v3

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 2429
    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p0

    :cond_6
    move-wide/from16 p5, v7

    const-wide/16 v6, 0x0

    const/4 v13, 0x6

    .line 2405
    invoke-static {v14, v15, v6, v7, v13}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2406
    invoke-static {v11, v12, v6, v7, v13}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    cmpl-double v3, v14, v6

    if-lez v3, :cond_8

    :goto_0
    goto :goto_3

    :cond_8
    cmpl-double v3, v11, v6

    if-lez v3, :cond_9

    :goto_1
    move-wide v14, v11

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    .line 2413
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p0

    :cond_a
    :goto_2
    move-wide v14, v6

    :goto_3
    const/4 v13, 0x6

    goto :goto_4

    :cond_b
    move-wide/from16 p5, v7

    const-wide/16 v6, 0x0

    const/4 v13, 0x6

    .line 2395
    invoke-static {v14, v15, v6, v7, v13}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v3

    if-eqz v3, :cond_c

    move-wide v14, v6

    goto :goto_4

    :cond_c
    cmpl-double v3, v14, v6

    if-lez v3, :cond_18

    :goto_4
    neg-double v0, v0

    div-double v0, v0, v17

    cmpl-double v3, v14, v6

    if-nez v3, :cond_f

    .line 2438
    invoke-static {v9, v10, v6, v7, v13}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2439
    aput-wide v0, p10, p0

    return v2

    :cond_d
    cmpg-double v3, v9, v6

    if-gez v3, :cond_e

    neg-double v3, v9

    div-double v3, v3, v21

    .line 2442
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    add-double v5, v0, v3

    .line 2443
    aput-wide v5, p10, p0

    sub-double/2addr v0, v3

    .line 2444
    aput-wide v0, p10, v2

    const/4 v13, 0x2

    return v13

    :cond_e
    return p0

    .line 2450
    :cond_f
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    neg-double v5, v14

    sub-double v5, v5, p2

    mul-double v7, p5, v21

    div-double/2addr v7, v3

    add-double v9, v5, v7

    sub-double/2addr v5, v7

    const-wide/16 v7, 0x0

    const/4 v13, 0x6

    .line 2456
    invoke-static {v9, v10, v7, v8, v13}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v11

    if-eqz v11, :cond_10

    div-double v9, v3, v21

    sub-double v9, v0, v9

    .line 2457
    aput-wide v9, p10, p0

    move v13, v2

    goto :goto_5

    :cond_10
    cmpl-double v11, v9, v7

    if-lez v11, :cond_11

    .line 2460
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    neg-double v9, v3

    add-double v11, v9, v7

    div-double v11, v11, v21

    add-double/2addr v11, v0

    .line 2461
    aput-wide v11, p10, p0

    sub-double/2addr v9, v7

    div-double v9, v9, v21

    add-double/2addr v9, v0

    .line 2462
    aput-wide v9, p10, v2

    const-wide/16 v7, 0x0

    const/4 v9, 0x6

    const/4 v13, 0x2

    goto :goto_6

    :cond_11
    move/from16 v13, p0

    const-wide/16 v7, 0x0

    :goto_5
    const/4 v9, 0x6

    .line 2465
    :goto_6
    invoke-static {v5, v6, v7, v8, v9}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v9

    if-eqz v9, :cond_14

    if-eqz v13, :cond_13

    if-eq v13, v2, :cond_12

    div-double v3, v3, v21

    add-double/2addr v0, v3

    const/4 v4, 0x2

    .line 2474
    aput-wide v0, p10, v4

    goto :goto_7

    :cond_12
    div-double v3, v3, v21

    add-double/2addr v0, v3

    .line 2471
    aput-wide v0, p10, v2

    goto :goto_7

    :cond_13
    div-double v3, v3, v21

    add-double/2addr v0, v3

    .line 2468
    aput-wide v0, p10, p0

    :goto_7
    add-int/2addr v13, v2

    return v13

    :cond_14
    const-wide/16 v19, 0x0

    cmpl-double v7, v5, v19

    if-lez v7, :cond_17

    .line 2479
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    if-eqz v13, :cond_16

    if-eq v13, v2, :cond_15

    add-double v7, v3, v5

    div-double v7, v7, v21

    add-double/2addr v7, v0

    const/4 v2, 0x2

    .line 2490
    aput-wide v7, p10, v2

    sub-double/2addr v3, v5

    div-double v3, v3, v21

    add-double/2addr v0, v3

    const/4 v2, 0x3

    .line 2491
    aput-wide v0, p10, v2

    const/4 v7, 0x2

    goto :goto_8

    :cond_15
    add-double v7, v3, v5

    div-double v7, v7, v21

    add-double/2addr v7, v0

    .line 2486
    aput-wide v7, p10, v2

    sub-double/2addr v3, v5

    div-double v3, v3, v21

    add-double/2addr v0, v3

    const/4 v7, 0x2

    .line 2487
    aput-wide v0, p10, v7

    goto :goto_8

    :cond_16
    const/4 v7, 0x2

    add-double v8, v3, v5

    div-double v8, v8, v21

    add-double/2addr v8, v0

    .line 2482
    aput-wide v8, p10, p0

    sub-double/2addr v3, v5

    div-double v3, v3, v21

    add-double/2addr v0, v3

    .line 2483
    aput-wide v0, p10, v2

    :goto_8
    add-int/2addr v13, v7

    :cond_17
    return v13

    :cond_18
    const/4 v3, 0x0

    move/from16 v0, p0

    .line 2400
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0
.end method

.method public static switchWidthAndHeightOfRect(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 4

    .line 1019
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    sget-object p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    return-object p0

    .line 1022
    :cond_0
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 1023
    iget v2, p0, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v2, v1

    .line 1024
    iget v1, p0, Lcom/metamoji/cm/RectEx;->x:F

    add-float/2addr v1, v0

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/metamoji/cm/RectEx;->y:F

    add-float/2addr v3, v2

    sub-float/2addr v3, v0

    iget v0, p0, Lcom/metamoji/cm/RectEx;->height:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->width:F

    invoke-static {v1, v3, v0, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object p0

    return-object p0
.end method

.method public static tempFloatArray()[F
    .locals 1

    .line 2520
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->TLSFloatArray:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    return-object v0
.end method

.method public static transformFromRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;
    .locals 8

    .line 993
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    .line 996
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 997
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 998
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 999
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    .line 1000
    iget v4, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_1

    iget v4, p1, Lcom/metamoji/cm/RectEx;->width:F

    iget v7, p0, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v4, v7

    goto :goto_0

    :cond_1
    move v4, v6

    .line 1001
    :goto_0
    iget v7, p0, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v5, v7, v5

    if-eqz v5, :cond_2

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p1, p0

    goto :goto_1

    :cond_2
    move p1, v6

    .line 1002
    :goto_1
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    cmpl-float v5, v4, v6

    if-nez v5, :cond_6

    cmpl-float v5, p1, v6

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    cmpl-float p1, v0, v2

    if-nez p1, :cond_5

    cmpl-float p1, v1, v3

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return-object p0

    :cond_5
    :goto_2
    sub-float/2addr v2, v0

    sub-float/2addr v3, v1

    .line 1009
    invoke-virtual {p0, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-object p0

    .line 1004
    :cond_6
    :goto_3
    invoke-virtual {p0, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1005
    invoke-virtual {p0, v4, p1}, Landroid/graphics/Matrix;->preScale(FF)Z

    neg-float p1, v0

    neg-float v0, v1

    .line 1006
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-object p0

    .line 994
    :cond_7
    :goto_4
    sget-object p0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    return-object p0
.end method
