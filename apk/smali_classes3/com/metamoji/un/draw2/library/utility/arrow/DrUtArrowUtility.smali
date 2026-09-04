.class public Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;
.super Ljava/lang/Object;
.source "DrUtArrowUtility.java"


# static fields
.field private static final MIN_ADJUSTED_LINE_WIDTH:F = 1.0E-5f

.field private static final PRESERVED_PATH_LENGTH_RATIO:F = 2.0f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addHatPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FLcom/metamoji/df/sprite/LineCap;F)V
    .locals 17

    move-object/from16 v8, p1

    move/from16 v9, p4

    const v0, 0x3f13cd3a

    mul-float v10, v9, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v2, p2, v0

    neg-float v11, v9

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float v0, v0, p2

    add-float v12, v11, v0

    const v0, 0x3f6ed9ec

    mul-float v0, v0, p2

    add-float v13, v10, v0

    .line 913
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$df$sprite$LineCap:[I

    invoke-virtual/range {p3 .. p3}, Lcom/metamoji/df/sprite/LineCap;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const v15, 0x40376cf6

    const/4 v3, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 1056
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    const-wide v5, -0x3fa9800000000000L    # -90.0

    const/4 v7, 0x0

    move v0, v3

    const-wide v3, 0x4056800000000000L    # 90.0

    const p3, 0x3faed9ec

    move v14, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v7}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addCircleArcPointsToArrayInDegrees(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FDDZ)V

    cmpl-float v16, v9, v14

    if-nez v16, :cond_0

    .line 1063
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeLastPoint(Lcom/metamoji/cm/PointArray;)V

    :cond_0
    neg-float v1, v2

    .line 1067
    invoke-static {v14, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz v16, :cond_1

    .line 1069
    iget v3, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v9

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 1070
    iget v3, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v10

    iput v3, v1, Landroid/graphics/PointF;->y:F

    .line 1071
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1075
    :cond_1
    iput v12, v1, Landroid/graphics/PointF;->x:F

    neg-float v3, v13

    .line 1076
    iput v3, v1, Landroid/graphics/PointF;->y:F

    const-wide v5, 0x4072c00000000000L    # 300.0

    const/4 v7, 0x1

    const-wide/high16 v3, 0x405e000000000000L    # 120.0

    .line 1077
    invoke-static/range {v0 .. v7}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addCircleArcPointsToArrayInDegrees(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FDDZ)V

    mul-float v15, v15, p2

    .line 1085
    iput v15, v1, Landroid/graphics/PointF;->x:F

    .line 1086
    iput v14, v1, Landroid/graphics/PointF;->y:F

    .line 1087
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1088
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1091
    invoke-virtual {v8, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    add-float/2addr v11, v2

    .line 1094
    iput v11, v1, Landroid/graphics/PointF;->x:F

    mul-float v3, p2, p3

    add-float/2addr v10, v3

    .line 1095
    iput v10, v1, Landroid/graphics/PointF;->y:F

    .line 1096
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1099
    iput v12, v1, Landroid/graphics/PointF;->x:F

    .line 1100
    iput v13, v1, Landroid/graphics/PointF;->y:F

    const-wide/high16 v5, 0x406e000000000000L    # 240.0

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    .line 1101
    invoke-static/range {v0 .. v7}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addCircleArcPointsToArrayInDegrees(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FDDZ)V

    if-eqz v16, :cond_5

    .line 1110
    iput v14, v1, Landroid/graphics/PointF;->x:F

    .line 1111
    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 1112
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1113
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return-void

    :cond_2
    const p3, 0x3faed9ec

    move-object/from16 v0, p0

    move v14, v3

    .line 983
    invoke-static {v14, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    .line 984
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 987
    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 988
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 989
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    neg-float v3, v2

    .line 992
    iput v3, v1, Landroid/graphics/PointF;->y:F

    .line 993
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 994
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 997
    iput v14, v1, Landroid/graphics/PointF;->x:F

    .line 998
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    cmpl-float v16, v9, v14

    if-eqz v16, :cond_3

    .line 1000
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    :cond_3
    if-eqz v16, :cond_4

    .line 1005
    iget v3, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v9

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 1006
    iget v3, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v10

    iput v3, v1, Landroid/graphics/PointF;->y:F

    .line 1007
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1011
    :cond_4
    iput v12, v1, Landroid/graphics/PointF;->x:F

    neg-float v3, v13

    .line 1012
    iput v3, v1, Landroid/graphics/PointF;->y:F

    const-wide v5, 0x4072c00000000000L    # 300.0

    const/4 v7, 0x1

    const-wide/high16 v3, 0x405e000000000000L    # 120.0

    .line 1013
    invoke-static/range {v0 .. v7}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addCircleArcPointsToArrayInDegrees(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FDDZ)V

    mul-float v15, v15, p2

    .line 1021
    iput v15, v1, Landroid/graphics/PointF;->x:F

    .line 1022
    iput v14, v1, Landroid/graphics/PointF;->y:F

    .line 1023
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1024
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1027
    invoke-virtual {v8, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    add-float/2addr v11, v2

    .line 1030
    iput v11, v1, Landroid/graphics/PointF;->x:F

    mul-float v3, p2, p3

    add-float/2addr v10, v3

    .line 1031
    iput v10, v1, Landroid/graphics/PointF;->y:F

    .line 1032
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1035
    iput v12, v1, Landroid/graphics/PointF;->x:F

    .line 1036
    iput v13, v1, Landroid/graphics/PointF;->y:F

    const-wide/high16 v5, 0x406e000000000000L    # 240.0

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    .line 1037
    invoke-static/range {v0 .. v7}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addCircleArcPointsToArrayInDegrees(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FDDZ)V

    if-eqz v16, :cond_5

    .line 1046
    iput v14, v1, Landroid/graphics/PointF;->x:F

    .line 1047
    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 1048
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1049
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    :cond_5
    return-void

    :cond_6
    const p3, 0x3faed9ec

    move-object/from16 v0, p0

    move v14, v3

    .line 916
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero()Landroid/graphics/PointF;

    move-result-object v1

    .line 917
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    neg-float v3, v2

    .line 920
    iput v3, v1, Landroid/graphics/PointF;->y:F

    .line 921
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    cmpl-float v16, v9, v14

    if-eqz v16, :cond_7

    .line 923
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    :cond_7
    if-eqz v16, :cond_8

    .line 928
    iget v3, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v9

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 929
    iget v3, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v10

    iput v3, v1, Landroid/graphics/PointF;->y:F

    .line 930
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 934
    :cond_8
    iput v12, v1, Landroid/graphics/PointF;->x:F

    neg-float v3, v13

    .line 935
    iput v3, v1, Landroid/graphics/PointF;->y:F

    const-wide v5, 0x4072c00000000000L    # 300.0

    const/4 v7, 0x1

    const-wide/high16 v3, 0x405e000000000000L    # 120.0

    .line 936
    invoke-static/range {v0 .. v7}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addCircleArcPointsToArrayInDegrees(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FDDZ)V

    mul-float v15, v15, p2

    .line 944
    iput v15, v1, Landroid/graphics/PointF;->x:F

    .line 945
    iput v14, v1, Landroid/graphics/PointF;->y:F

    .line 946
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 947
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 950
    invoke-virtual {v8, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    add-float/2addr v11, v2

    .line 953
    iput v11, v1, Landroid/graphics/PointF;->x:F

    mul-float v3, p2, p3

    add-float/2addr v10, v3

    .line 954
    iput v10, v1, Landroid/graphics/PointF;->y:F

    .line 955
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 958
    iput v12, v1, Landroid/graphics/PointF;->x:F

    .line 959
    iput v13, v1, Landroid/graphics/PointF;->y:F

    const-wide/high16 v5, 0x406e000000000000L    # 240.0

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    .line 960
    invoke-static/range {v0 .. v7}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addCircleArcPointsToArrayInDegrees(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FDDZ)V

    if-eqz v16, :cond_9

    .line 969
    iput v14, v1, Landroid/graphics/PointF;->x:F

    .line 970
    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 971
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 972
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 976
    :cond_9
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 977
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return-void
.end method

.method public static addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;F)Z
    .locals 8

    .line 54
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero()Landroid/graphics/PointF;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 55
    invoke-static/range {v0 .. v7}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;FLandroid/graphics/PointF;)Z

    move-result p0

    return p0
.end method

.method public static addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;FLandroid/graphics/PointF;)Z
    .locals 8

    .line 87
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 88
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 91
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_9

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    cmpg-float v4, p6, v0

    const/4 v5, 0x2

    if-gtz v4, :cond_2

    .line 96
    invoke-static {v5, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_2
    cmpg-float v4, p4, v0

    if-lez v4, :cond_8

    .line 99
    invoke-static {p4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 105
    :cond_3
    iget v4, p2, Landroid/graphics/PointF;->x:F

    .line 106
    iget p2, p2, Landroid/graphics/PointF;->y:F

    .line 109
    sget-object v6, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    .line 110
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 111
    iget v7, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v4

    iput v7, p1, Landroid/graphics/PointF;->x:F

    .line 112
    iget v7, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, p2

    iput v7, p1, Landroid/graphics/PointF;->y:F

    const/high16 v7, 0x41200000    # 10.0f

    .line 115
    invoke-static {v7, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v6, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 118
    invoke-static {v4, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMakeTranslation(FF)Landroid/graphics/Matrix;

    move-result-object p2

    const/4 v0, 0x5

    const/high16 v4, 0x43340000    # 180.0f

    .line 119
    invoke-static {p1, v4, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-nez v0, :cond_4

    sub-float/2addr p1, v4

    .line 120
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_4
    mul-float/2addr p6, p4

    .line 127
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero()Landroid/graphics/PointF;

    move-result-object p1

    .line 128
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadType:[I

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->ordinal()I

    move-result p3

    aget p3, v0, p3

    if-eq p3, v3, :cond_6

    if-eq p3, v5, :cond_5

    const/4 p0, 0x4

    .line 136
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 133
    :cond_5
    invoke-static {p0, p1, p4, p5, p6}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addHatPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FLcom/metamoji/df/sprite/LineCap;F)V

    goto :goto_0

    .line 130
    :cond_6
    invoke-static {p0, p1, p4, p5}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addNonePointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FLcom/metamoji/df/sprite/LineCap;)V

    .line 141
    :goto_0
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 142
    invoke-static {p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->applyTransform(Landroid/graphics/Matrix;Lcom/metamoji/cm/PointArray;)V

    .line 143
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 147
    :cond_7
    invoke-virtual {p7, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return v3

    :cond_8
    :goto_1
    const/4 p0, 0x3

    .line 100
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 92
    :cond_9
    :goto_2
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method private static addNonePointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FLcom/metamoji/df/sprite/LineCap;)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p2, v0

    .line 859
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$df$sprite$LineCap:[I

    invoke-virtual {p3}, Lcom/metamoji/df/sprite/LineCap;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p3, p2

    .line 862
    invoke-static {v1, p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 863
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 866
    iput p2, v0, Landroid/graphics/PointF;->x:F

    .line 867
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 868
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 871
    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 872
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 873
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 876
    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 877
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 878
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 881
    iput p3, v0, Landroid/graphics/PointF;->y:F

    .line 882
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 883
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 901
    :goto_0
    invoke-virtual {p1, p2, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public static adjustLineWidthForHeadPointsDistance(FF)F
    .locals 4

    .line 392
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x3727c5ac    # 1.0E-5f

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 393
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x0

    cmpg-float v3, p1, v0

    if-lez v3, :cond_3

    .line 396
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float v0, p0, v0

    if-gtz v0, :cond_2

    return v2

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    .line 408
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 397
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method public static adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F
    .locals 4

    .line 568
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x3727c5ac    # 1.0E-5f

    if-eqz v0, :cond_6

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    const/4 v3, 0x1

    if-lez v0, :cond_5

    .line 572
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 576
    :cond_1
    invoke-virtual {p0, p2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 582
    :cond_2
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v3, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    .line 590
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 587
    :cond_3
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getHatHeadTipDistanceRatio()F

    move-result p1

    goto :goto_0

    .line 584
    :cond_4
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getNoneHeadTipDistanceRatio()F

    move-result p1

    :goto_0
    add-float/2addr p1, v0

    .line 595
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    div-float/2addr p0, p1

    .line 598
    invoke-static {p0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    .line 573
    :cond_5
    :goto_1
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_6
    :goto_2
    const/4 p0, 0x0

    .line 569
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method public static adjustLineWidthForHeadTipsDistance(FLcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)F
    .locals 5

    .line 452
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x3727c5ac    # 1.0E-5f

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 453
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x0

    cmpg-float v3, p3, v0

    const/4 v4, 0x1

    if-lez v3, :cond_7

    .line 456
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    cmpg-float v0, p0, v0

    if-gtz v0, :cond_2

    return v2

    .line 466
    :cond_2
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    if-eq p1, v4, :cond_4

    if-eq p1, v0, :cond_3

    .line 474
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 471
    :cond_3
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getHatHeadTipDistanceRatio()F

    move-result p1

    goto :goto_0

    .line 468
    :cond_4
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getNoneHeadTipDistanceRatio()F

    move-result p1

    :goto_0
    add-float/2addr p1, v3

    .line 477
    sget-object v3, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadType:[I

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->ordinal()I

    move-result p2

    aget p2, v3, p2

    if-eq p2, v4, :cond_6

    if-eq p2, v0, :cond_5

    const/4 p0, 0x3

    .line 485
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 482
    :cond_5
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getHatHeadTipDistanceRatio()F

    move-result p2

    goto :goto_1

    .line 479
    :cond_6
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getNoneHeadTipDistanceRatio()F

    move-result p2

    :goto_1
    add-float/2addr p1, p2

    div-float/2addr p0, p1

    .line 493
    invoke-static {p0, p3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    .line 457
    :cond_7
    :goto_2
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method public static adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F
    .locals 3

    .line 422
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x3727c5ac    # 1.0E-5f

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_3

    .line 426
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 430
    :cond_1
    invoke-virtual {p0, p1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 435
    :cond_2
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    .line 438
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    .line 427
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 423
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method public static adjustLineWidthForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)F
    .locals 5

    .line 511
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x3727c5ac    # 1.0E-5f

    if-eqz v0, :cond_8

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    const/4 v3, 0x1

    if-lez v0, :cond_7

    .line 515
    invoke-static {p4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 519
    :cond_1
    invoke-virtual {p0, p2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 525
    :cond_2
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/high16 v4, 0x40000000    # 2.0f

    if-eq p1, v3, :cond_4

    if-eq p1, v0, :cond_3

    .line 533
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 530
    :cond_3
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getHatHeadTipDistanceRatio()F

    move-result p1

    goto :goto_0

    .line 527
    :cond_4
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getNoneHeadTipDistanceRatio()F

    move-result p1

    :goto_0
    add-float/2addr p1, v4

    .line 536
    sget-object v4, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadType:[I

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->ordinal()I

    move-result p3

    aget p3, v4, p3

    if-eq p3, v3, :cond_6

    if-eq p3, v0, :cond_5

    const/4 p0, 0x3

    .line 544
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 541
    :cond_5
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getHatHeadTipDistanceRatio()F

    move-result p3

    goto :goto_1

    .line 538
    :cond_6
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getNoneHeadTipDistanceRatio()F

    move-result p3

    :goto_1
    add-float/2addr p1, p3

    .line 549
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    div-float/2addr p0, p1

    .line 552
    invoke-static {p0, p4}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, v2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    .line 516
    :cond_7
    :goto_2
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_8
    :goto_3
    const/4 p0, 0x0

    .line 512
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method public static checkPointsForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 7

    .line 296
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    cmpg-float v2, p4, v0

    const/4 v3, 0x1

    if-lez v2, :cond_9

    .line 300
    invoke-static {p4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v2, 0x5

    .line 304
    invoke-static {p0, p2, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 305
    invoke-virtual {p5, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 306
    invoke-virtual {p6, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void

    .line 311
    :cond_2
    iget v4, p0, Landroid/graphics/PointF;->x:F

    .line 312
    iget p0, p0, Landroid/graphics/PointF;->y:F

    .line 315
    sget-object v5, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    .line 316
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 317
    iget v6, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v4

    iput v6, p2, Landroid/graphics/PointF;->x:F

    .line 318
    iget v6, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, p0

    iput v6, p2, Landroid/graphics/PointF;->y:F

    const/high16 v6, 0x41200000    # 10.0f

    .line 321
    invoke-static {v6, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-static {v6, v5, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v5

    .line 324
    invoke-static {v4, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMakeTranslation(FF)Landroid/graphics/Matrix;

    move-result-object p0

    .line 325
    invoke-static {v5, v0, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    if-nez v4, :cond_3

    .line 326
    invoke-virtual {p0, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 342
    :cond_3
    sget-object v4, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->ordinal()I

    move-result p1

    aget p1, v4, p1

    const/4 v4, 0x2

    if-eq p1, v3, :cond_5

    if-eq p1, v4, :cond_4

    const/4 p0, 0x4

    .line 350
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 347
    :cond_4
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getHatHeadTipDistanceRatio()F

    move-result p1

    goto :goto_0

    .line 344
    :cond_5
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getNoneHeadTipDistanceRatio()F

    move-result p1

    :goto_0
    mul-float/2addr p1, p4

    .line 356
    sget-object v5, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadType:[I

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->ordinal()I

    move-result p3

    aget p3, v5, p3

    if-eq p3, v3, :cond_7

    if-eq p3, v4, :cond_6

    .line 364
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 361
    :cond_6
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getHatHeadTipDistanceRatio()F

    move-result p3

    goto :goto_1

    .line 358
    :cond_7
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getNoneHeadTipDistanceRatio()F

    move-result p3

    :goto_1
    mul-float/2addr p3, p4

    .line 369
    iget p4, p2, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr p4, v1

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, p2

    add-float/2addr p4, v1

    float-to-double v1, p4

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p2, v1

    add-float p4, p1, p3

    cmpl-float v1, p4, p2

    if-lez v1, :cond_8

    mul-float/2addr p2, p1

    div-float p1, p2, p4

    move p2, p1

    goto :goto_2

    :cond_8
    sub-float/2addr p2, p3

    .line 380
    :goto_2
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p1, p0, p5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 381
    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p1, p0, p6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    return-void

    .line 301
    :cond_9
    :goto_3
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_a
    :goto_4
    const/4 p0, 0x0

    .line 297
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public static checkWingEdgesForStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FFLandroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 6

    .line 789
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v2, p3, v0

    if-lez v2, :cond_6

    .line 793
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 797
    :cond_1
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    .line 798
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 803
    :cond_2
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 804
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 807
    sget-object v4, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    .line 808
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    .line 809
    iget v5, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v2

    iput v5, p0, Landroid/graphics/PointF;->x:F

    .line 810
    iget v5, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, p1

    iput v5, p0, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x41200000    # 10.0f

    .line 813
    invoke-static {v5, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v4, p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    .line 816
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMakeTranslation(FF)Landroid/graphics/Matrix;

    move-result-object p1

    const/4 v0, 0x5

    const/high16 v2, 0x43340000    # 180.0f

    .line 817
    invoke-static {p0, v2, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-nez v0, :cond_3

    sub-float/2addr p0, v2

    .line 818
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_3
    mul-float/2addr p4, p3

    .line 826
    sget-object p0, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadType:[I

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->ordinal()I

    move-result p2

    aget p0, p0, p2

    if-eq p0, v3, :cond_4

    const/4 p0, 0x3

    .line 835
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_4
    neg-float p0, p4

    const p2, 0x3fced9ec

    mul-float/2addr p3, p2

    sub-float/2addr p0, p3

    const p2, 0x3f13cd3a

    mul-float/2addr p2, p0

    .line 830
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p3

    neg-float p2, p2

    .line 831
    invoke-static {p0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    .line 840
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 841
    invoke-static {p3, p1, p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 842
    invoke-static {p0, p1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 846
    :cond_5
    invoke-virtual {p5, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 847
    invoke-virtual {p6, p0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void

    :cond_6
    :goto_0
    const/4 p0, 0x1

    .line 794
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_7
    :goto_1
    const/4 p0, 0x0

    .line 790
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public static endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;
    .locals 7

    .line 226
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    cmpg-float v3, p3, v0

    const/4 v4, 0x1

    if-lez v3, :cond_6

    .line 230
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 236
    :cond_1
    iget v3, p1, Landroid/graphics/PointF;->x:F

    .line 237
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 240
    sget-object v5, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    .line 241
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    .line 242
    iget v6, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    iput v6, p0, Landroid/graphics/PointF;->x:F

    .line 243
    iget v6, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, p1

    iput v6, p0, Landroid/graphics/PointF;->y:F

    const/high16 v6, 0x41200000    # 10.0f

    .line 246
    invoke-static {v6, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-static {v6, v5, p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v5

    .line 249
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMakeTranslation(FF)Landroid/graphics/Matrix;

    move-result-object p1

    const/4 v3, 0x5

    .line 250
    invoke-static {v5, v0, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v3

    if-nez v3, :cond_2

    .line 251
    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 256
    :cond_2
    sget-object v3, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadType:[I

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->ordinal()I

    move-result p2

    aget p2, v3, p2

    if-eq p2, v4, :cond_4

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    .line 264
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 265
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 261
    :cond_3
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getHatHeadTipDistanceRatio()F

    move-result p2

    goto :goto_0

    .line 258
    :cond_4
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getNoneHeadTipDistanceRatio()F

    move-result p2

    :goto_0
    mul-float/2addr p2, p3

    .line 269
    iget p3, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->x:F

    mul-float/2addr p3, v1

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, p0

    add-float/2addr p3, v1

    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float p0, v1

    cmpg-float p3, p2, p0

    if-gtz p3, :cond_5

    sub-float/2addr p0, p2

    goto :goto_1

    :cond_5
    move p0, v0

    .line 273
    :goto_1
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 231
    :cond_6
    :goto_2
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 232
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_3
    const/4 p0, 0x0

    .line 227
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 228
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static getAdjustmentDistanceBetweenHeadPointsForLineWidth(F)F
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-lez v0, :cond_1

    .line 631
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p0, v0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 632
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0
.end method

.method private static getHatHeadTipDistanceRatio()F
    .locals 1

    const v0, 0x40376cf6

    return v0
.end method

.method private static getHatHeadTipFromLineWidth(F)Landroid/graphics/PointF;
    .locals 1

    const v0, 0x40376cf6

    mul-float/2addr p0, v0

    const/4 v0, 0x0

    .line 1126
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static getHeadTipLengthForHeadType(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)F
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_3

    .line 609
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 613
    :cond_0
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v3, 0x2

    if-eq p0, v3, :cond_1

    .line 619
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 617
    :cond_1
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getHatHeadTipDistanceRatio()F

    move-result p0

    :goto_0
    mul-float/2addr p0, p1

    return p0

    .line 615
    :cond_2
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getNoneHeadTipDistanceRatio()F

    move-result p0

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 610
    invoke-static {p0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0
.end method

.method private static getNoneHeadTipDistanceRatio()F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method private static getNoneHeadTipFromLineWidth(F)Landroid/graphics/PointF;
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    const/4 v0, 0x0

    .line 1122
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static headTipFromStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;
    .locals 7

    .line 167
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    cmpg-float v3, p3, v0

    const/4 v4, 0x1

    if-lez v3, :cond_6

    .line 171
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 177
    :cond_1
    iget v3, p1, Landroid/graphics/PointF;->x:F

    .line 178
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 181
    sget-object v5, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    .line 182
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    .line 183
    iget v6, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v6, v3

    iput v6, p0, Landroid/graphics/PointF;->x:F

    .line 184
    iget v6, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, p1

    iput v6, p0, Landroid/graphics/PointF;->y:F

    const/high16 v6, 0x41200000    # 10.0f

    .line 187
    invoke-static {v6, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v5, p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    .line 190
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMakeTranslation(FF)Landroid/graphics/Matrix;

    move-result-object p1

    const/4 v0, 0x5

    const/high16 v3, 0x43340000    # 180.0f

    .line 191
    invoke-static {p0, v3, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-nez v0, :cond_2

    sub-float/2addr p0, v3

    .line 192
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 197
    :cond_2
    sget-object p0, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadType:[I

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->ordinal()I

    move-result p2

    aget p0, p0, p2

    if-eq p0, v4, :cond_4

    const/4 p2, 0x2

    if-eq p0, p2, :cond_3

    .line 205
    invoke-static {p2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 206
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 202
    :cond_3
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getHatHeadTipFromLineWidth(F)Landroid/graphics/PointF;

    move-result-object p0

    goto :goto_0

    .line 199
    :cond_4
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getNoneHeadTipFromLineWidth(F)Landroid/graphics/PointF;

    move-result-object p0

    .line 210
    :goto_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-object p0

    :cond_5
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 172
    :cond_6
    :goto_1
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 173
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_2
    const/4 p0, 0x0

    .line 168
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 169
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public static resizeValueForSnapPositionValue(DLandroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Landroid/graphics/PointF;FDZZ)D
    .locals 33

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-wide/from16 v4, p7

    if-eqz p9, :cond_0

    .line 663
    iget v6, v1, Landroid/graphics/PointF;->x:F

    float-to-double v6, v6

    .line 664
    iget v8, v2, Landroid/graphics/PointF;->x:F

    float-to-double v8, v8

    .line 665
    iget v10, v0, Landroid/graphics/PointF;->x:F

    float-to-double v10, v10

    .line 666
    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-double v12, v1

    .line 667
    iget v1, v2, Landroid/graphics/PointF;->y:F

    float-to-double v1, v1

    .line 668
    iget v0, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 670
    :cond_0
    iget v6, v1, Landroid/graphics/PointF;->y:F

    float-to-double v6, v6

    .line 671
    iget v8, v2, Landroid/graphics/PointF;->y:F

    float-to-double v8, v8

    .line 672
    iget v10, v0, Landroid/graphics/PointF;->y:F

    float-to-double v10, v10

    .line 673
    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-double v12, v1

    .line 674
    iget v1, v2, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    .line 675
    iget v0, v0, Landroid/graphics/PointF;->x:F

    :goto_0
    const/4 v0, 0x5

    .line 677
    invoke-static {v8, v9, v4, v5, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v14

    const/4 v15, 0x0

    const/4 v0, 0x0

    const-wide/high16 v16, 0x7ff8000000000000L    # Double.NaN

    if-eqz v14, :cond_1

    .line 678
    invoke-static {v0, v15}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-wide v16

    :cond_1
    const/4 v14, 0x5

    .line 681
    invoke-static {v6, v7, v8, v9, v14}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v18

    move/from16 p4, v0

    const/4 v0, 0x1

    if-eqz v18, :cond_3

    .line 682
    invoke-static {v10, v11, v4, v5, v14}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 683
    invoke-static {v0, v15}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-wide v16

    :cond_2
    sub-double v0, p0, v4

    sub-double/2addr v10, v4

    div-double/2addr v0, v10

    return-wide v0

    :cond_3
    sub-double v18, v4, v10

    sub-double v20, v4, p0

    mul-double v18, v18, v20

    const-wide/16 v20, 0x0

    cmpg-double v14, v18, v20

    if-gez v14, :cond_4

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v4

    sub-double v18, v18, p0

    move v14, v0

    goto :goto_1

    :cond_4
    move-wide/from16 v18, p0

    move/from16 v14, p4

    :goto_1
    if-nez p10, :cond_10

    const/4 v15, 0x5

    .line 693
    invoke-static {v12, v13, v1, v2, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v15

    if-eqz v15, :cond_5

    goto/16 :goto_4

    :cond_5
    sub-double v10, v8, v4

    mul-double v22, v10, v10

    sub-double v18, v18, v4

    mul-double v24, v18, v18

    const-wide/high16 v26, -0x4000000000000000L    # -2.0

    mul-double v10, v10, v26

    mul-double v10, v10, v18

    sub-double/2addr v8, v6

    sub-double/2addr v1, v12

    mul-double/2addr v1, v1

    mul-double v12, v8, v8

    div-double/2addr v1, v12

    .line 707
    sget-object v12, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStArrowPenStyle$DrStArrowHeadType:[I

    invoke-virtual/range {p3 .. p3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->ordinal()I

    move-result v13

    aget v12, v12, v13

    const/4 v13, 0x2

    if-eq v12, v0, :cond_7

    if-eq v12, v13, :cond_6

    const/4 v12, 0x0

    .line 715
    invoke-static {v13, v12}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-wide v16

    :cond_6
    move/from16 p0, v14

    float-to-double v13, v3

    const-wide v18, 0x40206d9eba16132eL    # 8.21410161513776

    mul-double v18, v18, v13

    mul-double v18, v18, v13

    goto :goto_2

    :cond_7
    move/from16 p0, v14

    float-to-double v12, v3

    const-wide/high16 v14, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v14, v12

    mul-double v18, v14, v12

    :goto_2
    const/4 v3, 0x4

    .line 719
    new-array v12, v3, [D

    mul-double v13, v22, v1

    add-double v13, v13, v24

    sub-double v26, v13, v18

    mul-double v28, v10, v1

    mul-double v30, v24, v1

    move-wide/from16 v24, v10

    move-object/from16 v32, v12

    .line 720
    invoke-static/range {v22 .. v32}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->solveQuarticEquationWithCoefficients(DDDDD[D)I

    move-result v1

    if-eq v1, v0, :cond_d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v0, 0x3

    if-eq v1, v0, :cond_9

    if-eq v1, v3, :cond_8

    return-wide v16

    :cond_8
    const/4 v12, 0x0

    .line 743
    invoke-static {v3, v12}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-wide v16

    :cond_9
    const/4 v12, 0x0

    .line 740
    invoke-static {v0, v12}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-wide v16

    :cond_a
    sub-double/2addr v6, v4

    mul-double/2addr v6, v8

    cmpl-double v1, v6, v20

    if-lez v1, :cond_b

    .line 726
    aget-wide v1, v32, p4

    aget-wide v3, v32, v0

    cmpg-double v0, v1, v3

    if-gez v0, :cond_c

    goto :goto_3

    .line 732
    :cond_b
    aget-wide v1, v32, p4

    aget-wide v3, v32, v0

    cmpg-double v0, v1, v3

    if-gez v0, :cond_e

    :cond_c
    move-wide v1, v3

    goto :goto_3

    .line 722
    :cond_d
    aget-wide v1, v32, p4

    :cond_e
    :goto_3
    if-eqz p0, :cond_f

    neg-double v0, v1

    return-wide v0

    :cond_f
    return-wide v1

    :cond_10
    :goto_4
    move/from16 p0, v14

    sub-double/2addr v8, v4

    sub-double v18, v18, v10

    add-double v18, v18, v8

    div-double v0, v18, v8

    if-eqz p0, :cond_11

    neg-double v0, v0

    :cond_11
    return-wide v0
.end method

.method public static scaleValueForSnapPositionValue(DDD)D
    .locals 1

    const/4 v0, 0x6

    .line 764
    invoke-static {p2, p3, p4, p5, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 765
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_0
    sub-double/2addr p0, p4

    sub-double/2addr p2, p4

    div-double/2addr p0, p2

    return-wide p0
.end method
