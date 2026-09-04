.class public Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;
.super Ljava/lang/Object;
.source "DrUtShapeExamples.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V
    .locals 5

    .line 1512
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1515
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    const/4 v1, 0x5

    .line 1516
    invoke-static {v0, p2, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1517
    iget p2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_1
    const/4 p2, 0x1

    .line 1519
    :goto_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-ge p2, v0, :cond_3

    add-int/lit8 v0, p2, 0x1

    .line 1520
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    add-int/lit8 p2, p2, 0x2

    .line 1521
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1522
    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1523
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 1525
    :cond_2
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v3, v2, v4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private static bitwiseAnd(Ljava/lang/Enum;Ljava/lang/Enum;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;:",
            "Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;",
            ">(TE;TE;)Z"
        }
    .end annotation

    .line 1532
    check-cast p0, Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;

    invoke-interface {p0}, Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;->intValue()I

    move-result p0

    check-cast p1, Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;

    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/utility/EnumUtil$UnordinalEnum;->intValue()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static constructCurveArrowPath(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/String;Ljava/lang/String;FLcom/metamoji/df/sprite/LineCap;F)V
    .locals 11

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p8

    .line 282
    sget-object v5, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    .line 283
    const-string/jumbo v6, "start"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 284
    sget-object v5, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->START:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    goto :goto_0

    .line 285
    :cond_0
    const-string v6, "end"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 286
    sget-object v5, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->END:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    goto :goto_0

    .line 287
    :cond_1
    const-string v6, "both"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 288
    sget-object v5, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->BOTH:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    .line 290
    :cond_2
    :goto_0
    sget-object v3, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    .line 291
    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    if-eq v5, v6, :cond_3

    .line 292
    const-string v6, "default"

    move-object/from16 v7, p7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 293
    sget-object v3, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->HAT:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    .line 296
    :cond_3
    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->START:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->bitwiseAnd(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v3

    goto :goto_1

    :cond_4
    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    .line 297
    :goto_1
    sget-object v7, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->END:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-static {v5, v7}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->bitwiseAnd(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    :goto_2
    move-object v7, v3

    const/high16 v3, 0x3f000000    # 0.5f

    .line 298
    invoke-static {p3, p4, v2, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getControlPointOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v3

    .line 299
    iget v5, p3, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    iget v9, p3, Landroid/graphics/PointF;->y:F

    iget v10, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v10

    div-float/2addr v9, v8

    invoke-static {v5, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    .line 300
    iget v9, v2, Landroid/graphics/PointF;->x:F

    iget v10, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v10

    div-float/2addr v9, v8

    iget v10, v2, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v3

    div-float/2addr v10, v8

    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v8

    .line 301
    invoke-static {p3, v6, v5, v4}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v3

    .line 302
    invoke-static {v2, v7, v8, v4}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v9

    .line 301
    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 303
    invoke-static {p3, v5, v6, v3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 304
    invoke-static {v2, v8, v7, v3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v9

    if-eqz p0, :cond_6

    .line 306
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 307
    iget v2, v5, Landroid/graphics/PointF;->x:F

    iget v3, v5, Landroid/graphics/PointF;->y:F

    iget v10, p4, Landroid/graphics/PointF;->x:F

    iget v1, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2, v3, v10, v1}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 308
    iget v1, v8, Landroid/graphics/PointF;->x:F

    iget v2, v8, Landroid/graphics/PointF;->y:F

    iget v3, v9, Landroid/graphics/PointF;->x:F

    iget v10, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v2, v3, v10}, Landroid/graphics/Path;->quadTo(FFFF)V

    :cond_6
    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    if-eqz p1, :cond_7

    move-object v2, v0

    .line 319
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    move-object v1, v5

    move-object v3, v6

    move-object/from16 v5, p9

    move/from16 v6, p10

    .line 320
    invoke-static/range {v0 .. v6}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;F)Z

    .line 321
    invoke-static {p0, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    :cond_7
    if-eqz p2, :cond_8

    .line 324
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    move/from16 v4, p8

    move-object/from16 v5, p9

    move/from16 v6, p10

    move-object v3, v7

    move-object v1, v8

    move-object v2, v9

    .line 325
    invoke-static/range {v0 .. v6}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;F)Z

    .line 326
    invoke-static {p0, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p2, v0, p0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    :cond_8
    return-void
.end method

.method public static constructDoubleCurveArrowPath(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/String;Ljava/lang/String;FLcom/metamoji/df/sprite/LineCap;F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p9

    .line 358
    sget-object v9, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    .line 359
    const-string/jumbo v10, "start"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 360
    sget-object v9, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->START:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    goto :goto_0

    .line 361
    :cond_0
    const-string v10, "end"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 362
    sget-object v9, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->END:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    goto :goto_0

    .line 363
    :cond_1
    const-string v10, "both"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 364
    sget-object v9, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->BOTH:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    .line 366
    :cond_2
    :goto_0
    sget-object v7, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    .line 367
    sget-object v10, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    if-eq v9, v10, :cond_3

    .line 368
    const-string v10, "default"

    move-object/from16 v11, p8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 369
    sget-object v7, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->HAT:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    .line 372
    :cond_3
    sget-object v10, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->START:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->bitwiseAnd(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, v7

    goto :goto_1

    :cond_4
    sget-object v10, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    .line 373
    :goto_1
    sget-object v11, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->END:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-static {v9, v11}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->bitwiseAnd(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    sget-object v7, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    :goto_2
    move-object v11, v7

    .line 374
    iget v7, v4, Landroid/graphics/PointF;->x:F

    iget v9, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v7, v9

    iget v12, v4, Landroid/graphics/PointF;->y:F

    iget v13, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v13

    div-float/2addr v12, v9

    invoke-static {v7, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v7

    .line 375
    iget v12, v3, Landroid/graphics/PointF;->x:F

    iget v13, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v13

    div-float/2addr v12, v9

    iget v13, v3, Landroid/graphics/PointF;->y:F

    iget v14, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v14

    div-float/2addr v13, v9

    invoke-static {v12, v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v12

    .line 376
    iget v13, v4, Landroid/graphics/PointF;->x:F

    iget v14, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v13, v14

    div-float/2addr v13, v9

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v14, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v14

    div-float/2addr v4, v9

    invoke-static {v13, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    .line 377
    iget v13, v5, Landroid/graphics/PointF;->x:F

    iget v14, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v13, v14

    div-float/2addr v13, v9

    iget v14, v5, Landroid/graphics/PointF;->y:F

    iget v15, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v14, v15

    div-float/2addr v14, v9

    invoke-static {v13, v14}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v13

    .line 378
    iget v14, v6, Landroid/graphics/PointF;->x:F

    iget v15, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v14, v15

    div-float/2addr v14, v9

    iget v15, v6, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v15, v5

    div-float/2addr v15, v9

    invoke-static {v14, v15}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v14

    .line 379
    iget v5, v12, Landroid/graphics/PointF;->x:F

    iget v15, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v15

    div-float/2addr v5, v9

    iget v15, v12, Landroid/graphics/PointF;->y:F

    move/from16 p7, v9

    iget v9, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v15, v9

    div-float v15, v15, p7

    invoke-static {v5, v15}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    .line 380
    iget v9, v13, Landroid/graphics/PointF;->x:F

    iget v15, v14, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v15

    div-float v9, v9, p7

    iget v15, v13, Landroid/graphics/PointF;->y:F

    move/from16 p4, v15

    iget v15, v14, Landroid/graphics/PointF;->y:F

    add-float v15, p4, v15

    div-float v15, v15, p7

    invoke-static {v9, v15}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v9

    .line 381
    invoke-static {v3, v10, v12, v8}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v15

    .line 382
    invoke-static {v6, v11, v14, v8}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v2

    .line 381
    invoke-static {v15, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 383
    invoke-static {v3, v12, v10, v2}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v3

    .line 384
    invoke-static {v6, v14, v11, v2}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v2

    if-eqz v0, :cond_6

    .line 386
    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget v15, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v6, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 387
    iget v6, v12, Landroid/graphics/PointF;->x:F

    iget v15, v12, Landroid/graphics/PointF;->y:F

    move-object/from16 p3, v3

    iget v3, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v6, v15, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 388
    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v5, v7, Landroid/graphics/PointF;->x:F

    iget v6, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 389
    iget v3, v13, Landroid/graphics/PointF;->x:F

    iget v4, v13, Landroid/graphics/PointF;->y:F

    iget v5, v9, Landroid/graphics/PointF;->x:F

    iget v6, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 390
    iget v3, v14, Landroid/graphics/PointF;->x:F

    iget v4, v14, Landroid/graphics/PointF;->y:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_3

    :cond_6
    move-object/from16 p3, v3

    :goto_3
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    if-eqz v1, :cond_7

    .line 401
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v3

    move-object/from16 v5, p3

    move/from16 v9, p11

    move v7, v8

    move-object v6, v10

    move-object v4, v12

    move-object/from16 v8, p10

    .line 402
    invoke-static/range {v3 .. v9}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;F)Z

    .line 403
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    :cond_7
    if-eqz p2, :cond_8

    .line 406
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v3

    move/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    move-object v5, v2

    move-object v6, v11

    move-object v4, v14

    .line 407
    invoke-static/range {v3 .. v9}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;F)Z

    .line 408
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    move-object/from16 v2, p2

    invoke-static {v2, v3, v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    :cond_8
    return-void
.end method

.method public static constructFlowchartArrowPath(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;Lcom/metamoji/cm/RectEx;Ljava/lang/String;Ljava/lang/String;FLcom/metamoji/df/sprite/LineCap;F)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 439
    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    .line 440
    invoke-static/range {p4 .. p4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    .line 441
    invoke-static/range {p4 .. p4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    .line 442
    invoke-static/range {p4 .. p4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v7

    .line 443
    invoke-static/range {p4 .. p4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v8

    .line 445
    sget-object v9, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$example$DrUtShapeExampleType:[I

    invoke-virtual/range {p3 .. p3}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_4

    .line 486
    :pswitch_0
    invoke-static {v4, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v6

    .line 487
    invoke-static {v4, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    .line 488
    invoke-static {v5, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v8

    .line 489
    invoke-static {v5, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    .line 490
    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v9, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v7, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 491
    iget v7, v4, Landroid/graphics/PointF;->x:F

    iget v9, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 492
    iget v7, v8, Landroid/graphics/PointF;->x:F

    iget v9, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 493
    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v9, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move-object v9, v4

    move-object v10, v6

    move-object v6, v8

    goto/16 :goto_0

    .line 471
    :pswitch_1
    invoke-static {v4, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v8

    .line 472
    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v6

    .line 473
    invoke-static {v5, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    .line 474
    invoke-static {v4, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    .line 475
    iget v7, v8, Landroid/graphics/PointF;->x:F

    iget v9, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v7, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 476
    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v9, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 477
    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v9, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 478
    iget v7, v4, Landroid/graphics/PointF;->x:F

    iget v9, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move-object v9, v6

    move-object v10, v8

    move-object v6, v5

    move-object v5, v4

    goto :goto_0

    .line 458
    :pswitch_2
    invoke-static {v4, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v6

    .line 459
    invoke-static {v4, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    .line 460
    invoke-static {v5, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    .line 461
    iget v7, v6, Landroid/graphics/PointF;->x:F

    iget v8, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 462
    iget v7, v4, Landroid/graphics/PointF;->x:F

    iget v8, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 463
    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move-object v9, v4

    move-object v10, v6

    move-object v6, v9

    goto :goto_0

    .line 447
    :pswitch_3
    invoke-static {v4, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v6

    .line 448
    invoke-static {v5, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    .line 449
    iget v5, v6, Landroid/graphics/PointF;->x:F

    iget v7, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v5, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 450
    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v7, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    move-object v5, v4

    move-object v9, v5

    move-object v10, v6

    .line 503
    :goto_0
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    .line 504
    const-string/jumbo v4, "start"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 505
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->START:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    goto :goto_1

    .line 506
    :cond_1
    const-string v4, "end"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 507
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->END:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    goto :goto_1

    .line 508
    :cond_2
    const-string v4, "both"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 509
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->BOTH:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    .line 511
    :cond_3
    :goto_1
    sget-object v3, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    .line 512
    sget-object v4, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    if-eq v0, v4, :cond_4

    .line 513
    const-string v4, "default"

    move-object/from16 v7, p6

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 514
    sget-object v3, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->HAT:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    .line 517
    :cond_4
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v8

    .line 521
    sget-object v4, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->START:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-static {v0, v4}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->bitwiseAnd(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v11, v3

    goto :goto_2

    :cond_5
    sget-object v4, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-object v11, v4

    :goto_2
    move/from16 v12, p7

    move-object/from16 v13, p8

    move/from16 v14, p9

    .line 518
    invoke-static/range {v8 .. v14}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;F)Z

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 525
    invoke-static {v4, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-static {v1, v8, v7}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    .line 526
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v10

    .line 530
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->END:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->bitwiseAnd(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    sget-object v3, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    :goto_3
    move/from16 v14, p7

    move-object/from16 v15, p8

    move/from16 v16, p9

    move-object v13, v3

    move-object v12, v5

    move-object v11, v6

    .line 527
    invoke-static/range {v10 .. v16}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;F)Z

    .line 534
    invoke-static {v4, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v2, v10, v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    :cond_7
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static constructLineArrowPath(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 9

    .line 156
    sget-object v5, Lcom/metamoji/df/sprite/LineCap;->ROUND:Lcom/metamoji/df/sprite/LineCap;

    .line 157
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    .line 158
    const-string/jumbo v2, "start"

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->START:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    :cond_0
    :goto_0
    move-object v7, v1

    goto :goto_1

    .line 160
    :cond_1
    const-string v2, "end"

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->END:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    goto :goto_0

    .line 162
    :cond_2
    const-string v2, "both"

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->BOTH:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    goto :goto_0

    .line 165
    :goto_1
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    .line 166
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    if-eq v7, v1, :cond_3

    .line 167
    const-string v1, "default"

    invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 168
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->HAT:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    :cond_3
    move-object v8, v0

    if-eqz p0, :cond_4

    .line 172
    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 173
    iget v0, p4, Landroid/graphics/PointF;->x:F

    iget v1, p4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_4
    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    if-eqz p1, :cond_6

    .line 176
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    .line 177
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->START:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-static {v7, v1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->bitwiseAnd(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v3, v8

    move-object v2, p3

    move-object v1, p4

    move/from16 v4, p7

    move/from16 v6, p8

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-object v3, v1

    move-object v2, p3

    move/from16 v4, p7

    move/from16 v6, p8

    move-object v1, p4

    .line 178
    :goto_2
    invoke-static/range {v0 .. v6}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;F)Z

    .line 179
    invoke-static {p0, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    :cond_6
    if-eqz p2, :cond_8

    .line 182
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    .line 183
    sget-object p1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->END:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-static {v7, p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->bitwiseAnd(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    sget-object v8, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    :goto_3
    move-object v1, p3

    move-object v2, p4

    move/from16 v4, p7

    move/from16 v6, p8

    move-object v3, v8

    .line 184
    invoke-static/range {v0 .. v6}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;F)Z

    .line 185
    invoke-static {p0, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p2, v0, p0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    :cond_8
    return-void
.end method

.method public static constructLineArrowPath(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/PointF;Landroid/graphics/PointF;Ljava/lang/String;Ljava/lang/String;FLcom/metamoji/df/sprite/LineCap;F)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 213
    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    .line 214
    const-string/jumbo v7, "start"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 215
    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->START:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    goto :goto_0

    .line 216
    :cond_0
    const-string v7, "end"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 217
    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->END:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    goto :goto_0

    .line 218
    :cond_1
    const-string v7, "both"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 219
    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->BOTH:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    .line 221
    :cond_2
    :goto_0
    sget-object v5, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    .line 222
    sget-object v7, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    if-eq v6, v7, :cond_3

    .line 223
    const-string v7, "default"

    move-object/from16 v8, p6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 224
    sget-object v5, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->HAT:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    .line 227
    :cond_3
    sget-object v7, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->START:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-static {v6, v7}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->bitwiseAnd(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v11, v5

    goto :goto_1

    :cond_4
    sget-object v7, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-object v11, v7

    .line 228
    :goto_1
    sget-object v7, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->END:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-static {v6, v7}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->bitwiseAnd(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    sget-object v5, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    :goto_2
    move/from16 v12, p7

    move-object v15, v5

    .line 229
    invoke-static {v3, v11, v4, v15, v12}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)F

    move-result v5

    .line 230
    invoke-static {v3, v4, v11, v5}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v10

    .line 231
    invoke-static {v4, v3, v15, v5}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v9

    if-eqz v0, :cond_6

    .line 233
    iget v3, v10, Landroid/graphics/PointF;->x:F

    iget v4, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 234
    iget v3, v9, Landroid/graphics/PointF;->x:F

    iget v4, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_6
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    if-eqz v1, :cond_7

    .line 245
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v8

    move-object/from16 v13, p8

    move/from16 v14, p9

    .line 246
    invoke-static/range {v8 .. v14}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;F)Z

    .line 247
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v1, v8, v3}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    :cond_7
    if-eqz v2, :cond_8

    .line 250
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v12

    move/from16 v16, p7

    move-object/from16 v17, p8

    move/from16 v18, p9

    move-object v14, v9

    move-object v13, v10

    .line 251
    invoke-static/range {v12 .. v18}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;F)Z

    .line 252
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v2, v12, v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    :cond_8
    return-void
.end method

.method public static createPathForType(Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 1

    .line 62
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$example$DrUtShapeExampleType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 128
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 131
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    return-object p0

    .line 126
    :pswitch_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfPageWithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 124
    :pswitch_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfFlowchartLoopEndWithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 122
    :pswitch_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfFlowchartLoopStartWithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 120
    :pswitch_3
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfFlowchartDecisionWithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 118
    :pswitch_4
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfFlowchartProcessWithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 116
    :pswitch_5
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfFlowchartStartEndWithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 114
    :pswitch_6
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfBracket3WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 112
    :pswitch_7
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfBracket2WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 110
    :pswitch_8
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfBracket1WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 108
    :pswitch_9
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfCuboidWithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 106
    :pswitch_a
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfConeWithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 104
    :pswitch_b
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfCylinderWithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 102
    :pswitch_c
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfLine4WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 100
    :pswitch_d
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfLine3WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 98
    :pswitch_e
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfLine2WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 96
    :pswitch_f
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfLine1WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 94
    :pswitch_10
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfBalloon3WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 92
    :pswitch_11
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfBalloon2WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 90
    :pswitch_12
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfBalloon1WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 88
    :pswitch_13
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfStar2WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 86
    :pswitch_14
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfStar1WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 84
    :pswitch_15
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfBlockArrow3WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 82
    :pswitch_16
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfBlockArrow2WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 80
    :pswitch_17
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfBlockArrow1WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 78
    :pswitch_18
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfCircle3WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 76
    :pswitch_19
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfCircle2WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 74
    :pswitch_1a
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfCircle1WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 72
    :pswitch_1b
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfRectangle3WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 70
    :pswitch_1c
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfRectangle2WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 68
    :pswitch_1d
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfRectangle1WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 66
    :pswitch_1e
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfTriangle2WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    .line 64
    :pswitch_1f
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->pathOfTriangle1WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLabelForType(Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;)Ljava/lang/String;
    .locals 2

    .line 541
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 542
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$example$DrUtShapeExampleType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExampleType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 560
    :pswitch_1
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SHAPE_DIALOG_LABEL_FLOW_CHART_ARROW_4:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 558
    :pswitch_2
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SHAPE_DIALOG_LABEL_FLOW_CHART_ARROW_3:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 556
    :pswitch_3
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SHAPE_DIALOG_LABEL_FLOW_CHART_ARROW_2:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 554
    :pswitch_4
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SHAPE_DIALOG_LABEL_FLOW_CHART_ARROW_1:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 552
    :pswitch_5
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SHAPE_DIALOG_LABEL_FLOW_CHART_LOOP_END:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 550
    :pswitch_6
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SHAPE_DIALOG_LABEL_FLOW_CHART_LOOP_START:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 548
    :pswitch_7
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SHAPE_DIALOG_LABEL_FLOW_CHART_DECISION:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 546
    :pswitch_8
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SHAPE_DIALOG_LABEL_FLOW_CHART_PROCESS:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 544
    :pswitch_9
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SHAPE_DIALOG_LABEL_FLOW_CHART_START_END:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static pathOfBalloon1WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 5

    .line 901
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 902
    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x41700000    # 15.0f

    const/high16 v3, -0x3e380000    # -25.0f

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-direct {v1, v3, v3, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const v2, 0x427a6666    # 62.6f

    const v3, 0x43a80ccd    # 336.1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 903
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 904
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 907
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 908
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 909
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetWidth(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    div-float/2addr v2, v3

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetHeight(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    div-float/2addr p0, v3

    invoke-virtual {v1, v2, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 910
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method private static pathOfBalloon2WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 12

    .line 920
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/high16 v8, 0x42480000    # 50.0f

    .line 923
    invoke-virtual {v0, v8, v8}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x41500000    # 13.0f

    const/high16 v9, 0x41f00000    # 30.0f

    .line 925
    invoke-virtual {v0, v1, v9}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v10, -0x3de00000    # -40.0f

    .line 927
    invoke-virtual {v0, v10, v9}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    const/high16 v1, -0x3db80000    # -50.0f

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, -0x3e100000    # -30.0f

    const/high16 v4, 0x41f00000    # 30.0f

    const/high16 v5, 0x42b40000    # 90.0f

    .line 929
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    const/high16 v11, -0x3db80000    # -50.0f

    .line 931
    invoke-virtual {v0, v11, v10}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v2, -0x3db80000    # -50.0f

    const/high16 v4, -0x3e100000    # -30.0f

    const/high16 v5, 0x43340000    # 180.0f

    .line 933
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    const/high16 v1, 0x42200000    # 40.0f

    .line 935
    invoke-virtual {v0, v1, v11}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x41f00000    # 30.0f

    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v5, 0x43870000    # 270.0f

    .line 937
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 939
    invoke-virtual {v0, v8, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v1, 0x41f00000    # 30.0f

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v4, 0x41f00000    # 30.0f

    const/4 v5, 0x0

    .line 941
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    const/high16 v1, 0x42040000    # 33.0f

    .line 943
    invoke-virtual {v0, v1, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 945
    invoke-virtual {v0, v8, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 948
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMakeTranslation(FF)Landroid/graphics/Matrix;

    move-result-object v1

    .line 949
    iget v2, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p0, v3

    invoke-virtual {v1, v2, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 950
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method private static pathOfBalloon3WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 8

    .line 960
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    const/high16 v1, 0x42a00000    # 80.0f

    const/high16 v2, -0x3db80000    # -50.0f

    const/high16 v3, 0x42c80000    # 100.0f

    .line 961
    invoke-static {v2, v2, v3, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addCloudPointsToArray(Lcom/metamoji/cm/PointArray;Lcom/metamoji/cm/RectEx;)V

    const v1, 0x423ecccd    # 47.7f

    .line 969
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v4, -0x3ee00000    # -10.0f

    .line 972
    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    const/high16 v5, 0x42480000    # 50.0f

    .line 978
    invoke-static {v5, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-static {v4, v2, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v4

    float-to-double v4, v4

    const/high16 v6, 0x42380000    # 46.0f

    const/high16 v7, 0x42100000    # 36.0f

    .line 975
    invoke-static {v2, v6, v7, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnEllipseWithCenterInDegrees(Landroid/graphics/PointF;FFD)Landroid/graphics/PointF;

    move-result-object v2

    const/high16 v4, 0x40600000    # 3.5f

    const/high16 v5, 0x41080000    # 8.5f

    .line 983
    invoke-static {v2, v1, v4, v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDivisionOfSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v2

    .line 986
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    sub-float/2addr v4, v5

    const v6, 0x40124923

    sub-float/2addr v4, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v4, v7

    add-float v7, v4, v5

    add-float/2addr v4, v6

    .line 988
    invoke-static {v2, v1, v7, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDivisionOfSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v4

    .line 991
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v7

    .line 992
    invoke-static {v7, v2, v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addCirclePointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;F)V

    .line 995
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    const v5, 0x40924923

    .line 996
    invoke-static {v2, v4, v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addCirclePointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;F)V

    .line 999
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v4

    .line 1000
    invoke-static {v4, v1, v6}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addCirclePointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;F)V

    .line 1003
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1006
    invoke-static {v5, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    invoke-static {v1, v0, v5}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    .line 1009
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->lastPoint(Lcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v1, v7, v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    .line 1012
    invoke-static {v7}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->lastPoint(Lcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    .line 1015
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->lastPoint(Lcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    .line 1018
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMakeTranslation(FF)Landroid/graphics/Matrix;

    move-result-object v0

    .line 1019
    iget v2, p0, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v2, v3

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p0, v3

    invoke-virtual {v0, v2, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1020
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-object v1
.end method

.method private static pathOfBlockArrow1WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 8

    .line 762
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 763
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 764
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 765
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    .line 766
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    .line 767
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    .line 768
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetHeight(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr p0, v6

    add-float v6, v3, p0

    sub-float p0, v5, p0

    .line 771
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 772
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 773
    invoke-virtual {v7, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 774
    invoke-virtual {v7, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 775
    invoke-virtual {v7, v4, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 776
    invoke-virtual {v7, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 777
    invoke-virtual {v7, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 778
    invoke-virtual {v7, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 779
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    return-object v7
.end method

.method private static pathOfBlockArrow2WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 8

    .line 787
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 788
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 789
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 790
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    .line 791
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    .line 792
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    .line 793
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetHeight(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr p0, v6

    add-float v6, v3, p0

    sub-float p0, v5, p0

    .line 796
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 797
    invoke-virtual {v7, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 798
    invoke-virtual {v7, v0, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 799
    invoke-virtual {v7, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 800
    invoke-virtual {v7, v2, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 801
    invoke-virtual {v7, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 802
    invoke-virtual {v7, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 803
    invoke-virtual {v7, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 804
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    return-object v7
.end method

.method private static pathOfBlockArrow3WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 9

    .line 812
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 813
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 814
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 815
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    .line 816
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    .line 817
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetWidth(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    .line 818
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetHeight(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr p0, v6

    add-float v6, v1, v5

    sub-float v5, v3, v5

    add-float v7, v2, p0

    sub-float p0, v4, p0

    .line 823
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 824
    invoke-virtual {v8, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 825
    invoke-virtual {v8, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 826
    invoke-virtual {v8, v6, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 827
    invoke-virtual {v8, v5, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 828
    invoke-virtual {v8, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 829
    invoke-virtual {v8, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 830
    invoke-virtual {v8, v5, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 831
    invoke-virtual {v8, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 832
    invoke-virtual {v8, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 833
    invoke-virtual {v8, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 834
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    return-object v8
.end method

.method private static pathOfBracket1WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 11

    .line 1179
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float v4, v0, v1

    .line 1180
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    sub-float/2addr v0, v4

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 1183
    iget v1, p0, Lcom/metamoji/cm/RectEx;->height:F

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v5, v1, v2

    .line 1186
    iget v1, p0, Lcom/metamoji/cm/RectEx;->x:F

    add-float/2addr v1, v0

    add-float v0, v1, v4

    .line 1188
    iget v2, p0, Lcom/metamoji/cm/RectEx;->y:F

    .line 1189
    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr p0, v2

    move v3, v2

    .line 1192
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    add-float/2addr v3, v5

    .line 1193
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    const-wide v8, 0x4066800000000000L    # 180.0

    const/4 v10, 0x0

    const-wide v6, 0x4070e00000000000L    # 270.0

    invoke-static/range {v2 .. v10}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addEllipseArcPointsToArrayInDegrees(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FFDDZ)V

    sub-float/2addr p0, v5

    .line 1196
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1199
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    const-wide v8, 0x4056800000000000L    # 90.0

    const-wide v6, 0x4066800000000000L    # 180.0

    invoke-static/range {v2 .. v10}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addEllipseArcPointsToArrayInDegrees(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FFDDZ)V

    .line 1202
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1203
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    return-object p0
.end method

.method private static pathOfBracket2WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 7

    .line 1212
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    .line 1213
    iget v1, p0, Lcom/metamoji/cm/RectEx;->width:F

    sub-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    .line 1216
    iget v2, p0, Lcom/metamoji/cm/RectEx;->height:F

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v3

    .line 1219
    iget v3, p0, Lcom/metamoji/cm/RectEx;->x:F

    add-float/2addr v3, v1

    add-float/2addr v0, v3

    .line 1221
    iget v1, p0, Lcom/metamoji/cm/RectEx;->y:F

    .line 1222
    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr p0, v1

    .line 1225
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 1226
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    add-float/2addr v1, v2

    .line 1227
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v1, p0, v2

    .line 1228
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1229
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v4, v1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v4
.end method

.method private static pathOfBracket3WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static pathOfCircle1WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 2

    .line 707
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 714
    invoke-virtual {p0}, Lcom/metamoji/cm/RectEx;->getRectF()Landroid/graphics/RectF;

    move-result-object p0

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-object v0
.end method

.method private static pathOfCircle2WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 5

    .line 722
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 723
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 724
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 728
    invoke-virtual {p0}, Lcom/metamoji/cm/RectEx;->getRectF()Landroid/graphics/RectF;

    move-result-object p0

    const/4 v3, 0x0

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {v2, p0, v3, v4}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 729
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 730
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    return-object v2
.end method

.method private static pathOfCircle3WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 4

    .line 739
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 745
    invoke-virtual {p0}, Lcom/metamoji/cm/RectEx;->getRectF()Landroid/graphics/RectF;

    move-result-object v1

    .line 746
    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 752
    iget v2, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p0, v3

    invoke-virtual {v1, v2, p0}, Landroid/graphics/RectF;->inset(FF)V

    .line 753
    sget-object p0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-object v0
.end method

.method private static pathOfConeWithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 11

    .line 1106
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v4, v0, v1

    .line 1107
    iget v0, p0, Lcom/metamoji/cm/RectEx;->height:F

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v5, v0, v1

    .line 1110
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    iget v1, p0, Lcom/metamoji/cm/RectEx;->y:F

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 1113
    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    sub-float/2addr v2, v5

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    .line 1116
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    .line 1117
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1118
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    iget v1, v3, Landroid/graphics/PointF;->y:F

    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const-wide v8, 0x4066800000000000L    # 180.0

    const/4 v10, 0x1

    const-wide/16 v6, 0x0

    .line 1121
    invoke-static/range {v2 .. v10}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addEllipseArcPointsToArrayInDegrees(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FFDDZ)V

    .line 1124
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1125
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1128
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1129
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    return-object p0
.end method

.method private static pathOfCuboidWithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 10

    .line 1138
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const v1, 0x3e99999a    # 0.3f

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v2, v1

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    .line 1141
    iget v1, p0, Lcom/metamoji/cm/RectEx;->x:F

    .line 1142
    iget v2, p0, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v2, v1

    .line 1143
    iget v3, p0, Lcom/metamoji/cm/RectEx;->y:F

    .line 1144
    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr p0, v3

    .line 1145
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    .line 1146
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    .line 1149
    iget v6, v0, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v6, v3

    invoke-static {v1, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v6

    .line 1150
    iget v7, v0, Lcom/metamoji/cm/SizeF;->width:F

    sub-float v7, v2, v7

    iget v8, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v7, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v7

    .line 1151
    iget v8, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v8, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v8

    .line 1152
    iget v9, v0, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v1, v9

    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    .line 1153
    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    sub-float/2addr p0, v0

    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    .line 1156
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1157
    iget v2, v4, Landroid/graphics/PointF;->x:F

    iget v3, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1158
    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1159
    iget p0, v8, Landroid/graphics/PointF;->x:F

    iget v2, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1160
    iget p0, v5, Landroid/graphics/PointF;->x:F

    iget v2, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1161
    iget p0, v6, Landroid/graphics/PointF;->x:F

    iget v2, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1162
    iget p0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1163
    iget p0, v4, Landroid/graphics/PointF;->x:F

    iget v1, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1164
    iget p0, v7, Landroid/graphics/PointF;->x:F

    iget v1, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1165
    iget p0, v6, Landroid/graphics/PointF;->x:F

    iget v1, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1166
    iget p0, v7, Landroid/graphics/PointF;->x:F

    iget v1, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1167
    iget p0, v8, Landroid/graphics/PointF;->x:F

    iget v1, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1168
    iget p0, v7, Landroid/graphics/PointF;->x:F

    iget v1, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1169
    iget p0, v4, Landroid/graphics/PointF;->x:F

    iget v1, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

.method private static pathOfCylinderWithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 11

    .line 1072
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v4, v0, v1

    .line 1073
    iget v0, p0, Lcom/metamoji/cm/RectEx;->height:F

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v5, v0, v1

    .line 1076
    iget v0, p0, Lcom/metamoji/cm/RectEx;->x:F

    add-float/2addr v0, v4

    iget v1, p0, Lcom/metamoji/cm/RectEx;->y:F

    add-float/2addr v1, v5

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 1077
    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    sub-float/2addr v2, v5

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    .line 1080
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    .line 1081
    invoke-static {v2, v0, v4, v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addEllipsePointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FF)V

    .line 1084
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->lastPoint(Lcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1085
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    const-wide v8, 0x4066800000000000L    # 180.0

    const/4 v10, 0x1

    const-wide/16 v6, 0x0

    .line 1088
    invoke-static/range {v2 .. v10}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addEllipseArcPointsToArrayInDegrees(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FFDDZ)V

    .line 1091
    iget p0, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    .line 1092
    invoke-static {p0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1093
    invoke-static {p0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1096
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1097
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    return-object p0
.end method

.method private static pathOfFlowchartDecisionWithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 7

    .line 1337
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const v1, 0x3ebd70a4    # 0.37f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    mul-float/2addr v1, v2

    .line 1341
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 1342
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    sub-float v3, v2, v0

    add-float/2addr v0, v2

    sub-float v4, p0, v1

    add-float/2addr v1, p0

    .line 1349
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v5

    .line 1350
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1351
    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1352
    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1355
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1356
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1359
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1360
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1363
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1364
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1367
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1368
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p0, v5, v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    return-object p0
.end method

.method private static pathOfFlowchartLoopEndWithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 8

    .line 1429
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const v1, 0x3ebd70a4    # 0.37f

    mul-float v2, v0, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    mul-float/2addr v3, v2

    .line 1433
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    .line 1434
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    sub-float v5, v4, v0

    add-float/2addr v4, v0

    sub-float v0, p0, v3

    add-float/2addr p0, v3

    mul-float/2addr v2, v1

    add-float v1, v5, v2

    sub-float v3, v4, v2

    sub-float v2, p0, v2

    .line 1445
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v6

    .line 1446
    invoke-static {v5, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1447
    invoke-static {v4, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1448
    invoke-static {v4, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1451
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1452
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1455
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1456
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1459
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1460
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1463
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1464
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1467
    invoke-static {v5, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1468
    invoke-static {v5, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1471
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1472
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p0, v6, v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    return-object p0
.end method

.method private static pathOfFlowchartLoopStartWithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 8

    .line 1377
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const v1, 0x3ebd70a4    # 0.37f

    mul-float v2, v0, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v0, v3

    mul-float/2addr v3, v2

    .line 1381
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    .line 1382
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    sub-float v5, v4, v0

    add-float/2addr v4, v0

    sub-float v0, p0, v3

    add-float/2addr p0, v3

    mul-float/2addr v2, v1

    add-float v1, v5, v2

    sub-float v3, v4, v2

    add-float/2addr v2, v0

    .line 1393
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v6

    .line 1394
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1395
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1396
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1399
    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1400
    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1403
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1404
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1407
    invoke-static {v4, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1408
    invoke-static {v4, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1411
    invoke-static {v5, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1412
    invoke-static {v5, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1415
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1416
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1419
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1420
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p0, v6, v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    return-object p0
.end method

.method private static pathOfFlowchartProcessWithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 5

    .line 1297
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const v1, 0x3ebd70a4    # 0.37f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    mul-float/2addr v1, v2

    .line 1301
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 1302
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    sub-float v3, v2, v0

    add-float/2addr v2, v0

    sub-float v0, p0, v1

    add-float/2addr p0, v1

    .line 1309
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    .line 1310
    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1311
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1312
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1315
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1316
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1319
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1320
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1323
    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1324
    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1327
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1328
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    return-object p0
.end method

.method private static pathOfFlowchartStartEndWithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 13

    .line 1249
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const v1, 0x3ebd70a4    # 0.37f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    mul-float v5, v1, v2

    .line 1253
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 1254
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    sub-float v2, v1, v0

    add-float/2addr v2, v5

    add-float/2addr v1, v0

    sub-float/2addr v1, v5

    sub-float v0, p0, v5

    add-float v12, p0, v5

    .line 1261
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v3

    .line 1262
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1263
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1267
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    const-wide v9, 0x4056800000000000L    # 90.0

    const/4 v11, 0x1

    const-wide v7, 0x4070e00000000000L    # 270.0

    move v6, v5

    .line 1266
    invoke-static/range {v3 .. v11}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addEllipseArcPointsToArrayInDegrees(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FFDDZ)V

    .line 1275
    invoke-static {v2, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1279
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    const-wide v9, 0x4070e00000000000L    # 270.0

    const-wide v7, 0x4056800000000000L    # 90.0

    .line 1278
    invoke-static/range {v3 .. v11}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addEllipseArcPointsToArrayInDegrees(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;FFDDZ)V

    .line 1287
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1288
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p0, v3, v0}, Lcom/metamoji/un/draw2/library/utility/example/DrUtShapeExamples;->addQuadCurvesToPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)V

    return-object p0
.end method

.method private static pathOfLine1WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 3

    .line 1029
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 1030
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1031
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1032
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    invoke-virtual {v1, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v1
.end method

.method private static pathOfLine2WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 3

    .line 1040
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 1041
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1042
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1043
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    invoke-virtual {v1, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v1
.end method

.method private static pathOfLine3WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 3

    .line 1051
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1052
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1053
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

.method private static pathOfLine4WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 3

    .line 1061
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1062
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1063
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method

.method private static pathOfPageWithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 9

    .line 1481
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    iget v1, p0, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    .line 1484
    iget v1, p0, Lcom/metamoji/cm/RectEx;->x:F

    .line 1485
    iget v2, p0, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v2, v1

    .line 1486
    iget v3, p0, Lcom/metamoji/cm/RectEx;->y:F

    .line 1487
    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr p0, v3

    sub-float v4, v2, v0

    sub-float v0, p0, v0

    .line 1490
    invoke-static {v4, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 1491
    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    .line 1492
    iget v5, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v5, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v5

    .line 1495
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 1496
    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1497
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1498
    iget v2, v4, Landroid/graphics/PointF;->x:F

    iget v3, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1499
    iget v2, v5, Landroid/graphics/PointF;->x:F

    iget v3, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1500
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v2, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1501
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    .line 1502
    iget p0, v0, Landroid/graphics/PointF;->x:F

    iget v1, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, p0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1503
    iget p0, v4, Landroid/graphics/PointF;->x:F

    iget v1, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, p0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1504
    iget p0, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, p0, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1505
    iget p0, v5, Landroid/graphics/PointF;->x:F

    iget v0, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, p0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v6
.end method

.method private static pathOfRectangle1WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 4

    .line 606
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 607
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 608
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 609
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    .line 610
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 611
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 612
    invoke-virtual {v3, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 613
    invoke-virtual {v3, v2, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 614
    invoke-virtual {v3, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 615
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    return-object v3
.end method

.method private static pathOfRectangle2WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 4

    .line 627
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetWidth(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    .line 628
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetHeight(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    div-float/2addr v2, v1

    .line 633
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 668
    invoke-virtual {p0}, Lcom/metamoji/cm/RectEx;->getRectF()Landroid/graphics/RectF;

    move-result-object p0

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    return-object v1
.end method

.method private static pathOfRectangle3WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 8

    .line 676
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 677
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 678
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 679
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    .line 680
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetWidth(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    .line 681
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetHeight(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    div-float/2addr p0, v5

    add-float v5, v0, v4

    sub-float v4, v2, v4

    add-float v6, v1, p0

    sub-float p0, v3, p0

    .line 686
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 687
    invoke-virtual {v7, v2, p0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 688
    invoke-virtual {v7, v4, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 689
    invoke-virtual {v7, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 690
    invoke-virtual {v7, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 691
    invoke-virtual {v7, v5, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 692
    invoke-virtual {v7, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 693
    invoke-virtual {v7, v0, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 694
    invoke-virtual {v7, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 695
    invoke-virtual {v7, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 696
    invoke-virtual {v7, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 697
    invoke-virtual {v7, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 698
    invoke-virtual {v7, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 699
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    return-object v7
.end method

.method private static pathOfStar1WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 6

    .line 842
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 843
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 844
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 845
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    .line 846
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    .line 847
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    .line 848
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 849
    invoke-virtual {v5, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 850
    invoke-virtual {v5, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 851
    invoke-virtual {v5, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 852
    invoke-virtual {v5, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 853
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    return-object v5
.end method

.method private static pathOfStar2WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 9

    .line 866
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 867
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 868
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 869
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetWidth(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetHeight(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    div-float/2addr p0, v2

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 871
    :cond_0
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 873
    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    const/high16 v2, 0x41900000    # 18.0f

    float-to-double v3, v2

    const v5, 0x4198c952

    invoke-static {v1, v5, v3, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnCircleWithCenterInDegrees(Landroid/graphics/PointF;FD)Landroid/graphics/PointF;

    move-result-object v1

    .line 874
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    const/high16 v3, 0x42100000    # 36.0f

    add-float/2addr v2, v3

    .line 877
    sget-object v4, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    float-to-double v6, v2

    const/high16 v8, 0x42480000    # 50.0f

    invoke-static {v4, v8, v6, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnCircleWithCenterInDegrees(Landroid/graphics/PointF;FD)Landroid/graphics/PointF;

    move-result-object v4

    .line 878
    iget v6, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v2, v3

    .line 880
    sget-object v3, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    float-to-double v6, v2

    invoke-static {v3, v5, v6, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnCircleWithCenterInDegrees(Landroid/graphics/PointF;FD)Landroid/graphics/PointF;

    move-result-object v3

    .line 881
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 883
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    .line 885
    invoke-virtual {p0, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-object p0
.end method

.method private static pathOfTriangle1WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 5

    .line 573
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 574
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 575
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 576
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    .line 577
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    .line 578
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 579
    invoke-virtual {v4, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 580
    invoke-virtual {v4, v3, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 581
    invoke-virtual {v4, v1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 582
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    return-object v4
.end method

.method private static pathOfTriangle2WithBounds(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Path;
    .locals 4

    .line 590
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 591
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 592
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 593
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    .line 594
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 595
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 596
    invoke-virtual {v3, v2, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 597
    invoke-virtual {v3, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 598
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    return-object v3
.end method
