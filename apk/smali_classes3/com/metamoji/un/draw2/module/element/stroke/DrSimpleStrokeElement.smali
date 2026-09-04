.class public Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;
.super Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;
.source "DrSimpleStrokeElement.java"


# static fields
.field private static final HIGH_DRAWING_COST_THRESHOLD:F = 1000.0f

.field private static final MASS_POINTS_THRESHOLD:I = 0x1f4

.field private static final RASTERIZATION_SCALE_REGULATION_VALUE:F = 1.5f

.field private static final RASTERIZATION_SIZE_MARGIN:F = 1.0f


# instance fields
.field private m_bezierPath:Landroid/graphics/Path;

.field private final m_bounds:Lcom/metamoji/cm/RectEx;

.field m_complexity:D

.field m_drawingCost:D

.field private final m_pathBounds:Lcom/metamoji/cm/RectEx;

.field private m_pathRects:Ljava/lang/Object;

.field private m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

.field m_totalBendAngle:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;-><init>()V

    .line 50
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    .line 51
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    return-void
.end method

.method public static checkSimpleStrokeElementModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 828
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->checkStrokeElementModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->getStrokeTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    move-result-object p0

    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->SIMPLE:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newEmptySimpleStrokeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 832
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->newEmptyStrokeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 834
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->SIMPLE:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 836
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method public static newSimpleStrokeElementWithFamily(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;
    .locals 1

    if-eqz p0, :cond_0

    .line 842
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->newEmptySimpleStrokeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 843
    :goto_0
    new-instance v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->initWithModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;

    return-object p0
.end method

.method private repaintToSprite(Lcom/metamoji/df/sprite/Sprite;Z)V
    .locals 5

    .line 894
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 895
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    const/4 v1, 0x1

    .line 896
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x2

    .line 897
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 898
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 904
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    .line 905
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v2

    .line 906
    iget v3, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->minPenSize:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 907
    iget v2, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->minPenSize:F

    .line 910
    :cond_1
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineDashAsArray()[F

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineDash([FLcom/metamoji/df/sprite/Sprite;)V

    .line 911
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineCap(Lcom/metamoji/df/sprite/LineCap;Lcom/metamoji/df/sprite/Sprite;)V

    .line 912
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineJoin()Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;Lcom/metamoji/df/sprite/Sprite;)V

    .line 913
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineJoin()Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v3

    sget-object v4, Lcom/metamoji/df/sprite/LineJoin;->MITER:Lcom/metamoji/df/sprite/LineJoin;

    if-ne v3, v4, :cond_2

    .line 914
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->miterLimit()F

    move-result v3

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setMiterLimit(FLcom/metamoji/df/sprite/Sprite;)V

    :cond_2
    if-eqz p2, :cond_4

    .line 921
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result p2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, p2

    .line 922
    iget p2, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightDropShadowBlur:F

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr p2, v4

    mul-float/2addr p2, v3

    add-float/2addr p2, v2

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineWidth(FLcom/metamoji/df/sprite/Sprite;)V

    .line 923
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->highlightBaseColor()Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 924
    iget p2, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightEditAlpha:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p2, v1

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    if-eqz v0, :cond_3

    .line 928
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawCircleAtPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)V

    goto :goto_1

    .line 930
    :cond_3
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawPath(Landroid/graphics/Path;Lcom/metamoji/df/sprite/Sprite;)V

    .line 934
    :cond_4
    :goto_1
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineWidth(FLcom/metamoji/df/sprite/Sprite;)V

    .line 935
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 936
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineAlpha()F

    move-result p2

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    if-eqz v0, :cond_5

    .line 938
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawCircleAtPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)V

    return-void

    .line 940
    :cond_5
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawPath(Landroid/graphics/Path;Lcom/metamoji/df/sprite/Sprite;)V

    return-void
.end method

.method private updateIndexes()V
    .locals 13

    .line 879
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    move-object v1, p0

    .line 880
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->setIndexesWithBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DD)V

    return-void

    .line 883
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->startIndex()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->endIndex()D

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

    .line 884
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const-wide/16 v9, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x0

    move-object v7, p0

    .line 885
    invoke-virtual/range {v7 .. v12}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->setIndexesWithBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DD)V

    return-void
.end method

.method private updateSimplePenStyleWithTransform(Landroid/graphics/Matrix;FF)V
    .locals 0

    .line 851
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz p1, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p3, p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 856
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result p1

    mul-float/2addr p1, p3

    .line 859
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 862
    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->updateLineDashWithLineWidth(F)V

    .line 865
    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 868
    invoke-virtual {p0, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updatePenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 869
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected applyPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 722
    move-object v0, p1

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz p1, :cond_1

    .line 725
    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->isEqualToPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_3

    .line 732
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineWidth()F

    move-result p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineWidth()F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_4

    .line 736
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineWidth()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    goto :goto_1

    .line 741
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateBounds()V

    .line 744
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateDrawingCost()V

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method protected applyPoints_()Z
    .locals 2

    .line 660
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 661
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->massPointsThreshold()I

    move-result v1

    if-le v0, v1, :cond_0

    const-wide/16 v0, 0x0

    .line 662
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_totalBendAngle:D

    .line 663
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_complexity:D

    .line 664
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 666
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_totalBendAngle:D

    .line 667
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_complexity:D

    .line 668
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    .line 673
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updatePath()V

    .line 676
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateIndexes()V

    .line 679
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateBounds()V

    .line 682
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateDrawingCost()V

    const/4 v0, 0x1

    return v0
.end method

.method protected applyVariationWithTransform_(Landroid/graphics/Matrix;FF)Z
    .locals 0

    .line 695
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->applyVariationWithTransform_(Landroid/graphics/Matrix;FF)Z

    .line 698
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateSimplePenStyleWithTransform(Landroid/graphics/Matrix;FF)V

    .line 701
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updatePath()V

    .line 704
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateBounds()V

    .line 707
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateDrawingCost()V

    const/4 p1, 0x1

    return p1
.end method

.method protected basePointCountForDrawingCost()I
    .locals 1

    .line 152
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    return v0
.end method

.method public bezierPath()Landroid/graphics/Path;
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    return-object v0
.end method

.method protected bounds_()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method protected checkEraseIntervalsBySegmentWithPoints_(Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/DrEraseContext;I)V
    .locals 12

    move/from16 v0, p5

    int-to-float v1, v0

    .line 757
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v4

    add-int/lit8 v2, v0, 0x1

    int-to-float v2, v2

    .line 758
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v6

    .line 759
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    move-object/from16 v3, p4

    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->containsInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    mul-int/2addr v0, v2

    .line 765
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v7, v3

    const/4 v3, 0x4

    .line 766
    new-array v11, v3, [F

    fill-array-data v11, :array_0

    .line 767
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    add-int/lit8 v3, v0, 0x1

    .line 768
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    add-int/2addr v0, v2

    .line 769
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v6

    move-object v8, p1

    move-object v9, p2

    move v10, p3

    .line 767
    invoke-static/range {v4 .. v11}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->checkIntersectionParametersOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;FLandroid/graphics/PointF;Landroid/graphics/PointF;F[F)I

    move-result p1

    const/4 p2, 0x0

    .line 775
    aget p2, v11, p2

    const/4 p3, 0x1

    .line 776
    aget v0, v11, p3

    .line 777
    aget v9, v11, v2

    const/4 v3, 0x3

    .line 778
    aget v10, v11, v3

    if-eq p1, p3, :cond_3

    if-eq p1, v2, :cond_2

    :goto_1
    return-void

    :cond_2
    add-float/2addr p2, v1

    .line 788
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v4

    add-float/2addr v0, v1

    .line 789
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v6

    .line 790
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    move-object/from16 v3, p4

    .line 788
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->addEraseInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    add-float/2addr v9, v1

    .line 791
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-virtual {p0, v9, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v4

    add-float/2addr v10, v1

    .line 792
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-virtual {p0, v10, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v6

    .line 793
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    .line 791
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->addEraseInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void

    :cond_3
    add-float/2addr p2, v1

    .line 783
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v4

    add-float/2addr v0, v1

    .line 784
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->indexFromParameter(FLcom/metamoji/cm/PointArray;)D

    move-result-wide v6

    .line 785
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    move-object/from16 v3, p4

    .line 783
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

.method protected checkPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 714
    instance-of p1, p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected complexity()D
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_complexity:D

    return-wide v0
.end method

.method protected coverAtIndex_(I)Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    neg-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 470
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->rectAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    invoke-static {p1, v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected coverCount_()I
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected createSubStrokeWithIndices_(DD)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;
    .locals 1

    .line 803
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->parameterFromIndex(DLcom/metamoji/cm/PointArray;)F

    move-result p1

    .line 804
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p2

    invoke-virtual {p0, p3, p4, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->parameterFromIndex(DLcom/metamoji/cm/PointArray;)F

    move-result p2

    .line 807
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p3, p1, p2, p4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getSubPointArrayOfQuadCurvesWithPointArray(Lcom/metamoji/cm/PointArray;FFZ)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 812
    invoke-static {p4, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p2

    .line 817
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p4

    invoke-static {p3, p4, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->newSimpleStrokeElementWithFamily(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;

    move-result-object p2

    .line 818
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 819
    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->setPoints(Lcom/metamoji/cm/PointArray;)V

    return-object p2
.end method

.method protected destroy_()V
    .locals 1

    const/4 v0, 0x0

    .line 595
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    .line 596
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    .line 597
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 598
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->destroy_()V

    return-void
.end method

.method protected distanceToPoint_(Landroid/graphics/PointF;I)F
    .locals 3

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 v0, p2, 0x2

    .line 557
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 558
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    return p1

    :cond_0
    add-int/lit8 v0, p2, 0x1

    .line 561
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    add-int/lit8 p2, p2, 0x2

    .line 562
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 563
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p2

    .line 564
    invoke-static {v1, v0, p2, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenQuadCurveAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 565
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz p2, :cond_2

    .line 566
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

    .line 576
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 577
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    return p1

    :cond_0
    add-int/lit8 v0, p3, 0x1

    .line 580
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    add-int/lit8 p3, p3, 0x2

    .line 581
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 582
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p3

    .line 583
    invoke-static {v1, v0, p3, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenQuadCurveAndSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    .line 585
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz p2, :cond_2

    .line 586
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

.method protected drawingCost()D
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    return-wide v0
.end method

.method protected editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z
    .locals 4

    .line 476
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z

    .line 479
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 484
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    .line 485
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result v2

    .line 486
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result v3

    .line 484
    invoke-direct {p0, v0, v2, v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateSimplePenStyleWithTransform(Landroid/graphics/Matrix;FF)V

    .line 489
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

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

    .line 501
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_1
    return v1

    .line 497
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->rotatePathWithTransform(Landroid/graphics/Matrix;FLandroid/graphics/PointF;)Z

    move-result p1

    return p1

    .line 495
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->scale()F

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->scalePathWithTransform(Landroid/graphics/Matrix;FLandroid/graphics/PointF;)Z

    move-result p1

    return p1

    .line 493
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->resizeX()F

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->resizeY()F

    move-result v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->resizePathWithTransform(Landroid/graphics/Matrix;FFLandroid/graphics/PointF;)Z

    move-result p1

    return p1

    .line 491
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->translateX()F

    move-result v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->translateY()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->translatePathWithTransform(Landroid/graphics/Matrix;FF)Z

    move-result p1

    return p1
.end method

.method protected frameBounds_()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method protected highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrHighlightProcess:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->process()Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3

    const/4 p1, 0x4

    if-eq v0, p1, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 521
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 526
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->snapShot()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 531
    :cond_2
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->newSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    .line 545
    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->repaintToSprite(Lcom/metamoji/df/sprite/Sprite;Z)V

    .line 548
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->snapShot()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->addChild(Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/df/sprite/Sprite;)V

    .line 551
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->addSnapShotBounds(Lcom/metamoji/cm/RectEx;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected initWithTransform_(Landroid/graphics/Matrix;FF)Z
    .locals 3

    .line 405
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    .line 406
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->newRectArray()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 408
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 409
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_totalBendAngle:D

    .line 410
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_complexity:D

    .line 411
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->rasterizeHighDrawingCostStrokesEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    .line 414
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->initWithTransform_(Landroid/graphics/Matrix;FF)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 415
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p1

    .line 420
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    :cond_2
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 423
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateSimplePenStyleWithTransform(Landroid/graphics/Matrix;FF)V

    .line 426
    iget-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->massPointsThreshold()I

    move-result p2

    if-le p1, p2, :cond_3

    const-wide/16 p1, 0x0

    .line 427
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_totalBendAngle:D

    .line 428
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_complexity:D

    .line 429
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    .line 433
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updatePath()V

    .line 436
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateIndexes()V

    .line 439
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateBounds()V

    .line 442
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateDrawingCost()V

    const/4 p1, 0x1

    return p1
.end method

.method protected isPoint()Z
    .locals 7

    .line 948
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 950
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 953
    :cond_0
    invoke-virtual {v0, v1}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v2

    .line 954
    invoke-virtual {v0}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v3

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    .line 956
    invoke-virtual {v0, v5}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    return v1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method protected massPointsThreshold()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method protected pathBounds_()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public pathRects()Ljava/lang/Object;
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    return-object v0
.end method

.method protected repaint_()V
    .locals 9

    .line 604
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->clear(Lcom/metamoji/df/sprite/Sprite;)V

    .line 607
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->displayableCanvasBoundaryLimit:F

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkBoundaryOfRect(Lcom/metamoji/cm/RectEx;F)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 617
    :cond_1
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_4

    .line 618
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->newSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    .line 619
    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->repaintToSprite(Lcom/metamoji/df/sprite/Sprite;Z)V

    .line 620
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v4, v3, v2

    .line 623
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v5

    sget-object v6, Lcom/metamoji/df/sprite/LineCap;->SQUARE:Lcom/metamoji/df/sprite/LineCap;

    .line 628
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    if-ne v5, v6, :cond_2

    .line 624
    iget v5, v7, Lcom/metamoji/cm/RectEx;->width:F

    const v6, 0x3e5413cd

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    neg-float v5, v5

    iget-object v8, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v8, v8, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v8, v6

    add-float/2addr v4, v8

    neg-float v4, v4

    invoke-static {v7, v5, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object v4

    goto :goto_0

    :cond_2
    neg-float v4, v4

    .line 628
    invoke-static {v7, v4, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object v4

    :goto_0
    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v5

    div-float/2addr v3, v2

    .line 632
    invoke-static {v4, v2, v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->rasterizeWithBounds(Lcom/metamoji/cm/RectEx;FFLcom/metamoji/df/sprite/Sprite;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 634
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->originOf(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawImage(Landroid/graphics/Bitmap;Landroid/graphics/PointF;FFLcom/metamoji/df/sprite/Sprite;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 637
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 642
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->repaintToSprite(Lcom/metamoji/df/sprite/Sprite;Z)V

    :cond_5
    :goto_1
    return-void
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

    .line 242
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, p4

    const/4 v0, 0x1

    if-ltz p2, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, p4

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->isPoint()Z

    move-result p2

    if-nez p2, :cond_1

    .line 244
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 250
    :goto_0
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result p2

    if-ge v1, p2, :cond_3

    .line 251
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->rectAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/RectEx;

    move-result-object p2

    .line 252
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectApplyAffineTransform(Lcom/metamoji/cm/RectEx;Landroid/graphics/Matrix;)Lcom/metamoji/cm/RectEx;

    move-result-object p2

    .line 253
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v1, p2, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->replaceRectAtIndex(ILcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 258
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->removeAllRects(Ljava/lang/Object;)V

    .line 259
    iget-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result p1

    if-nez p1, :cond_2

    iget-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    const-wide/16 p3, 0x0

    cmpl-double p1, p1, p3

    if-ltz p1, :cond_2

    const/4 p1, 0x2

    .line 260
    new-array p1, p1, [D

    fill-array-data p1, :array_0

    .line 261
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    iget-object p4, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p2, p3, p4, p1, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->constructPathFromBezierPoints(Lcom/metamoji/cm/PointArray;Landroid/graphics/Path;Ljava/lang/Object;[DZ)V

    .line 266
    aget-wide p2, p1, v1

    iput-wide p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_totalBendAngle:D

    .line 267
    aget-wide p1, p1, v0

    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_complexity:D

    goto :goto_1

    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p1, p2, p3, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->constructPathFromBezierPoints(Lcom/metamoji/cm/PointArray;Landroid/graphics/Path;Ljava/lang/Object;Z)V

    .line 277
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updatePathLengthsWithBezierPoints(Lcom/metamoji/cm/PointArray;)V

    .line 280
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateBounds()V

    .line 283
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateDrawingCost()V

    return v0

    nop

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

    .line 353
    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 356
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result p1

    .line 357
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->removeAllRects(Ljava/lang/Object;)V

    .line 358
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p2

    const/4 v1, 0x1

    move v2, v1

    .line 360
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 361
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    add-int/lit8 v2, v2, 0x2

    .line 362
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    .line 363
    invoke-static {p2, v4, v3, p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getQuadCurveBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Lcom/metamoji/cm/RectEx;

    move-result-object p2

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p2, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->addRect(Lcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    move-object p2, v3

    goto :goto_0

    .line 368
    :cond_1
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result p2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x0

    .line 369
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 373
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateBounds()V

    .line 376
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateDrawingCost()V

    return v1
.end method

.method protected scalePathWithTransform(Landroid/graphics/Matrix;FLandroid/graphics/PointF;)Z
    .locals 4

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float v0, p2, p3

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 297
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, p3

    const/4 p3, 0x1

    if-lez p2, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->isPoint()Z

    move-result p2

    if-nez p2, :cond_1

    .line 299
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 305
    :goto_0
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result p2

    if-ge v1, p2, :cond_3

    .line 306
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->rectAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/RectEx;

    move-result-object p2

    .line 307
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectApplyAffineTransform(Lcom/metamoji/cm/RectEx;Landroid/graphics/Matrix;)Lcom/metamoji/cm/RectEx;

    move-result-object p2

    .line 308
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v1, p2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->replaceRectAtIndex(ILcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 313
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->removeAllRects(Ljava/lang/Object;)V

    .line 314
    iget-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result p1

    if-nez p1, :cond_2

    iget-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    const-wide/16 v2, 0x0

    cmpl-double p1, p1, v2

    if-ltz p1, :cond_2

    const/4 p1, 0x2

    .line 315
    new-array p1, p1, [D

    fill-array-data p1, :array_0

    .line 316
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p2, v0, v2, p1, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->constructPathFromBezierPoints(Lcom/metamoji/cm/PointArray;Landroid/graphics/Path;Ljava/lang/Object;[DZ)V

    .line 321
    aget-wide v0, p1, v1

    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_totalBendAngle:D

    .line 322
    aget-wide p1, p1, p3

    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_complexity:D

    goto :goto_1

    .line 324
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p1, p2, v0, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->constructPathFromBezierPoints(Lcom/metamoji/cm/PointArray;Landroid/graphics/Path;Ljava/lang/Object;Z)V

    .line 332
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updatePathLengthsWithBezierPoints(Lcom/metamoji/cm/PointArray;)V

    .line 335
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateBounds()V

    .line 338
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateDrawingCost()V

    return p3

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method protected setComplexity(D)V
    .locals 0

    .line 138
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_complexity:D

    return-void
.end method

.method protected setTotalBendAngle(D)V
    .locals 0

    .line 130
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_totalBendAngle:D

    return-void
.end method

.method public simplePenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-object v0
.end method

.method protected strokeType_()Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;
    .locals 1

    .line 449
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->SIMPLE:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    return-object v0
.end method

.method protected totalBendAngle()D
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_totalBendAngle:D

    return-wide v0
.end method

.method protected translatePathWithTransform(Landroid/graphics/Matrix;FF)Z
    .locals 3

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    return v2

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 221
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result p1

    if-ge v2, p1, :cond_1

    .line 222
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->rectAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 223
    invoke-virtual {p1, p2, p3}, Lcom/metamoji/cm/RectEx;->offset(FF)V

    .line 224
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v2, p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->replaceRectAtIndex(ILcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateBounds()V

    .line 231
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updateDrawingCost()V

    const/4 p1, 0x1

    return p1
.end method

.method protected updateBounds()V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathGetPathBoundingBox(Landroid/graphics/Path;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    .line 389
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    neg-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 390
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v1, v0, v0, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Lcom/metamoji/cm/RectEx;FFLcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    goto :goto_1

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 393
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 397
    :goto_1
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateBounds()V

    return-void
.end method

.method protected updateDrawingCost()V
    .locals 22

    move-object/from16 v0, p0

    .line 161
    iget-wide v1, v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v1

    if-nez v1, :cond_b

    iget-wide v1, v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    goto/16 :goto_4

    .line 164
    :cond_0
    iget-wide v1, v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_totalBendAngle:D

    cmpg-double v5, v1, v3

    if-lez v5, :cond_a

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(D)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-wide v1, v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_complexity:D

    cmpg-double v5, v1, v3

    if-lez v5, :cond_a

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(D)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 168
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->strokeLength()D

    move-result-wide v1

    cmpg-double v5, v1, v3

    if-lez v5, :cond_9

    .line 169
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(D)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    .line 173
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->basePointCountForDrawingCost()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_3

    .line 175
    iput-wide v3, v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    return-void

    .line 178
    :cond_3
    iget-object v7, v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v7

    float-to-double v7, v7

    cmpg-double v9, v7, v3

    if-gtz v9, :cond_4

    .line 180
    iput-wide v3, v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    return-void

    .line 183
    :cond_4
    iget-object v9, v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v9, v9, Lcom/metamoji/cm/RectEx;->width:F

    float-to-double v9, v9

    cmpg-double v11, v9, v3

    if-lez v11, :cond_8

    .line 184
    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(D)Z

    move-result v11

    if-nez v11, :cond_5

    goto/16 :goto_1

    .line 188
    :cond_5
    iget-object v11, v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v11, v11, Lcom/metamoji/cm/RectEx;->height:F

    float-to-double v11, v11

    cmpg-double v13, v11, v3

    if-lez v13, :cond_7

    .line 189
    invoke-static {v11, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(D)Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_0

    :cond_6
    int-to-double v13, v5

    mul-double v15, v13, v7

    mul-double/2addr v15, v7

    mul-double v17, v9, v11

    move/from16 v19, v6

    move-wide/from16 v20, v7

    div-double v6, v15, v17

    const-wide v3, 0x3fd4cccccccccccdL    # 0.325

    .line 194
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v13, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v7, v20, v3

    add-double/2addr v9, v11

    div-double/2addr v7, v9

    const-wide v3, 0x3fd6666666666666L    # 0.35

    .line 195
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v13, v3

    sub-double v9, v9, v20

    div-double/2addr v1, v9

    const-wide v3, 0x3fc999999999999aL    # 0.2

    .line 196
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v13, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_totalBendAngle:D

    add-int/lit8 v5, v5, -0x1

    int-to-double v3, v5

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    div-double/2addr v1, v3

    const-wide v5, 0x3fd199999999999aL    # 0.275

    .line 197
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v13, v1

    iget-wide v1, v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_complexity:D

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe4000000000000L    # 0.625

    .line 198
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    mul-double/2addr v13, v1

    .line 193
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    .line 199
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(D)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 200
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 201
    iput-wide v1, v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    return-void

    :cond_7
    :goto_0
    move-wide v1, v3

    .line 190
    iput-wide v1, v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    return-void

    :cond_8
    :goto_1
    move-wide v1, v3

    .line 185
    iput-wide v1, v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    return-void

    :cond_9
    :goto_2
    move-wide v1, v3

    .line 170
    iput-wide v1, v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    return-void

    :cond_a
    :goto_3
    move-wide v1, v3

    .line 165
    iput-wide v1, v0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    :cond_b
    :goto_4
    return-void
.end method

.method protected updatePath()V
    .locals 6

    .line 88
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 89
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->removeAllRects(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-lez v0, :cond_1

    .line 93
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_drawingCost:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_0

    const/4 v0, 0x2

    .line 94
    new-array v0, v0, [D

    fill-array-data v0, :array_0

    .line 95
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->constructPathFromBezierPoints(Lcom/metamoji/cm/PointArray;Landroid/graphics/Path;Ljava/lang/Object;[DZ)V

    .line 100
    aget-wide v1, v0, v1

    iput-wide v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_totalBendAngle:D

    const/4 v1, 0x1

    .line 101
    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_complexity:D

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_bezierPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v0, v2, v3, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->constructPathFromBezierPoints(Lcom/metamoji/cm/PointArray;Landroid/graphics/Path;Ljava/lang/Object;Z)V

    .line 110
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updatePathLengthsWithBezierPoints(Lcom/metamoji/cm/PointArray;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method
