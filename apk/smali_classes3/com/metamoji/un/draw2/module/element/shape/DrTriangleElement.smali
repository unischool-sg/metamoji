.class public Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;
.super Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;
.source "DrTriangleElement.java"


# static fields
.field private static final VARIATION_KEY_EXTRA_HANDLE_POSITION:Ljava/lang/String; = "p"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;-><init>()V

    return-void
.end method

.method private adjustHandlePoint(Landroid/graphics/PointF;Z)Landroid/graphics/PointF;
    .locals 5

    .line 1082
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1083
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 1084
    new-instance v1, Lcom/metamoji/cm/RectEx;

    iget v2, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget v3, p1, Lcom/metamoji/cm/RectEx;->y:F

    iget p1, p1, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    const/4 p1, 0x5

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;I)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1087
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private applyHandlePosition(FLcom/metamoji/cm/RectEx;ZZ)V
    .locals 3

    .line 1054
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 1055
    invoke-static {p2, p1, v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->checkSegmentPointsWithBaseBounds(Lcom/metamoji/cm/RectEx;FLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/4 p1, 0x0

    .line 1058
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p1

    .line 1059
    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/4 p1, 0x1

    .line 1062
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p1

    .line 1063
    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    const/4 p1, 0x2

    .line 1066
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p1

    .line 1067
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    if-eqz p3, :cond_0

    .line 1071
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->updateSegments()V

    :cond_0
    if-eqz p4, :cond_1

    .line 1076
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->updateExtraHandles()V

    :cond_1
    return-void
.end method

.method private static checkSegmentPointsWithBaseBounds(Lcom/metamoji/cm/RectEx;FLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 1096
    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->handlePointFromHandlePosition(FLcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1097
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 1098
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    invoke-virtual {p4, p1, p0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method private constructWithBaseBounds(Lcom/metamoji/cm/RectEx;F)V
    .locals 3

    .line 1016
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 1017
    invoke-static {p1, p2, v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->checkSegmentPointsWithBaseBounds(Lcom/metamoji/cm/RectEx;FLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1020
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p1

    .line 1021
    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1022
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->addSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V

    .line 1025
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p1

    .line 1026
    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 1027
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->addSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V

    .line 1030
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object p1

    .line 1031
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 1032
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->addSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V

    .line 1035
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->updateSegments()V

    .line 1038
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->updateExtraHandles()V

    return-void
.end method

.method private handlePoint()Landroid/graphics/PointF;
    .locals 1

    const/4 v0, 0x0

    .line 1043
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method private static handlePointFromHandlePosition(FLcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;
    .locals 3

    .line 1104
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget v2, p1, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    iget p0, p1, Lcom/metamoji/cm/RectEx;->y:F

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private handlePosition()F
    .locals 2

    .line 1048
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->handlePoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->handlePositionFromHandlePoint(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)F

    move-result v0

    return v0
.end method

.method private static handlePositionFromHandlePoint(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)F
    .locals 7

    .line 1108
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 1109
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    .line 1110
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v1

    .line 1111
    iget v2, p0, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x5

    .line 1112
    invoke-static {v1, v0, p1, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 1113
    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1115
    :cond_0
    aget v4, v1, v3

    iput v4, p0, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v0, p1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 1118
    iget p0, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, v0

    sub-float/2addr p1, v0

    div-float/2addr p0, p1

    .line 1119
    aput p0, v1, v3

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1120
    invoke-static {v1, v6, p0, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    .line 1121
    invoke-static {p0, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1123
    :cond_1
    aget p0, v1, v3

    return p0

    :cond_2
    return v6
.end method

.method private static handlePositionFromVariation(Ljava/util/Map;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)F"
        }
    .end annotation

    .line 1140
    const-string v0, "p"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1142
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    .line 1143
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v0

    const/4 v1, 0x0

    .line 1144
    aput p0, v0, v1

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 1145
    invoke-static {v0, v3, p0, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 1146
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1148
    :cond_0
    aget p0, v0, v1

    return p0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public static newEmptyTriangleElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 459
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->newEmptySegmentalShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 461
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->TRIANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 463
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method public static newTriangleElementWithBaseBounds(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;
    .locals 5

    .line 475
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFiniteRect(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 476
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 479
    :cond_0
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/metamoji/cm/RectEx;->height:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    goto :goto_1

    .line 483
    :cond_1
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v0

    .line 484
    aput p1, v0, v1

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    .line 485
    invoke-static {v0, v3, p1, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 486
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 488
    :cond_2
    aget p1, v0, v1

    if-eqz p3, :cond_3

    .line 491
    invoke-static {p3}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->newEmptyTriangleElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p3

    goto :goto_0

    :cond_3
    move-object p3, v2

    .line 494
    :goto_0
    new-instance v0, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;-><init>()V

    invoke-virtual {v0, p3, p4, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;

    .line 497
    invoke-virtual {p3, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 500
    invoke-direct {p3, p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->constructWithBaseBounds(Lcom/metamoji/cm/RectEx;F)V

    if-eqz p5, :cond_4

    .line 504
    invoke-virtual {p3, p5}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->editWithContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    :cond_4
    return-object p3

    :cond_5
    :goto_1
    const/4 p0, 0x1

    .line 480
    invoke-static {p0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2
.end method

.method public static newTriangleElementWithPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 517
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    goto/16 :goto_21

    .line 523
    :cond_0
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    const/4 v7, 0x5

    invoke-static {v3, v6, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 524
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 526
    :cond_1
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v6, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 527
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 529
    :cond_2
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v6, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 530
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 532
    :cond_3
    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v6, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 533
    iget v3, v0, Landroid/graphics/PointF;->y:F

    iput v3, v1, Landroid/graphics/PointF;->y:F

    .line 535
    :cond_4
    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v6, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 536
    iget v3, v1, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 538
    :cond_5
    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v6, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 539
    iget v3, v2, Landroid/graphics/PointF;->y:F

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 543
    :cond_6
    invoke-static/range {p0 .. p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v3

    const/4 v6, 0x1

    if-nez v3, :cond_44

    invoke-static/range {p1 .. p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v3

    if-nez v3, :cond_44

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v3

    if-nez v3, :cond_44

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_7

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v8, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_44

    :cond_7
    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_8

    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget v8, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_8

    goto/16 :goto_20

    .line 550
    :cond_8
    invoke-static/range {p0 .. p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v3

    .line 551
    invoke-static/range {p1 .. p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v8

    .line 552
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v9

    .line 553
    sget-object v10, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    sget-object v11, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    sget-object v12, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    .line 555
    invoke-static {v3, v8, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_e

    .line 556
    invoke-static {v8, v9, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 558
    iget v10, v0, Landroid/graphics/PointF;->y:F

    iget v11, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_a

    .line 559
    iget v9, v0, Landroid/graphics/PointF;->y:F

    iget v10, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_9

    .line 561
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v3, v9

    if-gtz v3, :cond_11

    goto/16 :goto_3

    .line 571
    :cond_9
    iget v8, v0, Landroid/graphics/PointF;->x:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_f

    goto :goto_1

    .line 581
    :cond_a
    iget v8, v1, Landroid/graphics/PointF;->y:F

    iget v10, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v8, v8, v10

    if-gtz v8, :cond_b

    .line 583
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v8, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_d

    goto :goto_0

    .line 593
    :cond_b
    iget v8, v0, Landroid/graphics/PointF;->x:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_f

    goto :goto_1

    .line 606
    :cond_c
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v8, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_d

    goto :goto_0

    :cond_d
    move-object/from16 v21, v2

    move-object v2, v0

    move-object/from16 v0, v21

    :goto_0
    move v3, v9

    goto :goto_2

    .line 615
    :cond_e
    invoke-static {v8, v9, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 618
    iget v8, v0, Landroid/graphics/PointF;->x:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_f

    goto :goto_1

    :cond_f
    move-object/from16 v21, v1

    move-object v1, v0

    move-object/from16 v0, v21

    :goto_1
    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    :goto_2
    const/16 v16, 0x0

    goto/16 :goto_18

    .line 626
    :cond_10
    invoke-static {v9, v3, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 629
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v9, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v3, v9

    if-gtz v3, :cond_11

    goto :goto_3

    :cond_11
    move-object/from16 v21, v2

    move-object v2, v1

    move-object/from16 v1, v21

    :goto_3
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    move v3, v8

    goto :goto_2

    .line 640
    :cond_12
    iget v13, v0, Landroid/graphics/PointF;->x:F

    iget v15, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v13, v13, v15

    if-nez v13, :cond_19

    .line 641
    iget v13, v1, Landroid/graphics/PointF;->y:F

    iget v15, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v13, v13, v15

    if-nez v13, :cond_14

    .line 643
    iget v10, v1, Landroid/graphics/PointF;->x:F

    iget v11, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_13

    :goto_4
    move-object v11, v1

    move-object v12, v2

    goto :goto_5

    :cond_13
    move-object v12, v1

    move-object v11, v2

    :goto_5
    move-object v10, v0

    :goto_6
    move v13, v6

    move v15, v8

    goto/16 :goto_e

    .line 652
    :cond_14
    iget v13, v2, Landroid/graphics/PointF;->y:F

    iget v15, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v13, v13, v15

    if-nez v13, :cond_16

    .line 654
    iget v10, v0, Landroid/graphics/PointF;->x:F

    iget v11, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_15

    :goto_7
    move-object v11, v0

    move-object v12, v2

    goto :goto_8

    :cond_15
    move-object v12, v0

    move-object v11, v2

    :goto_8
    move-object v10, v1

    :goto_9
    move v13, v6

    move v15, v9

    goto/16 :goto_e

    .line 664
    :cond_16
    iget v13, v2, Landroid/graphics/PointF;->y:F

    iget v15, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v13, v13, v15

    if-lez v13, :cond_17

    iget v13, v2, Landroid/graphics/PointF;->y:F

    iget v15, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v13, v13, v15

    if-ltz v13, :cond_18

    :cond_17
    iget v13, v2, Landroid/graphics/PointF;->y:F

    iget v15, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v13, v13, v15

    if-lez v13, :cond_2a

    iget v13, v2, Landroid/graphics/PointF;->y:F

    iget v15, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v13, v13, v15

    if-gez v13, :cond_2a

    :cond_18
    :goto_a
    move-object v11, v0

    move-object v12, v1

    goto :goto_b

    .line 672
    :cond_19
    iget v13, v1, Landroid/graphics/PointF;->x:F

    iget v15, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v13, v13, v15

    if-nez v13, :cond_1e

    .line 673
    iget v13, v0, Landroid/graphics/PointF;->y:F

    iget v15, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v13, v13, v15

    if-nez v13, :cond_1a

    .line 675
    iget v10, v0, Landroid/graphics/PointF;->x:F

    iget v11, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_25

    goto :goto_a

    :goto_b
    move-object v10, v2

    move v15, v3

    move v13, v6

    goto/16 :goto_e

    .line 684
    :cond_1a
    iget v13, v2, Landroid/graphics/PointF;->y:F

    iget v15, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v13, v13, v15

    if-nez v13, :cond_1b

    .line 686
    iget v10, v0, Landroid/graphics/PointF;->x:F

    iget v11, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_15

    goto :goto_7

    .line 696
    :cond_1b
    iget v13, v0, Landroid/graphics/PointF;->y:F

    iget v15, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v13, v13, v15

    if-lez v13, :cond_1c

    iget v13, v0, Landroid/graphics/PointF;->y:F

    iget v15, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v13, v13, v15

    if-ltz v13, :cond_1d

    :cond_1c
    iget v13, v0, Landroid/graphics/PointF;->y:F

    iget v15, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v13, v13, v15

    if-lez v13, :cond_2a

    iget v13, v0, Landroid/graphics/PointF;->y:F

    iget v15, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v13, v13, v15

    if-gez v13, :cond_2a

    :cond_1d
    :goto_c
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    goto/16 :goto_6

    .line 704
    :cond_1e
    iget v13, v2, Landroid/graphics/PointF;->x:F

    iget v15, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v13, v13, v15

    if-nez v13, :cond_23

    .line 705
    iget v13, v0, Landroid/graphics/PointF;->y:F

    iget v15, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v13, v13, v15

    if-nez v13, :cond_1f

    .line 707
    iget v10, v0, Landroid/graphics/PointF;->x:F

    iget v11, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_25

    goto :goto_a

    .line 716
    :cond_1f
    iget v13, v1, Landroid/graphics/PointF;->y:F

    iget v15, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v13, v13, v15

    if-nez v13, :cond_20

    .line 718
    iget v10, v1, Landroid/graphics/PointF;->x:F

    iget v11, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_13

    goto/16 :goto_4

    .line 728
    :cond_20
    iget v13, v1, Landroid/graphics/PointF;->y:F

    iget v15, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v13, v13, v15

    if-lez v13, :cond_21

    iget v13, v1, Landroid/graphics/PointF;->y:F

    iget v15, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v13, v13, v15

    if-ltz v13, :cond_22

    :cond_21
    iget v13, v1, Landroid/graphics/PointF;->y:F

    iget v15, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v13, v13, v15

    if-lez v13, :cond_2a

    iget v13, v1, Landroid/graphics/PointF;->y:F

    iget v15, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v13, v13, v15

    if-gez v13, :cond_2a

    :cond_22
    :goto_d
    move-object v11, v0

    move-object v10, v1

    move-object v12, v2

    goto/16 :goto_9

    .line 737
    :cond_23
    iget v13, v0, Landroid/graphics/PointF;->y:F

    iget v15, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v13, v13, v15

    if-nez v13, :cond_26

    .line 738
    iget v13, v2, Landroid/graphics/PointF;->x:F

    iget v15, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v13, v13, v15

    if-lez v13, :cond_24

    iget v13, v2, Landroid/graphics/PointF;->x:F

    iget v15, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v13, v13, v15

    if-gez v13, :cond_24

    goto/16 :goto_a

    .line 744
    :cond_24
    iget v13, v2, Landroid/graphics/PointF;->x:F

    iget v15, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v13, v13, v15

    if-lez v13, :cond_2a

    iget v13, v2, Landroid/graphics/PointF;->x:F

    iget v15, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v13, v13, v15

    if-gez v13, :cond_2a

    :cond_25
    move-object v12, v0

    move-object v11, v1

    goto/16 :goto_b

    .line 751
    :cond_26
    iget v13, v1, Landroid/graphics/PointF;->y:F

    iget v15, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v13, v13, v15

    if-nez v13, :cond_28

    .line 752
    iget v13, v0, Landroid/graphics/PointF;->x:F

    iget v15, v1, Landroid/graphics/PointF;->x:F

    cmpl-float v13, v13, v15

    if-lez v13, :cond_27

    iget v13, v0, Landroid/graphics/PointF;->x:F

    iget v15, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v13, v13, v15

    if-gez v13, :cond_27

    goto/16 :goto_c

    .line 758
    :cond_27
    iget v13, v0, Landroid/graphics/PointF;->x:F

    iget v15, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v13, v13, v15

    if-lez v13, :cond_2a

    iget v13, v0, Landroid/graphics/PointF;->x:F

    iget v15, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v13, v13, v15

    if-gez v13, :cond_2a

    move-object v10, v0

    move-object v12, v1

    move-object v11, v2

    goto/16 :goto_6

    .line 765
    :cond_28
    iget v13, v2, Landroid/graphics/PointF;->y:F

    iget v15, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v13, v13, v15

    if-nez v13, :cond_2a

    .line 766
    iget v13, v1, Landroid/graphics/PointF;->x:F

    iget v15, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v13, v13, v15

    if-lez v13, :cond_29

    iget v13, v1, Landroid/graphics/PointF;->x:F

    iget v15, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v13, v13, v15

    if-gez v13, :cond_29

    goto :goto_d

    .line 772
    :cond_29
    iget v13, v1, Landroid/graphics/PointF;->x:F

    iget v15, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v13, v13, v15

    if-lez v13, :cond_2a

    iget v13, v1, Landroid/graphics/PointF;->x:F

    iget v15, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v13, v13, v15

    if-gez v13, :cond_2a

    move-object v12, v0

    move-object v10, v1

    move-object v11, v2

    goto/16 :goto_9

    :cond_2a
    move v15, v14

    const/4 v13, 0x0

    :goto_e
    const/16 v16, 0x0

    if-nez v13, :cond_32

    .line 784
    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v5

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const-wide/16 v19, 0x0

    if-gtz v4, :cond_2e

    .line 785
    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2c

    .line 788
    invoke-static {v1, v2, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getFootOfPerpendicularLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 786
    invoke-static {v1, v2, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointParameterOfLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v4

    cmpl-double v19, v4, v19

    if-ltz v19, :cond_32

    cmpg-double v4, v4, v17

    if-gtz v4, :cond_32

    .line 793
    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2b

    move-object v11, v1

    move-object v12, v2

    goto :goto_f

    :cond_2b
    move-object v12, v1

    move-object v11, v2

    :goto_f
    move-object v10, v0

    move v13, v6

    move v15, v8

    goto/16 :goto_14

    .line 806
    :cond_2c
    invoke-static/range {p0 .. p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getFootOfPerpendicularLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 804
    invoke-static {v0, v1, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointParameterOfLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v4

    cmpl-double v19, v4, v19

    if-ltz v19, :cond_32

    cmpg-double v4, v4, v17

    if-gtz v4, :cond_32

    .line 811
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2d

    move-object v11, v0

    move-object v12, v1

    goto :goto_10

    :cond_2d
    move-object v12, v0

    move-object v11, v1

    :goto_10
    move-object v10, v2

    move v15, v3

    goto :goto_13

    .line 823
    :cond_2e
    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_30

    .line 826
    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getFootOfPerpendicularLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 824
    invoke-static {v2, v0, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointParameterOfLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v4

    cmpl-double v19, v4, v19

    if-ltz v19, :cond_32

    cmpg-double v4, v4, v17

    if-gtz v4, :cond_32

    .line 831
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2f

    move-object v11, v0

    move-object v12, v2

    goto :goto_11

    :cond_2f
    move-object v12, v0

    move-object v11, v2

    :goto_11
    move-object v10, v1

    move v13, v6

    move v15, v9

    goto :goto_14

    .line 844
    :cond_30
    invoke-static/range {p0 .. p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getFootOfPerpendicularLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    .line 842
    invoke-static {v0, v1, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointParameterOfLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v4

    cmpl-double v19, v4, v19

    if-ltz v19, :cond_32

    cmpg-double v4, v4, v17

    if-gtz v4, :cond_32

    .line 849
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_31

    move-object v4, v0

    move-object v5, v1

    goto :goto_12

    :cond_31
    move-object v5, v0

    move-object v4, v1

    :goto_12
    move-object v10, v2

    move v15, v3

    move-object v11, v4

    move-object v12, v5

    :goto_13
    move v13, v6

    :cond_32
    :goto_14
    if-nez v13, :cond_39

    cmpl-float v4, v3, v8

    if-ltz v4, :cond_35

    cmpl-float v4, v3, v9

    if-ltz v4, :cond_34

    .line 868
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_33

    goto :goto_15

    :cond_33
    move-object/from16 v21, v1

    move-object v1, v0

    move-object/from16 v0, v21

    :goto_15
    move-object/from16 v21, v2

    move-object v2, v1

    move-object/from16 v1, v21

    goto :goto_18

    .line 878
    :cond_34
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_38

    goto :goto_17

    :cond_35
    cmpl-float v3, v8, v9

    if-ltz v3, :cond_37

    .line 890
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_36

    goto :goto_16

    :cond_36
    move-object/from16 v21, v2

    move-object v2, v1

    move-object/from16 v1, v21

    :goto_16
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    move v3, v8

    goto :goto_18

    .line 900
    :cond_37
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_38

    goto :goto_17

    :cond_38
    move-object/from16 v21, v2

    move-object v2, v0

    move-object/from16 v0, v21

    :goto_17
    move v3, v9

    goto :goto_18

    :cond_39
    move-object v1, v10

    move-object v0, v11

    move-object v2, v12

    move v3, v15

    .line 914
    :goto_18
    new-instance v8, Lcom/metamoji/cm/RectEx;

    sget-object v4, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-direct {v8, v4}, Lcom/metamoji/cm/RectEx;-><init>(Lcom/metamoji/cm/RectEx;)V

    .line 917
    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v9, 0x43340000    # 180.0f

    if-nez v4, :cond_3b

    .line 919
    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3a

    .line 920
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iput v3, v8, Lcom/metamoji/cm/RectEx;->x:F

    .line 921
    iget v3, v1, Landroid/graphics/PointF;->y:F

    iput v3, v8, Lcom/metamoji/cm/RectEx;->y:F

    .line 922
    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iput v2, v8, Lcom/metamoji/cm/RectEx;->width:F

    .line 923
    iget v2, v0, Landroid/graphics/PointF;->y:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iput v2, v8, Lcom/metamoji/cm/RectEx;->height:F

    .line 924
    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v0

    iget v0, v8, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v1, v0

    move v9, v14

    goto/16 :goto_1e

    .line 926
    :cond_3a
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iput v3, v8, Lcom/metamoji/cm/RectEx;->x:F

    .line 927
    iget v3, v0, Landroid/graphics/PointF;->y:F

    iput v3, v8, Lcom/metamoji/cm/RectEx;->y:F

    .line 928
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iput v3, v8, Lcom/metamoji/cm/RectEx;->width:F

    .line 929
    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v0

    iput v3, v8, Lcom/metamoji/cm/RectEx;->height:F

    .line 931
    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iget v1, v8, Lcom/metamoji/cm/RectEx;->width:F

    div-float v1, v0, v1

    goto/16 :goto_1e

    .line 933
    :cond_3b
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v10, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v10

    const/high16 v10, 0x40000000    # 2.0f

    if-nez v4, :cond_40

    .line 935
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    if-gez v3, :cond_3c

    .line 936
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v9

    iput v3, v8, Lcom/metamoji/cm/RectEx;->height:F

    const/high16 v3, 0x43870000    # 270.0f

    move v9, v3

    goto :goto_19

    .line 939
    :cond_3c
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v9, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v9

    iput v3, v8, Lcom/metamoji/cm/RectEx;->height:F

    move v9, v4

    .line 942
    :goto_19
    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget v11, v2, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v11

    if-gez v3, :cond_3e

    .line 943
    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v11, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v11

    iput v3, v8, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v3, v9, v4

    if-nez v3, :cond_3d

    .line 944
    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1a

    :cond_3d
    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    :goto_1a
    sub-float/2addr v3, v4

    iget v4, v8, Lcom/metamoji/cm/RectEx;->width:F

    :goto_1b
    div-float/2addr v3, v4

    goto :goto_1d

    .line 946
    :cond_3e
    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget v11, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v11

    iput v3, v8, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v3, v9, v4

    if-nez v3, :cond_3f

    .line 947
    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget v4, v2, Landroid/graphics/PointF;->y:F

    goto :goto_1c

    :cond_3f
    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    :goto_1c
    sub-float/2addr v3, v4

    iget v4, v8, Lcom/metamoji/cm/RectEx;->width:F

    goto :goto_1b

    .line 949
    :goto_1d
    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v4

    iget v4, v8, Lcom/metamoji/cm/RectEx;->width:F

    sub-float/2addr v1, v4

    div-float/2addr v1, v10

    iput v1, v8, Lcom/metamoji/cm/RectEx;->x:F

    .line 950
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iget v1, v8, Lcom/metamoji/cm/RectEx;->height:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v10

    iput v0, v8, Lcom/metamoji/cm/RectEx;->y:F

    move v1, v3

    goto/16 :goto_1e

    .line 953
    :cond_40
    iput v3, v8, Lcom/metamoji/cm/RectEx;->width:F

    .line 956
    invoke-static {v0, v2, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getFootOfPerpendicularLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 959
    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v4

    iput v4, v8, Lcom/metamoji/cm/RectEx;->height:F

    .line 962
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v11, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v11

    iget v11, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v11

    iget v11, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v11

    div-float/2addr v4, v10

    iget v11, v0, Landroid/graphics/PointF;->y:F

    iget v12, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v12

    iget v12, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v12

    iget v12, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v12

    div-float/2addr v11, v10

    invoke-static {v4, v11}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v4

    .line 963
    iget v11, v4, Landroid/graphics/PointF;->x:F

    iget v12, v8, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v12, v10

    sub-float/2addr v11, v12

    iput v11, v8, Lcom/metamoji/cm/RectEx;->x:F

    .line 964
    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v11, v8, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v11, v10

    sub-float/2addr v4, v11

    iput v4, v8, Lcom/metamoji/cm/RectEx;->y:F

    .line 967
    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v10, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v10

    iput v4, v1, Landroid/graphics/PointF;->x:F

    .line 968
    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v10, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v10

    iput v4, v1, Landroid/graphics/PointF;->y:F

    .line 969
    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v10, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v10

    iput v4, v2, Landroid/graphics/PointF;->x:F

    .line 970
    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget v10, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v10

    iput v4, v2, Landroid/graphics/PointF;->y:F

    .line 971
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v10, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v10

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 972
    iget v4, v3, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v0

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 975
    iget v0, v3, Landroid/graphics/PointF;->x:F

    iget v4, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v4

    iget v4, v3, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v3

    add-float/2addr v0, v4

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    iget v3, v8, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v0, v3

    const/high16 v3, 0x41200000    # 10.0f

    .line 978
    invoke-static {v3, v14}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    sget-object v4, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    invoke-static {v3, v4, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    .line 981
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->radianFromDegree(F)F

    move-result v3

    neg-float v3, v3

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMakeRotation(F)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v1

    .line 982
    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v1, v14

    if-lez v1, :cond_41

    add-float/2addr v9, v2

    sub-float v1, v5, v0

    goto :goto_1e

    :cond_41
    move v1, v0

    move v9, v2

    .line 989
    :goto_1e
    new-array v0, v6, [F

    aput v1, v0, v16

    .line 990
    invoke-static {v0, v14, v5, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result v2

    if-nez v2, :cond_42

    .line 991
    aget v1, v0, v16

    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 992
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 997
    :cond_42
    invoke-static {v9, v14, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-nez v0, :cond_43

    .line 998
    new-instance v5, Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-direct {v5}, Lcom/metamoji/un/draw2/module/element/DrEditContext;-><init>()V

    .line 999
    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v5, v9, v0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->setRotateContextWithAngleInDegrees(FLandroid/graphics/PointF;)V

    move-object v13, v5

    goto :goto_1f

    :cond_43
    const/4 v13, 0x0

    :goto_1f
    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move v9, v1

    .line 1003
    invoke-static/range {v8 .. v13}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->newTriangleElementWithBaseBounds(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;

    move-result-object v0

    return-object v0

    :cond_44
    :goto_20
    const/4 v2, 0x0

    .line 545
    invoke-static {v6, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    :cond_45
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 518
    :goto_21
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2
.end method

.method private static variationFromHandlePosition(F)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 1131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v1

    if-gtz v1, :cond_0

    .line 1133
    const-string v1, "p"

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected applyExtraHandlePoint_(Landroid/graphics/PointF;I)Z
    .locals 2

    .line 340
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentCount()I

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x1

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->adjustHandlePoint(Landroid/graphics/PointF;Z)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->handlePositionFromHandlePoint(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)F

    move-result p1

    .line 348
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->handlePosition()F

    move-result v1

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->applyHandlePosition(FLcom/metamoji/cm/RectEx;ZZ)V

    return p2

    :cond_1
    return v0
.end method

.method protected applySegmentBounds_(Lcom/metamoji/cm/RectEx;F)V
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->applySegmentBounds_(Lcom/metamoji/cm/RectEx;F)V

    return-void
.end method

.method protected applySegments_()V
    .locals 0

    return-void
.end method

.method protected cancelEvaluationOfExtraHandleAtIndex_(I)V
    .locals 0

    .line 318
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->cancelEvaluationOfExtraHandleAtIndex_(I)V

    return-void
.end method

.method protected checkEqualityOfExtraHandleVariation_(Ljava/util/Map;Ljava/util/Map;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)Z"
        }
    .end annotation

    .line 268
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->handlePositionFromVariation(Ljava/util/Map;)F

    move-result p1

    const/4 p3, 0x0

    cmpg-float v0, p1, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-gez v0, :cond_0

    .line 270
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 273
    :cond_0
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->handlePositionFromVariation(Ljava/util/Map;)F

    move-result p2

    cmpg-float p3, p2, p3

    if-gez p3, :cond_1

    const/4 p1, 0x1

    .line 275
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_1
    const/4 p3, 0x5

    .line 278
    invoke-static {p1, p2, p3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p1

    return p1
.end method

.method protected checkMovementOfExtraHandleAtIndex_(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 0

    .line 290
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x5

    .line 293
    invoke-static {p2, p3, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected containsPoint_(Landroid/graphics/PointF;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected destroy_()V
    .locals 0

    .line 447
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->destroy_()V

    return-void
.end method

.method protected editExtraHandleWithVariationAlways_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected editOriginally_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected evaluateExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/PointF;
    .locals 0

    .line 304
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentCount()I

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 p2, 0x0

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->adjustHandlePoint(Landroid/graphics/PointF;Z)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandleCount_()I
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected extraHandleEnablementAtIndex_(I)Z
    .locals 0

    .line 201
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected extraHandlePointAtIndex_(I)Landroid/graphics/PointF;
    .locals 0

    .line 165
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 166
    invoke-static {p1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->handlePoint()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandlePointAtIndex_(ILjava/util/Map;)Landroid/graphics/PointF;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 180
    invoke-static {p1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 184
    :cond_0
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->handlePositionFromVariation(Ljava/util/Map;)F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 186
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 188
    iget p2, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget p1, p1, Lcom/metamoji/cm/RectEx;->y:F

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->handlePointFromHandlePosition(FLcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandleVariationAtIndex_(I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->handlePosition()F

    move-result p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->variationFromHandlePosition(F)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandleVariationAtIndex_(ILandroid/graphics/PointF;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p1, 0x1

    .line 232
    invoke-direct {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->adjustHandlePoint(Landroid/graphics/PointF;Z)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->handlePositionFromHandlePoint(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)F

    move-result p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->variationFromHandlePosition(F)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method protected highlightPathWithExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/Path;
    .locals 4

    .line 392
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentCount()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x1

    .line 397
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->adjustHandlePoint(Landroid/graphics/PointF;Z)Landroid/graphics/PointF;

    move-result-object p1

    .line 400
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    .line 401
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->handlePositionFromHandlePoint(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;)F

    move-result p1

    invoke-static {v2, p1, p2, v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->checkSegmentPointsWithBaseBounds(Lcom/metamoji/cm/RectEx;FLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 404
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 405
    iget v2, p2, Landroid/graphics/PointF;->x:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 406
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 407
    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 408
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->lineTo(FF)V

    return-object p1
.end method

.method protected highlightPathWithSegmentBounds_(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;
    .locals 1

    .line 364
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 369
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->highlightPathWithSegmentBounds_(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method protected highlightRectWithExtraHandlePoint_(Landroid/graphics/PointF;I)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 381
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected initWithTranslate_(FFFFZZF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected isAbleToFill_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected replacementPath_()Landroid/graphics/Path;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setExtraHandlePosition(F)V
    .locals 6

    .line 47
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentCount()I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 52
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 55
    :cond_1
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->tempFloatArray()[F

    move-result-object v0

    .line 56
    aput p1, v0, v2

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 57
    invoke-static {v0, v5, p1, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustFloatValue([FFFI)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 58
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 60
    :cond_2
    aget p1, v0, v2

    .line 63
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-direct {p0, p1, v0, v3, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->applyHandlePosition(FLcom/metamoji/cm/RectEx;ZZ)V

    return-void
.end method

.method protected setExtraHandleVariation_(Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)V"
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentCount()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->handlePositionFromVariation(Ljava/util/Map;)F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    if-gez p2, :cond_1

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 250
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->handlePosition()F

    move-result p2

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->segmentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->applyHandlePosition(FLcom/metamoji/cm/RectEx;ZZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected shapeType_()Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;
    .locals 1

    .line 88
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->TRIANGLE:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    return-object v0
.end method
