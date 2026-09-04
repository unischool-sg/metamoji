.class public Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;
.super Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;
.source "DrCalligraphicStrokeElement.java"


# static fields
.field private static final MIME_TYPE_OF_SEGMENT_DATA:Ljava/lang/String; = "application/octet-stream"

.field private static final MODEL_PROPERTY_OLD_INTERNAL_ANGLE:Ljava/lang/String; = "oi"

.field private static final MODEL_PROPERTY_REDUCER_DELTA:Ljava/lang/String; = "d"

.field private static final MODEL_PROPERTY_REDUCER_ZOOM:Ljava/lang/String; = "z"

.field private static final MODEL_PROPERTY_SEGMENT_DATA:Ljava/lang/String; = "g"


# instance fields
.field private m_bezierPath:Landroid/graphics/Path;

.field private m_bezierPoints:Lcom/metamoji/cm/PointArray;

.field private final m_bounds:Lcom/metamoji/cm/RectEx;

.field private m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

.field private final m_frameBounds:Lcom/metamoji/cm/RectEx;

.field private m_pathRects:Ljava/lang/Object;

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
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;-><init>()V

    .line 60
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    .line 61
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_frameBounds:Lcom/metamoji/cm/RectEx;

    return-void
.end method

.method public static checkCalligraphicStrokeElementModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 663
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->checkStrokeElementModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->getStrokeTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    move-result-object p0

    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static checkReducerDeltaFromModel(Lcom/metamoji/df/model/IModel;F)F
    .locals 1

    if-nez p0, :cond_0

    return p1

    .line 676
    :cond_0
    const-string v0, "d"

    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    return p0
.end method

.method public static checkReducerZoomFromModel(Lcom/metamoji/df/model/IModel;F)F
    .locals 1

    if-nez p0, :cond_0

    return p1

    .line 683
    :cond_0
    const-string/jumbo v0, "z"

    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    return p0
.end method

.method public static getSegmentDataFromModel(Lcom/metamoji/df/model/IModel;)Ljava/util/List;
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

    .line 690
    :cond_0
    const-string v0, "g"

    const-string v1, "application/octet-stream"

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->mutableDataPropertyForName(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static newCalligraphicStrokeElementWithFamily(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;
    .locals 1

    if-eqz p0, :cond_0

    .line 714
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->newEmptyCalligraphicStrokeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 715
    :goto_0
    new-instance v0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;

    return-object p0
.end method

.method public static newEmptyCalligraphicStrokeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 699
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->newEmptyStrokeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 701
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 703
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method private resizePathWithTransform(Landroid/graphics/Matrix;FFLandroid/graphics/PointF;)Z
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p4, p2, p1

    if-nez p4, :cond_0

    cmpl-float p1, p3, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 910
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updateReducerDeltaWithResizeX(FF)V

    .line 913
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updatePath()V

    .line 916
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updateBounds()V

    const/4 p1, 0x1

    return p1
.end method

.method private rotatePathWithTransform(Landroid/graphics/Matrix;FLandroid/graphics/PointF;)Z
    .locals 2

    const/4 p3, 0x0

    cmpl-float p2, p2, p3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 951
    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p2

    if-ge v0, p2, :cond_1

    .line 952
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p2

    .line 953
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p2

    .line 954
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, p2, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 958
    :cond_1
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 964
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPathRectsFromBezierPoints(Lcom/metamoji/cm/PointArray;F)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_pathRects:Ljava/lang/Object;

    .line 967
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updateBounds()V

    const/4 p1, 0x1

    return p1
.end method

.method private static saveReducerDeltaToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 979
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

    .line 986
    const-string/jumbo v1, "z"

    if-eqz v0, :cond_1

    .line 987
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 989
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

    .line 997
    :cond_0
    const-string v0, "g"

    if-eqz p1, :cond_1

    .line 998
    const-string v1, "application/octet-stream"

    invoke-static {v0, p1, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDataPropertyForName(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1000
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private scalePathWithTransform(Landroid/graphics/Matrix;FLandroid/graphics/PointF;)Z
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p2, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 930
    :cond_0
    invoke-direct {p0, p2, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updateReducerDeltaWithResizeX(FF)V

    .line 933
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updatePath()V

    .line 936
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updateBounds()V

    const/4 p1, 0x1

    return p1
.end method

.method private translatePathWithTransform(Landroid/graphics/Matrix;FF)Z
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    move v0, v2

    .line 875
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 876
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    .line 879
    iget v3, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, p2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, p3

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v3, v1, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(IFFLcom/metamoji/cm/PointArray;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 889
    :goto_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result p1

    if-ge v2, p1, :cond_2

    .line 890
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->rectAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 891
    invoke-virtual {p1, p2, p3}, Lcom/metamoji/cm/RectEx;->offset(FF)V

    .line 892
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->replaceRectAtIndex(ILcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 896
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updateBounds()V

    const/4 p1, 0x1

    return p1
.end method

.method private updateCalligraphicPenStyleWithTransform(Landroid/graphics/Matrix;FF)V
    .locals 3

    .line 787
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->determinantOfTransform(Landroid/graphics/Matrix;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 788
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    if-eqz v1, :cond_4

    if-nez p1, :cond_1

    cmpl-float v2, p2, v0

    if-nez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p3, v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 793
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->cloneWithScale(FLcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_2

    .line 797
    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->penAngle()F

    move-result v0

    sub-float/2addr v0, p2

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result p2

    invoke-virtual {p3, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setPenAngle(F)V

    :cond_2
    if-eqz p1, :cond_3

    const/high16 p1, 0x43b40000    # 360.0f

    .line 802
    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->penAngle()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-virtual {p3, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setPenAngle(F)V

    .line 806
    :cond_3
    invoke-virtual {p0, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updatePenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 807
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    :cond_4
    :goto_1
    return-void
.end method

.method private updateIndexes()V
    .locals 13

    .line 854
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    move-object v1, p0

    .line 855
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->setIndexesWithBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DD)V

    return-void

    .line 858
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->startIndex()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->endIndex()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 859
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x0

    move-object v7, p0

    .line 860
    invoke-virtual/range {v7 .. v12}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->setIndexesWithBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DD)V

    return-void
.end method

.method private updatePath()V
    .locals 4

    .line 723
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 724
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->removeAllRects(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 725
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    .line 728
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 733
    :cond_0
    new-instance v1, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;-><init>()V

    .line 734
    iget v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerDelta:F

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->setDelta(F)V

    .line 735
    iget v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerZoom:F

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->setZoom(F)V

    .line 736
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/un/draw2/module/DrModuleSettings;->minPenSize:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 737
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/un/draw2/module/DrModuleSettings;->minPenSize:F

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->setPenWidth(F)V

    goto :goto_0

    .line 739
    :cond_1
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->setPenWidth(F)V

    .line 741
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->penAngle()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->setPenAngle(F)V

    .line 742
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->penRate()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->setPenRate(F)V

    .line 745
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->isInitializing()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 747
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->setReducedPoints(Lcom/metamoji/cm/PointArray;)V

    .line 748
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_segmentData:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->setSegmentData(Ljava/util/List;)V

    .line 749
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->setBezierPoints(Lcom/metamoji/cm/PointArray;)V

    .line 750
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->updateBezierPaths()Z

    move-result v2

    if-nez v2, :cond_2

    .line 751
    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 754
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPaths()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/sprite/Path;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Path;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    goto :goto_1

    .line 757
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->setPoints(Lcom/metamoji/cm/PointArray;)V

    .line 758
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->reducePoints()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v1, 0x1

    .line 759
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 762
    :cond_4
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->setBezierPoints(Lcom/metamoji/cm/PointArray;)V

    .line 763
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->updateBezierPaths()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v1, 0x2

    .line 764
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 767
    :cond_5
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->bezierPaths()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/sprite/Path;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Path;->getPath()Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    .line 770
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->reducedPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updatePoints(Lcom/metamoji/cm/PointArray;)V

    .line 773
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/calligrapher/DrUtCalligrapher;->segmentData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_segmentData:Ljava/util/List;

    .line 774
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 775
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_segmentData:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->saveSegmentDataToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V

    .line 780
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPathRectsFromBezierPoints(Lcom/metamoji/cm/PointArray;F)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_pathRects:Ljava/lang/Object;

    .line 783
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updatePathLengthsWithBezierPoints(Lcom/metamoji/cm/PointArray;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private updateReducerDeltaWithResizeX(FF)V
    .locals 4

    .line 812
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 813
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, p1, v0

    .line 814
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v0, p2, v0

    .line 815
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 816
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    cmpl-float v0, v1, v0

    .line 823
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerDelta:F

    if-lez v0, :cond_1

    mul-float/2addr v1, p1

    .line 821
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerDelta:F

    goto :goto_0

    :cond_1
    mul-float/2addr v1, p2

    .line 823
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerDelta:F

    .line 825
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 826
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerDelta:F

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->saveReducerDeltaToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateReducerDeltaWithTransform(Landroid/graphics/Matrix;)V
    .locals 5

    .line 831
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointZero:Landroid/graphics/PointF;

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 832
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    .line 833
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 834
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    .line 835
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    sub-float v0, v2, v1

    .line 836
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p1, v1

    .line 837
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 838
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    goto :goto_1

    :cond_0
    cmpl-float v0, v0, v1

    .line 845
    iget v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerDelta:F

    if-lez v0, :cond_1

    mul-float/2addr v1, v2

    .line 843
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerDelta:F

    goto :goto_0

    :cond_1
    mul-float/2addr v1, p1

    .line 845
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerDelta:F

    .line 847
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 848
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerDelta:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->saveReducerDeltaToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected applyPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 534
    move-object v0, p1

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    if-eqz p1, :cond_1

    .line 537
    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->isEqualToPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 543
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_3

    .line 545
    check-cast p2, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    .line 546
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineWidth()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineWidth()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    .line 547
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->penAngle()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->penAngle()F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    .line 548
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->penRate()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->penRate()F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    goto :goto_1

    .line 558
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updatePath()V

    .line 559
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updateBounds()V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method protected applyPoints_()Z
    .locals 1

    .line 489
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updatePath()V

    .line 492
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updateIndexes()V

    .line 495
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updateBounds()V

    const/4 v0, 0x1

    return v0
.end method

.method protected applyVariationWithTransform_(Landroid/graphics/Matrix;FF)Z
    .locals 0

    .line 510
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->applyVariationWithTransform_(Landroid/graphics/Matrix;FF)Z

    .line 513
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updateCalligraphicPenStyleWithTransform(Landroid/graphics/Matrix;FF)V

    .line 516
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updateReducerDeltaWithTransform(Landroid/graphics/Matrix;)V

    .line 519
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updatePath()V

    .line 522
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updateBounds()V

    const/4 p1, 0x1

    return p1
.end method

.method protected bounds_()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public calligraphicPenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    return-object v0
.end method

.method protected checkEraseIntervalsBySegmentWithPoints_(Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/DrEraseContext;I)V
    .locals 12

    move/from16 v0, p5

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    int-to-float v2, v1

    .line 580
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, v2, v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v5

    int-to-float v0, v0

    .line 581
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, v0, v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v7

    .line 582
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->containsInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    mul-int/2addr v1, v0

    const/4 v3, 0x4

    .line 588
    new-array v11, v3, [F

    fill-array-data v11, :array_0

    .line 589
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    add-int/lit8 v3, v1, 0x1

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 590
    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 591
    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, p1

    move-object v9, p2

    move v10, p3

    .line 589
    invoke-static/range {v4 .. v11}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->checkIntersectionParametersOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FLandroid/graphics/PointF;Landroid/graphics/PointF;F[F)I

    move-result p1

    const/4 p2, 0x0

    .line 597
    aget p2, v11, p2

    const/4 p3, 0x1

    .line 598
    aget v1, v11, p3

    .line 599
    aget v9, v11, v0

    const/4 v3, 0x3

    .line 600
    aget v10, v11, v3

    if-eq p1, p3, :cond_3

    if-eq p1, v0, :cond_2

    :goto_0
    return-void

    :cond_2
    add-float/2addr p2, v2

    .line 610
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v4

    add-float/2addr v1, v2

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 611
    invoke-virtual {p0, v1, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v6

    .line 612
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    move-object/from16 v3, p4

    .line 610
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->addEraseInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    add-float/2addr v9, v2

    .line 613
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, v9, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v4

    add-float/2addr v10, v2

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 614
    invoke-virtual {p0, v10, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v6

    .line 615
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    .line 613
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->addEraseInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void

    :cond_3
    add-float/2addr p2, v2

    .line 605
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v4

    add-float/2addr v1, v2

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 606
    invoke-virtual {p0, v1, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v6

    .line 607
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    move-object/from16 v3, p4

    .line 605
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->addEraseInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected checkPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 529
    instance-of p1, p1, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected coverAtIndex_(I)Lcom/metamoji/cm/RectEx;
    .locals 1

    if-nez p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 244
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->rectAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected coverCount_()I
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected createSubStrokeWithIndices_(DD)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->parameterFromIndex(DLcom/metamoji/cm/PointArray;)F

    move-result p1

    float-to-double p1, p1

    .line 626
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-virtual {p0, p3, p4, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->parameterFromIndex(DLcom/metamoji/cm/PointArray;)F

    move-result p3

    float-to-double p3, p3

    .line 629
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    double-to-float p1, p1

    double-to-float p2, p3

    const/4 p3, 0x1

    invoke-static {v0, p1, p2, p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getSubPointArrayOfQuadCurvesWithPointArray(Lcom/metamoji/cm/PointArray;FFZ)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 634
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p2

    .line 641
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p4

    invoke-static {p3, p4, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->newCalligraphicStrokeElementWithFamily(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;

    move-result-object p2

    .line 642
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 643
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->setReducerZoom(F)V

    .line 644
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object p3

    iget p3, p3, Lcom/metamoji/un/draw2/module/DrModuleSettings;->reducerDelta:F

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->reducerZoom()F

    move-result p4

    div-float/2addr p3, p4

    invoke-virtual {p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->setReducerDelta(F)V

    .line 647
    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->setPoints(Lcom/metamoji/cm/PointArray;)V

    return-object p2
.end method

.method protected destroy_()V
    .locals 1

    const/4 v0, 0x0

    .line 415
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_segmentData:Ljava/util/List;

    .line 416
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 417
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    .line 418
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_pathRects:Ljava/lang/Object;

    .line 419
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    .line 420
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->destroy_()V

    return-void
.end method

.method protected distanceToPoint_(Landroid/graphics/PointF;I)F
    .locals 2

    .line 386
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathContainsPoint(Landroid/graphics/Path;Landroid/graphics/Matrix;Landroid/graphics/PointF;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    return p1
.end method

.method protected distanceToSegment_(Landroid/graphics/PointF;Landroid/graphics/PointF;I)F
    .locals 3

    if-nez p3, :cond_0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    return p1

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathContainsPoint(Landroid/graphics/Path;Landroid/graphics/Matrix;Landroid/graphics/PointF;Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    .line 398
    invoke-static {v0, v1, p2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathContainsPoint(Landroid/graphics/Path;Landroid/graphics/Matrix;Landroid/graphics/PointF;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, -0x1

    mul-int/lit8 p3, p3, 0x2

    .line 406
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p3, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 407
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    add-int/lit8 p3, p3, 0x2

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 408
    invoke-static {p3, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p3

    .line 406
    invoke-static {v0, v1, p3, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenQuadCurveAndSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z
    .locals 4

    .line 251
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z

    .line 254
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 259
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updateCalligraphicPenStyleWithTransform(Landroid/graphics/Matrix;FF)V

    .line 262
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    .line 274
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_1
    return v1

    .line 270
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->rotatePathWithTransform(Landroid/graphics/Matrix;FLandroid/graphics/PointF;)Z

    move-result p1

    return p1

    .line 268
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->scale()F

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->scalePathWithTransform(Landroid/graphics/Matrix;FLandroid/graphics/PointF;)Z

    move-result p1

    return p1

    .line 266
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->resizeX()F

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->resizeY()F

    move-result v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->resizePathWithTransform(Landroid/graphics/Matrix;FFLandroid/graphics/PointF;)Z

    move-result p1

    return p1

    .line 264
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->translateX()F

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->translateY()F

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->translatePathWithTransform(Landroid/graphics/Matrix;FF)Z

    move-result p1

    return p1
.end method

.method protected frameBounds_()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_frameBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method protected highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V
    .locals 12

    .line 281
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 284
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrHighlightProcess:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->process()Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_8

    const/4 p1, 0x4

    if-eq v0, p1, :cond_8

    const/4 p1, 0x0

    .line 294
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 299
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->snapShot()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 304
    :cond_2
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->newSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v9

    .line 307
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    .line 308
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->highlightBaseColor()Ljava/lang/Integer;

    move-result-object v4

    .line 309
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    div-float/2addr v6, v5

    .line 310
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightDropShadowOffset:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    iget-object v7, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightDropShadowOffset:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v7, v6

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightDropShadowBlur:F

    mul-float v8, v0, v6

    move v6, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v4 .. v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setDropShadowWithColor(Ljava/lang/Integer;FFFFLcom/metamoji/df/sprite/Sprite;)V

    .line 318
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStCalligraphicInkType:[I

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->inkType()Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x0

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_3

    goto/16 :goto_2

    .line 332
    :cond_3
    invoke-static {v4, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineWidth(FLcom/metamoji/df/sprite/Sprite;)V

    .line 333
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 334
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineAlpha()F

    move-result v0

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    .line 335
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setFillColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 336
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineAlpha()F

    move-result v0

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setFillAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    .line 337
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawPath(Landroid/graphics/Path;Lcom/metamoji/df/sprite/Sprite;)V

    .line 340
    new-instance v5, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->y:F

    invoke-direct {v5, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 341
    new-instance v8, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->y:F

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v4, v4, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr v1, v4

    invoke-direct {v8, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 343
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->inkColors()Ljava/util/List;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    if-eqz v0, :cond_6

    .line 344
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->inkColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 350
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    if-eq v0, v3, :cond_4

    .line 354
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->inkColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 355
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->inkColors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v6, v0

    goto :goto_1

    .line 350
    :cond_4
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->inkColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 346
    :cond_5
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 359
    :cond_6
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    move-object v1, v0

    move-object v6, v1

    .line 362
    :goto_1
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    .line 365
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineAlpha()F

    move-result v7

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    .line 368
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineAlpha()F

    move-result v10

    move-object v11, v9

    move-object v9, v1

    .line 362
    invoke-static/range {v4 .. v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawLinearGradientPath(Landroid/graphics/Path;Landroid/graphics/PointF;Ljava/lang/Integer;FLandroid/graphics/PointF;Ljava/lang/Integer;FLcom/metamoji/df/sprite/Sprite;)V

    move-object v9, v11

    goto :goto_2

    .line 320
    :cond_7
    invoke-static {v4, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineWidth(FLcom/metamoji/df/sprite/Sprite;)V

    .line 321
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 322
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineAlpha()F

    move-result v0

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    .line 323
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setFillColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 324
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineAlpha()F

    move-result v0

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setFillAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    .line 325
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-static {v0, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawPath(Landroid/graphics/Path;Lcom/metamoji/df/sprite/Sprite;)V

    .line 377
    :goto_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->snapShot()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->addChild(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/df/sprite/Sprite;)V

    .line 380
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->addSnapShotBounds(Lcom/metamoji/cm/RectEx;)V

    :cond_8
    :goto_3
    return-void
.end method

.method protected initWithTransform_(Landroid/graphics/Matrix;FF)Z
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerZoom:F

    .line 165
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->reducerDelta:F

    iget v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerZoom:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerDelta:F

    .line 166
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPoints:Lcom/metamoji/cm/PointArray;

    .line 167
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    .line 168
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->newRectArray()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_pathRects:Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 170
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_frameBounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 173
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerDelta:F

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->checkReducerDeltaFromModel(Lcom/metamoji/df/model/IModel;F)F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerDelta:F

    .line 175
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerZoom:F

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->checkReducerZoomFromModel(Lcom/metamoji/df/model/IModel;F)F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerZoom:F

    .line 176
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->getSegmentDataFromModel(Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_segmentData:Ljava/util/List;

    .line 180
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updateReducerDeltaWithTransform(Landroid/graphics/Matrix;)V

    .line 185
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->initWithTransform_(Landroid/graphics/Matrix;FF)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    .line 186
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p1

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    :cond_3
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    .line 194
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    if-eqz v0, :cond_4

    .line 195
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "oi"

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 197
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    sub-float/2addr p2, v0

    .line 198
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 203
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updateCalligraphicPenStyleWithTransform(Landroid/graphics/Matrix;FF)V

    .line 206
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updatePath()V

    .line 209
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updateIndexes()V

    .line 212
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->updateBounds()V

    const/4 p1, 0x1

    return p1
.end method

.method protected pathBounds_()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public reducerDelta()F
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 78
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerDelta:F

    return v0
.end method

.method public reducerZoom()F
    .locals 2

    .line 97
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 101
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerZoom:F

    return v0
.end method

.method protected repaint_()V
    .locals 11

    .line 426
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->clear(Lcom/metamoji/df/sprite/Sprite;)V

    .line 429
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->displayableCanvasBoundaryLimit:F

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkBoundaryOfRect(Lcom/metamoji/cm/RectEx;F)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 439
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStCalligraphicInkType:[I

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->inkType()Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    goto/16 :goto_2

    .line 449
    :cond_2
    new-instance v4, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->y:F

    invoke-direct {v4, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 450
    new-instance v7, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->y:F

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr v2, v3

    invoke-direct {v7, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 452
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->inkColors()Ljava/util/List;

    move-result-object v0

    .line 468
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    if-eqz v0, :cond_5

    .line 453
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->inkColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 459
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    .line 463
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->inkColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 464
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->inkColors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v5, v0

    move-object v8, v1

    goto :goto_1

    .line 459
    :cond_3
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->inkColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0

    .line 455
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 468
    :cond_5
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    move-object v5, v0

    move-object v8, v5

    .line 471
    :goto_1
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    .line 474
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineAlpha()F

    move-result v6

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    .line 477
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineAlpha()F

    move-result v9

    .line 478
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v10

    .line 471
    invoke-static/range {v3 .. v10}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawLinearGradientPath(Landroid/graphics/Path;Landroid/graphics/PointF;Ljava/lang/Integer;FLandroid/graphics/PointF;Ljava/lang/Integer;FLcom/metamoji/df/sprite/Sprite;)V

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 441
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineWidth(FLcom/metamoji/df/sprite/Sprite;)V

    .line 442
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 443
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineAlpha()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    .line 444
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setFillColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 445
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_calligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineAlpha()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setFillAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    .line 446
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawPath(Landroid/graphics/Path;Lcom/metamoji/df/sprite/Sprite;)V

    :cond_7
    :goto_2
    return-void
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

    .line 133
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_segmentData:Ljava/util/List;

    return-object v0
.end method

.method public setReducerDelta(F)V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 82
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 86
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 89
    :cond_1
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerDelta:F

    .line 90
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerDelta:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->saveReducerDeltaToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_2
    return-void
.end method

.method public setReducerZoom(F)V
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 105
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 109
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 112
    :cond_1
    iput p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerZoom:F

    .line 113
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_reducerZoom:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->saveReducerZoomToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_2
    return-void
.end method

.method protected strokeType_()Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;
    .locals 1

    .line 219
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    return-object v0
.end method

.method protected updateBounds()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathGetPathBoundingBox(Landroid/graphics/Path;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->m_frameBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Lcom/metamoji/cm/PointArray;)Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 156
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateBounds()V

    return-void
.end method
