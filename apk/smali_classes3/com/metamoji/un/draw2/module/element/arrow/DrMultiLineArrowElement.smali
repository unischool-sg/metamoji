.class public Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;
.super Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;
.source "DrMultiLineArrowElement.java"


# static fields
.field private static final ADSORPTION_MARGIN:F = 15.0f

.field private static final EXCLUSION_RADIUS:F = 15.0f

.field public static final MODEL_PROPERTY_POINT_MOVABILITY:Ljava/lang/String; = "m"

.field private static final VARIATION_KEY_NORMALIZED_PATH_POINTS:Ljava/lang/String; = "p"


# instance fields
.field m_pointMovability:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;-><init>()V

    return-void
.end method

.method private constructWithPoints(Lcom/metamoji/cm/PointArray;Z)V
    .locals 1

    .line 1540
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    .line 1543
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1544
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->savePointMovabilityToModel(Lcom/metamoji/df/model/IModel;Z)V

    :cond_0
    const/4 p2, 0x0

    .line 1548
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->addLinePathWithStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/4 p2, 0x2

    .line 1549
    :goto_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 1550
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->addLinePathWithEndPoint(Landroid/graphics/PointF;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1554
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->updatePaths()V

    .line 1557
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->updateExtraHandles()V

    return-void
.end method

.method private getPathPointsWithTransform(Landroid/graphics/Matrix;)Lcom/metamoji/cm/PointArray;
    .locals 7

    .line 1565
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1568
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    const/4 v3, 0x0

    .line 1569
    invoke-virtual {p0, v3, v0, v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1570
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1573
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v3

    .line 1574
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArrayWithCapacity(I)Lcom/metamoji/cm/PointArray;

    move-result-object v4

    if-nez v3, :cond_2

    .line 1576
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1577
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    goto :goto_0

    .line 1579
    :cond_2
    invoke-static {v0, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1580
    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    :goto_0
    move v0, v5

    .line 1582
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 1583
    invoke-virtual {p0, v0, v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1584
    invoke-static {v5, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_3
    if-nez v3, :cond_4

    .line 1588
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    goto :goto_2

    .line 1590
    :cond_4
    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-object v4
.end method

.method public static newEmptyMultiLineArrowElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 1481
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->newEmptyArrowElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1483
    const-string v0, "a"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->MULTI_LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1485
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method public static newMultiLineArrowElementWithPoints(Lcom/metamoji/cm/PointArray;ZLcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;
    .locals 3

    .line 1501
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 1502
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1505
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    const/4 p0, 0x1

    .line 1506
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_1
    if-nez p2, :cond_2

    .line 1510
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_2
    if-eqz p3, :cond_3

    .line 1515
    invoke-static {p3}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->newEmptyMultiLineArrowElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p3

    goto :goto_0

    :cond_3
    move-object p3, v1

    .line 1518
    :goto_0
    new-instance v0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;-><init>()V

    invoke-virtual {v0, p3, p4, v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;

    .line 1521
    invoke-virtual {p3, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;)V

    .line 1524
    invoke-direct {p3, p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->constructWithPoints(Lcom/metamoji/cm/PointArray;Z)V

    if-eqz p5, :cond_4

    .line 1528
    invoke-virtual {p3, p5}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->editWithContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    :cond_4
    return-object p3
.end method

.method private static pathPointsFromVariation(Ljava/util/Map;)Lcom/metamoji/cm/PointArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/metamoji/cm/PointArray;"
        }
    .end annotation

    .line 1605
    const-string v0, "p"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1606
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/metamoji/cm/PointArray;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static savePointMovabilityToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1614
    :cond_0
    const-string v0, "m"

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1615
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 1617
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static variationFromPathPoints(Lcom/metamoji/cm/PointArray;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/PointArray;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1601
    const-string v0, "p"

    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected adjustLineWidthWithExtraHandlePoint_(Landroid/graphics/PointF;IF)F
    .locals 8

    .line 1206
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1209
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1210
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p3

    .line 1213
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    const/4 v3, 0x1

    if-le p2, v0, :cond_2

    .line 1214
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p3

    .line 1219
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    if-ne v0, v3, :cond_4

    if-nez p2, :cond_3

    .line 1222
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object p2

    .line 1223
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v0

    .line 1224
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v1

    .line 1221
    invoke-static {p1, p2, v0, v1, p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)F

    move-result p1

    return p1

    .line 1226
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object p2

    .line 1227
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v0

    .line 1229
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v1

    .line 1226
    invoke-static {p2, v0, p1, v1, p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)F

    move-result p1

    return p1

    .line 1234
    :cond_4
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 1235
    invoke-virtual {p0, v1, v0, v4}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v1

    const/4 v7, 0x2

    if-eqz v1, :cond_b

    .line 1236
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1, v5, v6}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    if-nez p2, :cond_6

    .line 1243
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object p2

    invoke-static {p1, p2, v4, p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result p1

    .line 1244
    invoke-static {v5, v6, p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result p2

    .line 1243
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    :cond_6
    if-ne p2, v3, :cond_8

    .line 1246
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result p2

    if-ne p2, v7, :cond_7

    .line 1247
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v0

    invoke-static {p2, v0, p1, p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result p2

    .line 1248
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v1

    invoke-static {v0, v1, p1, p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result p1

    .line 1247
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    .line 1250
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v0

    invoke-static {p2, v0, p1, p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result p1

    .line 1251
    invoke-static {v5, v6, p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result p2

    .line 1250
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    .line 1253
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ne p2, v1, :cond_9

    .line 1254
    invoke-static {v4, v0, p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result p2

    .line 1255
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v1

    invoke-static {v0, v1, p1, p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result p1

    .line 1254
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    .line 1256
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v1

    if-ne p2, v1, :cond_a

    .line 1257
    invoke-static {v4, v0, p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result p2

    .line 1258
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v0

    invoke-static {p1, v0, v5, p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result p1

    .line 1257
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    .line 1260
    :cond_a
    invoke-static {v4, v0, p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result p1

    .line 1261
    invoke-static {v5, v6, p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result p2

    .line 1260
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    .line 1237
    :cond_b
    :goto_0
    invoke-static {v7, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_c
    :goto_1
    return p3
.end method

.method protected adjustLineWidthWithTransform_(Landroid/graphics/Matrix;FF)F
    .locals 6

    .line 1176
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    if-nez v0, :cond_0

    return p3

    .line 1181
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    const/4 v4, 0x0

    .line 1182
    invoke-virtual {p0, v4, v0, v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1183
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5, v2, v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    mul-float/2addr p3, p2

    .line 1190
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p2

    .line 1191
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1190
    invoke-static {p2, v0, p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result p2

    .line 1193
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1194
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1193
    invoke-static {v0, p1, p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result p1

    .line 1190
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 1184
    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p3
.end method

.method protected applyExtraHandlePoint_(Landroid/graphics/PointF;I)Z
    .locals 13

    .line 801
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 804
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 805
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 808
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    const/4 v3, 0x1

    if-le p2, v0, :cond_2

    .line 809
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x2

    const/4 v4, 0x5

    if-le p2, v3, :cond_5

    .line 814
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge p2, v5, :cond_5

    .line 815
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    sub-int/2addr p2, v3

    .line 816
    invoke-virtual {p0, p2, v5}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 817
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 820
    :cond_3
    invoke-static {p1, v5, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 821
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->resetLinePathAtIndex(ILandroid/graphics/PointF;)Z

    return v3

    :cond_4
    return v1

    .line 829
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v5

    if-ne v5, v3, :cond_a

    .line 831
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 832
    invoke-virtual {p0, v1, v0, v5}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v6

    if-nez v6, :cond_6

    const/4 p1, 0x3

    .line 833
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 838
    :cond_6
    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12}, Landroid/graphics/PointF;-><init>()V

    if-nez p2, :cond_7

    .line 841
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v7

    .line 842
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v8

    .line 843
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v9

    .line 845
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object p2

    .line 846
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v2

    .line 847
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v6

    .line 848
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v10

    .line 844
    invoke-static {p1, p2, v2, v6, v10}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)F

    move-result v10

    move-object v6, p1

    .line 840
    invoke-static/range {v6 .. v12}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->checkPointsForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_7
    move-object v6, p1

    .line 852
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object p1

    .line 853
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v7

    .line 855
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v9

    .line 856
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object p2

    .line 857
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v2

    .line 859
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v8

    .line 860
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v10

    .line 856
    invoke-static {p2, v2, v6, v8, v10}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)F

    move-result v10

    move-object v8, v6

    move-object v6, p1

    .line 852
    invoke-static/range {v6 .. v12}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->checkPointsForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 866
    :goto_0
    invoke-static {v11, v0, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 867
    invoke-static {v12, v5, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    return v1

    .line 868
    :cond_9
    :goto_1
    invoke-virtual {p0, v1, v11, v12}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->resetLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    return v3

    :cond_a
    move-object v6, p1

    .line 876
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    .line 877
    invoke-virtual {p0, v1, p1, v5}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 878
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {p0, v9, v7, v8}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v9

    if-nez v9, :cond_b

    goto/16 :goto_4

    :cond_b
    if-nez p2, :cond_d

    .line 888
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object p2

    .line 890
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v0

    .line 892
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v2

    .line 889
    invoke-static {v6, v0, v5, v2}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v0

    .line 895
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v2

    .line 893
    invoke-static {v7, v8, v2}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v2

    .line 889
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 886
    invoke-static {v6, v5, p2, v0}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object p2

    .line 898
    invoke-static {p2, p1, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    if-nez p1, :cond_c

    .line 899
    invoke-virtual {p0, v1, p2, v5}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->resetLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    return v3

    :cond_c
    return v1

    :cond_d
    if-ne p2, v3, :cond_14

    .line 906
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result p2

    if-ne p2, v0, :cond_11

    .line 908
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v2

    invoke-static {p2, v0, v6, v2}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result p2

    .line 909
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v7

    invoke-static {v0, v2, v6, v7}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v0

    .line 908
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 912
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v2

    invoke-static {v0, v6, v2, p2}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 913
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v7

    invoke-static {v2, v6, v7, p2}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object p2

    .line 917
    invoke-static {v0, p1, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 918
    invoke-static {v6, v5, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    if-nez p1, :cond_f

    .line 919
    :cond_e
    invoke-virtual {p0, v1, v0, v6}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->resetLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move v1, v3

    .line 922
    :cond_f
    invoke-static {p2, v8, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    if-nez p1, :cond_10

    .line 923
    invoke-virtual {p0, v3, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->resetLinePathAtIndex(ILandroid/graphics/PointF;)Z

    return v3

    :cond_10
    return v1

    .line 930
    :cond_11
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object p2

    .line 932
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v0

    .line 933
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object v2

    .line 934
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v9

    .line 936
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v10

    .line 933
    invoke-static {v2, v9, v6, v10}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v2

    .line 939
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v9

    .line 937
    invoke-static {v7, v8, v9}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v7

    .line 933
    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 930
    invoke-static {p2, v6, v0, v2}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object p2

    .line 942
    invoke-static {p2, p1, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 943
    invoke-static {v6, v5, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_2

    :cond_12
    return v1

    .line 944
    :cond_13
    :goto_2
    invoke-virtual {p0, v1, p2, v6}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->resetLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    return v3

    .line 950
    :cond_14
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p2, v0, :cond_17

    .line 952
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v0

    .line 954
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v2

    .line 955
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v9

    .line 956
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v10

    .line 958
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v11

    .line 955
    invoke-static {v9, v10, v6, v11}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v9

    .line 961
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v10

    .line 959
    invoke-static {v5, p1, v10}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result p1

    .line 955
    invoke-static {v9, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 952
    invoke-static {v0, v6, v2, p1}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object p1

    .line 964
    invoke-static {v6, v7, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 965
    invoke-static {p1, v8, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_3

    :cond_15
    return v1

    .line 966
    :cond_16
    :goto_3
    invoke-virtual {p0, p2, v6, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->resetLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    return v3

    .line 971
    :cond_17
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    if-ne p2, v0, :cond_19

    .line 975
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v0

    .line 977
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v2

    .line 979
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v9

    .line 976
    invoke-static {v6, v2, v7, v9}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v2

    .line 982
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v9

    .line 980
    invoke-static {v5, p1, v9}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result p1

    .line 976
    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 973
    invoke-static {v6, v7, v0, p1}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object p1

    .line 985
    invoke-static {p1, v8, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v0

    if-nez v0, :cond_18

    sub-int/2addr p2, v3

    .line 986
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->resetLinePathAtIndex(ILandroid/graphics/PointF;)Z

    return v3

    :cond_18
    return v1

    .line 992
    :cond_19
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_1a
    :goto_4
    const/4 p1, 0x4

    .line 879
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_1b
    :goto_5
    return v1
.end method

.method protected applyPaths_()Z
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 167
    :cond_0
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->applyPaths_()Z

    .line 170
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    return v0
.end method

.method protected applyTransform_(Landroid/graphics/Matrix;F)Z
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 146
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->applyTransform_(Landroid/graphics/Matrix;F)Z

    .line 149
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    return p1
.end method

.method protected arrowAngle_()F
    .locals 1

    .line 125
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 128
    :cond_0
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->arrowAngle_()F

    move-result v0

    return v0
.end method

.method protected arrowType_()Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;
    .locals 1

    .line 113
    sget-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->MULTI_LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    return-object v0
.end method

.method protected cancelEvaluationOfExtraHandleAtIndex_(I)V
    .locals 0

    .line 776
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->cancelEvaluationOfExtraHandleAtIndex_(I)V

    return-void
.end method

.method protected checkEqualityOfExtraHandleVariations_(Ljava/util/Map;Ljava/util/Map;I)Z
    .locals 0
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

    .line 536
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathPointsFromVariation(Ljava/util/Map;)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    .line 537
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathPointsFromVariation(Ljava/util/Map;)Lcom/metamoji/cm/PointArray;

    move-result-object p2

    const/4 p3, 0x5

    .line 536
    invoke-static {p1, p2, p3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Lcom/metamoji/cm/PointArray;Lcom/metamoji/cm/PointArray;I)Z

    move-result p1

    return p1
.end method

.method protected checkMovementOfExtraHandleAtIndex_(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 0

    .line 550
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x5

    .line 553
    invoke-static {p2, p3, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected destroy_()V
    .locals 0

    .line 1469
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->destroy_()V

    return-void
.end method

.method protected editExtraHandleWithVariationAlways_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected evaluateExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/PointF;
    .locals 30

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    move-object/from16 v3, p0

    .line 568
    iget-boolean v4, v3, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 569
    invoke-static {v6, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v4, 0x1

    if-le v1, v2, :cond_2

    .line 573
    invoke-static {v4, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 578
    :cond_2
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v5

    float-to-double v7, v5

    const-wide/high16 v9, 0x402e000000000000L    # 15.0

    div-double/2addr v9, v7

    const/high16 v5, 0x7fc00000    # Float.NaN

    if-nez v1, :cond_4

    .line 584
    invoke-static {v5, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    if-ne v8, v2, :cond_3

    .line 585
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v8

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v8

    :goto_0
    move-object v13, v7

    move-object v14, v8

    goto :goto_3

    :cond_4
    if-ne v1, v2, :cond_6

    add-int/lit8 v7, v1, -0x1

    if-nez v7, :cond_5

    .line 587
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object v7

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v7

    .line 588
    :goto_1
    invoke-static {v5, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v8

    goto :goto_0

    :cond_6
    add-int/lit8 v7, v1, -0x1

    if-nez v7, :cond_7

    .line 590
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object v7

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v7

    :goto_2
    add-int/lit8 v8, v1, 0x1

    if-ne v8, v2, :cond_8

    .line 591
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v8

    goto :goto_0

    :cond_8
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v8

    goto :goto_0

    .line 595
    :goto_3
    iget v7, v13, Landroid/graphics/PointF;->x:F

    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v7

    if-nez v7, :cond_9

    iget v7, v14, Landroid/graphics/PointF;->x:F

    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v7

    if-nez v7, :cond_9

    move v7, v4

    goto :goto_4

    :cond_9
    move v7, v6

    :goto_4
    if-eqz v7, :cond_a

    const/4 v8, 0x5

    .line 598
    invoke-static {v13, v14, v8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v8

    goto :goto_5

    :cond_a
    move v8, v6

    .line 601
    :goto_5
    invoke-static {v5, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v11

    if-eqz v7, :cond_c

    if-nez v8, :cond_c

    .line 604
    iget v11, v13, Landroid/graphics/PointF;->x:F

    iget v12, v14, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    iget v15, v13, Landroid/graphics/PointF;->y:F

    iget v6, v14, Landroid/graphics/PointF;->y:F

    add-float/2addr v15, v6

    mul-float/2addr v15, v12

    invoke-static {v11, v15}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v6

    .line 605
    invoke-static {v0, v6}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v11

    float-to-double v11, v11

    cmpg-double v11, v11, v9

    if-gtz v11, :cond_b

    return-object v6

    .line 610
    :cond_b
    invoke-static {v13, v14, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getFootOfPerpendicularLine(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v11

    .line 611
    invoke-static {v11, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v6

    float-to-double v4, v6

    cmpl-double v4, v4, v9

    if-lez v4, :cond_c

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 612
    invoke-static {v4, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v11

    :cond_c
    move-object v4, v11

    const-wide/high16 v17, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v15, v17

    move-wide/from16 v19, v15

    const/4 v11, 0x0

    const-wide/high16 v21, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v23, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_6
    if-gt v11, v2, :cond_12

    if-ne v11, v1, :cond_d

    move/from16 v27, v2

    goto :goto_9

    :cond_d
    if-nez v11, :cond_e

    .line 627
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object v12

    goto :goto_7

    :cond_e
    if-ne v11, v2, :cond_f

    .line 629
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v12

    goto :goto_7

    .line 631
    :cond_f
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v12

    .line 633
    :goto_7
    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v12, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    .line 634
    iget v1, v0, Landroid/graphics/PointF;->y:F

    move/from16 v27, v1

    iget v1, v12, Landroid/graphics/PointF;->y:F

    sub-float v1, v27, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move/from16 v27, v2

    float-to-double v1, v1

    cmpg-double v28, v5, v9

    if-gtz v28, :cond_10

    cmpg-double v28, v5, v21

    if-gez v28, :cond_10

    .line 636
    iget v15, v12, Landroid/graphics/PointF;->x:F

    move-wide/from16 v28, v1

    float-to-double v1, v15

    move-wide v15, v1

    move-wide/from16 v21, v5

    goto :goto_8

    :cond_10
    move-wide/from16 v28, v1

    :goto_8
    cmpg-double v1, v28, v9

    if-gtz v1, :cond_11

    cmpg-double v1, v28, v23

    if-gez v1, :cond_11

    .line 640
    iget v1, v12, Landroid/graphics/PointF;->y:F

    float-to-double v1, v1

    move-wide/from16 v19, v1

    move-wide/from16 v23, v28

    :cond_11
    :goto_9
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p2

    move/from16 v2, v27

    goto :goto_6

    .line 646
    :cond_12
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v11

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 647
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    move-wide v5, v15

    .line 648
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v15

    .line 652
    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v1

    const/high16 v21, 0x41200000    # 10.0f

    if-nez v1, :cond_17

    double-to-float v1, v5

    .line 653
    iput v1, v11, Landroid/graphics/PointF;->x:F

    .line 654
    invoke-static/range {v19 .. v20}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v1

    if-nez v1, :cond_13

    move-object/from16 p2, v2

    move-wide/from16 v1, v19

    double-to-float v1, v1

    .line 655
    iput v1, v11, Landroid/graphics/PointF;->y:F

    .line 656
    invoke-static {v11, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    goto :goto_a

    :cond_13
    move-object/from16 p2, v2

    .line 658
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    sub-double v1, v5, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    :goto_a
    if-eqz v7, :cond_16

    if-nez v8, :cond_16

    const/4 v1, 0x1

    .line 663
    new-array v2, v1, [Z

    .line 664
    iget v1, v11, Landroid/graphics/PointF;->x:F

    iget v5, v11, Landroid/graphics/PointF;->y:F

    add-float v5, v5, v21

    .line 665
    invoke-static {v1, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v12

    move-object/from16 v16, v2

    .line 664
    invoke-static/range {v11 .. v16}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->checkIntersectionOfLineWithPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;[Z)Z

    move-result v1

    move-object v5, v15

    if-eqz v1, :cond_15

    .line 670
    invoke-static {v5, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v2, v0, v9

    if-lez v2, :cond_14

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 672
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    move-object v15, v0

    goto :goto_b

    :cond_14
    move-object v15, v5

    goto :goto_c

    :cond_15
    move-object v15, v5

    :goto_b
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_c
    move-object/from16 v2, p2

    move-wide/from16 v25, v0

    goto :goto_e

    :cond_16
    move-object v5, v15

    goto :goto_d

    :cond_17
    move-object/from16 p2, v2

    move-object v5, v15

    move-wide/from16 v1, v19

    .line 677
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v6

    if-nez v6, :cond_19

    double-to-float v6, v1

    .line 678
    iput v6, v11, Landroid/graphics/PointF;->y:F

    .line 679
    iget v6, v0, Landroid/graphics/PointF;->y:F

    move-wide v15, v1

    float-to-double v1, v6

    sub-double v19, v15, v1

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    if-eqz v7, :cond_19

    if-nez v8, :cond_19

    const/4 v1, 0x1

    .line 683
    new-array v2, v1, [Z

    .line 684
    iget v1, v11, Landroid/graphics/PointF;->x:F

    add-float v1, v1, v21

    iget v6, v11, Landroid/graphics/PointF;->y:F

    .line 685
    invoke-static {v1, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v12

    move-object/from16 v15, p2

    move-object/from16 v16, v2

    .line 684
    invoke-static/range {v11 .. v16}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->checkIntersectionOfLineWithPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;[Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 690
    invoke-static {v15, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v2, v0, v9

    if-lez v2, :cond_18

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 692
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    move-object v15, v5

    move-wide/from16 v5, v17

    const-wide/high16 v25, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_f

    :cond_18
    move-object v2, v15

    const-wide/high16 v25, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v15, v5

    move-wide v5, v0

    goto :goto_f

    :cond_19
    :goto_d
    move-object/from16 v15, p2

    :cond_1a
    move-object v2, v15

    const-wide/high16 v25, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v15, v5

    :goto_e
    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 700
    :goto_f
    iget v0, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 701
    iget v0, v15, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v0

    if-nez v0, :cond_1b

    cmpg-double v0, v5, v25

    if-gtz v0, :cond_1d

    :cond_1b
    move-object v4, v2

    goto :goto_10

    .line 706
    :cond_1c
    iget v0, v15, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1d
    move-object v4, v15

    goto :goto_10

    .line 708
    :cond_1e
    iget v0, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_10

    :cond_1f
    move-object v4, v11

    .line 716
    :goto_10
    iget v0, v13, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {v4, v13}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    float-to-double v0, v0

    goto :goto_11

    :cond_20
    move-wide/from16 v0, v17

    .line 717
    :goto_11
    iget v2, v14, Landroid/graphics/PointF;->x:F

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-static {v4, v14}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    float-to-double v5, v2

    move-wide/from16 v17, v5

    .line 718
    :cond_21
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_27

    cmpg-double v0, v0, v9

    if-gez v0, :cond_27

    .line 719
    invoke-static/range {v17 .. v18}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-nez v0, :cond_26

    cmpg-double v0, v17, v9

    if-gez v0, :cond_26

    if-eqz v8, :cond_22

    double-to-float v0, v9

    .line 721
    iget v1, v13, Landroid/graphics/PointF;->x:F

    add-float v1, v1, v21

    iget v2, v13, Landroid/graphics/PointF;->y:F

    .line 723
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v1, v13, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInRadiansMadeByPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    float-to-double v1, v1

    .line 721
    invoke-static {v13, v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnCircleWithCenterInRadians(Landroid/graphics/PointF;FD)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 728
    :cond_22
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    double-to-float v2, v9

    .line 729
    invoke-static {v2, v13, v14, v0, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->checkIntersectionOfTwoCirclesWithSameRadius(FLandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_25

    const/4 v5, 0x2

    if-eq v2, v5, :cond_23

    goto :goto_13

    .line 735
    :cond_23
    invoke-static {v4, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_24

    goto :goto_12

    :cond_24
    return-object v1

    :cond_25
    :goto_12
    return-object v0

    :cond_26
    double-to-float v0, v9

    .line 751
    iget v1, v13, Landroid/graphics/PointF;->x:F

    add-float v1, v1, v21

    iget v2, v13, Landroid/graphics/PointF;->y:F

    .line 753
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v1, v13, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInRadiansMadeByPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    float-to-double v1, v1

    .line 751
    invoke-static {v13, v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnCircleWithCenterInRadians(Landroid/graphics/PointF;FD)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 757
    :cond_27
    invoke-static/range {v17 .. v18}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-nez v0, :cond_28

    cmpg-double v0, v17, v9

    if-gez v0, :cond_28

    double-to-float v0, v9

    .line 758
    iget v1, v14, Landroid/graphics/PointF;->x:F

    add-float v1, v1, v21

    iget v2, v14, Landroid/graphics/PointF;->y:F

    .line 760
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v1, v14, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInRadiansMadeByPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    float-to-double v1, v1

    .line 758
    invoke-static {v14, v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOnCircleWithCenterInRadians(Landroid/graphics/PointF;FD)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    :cond_28
    :goto_13
    return-object v4
.end method

.method protected extraHandleCount_()I
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method protected extraHandleEnablementAtIndex_(I)Z
    .locals 2

    .line 283
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    if-le p1, v0, :cond_1

    const/4 p1, 0x0

    .line 287
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 290
    :cond_1
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    return p1
.end method

.method protected extraHandlePointAtIndex_(I)Landroid/graphics/PointF;
    .locals 4

    .line 195
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    .line 196
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 198
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 199
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 200
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    const/4 v3, 0x1

    if-le p1, v0, :cond_2

    .line 203
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 204
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez p1, :cond_3

    .line 209
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 210
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 211
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 214
    :cond_4
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sub-int/2addr p1, v3

    .line 215
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x2

    .line 216
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 217
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v0
.end method

.method protected extraHandlePointAtIndex_(ILjava/util/Map;)Landroid/graphics/PointF;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 234
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 235
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 236
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    const/4 v4, 0x1

    if-le p1, v0, :cond_2

    .line 239
    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 240
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 244
    :cond_2
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathPointsFromVariation(Ljava/util/Map;)Lcom/metamoji/cm/PointArray;

    move-result-object p2

    .line 245
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p1, 0x2

    .line 246
    invoke-static {p1, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 247
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 249
    :cond_3
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v5

    add-int/2addr v5, v4

    if-eq v0, v5, :cond_4

    const/4 p1, 0x3

    .line 250
    invoke-static {p1, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 251
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_4
    if-lez p1, :cond_5

    .line 255
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 256
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->transform()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 260
    :cond_5
    invoke-static {v2, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->transform()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 261
    invoke-static {v4, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v1

    .line 262
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-static {v2, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->transform()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v2

    .line 263
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v3

    invoke-static {v3, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->transform()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p2

    .line 266
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v3

    invoke-static {v1, v0, v3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v3

    .line 267
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v4

    invoke-static {v2, p2, v4}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v4

    .line 266
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    if-nez p1, :cond_6

    .line 271
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object p1

    invoke-static {v1, v0, p1, v3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->headTipFromStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 272
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object p1

    invoke-static {v2, p2, p1, v3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->headTipFromStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 232
    :cond_7
    :goto_0
    invoke-static {v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandleVariationAtIndex_(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 304
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 305
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    .line 309
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 312
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->inversion()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->getPathPointsWithTransform(Landroid/graphics/Matrix;)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->variationFromPathPoints(Lcom/metamoji/cm/PointArray;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected extraHandleVariationAtIndex_(ILandroid/graphics/PointF;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 323
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 326
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 327
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    const/4 v3, 0x1

    if-le p1, v0, :cond_2

    .line 331
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 336
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->inversion()Landroid/graphics/Matrix;

    move-result-object v0

    .line 337
    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v4

    .line 340
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->getPathPointsWithTransform(Landroid/graphics/Matrix;)Lcom/metamoji/cm/PointArray;

    move-result-object p2

    .line 341
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_3

    .line 342
    invoke-static {v6, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_3
    if-le p1, v3, :cond_4

    .line 347
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v5

    sub-int/2addr v5, v3

    if-ge p1, v5, :cond_4

    .line 348
    invoke-static {p1, v4, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 349
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->variationFromPathPoints(Lcom/metamoji/cm/PointArray;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 353
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v5

    if-ne v5, v3, :cond_6

    .line 354
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    if-nez p1, :cond_5

    .line 356
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v6

    .line 358
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v5

    .line 360
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v7

    .line 362
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object p1

    .line 364
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v0

    .line 365
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v1

    .line 361
    invoke-static {v4, p1, v6, v0, v1}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)F

    move-result v8

    .line 357
    invoke-static/range {v4 .. v10}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->checkPointsForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 369
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 371
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v5

    .line 373
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v7

    .line 375
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v0

    .line 377
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v1

    .line 378
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v6

    .line 374
    invoke-static {p1, v0, v4, v1, v6}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)F

    move-result v8

    move-object v6, v4

    move-object v4, p1

    .line 370
    invoke-static/range {v4 .. v10}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->checkPointsForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 382
    :goto_0
    invoke-static {v2, v9, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 383
    invoke-static {v3, v10, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 384
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->variationFromPathPoints(Lcom/metamoji/cm/PointArray;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_6
    if-nez p1, :cond_7

    .line 390
    invoke-static {v3, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    .line 393
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v0

    .line 395
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v1

    .line 397
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v5

    .line 394
    invoke-static {v4, v1, p1, v5}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v1

    .line 398
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v5, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    .line 399
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v5

    invoke-static {v5, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    .line 400
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v6

    .line 398
    invoke-static {v3, v5, v6}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v3

    .line 394
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 391
    invoke-static {v4, p1, v0, v1}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object p1

    .line 401
    invoke-static {v2, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    goto/16 :goto_1

    :cond_7
    if-ne p1, v3, :cond_9

    .line 404
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result p1

    if-ne p1, v6, :cond_8

    .line 405
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 406
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 407
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v5

    invoke-static {p1, v1, v4, v5}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v1

    .line 408
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v5

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v7

    invoke-static {v0, v5, v4, v7}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v5

    .line 407
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 409
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v5

    invoke-static {p1, v4, v5, v1}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object p1

    .line 410
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v5

    invoke-static {v0, v4, v5, v1}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 411
    invoke-static {v2, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 412
    invoke-static {v3, v4, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 413
    invoke-static {v6, v0, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    goto/16 :goto_1

    .line 415
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 418
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v0

    .line 420
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v1

    .line 422
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v5

    .line 419
    invoke-static {p1, v1, v4, v5}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v1

    .line 423
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v5, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    .line 424
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v6

    invoke-static {v6, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v6

    .line 425
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v7

    .line 423
    invoke-static {v5, v6, v7}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v5

    .line 419
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 416
    invoke-static {p1, v4, v0, v1}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object p1

    .line 426
    invoke-static {v2, p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 427
    invoke-static {v3, v4, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    goto/16 :goto_1

    .line 429
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v5

    sub-int/2addr v5, v3

    if-ne p1, v5, :cond_a

    .line 431
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 434
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v1

    .line 436
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v5

    .line 438
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v6

    .line 435
    invoke-static {v0, v5, v4, v6}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v5

    .line 439
    invoke-static {v3, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    .line 440
    invoke-static {v2, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 441
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v6

    .line 439
    invoke-static {v3, v2, v6}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v2

    .line 435
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 432
    invoke-static {v0, v4, v1, v2}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 442
    invoke-static {p1, v4, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 443
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result p1

    invoke-static {p1, v0, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    goto :goto_1

    .line 444
    :cond_a
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 446
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 449
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v1

    .line 451
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v5

    .line 453
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v6

    .line 450
    invoke-static {v4, v5, v0, v6}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v5

    .line 454
    invoke-static {v3, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    .line 455
    invoke-static {v2, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 456
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v6

    .line 454
    invoke-static {v3, v2, v6}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v2

    .line 450
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 447
    invoke-static {v4, v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 457
    invoke-static {p1, v0, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 463
    :goto_1
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->variationFromPathPoints(Lcom/metamoji/cm/PointArray;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x3

    .line 459
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_c
    :goto_2
    return-object v1
.end method

.method protected getMinimumTipMovementForLineWidthAdjustmentationWithTransform_(Landroid/graphics/Matrix;FF)F
    .locals 7

    .line 1273
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    return v1

    .line 1278
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    const/4 v5, 0x0

    .line 1279
    invoke-virtual {p0, v5, v0, v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1280
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6, v3, v4}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 1286
    :cond_1
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1287
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1286
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 1288
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1289
    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1288
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 1286
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float/2addr p3, p2

    .line 1290
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getAdjustmentDistanceBetweenHeadPointsForLineWidth(F)F

    move-result p2

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    cmpg-float p3, p1, p2

    if-gez p3, :cond_2

    return p2

    :cond_2
    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 1281
    invoke-static {v5, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1
.end method

.method protected highlightPathWithExtraHandlePoint_(Landroid/graphics/PointF;ILandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1010
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v3

    const/4 v8, 0x0

    if-eqz v3, :cond_d

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 1013
    :cond_0
    iget-boolean v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    const/4 v9, 0x0

    if-nez v3, :cond_1

    .line 1014
    invoke-static {v9, v8}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v8

    .line 1017
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v3

    const/4 v10, 0x1

    if-le v2, v3, :cond_2

    .line 1018
    invoke-static {v10, v8}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v8

    .line 1023
    :cond_2
    sget-object v3, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    invoke-direct {v0, v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->getPathPointsWithTransform(Landroid/graphics/Matrix;)Lcom/metamoji/cm/PointArray;

    move-result-object v11

    if-le v2, v10, :cond_3

    .line 1026
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v3

    sub-int/2addr v3, v10

    if-ge v2, v3, :cond_3

    .line 1028
    invoke-static {v2, v1, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    goto/16 :goto_1

    .line 1031
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v3

    if-ne v3, v10, :cond_5

    .line 1033
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    if-nez v2, :cond_4

    .line 1036
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v2

    .line 1037
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v3

    .line 1038
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v4

    .line 1039
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v5

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v12

    .line 1040
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v13

    .line 1041
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v14

    invoke-virtual {v14}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v14

    .line 1039
    invoke-static {v1, v5, v12, v13, v14}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)F

    move-result v5

    .line 1035
    invoke-static/range {v1 .. v7}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->checkPointsForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_0

    .line 1045
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object v2

    move-object v3, v2

    .line 1046
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v2

    .line 1048
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v4

    .line 1049
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object v5

    .line 1050
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v12

    .line 1052
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v13

    .line 1053
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v14

    invoke-virtual {v14}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v14

    .line 1049
    invoke-static {v5, v12, v1, v13, v14}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)F

    move-result v5

    move-object v15, v3

    move-object v3, v1

    move-object v1, v15

    .line 1045
    invoke-static/range {v1 .. v7}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->checkPointsForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1059
    :goto_0
    invoke-static {v9, v6, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1060
    invoke-static {v10, v7, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    goto/16 :goto_1

    .line 1063
    :cond_5
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 1064
    invoke-virtual {v0, v9, v3, v4}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v7

    const/4 v12, 0x2

    if-eqz v7, :cond_c

    .line 1065
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v7

    sub-int/2addr v7, v10

    invoke-virtual {v0, v7, v5, v6}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_2

    :cond_6
    if-nez v2, :cond_7

    .line 1075
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v2

    .line 1077
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v3

    .line 1079
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v7

    .line 1076
    invoke-static {v1, v3, v4, v7}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v3

    .line 1082
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v7

    .line 1080
    invoke-static {v5, v6, v7}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v5

    .line 1076
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1073
    invoke-static {v1, v4, v2, v3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v1

    .line 1085
    invoke-static {v9, v1, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    goto/16 :goto_1

    :cond_7
    if-ne v2, v10, :cond_9

    .line 1088
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v2

    if-ne v2, v12, :cond_8

    .line 1090
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v3

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v4

    invoke-static {v2, v3, v1, v4}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v2

    .line 1091
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v4

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v5

    invoke-static {v3, v4, v1, v5}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v3

    .line 1090
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1094
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v4

    invoke-static {v3, v1, v4, v2}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v3

    .line 1095
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v5

    invoke-static {v4, v1, v5, v2}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v2

    .line 1098
    invoke-static {v9, v3, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1099
    invoke-static {v10, v1, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1100
    invoke-static {v12, v2, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    goto/16 :goto_1

    .line 1103
    :cond_8
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object v2

    .line 1105
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v3

    .line 1106
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object v4

    .line 1107
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v7

    .line 1109
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v12

    .line 1106
    invoke-static {v4, v7, v1, v12}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v4

    .line 1112
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v7

    .line 1110
    invoke-static {v5, v6, v7}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v5

    .line 1106
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1103
    invoke-static {v2, v1, v3, v4}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v2

    .line 1115
    invoke-static {v9, v2, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1116
    invoke-static {v10, v1, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    goto/16 :goto_1

    .line 1118
    :cond_9
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v6

    sub-int/2addr v6, v10

    if-ne v2, v6, :cond_a

    .line 1120
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v2

    .line 1122
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v5

    .line 1123
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v6

    .line 1124
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v7

    .line 1126
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v12

    invoke-virtual {v12}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v12

    .line 1123
    invoke-static {v6, v7, v1, v12}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v6

    .line 1129
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v7

    .line 1127
    invoke-static {v4, v3, v7}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v3

    .line 1123
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1120
    invoke-static {v2, v1, v5, v3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v2

    .line 1132
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v3

    sub-int/2addr v3, v10

    invoke-static {v3, v1, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1133
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v1

    invoke-static {v1, v2, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    goto :goto_1

    .line 1134
    :cond_a
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v6

    if-ne v2, v6, :cond_b

    .line 1138
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v2

    .line 1140
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v6

    .line 1142
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v7

    .line 1139
    invoke-static {v1, v6, v5, v7}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;F)F

    move-result v6

    .line 1145
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v7

    .line 1143
    invoke-static {v4, v3, v7}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v3

    .line 1139
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1136
    invoke-static {v1, v5, v2, v3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v1

    .line 1148
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v2

    invoke-static {v2, v1, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1157
    :goto_1
    invoke-static {v10, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1158
    invoke-static {v9, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1159
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-static {v1, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1160
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v1

    invoke-static {v1, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    move-object/from16 v2, p6

    invoke-virtual {v2, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 1163
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1164
    invoke-static {v11, v1, v8, v9}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->constructPathFromLinePoints(Lcom/metamoji/cm/PointArray;Landroid/graphics/Path;Ljava/lang/Object;Z)V

    return-object v1

    :cond_b
    const/4 v1, 0x3

    .line 1150
    invoke-static {v1, v8}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v8

    .line 1066
    :cond_c
    :goto_2
    invoke-static {v12, v8}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_d
    :goto_3
    return-object v8
.end method

.method protected initWithTransform_(Landroid/graphics/Matrix;F)Z
    .locals 2

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    .line 93
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 100
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "m"

    invoke-static {v1, p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    :cond_1
    return p2
.end method

.method public lineCount()I
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    return v0
.end method

.method public pointMovability()Z
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 74
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    return v0
.end method

.method protected setExtraHandleVariation_(Ljava/util/Map;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)Z"
        }
    .end annotation

    .line 476
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 479
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->m_pointMovability:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 480
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 483
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    const/4 v3, 0x1

    if-le p2, v0, :cond_2

    .line 484
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 489
    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathPointsFromVariation(Ljava/util/Map;)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    .line 490
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p1, 0x2

    .line 491
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 494
    :cond_3
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    add-int/2addr v0, v3

    if-eq p2, v0, :cond_4

    const/4 p1, 0x3

    .line 495
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 500
    :cond_4
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p2

    .line 501
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->transform()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 502
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 503
    invoke-virtual {p0, v1, v4, v5}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 p1, 0x4

    .line 504
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_5
    const/4 v6, 0x5

    .line 508
    invoke-static {p2, v4, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 509
    invoke-static {v0, v5, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 510
    :cond_6
    invoke-virtual {p0, v1, p2, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->resetLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move v1, v3

    :cond_7
    move p2, v3

    .line 513
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    if-ge p2, v0, :cond_a

    add-int/lit8 v0, p2, 0x1

    .line 514
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->transform()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v4

    .line 515
    invoke-virtual {p0, p2, v5}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 516
    invoke-static {v6, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 519
    :cond_8
    invoke-static {v4, v5, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v7

    if-nez v7, :cond_9

    .line 520
    invoke-virtual {p0, p2, v4}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->resetLinePathAtIndex(ILandroid/graphics/PointF;)Z

    move v1, v3

    :cond_9
    :goto_1
    move p2, v0

    goto :goto_0

    :cond_a
    return v1
.end method

.method protected transformForResizedBounds_(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;
    .locals 13

    .line 1302
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1307
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->pathCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_f

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    .line 1427
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->transformForResizedBounds_(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 1345
    :cond_1
    iget v0, p1, Lcom/metamoji/cm/RectEx;->width:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    iget v4, v4, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v5, 0x5

    invoke-static {v0, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1346
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 1347
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    .line 1348
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 1349
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 1350
    invoke-static {v6, v0, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1351
    invoke-static {v7, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1352
    :cond_2
    invoke-static {v6, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1353
    invoke-static {v7, v0, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1354
    :cond_3
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->transformForResizedBounds_(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 1356
    :cond_4
    iget v0, p1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    iget v4, v4, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v0, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1357
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 1358
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    .line 1359
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    .line 1360
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    .line 1361
    invoke-static {v6, v0, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1362
    invoke-static {v7, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1363
    :cond_5
    invoke-static {v6, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1364
    invoke-static {v7, v0, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1365
    :cond_6
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->transformForResizedBounds_(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 1368
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 1369
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    .line 1370
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v6

    .line 1371
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v7

    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v7

    .line 1372
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/PointF;->x:F

    .line 1373
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    .line 1374
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v10

    iget v10, v10, Landroid/graphics/PointF;->x:F

    .line 1375
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v11

    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 1376
    invoke-static {v8, v0, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1377
    invoke-static {v10, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v12

    if-nez v12, :cond_9

    .line 1378
    :cond_8
    invoke-static {v8, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1379
    invoke-static {v10, v0, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1380
    :cond_9
    invoke-static {v9, v6, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1381
    invoke-static {v11, v7, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1382
    :cond_a
    invoke-static {v9, v7, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1383
    invoke-static {v11, v6, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_1

    .line 1391
    :cond_b
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    .line 1392
    invoke-virtual {p0, v2, v0, v4}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0, v3, v5}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    .line 1398
    :cond_c
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object v1

    .line 1399
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v2

    .line 1400
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v3

    invoke-static {v4, v0, v3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v3

    .line 1401
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result v6

    .line 1400
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1402
    invoke-static {v0, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    neg-float v5, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-static {v0, v5, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 1403
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->transformFromRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p1

    .line 1406
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1407
    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v4

    .line 1408
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1413
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v2

    .line 1411
    invoke-static {v1, v4, v2, v3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v1

    .line 1417
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v2

    .line 1415
    invoke-static {p1, v4, v2, v3}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object p1

    .line 1422
    invoke-static {v1, v4, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    invoke-static {p1, v5, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 1421
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->transformFromRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 1393
    :cond_d
    :goto_0
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1394
    sget-object p1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    return-object p1

    .line 1384
    :cond_e
    :goto_1
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->transformForResizedBounds_(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 1312
    :cond_f
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .line 1313
    invoke-virtual {p0, v2, v0, v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1314
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1315
    sget-object p1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    return-object p1

    .line 1319
    :cond_10
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadTip()Landroid/graphics/PointF;

    move-result-object v1

    .line 1320
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadTip()Landroid/graphics/PointF;

    move-result-object v2

    .line 1321
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->transformFromRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p1

    .line 1322
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v4

    .line 1323
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v6

    .line 1326
    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    new-instance v10, Landroid/graphics/PointF;

    invoke-direct {v10}, Landroid/graphics/PointF;-><init>()V

    .line 1328
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v5

    .line 1330
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v7

    .line 1332
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object p1

    .line 1334
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v1

    .line 1335
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v2

    .line 1331
    invoke-static {v4, p1, v6, v1, v2}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->adjustLineWidthForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)F

    move-result v8

    .line 1327
    invoke-static/range {v4 .. v10}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->checkPointsForStartHeadTip(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLandroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 1340
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 1341
    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 1340
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->transformFromRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p1

    return-object p1

    .line 1303
    :cond_11
    :goto_2
    sget-object p1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    return-object p1
.end method
