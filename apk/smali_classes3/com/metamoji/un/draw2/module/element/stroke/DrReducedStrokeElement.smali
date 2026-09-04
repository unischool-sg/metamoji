.class public Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;
.super Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;
.source "DrReducedStrokeElement.java"


# static fields
.field private static final MIME_TYPE_OF_SEGMENT_DATA:Ljava/lang/String; = "application/octet-stream"

.field private static final MODEL_PROPERTY_REDUCER_DELTA:Ljava/lang/String; = "d"

.field private static final MODEL_PROPERTY_REDUCER_ZOOM:Ljava/lang/String; = "z"

.field private static final MODEL_PROPERTY_SEGMENT_DATA:Ljava/lang/String; = "g"


# instance fields
.field private m_bezierPoints:Lcom/metamoji/cm/PointArray;

.field private m_reducerDelta:F

.field private m_reducerZoom:F

.field private m_segmentData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;-><init>()V

    return-void
.end method

.method static checkReducedStrokeElementModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 548
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->checkStrokeElementModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->getStrokeTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    move-result-object p0

    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->REDUCED:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static checkReducerDeltaFromModel(Lcom/metamoji/df/model/IModel;F)F
    .locals 1

    if-nez p0, :cond_0

    return p1

    .line 567
    :cond_0
    const-string v0, "d"

    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    return p0
.end method

.method static checkReducerZoomFromModel(Lcom/metamoji/df/model/IModel;F)F
    .locals 1

    if-nez p0, :cond_0

    return p1

    .line 580
    :cond_0
    const-string/jumbo v0, "z"

    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    return p0
.end method

.method static getSegmentDataFromModel(Lcom/metamoji/df/model/IModel;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 587
    :cond_0
    const-string v0, "g"

    const-string v1, "application/octet-stream"

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->mutableDataPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static newEmptyReducedStrokeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 596
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->newEmptyStrokeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 598
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->REDUCED:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 600
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method public static newReducedStrokeElementWithFamily(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;
    .locals 1

    if-eqz p0, :cond_0

    .line 611
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->newEmptyReducedStrokeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 612
    :goto_0
    new-instance v0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;

    return-object p0
.end method

.method private static saveReducerDeltaToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 664
    :cond_0
    const-string v0, "d"

    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveReducerZoomToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    .line 671
    const-string/jumbo v1, "z"

    if-eqz v0, :cond_1

    .line 672
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 674
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveSegmentDataToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 682
    :cond_0
    const-string v0, "g"

    if-eqz p1, :cond_1

    .line 683
    const-string v1, "application/octet-stream"

    invoke-static {v0, p1, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDataPropertyForName(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 685
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private updateReducerDeltaWithResizeX(FF)V
    .locals 4

    .line 619
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 620
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 621
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    cmpl-float v0, v0, v1

    .line 628
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerDelta:F

    if-lez v0, :cond_1

    mul-float/2addr v1, p1

    .line 626
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerDelta:F

    goto :goto_0

    :cond_1
    mul-float/2addr v1, p2

    .line 628
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerDelta:F

    .line 630
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 631
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerDelta:F

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->saveReducerDeltaToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateReducerDeltaWithTransform(Landroid/graphics/Matrix;)V
    .locals 5

    .line 636
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 637
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    .line 638
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 639
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    .line 640
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    sub-float v0, v2, v1

    .line 641
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p1, v1

    .line 642
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 643
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    goto :goto_1

    :cond_0
    cmpl-float v0, v0, v1

    .line 650
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerDelta:F

    if-lez v0, :cond_1

    mul-float/2addr v1, v2

    .line 648
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerDelta:F

    goto :goto_0

    :cond_1
    mul-float/2addr v1, p1

    .line 650
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerDelta:F

    .line 652
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 653
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerDelta:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->saveReducerDeltaToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected applyVariationWithTransform_(Landroid/graphics/Matrix;FF)Z
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->updateReducerDeltaWithTransform(Landroid/graphics/Matrix;)V

    .line 226
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->applyVariationWithTransform_(Landroid/graphics/Matrix;FF)Z

    move-result p1

    return p1
.end method

.method protected basePointCountForDrawingCost()I
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected checkEraseIntervalsBySegmentWithPoints_(Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/DrEraseContext;I)V
    .locals 12

    move/from16 v0, p5

    int-to-float v1, v0

    .line 236
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v4

    add-int/lit8 v2, v0, 0x1

    int-to-float v2, v2

    .line 237
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, v2, v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v6

    .line 238
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    move-object/from16 v3, p4

    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->containsInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    mul-int/2addr v0, v2

    .line 244
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->simplePenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->simplePenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v7, v3

    const/4 v3, 0x4

    .line 245
    new-array v11, v3, [F

    fill-array-data v11, :array_0

    .line 246
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    add-int/lit8 v3, v0, 0x1

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 247
    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    add-int/2addr v0, v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 248
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v6

    move-object v8, p1

    move-object v9, p2

    move v10, p3

    .line 246
    invoke-static/range {v4 .. v11}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->checkIntersectionParametersOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FLandroid/graphics/PointF;Landroid/graphics/PointF;F[F)I

    move-result p1

    const/4 p2, 0x0

    .line 254
    aget p2, v11, p2

    const/4 p3, 0x1

    .line 255
    aget v0, v11, p3

    .line 256
    aget v9, v11, v2

    const/4 v3, 0x3

    .line 257
    aget v10, v11, v3

    if-eq p1, p3, :cond_3

    if-eq p1, v2, :cond_2

    :goto_1
    return-void

    :cond_2
    add-float/2addr p2, v1

    .line 267
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v4

    add-float/2addr v0, v1

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 268
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v6

    .line 269
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    move-object/from16 v3, p4

    .line 267
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->addEraseInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    add-float/2addr v9, v1

    .line 270
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, v9, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v4

    add-float/2addr v10, v1

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 271
    invoke-virtual {p0, v10, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v6

    .line 272
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    .line 270
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->addEraseInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void

    :cond_3
    add-float/2addr p2, v1

    .line 262
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v4

    add-float/2addr v0, v1

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 263
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v6

    .line 264
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    move-object/from16 v3, p4

    .line 262
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->addEraseInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected createSubStrokeWithIndices_(DD)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->parameterFromIndex(DLcom/metamoji/cm/PointArray;)F

    move-result p1

    float-to-double p1, p1

    .line 283
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, p3, p4, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->parameterFromIndex(DLcom/metamoji/cm/PointArray;)F

    move-result p3

    float-to-double p3, p3

    .line 286
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    double-to-float p1, p1

    double-to-float p2, p3

    const/4 p3, 0x1

    invoke-static {v0, p1, p2, p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getSubPointArrayOfQuadCurvesWithPointArray(Lcom/metamoji/cm/PointArray;FFZ)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 291
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p2

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p4

    invoke-static {p3, p4, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->newReducedStrokeElementWithFamily(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;

    move-result-object p2

    .line 299
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->simplePenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 300
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->setReducerZoom(F)V

    .line 301
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object p3

    iget p3, p3, Lcom/metamoji/un/draw2/module/DrModuleSettings;->reducerDelta:F

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->reducerZoom()F

    move-result p4

    div-float/2addr p3, p4

    invoke-virtual {p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->setReducerDelta(F)V

    .line 302
    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->setPoints(Lcom/metamoji/cm/PointArray;)V

    return-object p2
.end method

.method protected destroy_()V
    .locals 1

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_segmentData:Ljava/util/List;

    .line 216
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 217
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->destroy_()V

    return-void
.end method

.method protected distanceToPoint_(Landroid/graphics/PointF;I)F
    .locals 3

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 v0, p2, 0x2

    .line 178
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 179
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    return p1

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 182
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p2, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    add-int/lit8 p2, p2, 0x2

    .line 183
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 184
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p2, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p2

    .line 185
    invoke-static {v1, v0, p2, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenQuadCurveAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 186
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->simplePenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 187
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->simplePenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    cmpl-float v0, p1, p2

    if-lez v0, :cond_1

    return p1

    :cond_1
    return p2

    :cond_2
    return p1
.end method

.method protected distanceToSegment_(Landroid/graphics/PointF;Landroid/graphics/PointF;I)F
    .locals 3

    mul-int/lit8 p3, p3, 0x2

    add-int/lit8 v0, p3, 0x2

    .line 197
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 198
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    return p1

    :cond_0
    add-int/lit8 v0, p3, 0x1

    .line 201
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p3, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    add-int/lit8 p3, p3, 0x2

    .line 202
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 203
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p3, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p3

    .line 204
    invoke-static {v1, v0, p3, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenQuadCurveAndSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 205
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->simplePenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->simplePenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    sub-float/2addr p1, p2

    const/4 p2, 0x0

    cmpl-float p3, p1, p2

    if-lez p3, :cond_1

    return p1

    :cond_1
    return p2

    :cond_2
    return p1
.end method

.method protected editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z
    .locals 2

    .line 158
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->applyTransform(Landroid/graphics/Matrix;Lcom/metamoji/cm/PointArray;)V

    .line 172
    :goto_0
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z

    move-result p1

    return p1
.end method

.method protected initWithTransform_(Landroid/graphics/Matrix;FF)Z
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerZoom:F

    .line 123
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->reducerDelta:F

    iget v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerZoom:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerDelta:F

    .line 124
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 127
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerDelta:F

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->checkReducerDeltaFromModel(Lcom/metamoji/df/model/IModel;F)F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerDelta:F

    .line 129
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerZoom:F

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->checkReducerZoomFromModel(Lcom/metamoji/df/model/IModel;F)F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerZoom:F

    .line 130
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->getSegmentDataFromModel(Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_segmentData:Ljava/util/List;

    .line 134
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->updateReducerDeltaWithTransform(Landroid/graphics/Matrix;)V

    .line 139
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->initWithTransform_(Landroid/graphics/Matrix;FF)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 140
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected massPointsThreshold()I
    .locals 1

    const/16 v0, 0x12c

    return v0
.end method

.method public reducerDelta()F
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 64
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerDelta:F

    return v0
.end method

.method public reducerZoom()F
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 87
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerZoom:F

    return v0
.end method

.method protected resizePathWithTransform(Landroid/graphics/Matrix;FFLandroid/graphics/PointF;)Z
    .locals 2

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float v0, p2, p4

    const/4 v1, 0x0

    if-nez v0, :cond_0

    cmpl-float v0, p3, p4

    if-nez v0, :cond_0

    return v1

    .line 399
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 400
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    .line 401
    invoke-direct {p0, p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->updateReducerDeltaWithResizeX(FF)V

    cmpl-float p2, p2, p4

    const/4 v0, 0x1

    if-gez p2, :cond_1

    cmpl-float p2, p3, p4

    if-ltz p2, :cond_2

    .line 404
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->isPoint()Z

    move-result p2

    if-nez p2, :cond_2

    .line 406
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->bezierPath()Landroid/graphics/Path;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 412
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result p2

    if-ge v1, p2, :cond_4

    .line 413
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->rectAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/RectEx;

    move-result-object p2

    .line 414
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectApplyAffineTransform(Lcom/metamoji/cm/RectEx;Landroid/graphics/Matrix;)Lcom/metamoji/cm/RectEx;

    move-result-object p2

    .line 415
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object p3

    invoke-static {v1, p2, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->replaceRectAtIndex(ILcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->bezierPath()Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 420
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->removeAllRects(Ljava/lang/Object;)V

    .line 421
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->drawingCost()D

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->drawingCost()D

    move-result-wide p1

    const-wide/16 p3, 0x0

    cmpl-double p1, p1, p3

    if-ltz p1, :cond_3

    const/4 p1, 0x2

    .line 422
    new-array p1, p1, [D

    fill-array-data p1, :array_0

    .line 423
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 424
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->bezierPath()Landroid/graphics/Path;

    move-result-object p3

    .line 425
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object p4

    .line 423
    invoke-static {p2, p3, p4, p1, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->constructPathFromBezierPoints(Lcom/metamoji/cm/PointArray;Landroid/graphics/Path;Ljava/lang/Object;[DZ)V

    .line 428
    aget-wide p2, p1, v1

    invoke-virtual {p0, p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->setTotalBendAngle(D)V

    .line 429
    aget-wide p1, p1, v0

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->setComplexity(D)V

    goto :goto_1

    .line 431
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 432
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->bezierPath()Landroid/graphics/Path;

    move-result-object p2

    .line 433
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object p3

    .line 431
    invoke-static {p1, p2, p3, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->constructPathFromBezierPoints(Lcom/metamoji/cm/PointArray;Landroid/graphics/Path;Ljava/lang/Object;Z)V

    .line 439
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->updatePathLengthsWithBezierPoints(Lcom/metamoji/cm/PointArray;)V

    .line 442
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->updateBounds()V

    .line 445
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->updateDrawingCost()V

    return v0

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method protected rotatePathWithTransform(Landroid/graphics/Matrix;FLandroid/graphics/PointF;)Z
    .locals 6

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->bezierPath()Landroid/graphics/Path;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 512
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result p1

    .line 513
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->removeAllRects(Ljava/lang/Object;)V

    .line 514
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p2

    const/4 v1, 0x1

    move v2, v1

    .line 516
    :goto_0
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 517
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    add-int/lit8 v2, v2, 0x2

    .line 518
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    .line 519
    invoke-static {p2, v4, v3, p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getQuadCurveBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Lcom/metamoji/cm/RectEx;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->addRect(Lcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    move-object p2, v3

    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result p2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x0

    .line 525
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 529
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->updateBounds()V

    .line 532
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->updateDrawingCost()V

    return v1
.end method

.method protected scalePathWithTransform(Landroid/graphics/Matrix;FLandroid/graphics/PointF;)Z
    .locals 2

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float v0, p2, p3

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 460
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 461
    invoke-direct {p0, p2, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->updateReducerDeltaWithResizeX(FF)V

    cmpl-float p2, p2, p3

    if-lez p2, :cond_1

    .line 464
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->isPoint()Z

    move-result p2

    if-nez p2, :cond_1

    .line 466
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->bezierPath()Landroid/graphics/Path;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 472
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result p2

    if-ge v1, p2, :cond_2

    .line 473
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->rectAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/RectEx;

    move-result-object p2

    .line 474
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectApplyAffineTransform(Lcom/metamoji/cm/RectEx;Landroid/graphics/Matrix;)Lcom/metamoji/cm/RectEx;

    move-result-object p2

    .line 475
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object p3

    invoke-static {v1, p2, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->replaceRectAtIndex(ILcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->bezierPath()Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 480
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->removeAllRects(Ljava/lang/Object;)V

    .line 481
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->bezierPath()Landroid/graphics/Path;

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p2, p3, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->constructPathFromBezierPoints(Lcom/metamoji/cm/PointArray;Landroid/graphics/Path;Ljava/lang/Object;Z)V

    .line 485
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->updatePathLengthsWithBezierPoints(Lcom/metamoji/cm/PointArray;)V

    .line 488
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->updateBounds()V

    .line 491
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->updateDrawingCost()V

    const/4 p1, 0x1

    return p1
.end method

.method public segmentData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_segmentData:Ljava/util/List;

    return-object v0
.end method

.method public setReducerDelta(F)V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 68
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 72
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 75
    :cond_1
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerDelta:F

    .line 76
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerDelta:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->saveReducerDeltaToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_2
    return-void
.end method

.method public setReducerZoom(F)V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 91
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 95
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 98
    :cond_1
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerZoom:F

    .line 99
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerZoom:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->saveReducerZoomToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_2
    return-void
.end method

.method protected strokeType_()Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;
    .locals 1

    .line 149
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->REDUCED:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    return-object v0
.end method

.method protected updatePath()V
    .locals 8

    .line 313
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 314
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->bezierPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 315
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->removeAllRects(Ljava/lang/Object;)V

    .line 318
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;-><init>()V

    .line 324
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerDelta:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->setDelta(F)V

    .line 325
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_reducerZoom:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->setZoom(F)V

    .line 328
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->isInitializing()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_segmentData:Ljava/util/List;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->setPoints(Lcom/metamoji/cm/PointArray;)V

    .line 340
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->reducePoints()Z

    move-result v1

    if-nez v1, :cond_2

    .line 341
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 344
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->setBezierPoints(Lcom/metamoji/cm/PointArray;)V

    .line 345
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->updateBezierPoints()Z

    move-result v1

    if-nez v1, :cond_3

    .line 346
    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 351
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->reducedPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->updatePoints(Lcom/metamoji/cm/PointArray;)V

    .line 354
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->segmentData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_segmentData:Ljava/util/List;

    .line 355
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 356
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_segmentData:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->saveSegmentDataToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V

    goto :goto_1

    .line 330
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->setReducedPoints(Lcom/metamoji/cm/PointArray;)V

    .line 331
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_segmentData:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->setSegmentData(Ljava/util/List;)V

    .line 332
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->setBezierPoints(Lcom/metamoji/cm/PointArray;)V

    .line 333
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->updateBezierPoints()Z

    move-result v0

    if-nez v0, :cond_5

    .line 334
    invoke-static {v5, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 361
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->drawingCost()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->drawingCost()D

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmpl-double v0, v0, v6

    if-ltz v0, :cond_6

    .line 362
    new-array v0, v2, [D

    fill-array-data v0, :array_0

    .line 363
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 364
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->bezierPath()Landroid/graphics/Path;

    move-result-object v2

    .line 365
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object v4

    .line 363
    invoke-static {v1, v2, v4, v0, v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->constructPathFromBezierPoints(Lcom/metamoji/cm/PointArray;Landroid/graphics/Path;Ljava/lang/Object;[DZ)V

    .line 368
    aget-wide v1, v0, v5

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->setTotalBendAngle(D)V

    .line 369
    aget-wide v0, v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->setComplexity(D)V

    goto :goto_2

    .line 371
    :cond_6
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 372
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->bezierPath()Landroid/graphics/Path;

    move-result-object v1

    .line 373
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object v2

    .line 371
    invoke-static {v0, v1, v2, v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->constructPathFromBezierPoints(Lcom/metamoji/cm/PointArray;Landroid/graphics/Path;Ljava/lang/Object;Z)V

    .line 378
    :goto_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->updatePathLengthsWithBezierPoints(Lcom/metamoji/cm/PointArray;)V

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method
