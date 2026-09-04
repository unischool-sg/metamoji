.class public Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;
.super Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;
.source "DrSegmentalShapeElement.java"


# static fields
.field private static final EXTRA_DATA_MODEL_TYPE_REPLACEMENTS:Ljava/lang/String; = "R"

.field private static final EXTRA_DATA_NAME_PREFIX_EDITED_BY_UNKNOWN:Ljava/lang/String; = "EU!"

.field private static final EXTRA_DATA_NAME_PREFIX_REPLACEMENTS:Ljava/lang/String; = "ER!"

.field private static final EXTRA_DATA_NAME_PREFIX_SEGMENT_BOUNDS:Ljava/lang/String; = "EB!"

.field private static final EXTRA_DATA_NAME_PREFIX_SEGMENT_MODELS:Ljava/lang/String; = "ES!"

.field private static final EXTRA_DATA_VALUE_EDITED_BY_UNKNOWN:Ljava/lang/String; = "U"


# instance fields
.field private m_adjustedLineWidth:F

.field private m_canRegisterReplacementsOfModel:Z

.field private m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

.field private m_extraDataNameForEditedByUnknown:Ljava/lang/String;

.field private m_extraDataNameForReplacements:Ljava/lang/String;

.field private m_extraDataNameForSegmentBounds:Ljava/lang/String;

.field private m_extraDataNameForSegmentModels:Ljava/lang/String;

.field private m_highlightAngleInRadians:F

.field private m_highlightContext:Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

.field private m_highlightDisplayZoom:F

.field private m_highlightId:I

.field private final m_highlightInvertTransform:Landroid/graphics/Matrix;

.field private m_highlightIsReversingX:Z

.field private m_highlightIsReversingY:Z

.field private m_highlightLineAlpha:F

.field private m_highlightLineWidth:F

.field private m_highlightOverlayId:I

.field private m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

.field private final m_highlightRect:Lcom/metamoji/cm/RectEx;

.field private final m_highlightSegmentBounds:Lcom/metamoji/cm/RectEx;

.field private final m_inversion:Landroid/graphics/Matrix;

.field private m_isUnknown:Z

.field private m_necessityOfForwardCompatibility:Z

.field private m_replacements:Lcom/metamoji/df/model/IModel;

.field private m_reverseReplacements:Lcom/metamoji/df/model/IModel;

.field private m_samplePoints:Lcom/metamoji/cm/PointArray;

.field private final m_segmentBounds:Lcom/metamoji/cm/RectEx;

.field private m_segmentCovers:Ljava/lang/Object;

.field private m_segmentPath:Landroid/graphics/Path;

.field private m_segments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/segment/DrSgSegment;",
            ">;"
        }
    .end annotation
.end field

.field private m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

.field private final m_transform:Landroid/graphics/Matrix;

.field private final m_visibleSegmentBounds:Lcom/metamoji/cm/RectEx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;-><init>()V

    .line 65
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    .line 66
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_visibleSegmentBounds:Lcom/metamoji/cm/RectEx;

    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    .line 72
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_inversion:Landroid/graphics/Matrix;

    .line 78
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightRect:Lcom/metamoji/cm/RectEx;

    .line 79
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightSegmentBounds:Lcom/metamoji/cm/RectEx;

    .line 83
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightInvertTransform:Landroid/graphics/Matrix;

    return-void
.end method

.method private adjustExtraHandlePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 7

    .line 2016
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 2017
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 2018
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 2019
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 2020
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    .line 2021
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    cmpl-float v5, v0, v1

    const/4 v6, 0x5

    if-eqz v5, :cond_0

    .line 2022
    invoke-static {v0, v1, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_1

    .line 2024
    invoke-static {v0, v2, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    :goto_0
    cmpl-float v1, p1, v3

    if-eqz v1, :cond_2

    .line 2027
    invoke-static {p1, v3, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v1

    if-eqz v1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    cmpl-float v1, p1, v4

    if-eqz v1, :cond_3

    .line 2029
    invoke-static {p1, v4, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v1

    if-eqz v1, :cond_3

    move p1, v4

    .line 2032
    :cond_3
    :goto_1
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method private static adjustLineWidth(FFF)F
    .locals 0

    .line 2316
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float p2, p0, p1

    if-lez p2, :cond_1

    return p1

    :cond_1
    :goto_0
    return p0
.end method

.method private adjustLineWidth()V
    .locals 3

    .line 2007
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz v0, :cond_0

    .line 2008
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    iget v1, v1, Lcom/metamoji/cm/RectEx;->width:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->adjustLineWidth(FFF)F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_adjustedLineWidth:F

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2010
    iput v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_adjustedLineWidth:F

    return-void
.end method

.method private applyReplacements(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 2178
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 2181
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->allPropertyNames(Lcom/metamoji/df/model/IModel;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2182
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->propertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2184
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2186
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private beginRegistrationOfReplacements()V
    .locals 2

    .line 2142
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->extraDataAcceptability()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_isUnknown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_necessityOfForwardCompatibility:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_canRegisterReplacementsOfModel:Z

    if-eqz v0, :cond_1

    .line 2146
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "R"

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_replacements:Lcom/metamoji/df/model/IModel;

    .line 2147
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_reverseReplacements:Lcom/metamoji/df/model/IModel;

    :cond_1
    return-void
.end method

.method private static calculateSegmentBoundsFromRect(Lcom/metamoji/cm/RectEx;F)Lcom/metamoji/cm/RectEx;
    .locals 5

    .line 2303
    iget v0, p0, Lcom/metamoji/cm/RectEx;->width:F

    .line 2304
    iget v1, p0, Lcom/metamoji/cm/RectEx;->height:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, p1

    cmpl-float v3, v0, v2

    const/high16 v4, 0x40400000    # 3.0f

    if-lez v3, :cond_0

    sub-float/2addr v0, p1

    goto :goto_0

    :cond_0
    div-float/2addr v0, v4

    :goto_0
    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    sub-float/2addr v1, p1

    goto :goto_1

    :cond_1
    div-float/2addr v1, v4

    .line 2308
    :goto_1
    new-instance p1, Lcom/metamoji/cm/RectEx;

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v0, v3

    sub-float/2addr v2, v4

    .line 2309
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    div-float v3, v1, v3

    sub-float/2addr p0, v3

    invoke-direct {p1, v2, p0, v0, v1}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object p1
.end method

.method private static copySegments(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/segment/DrSgSegment;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/segment/DrSgSegment;",
            ">;)Z"
        }
    .end annotation

    .line 2325
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    move v1, v2

    .line 2329
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2330
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 2331
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    if-eqz v3, :cond_2

    if-nez v4, :cond_1

    goto :goto_1

    .line 2338
    :cond_1
    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->copyToSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private endRegistrationOfReplacements()V
    .locals 5

    .line 2152
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_canRegisterReplacementsOfModel:Z

    if-nez v0, :cond_0

    return-void

    .line 2157
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_replacements:Lcom/metamoji/df/model/IModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkPropertiesOfModel(Lcom/metamoji/df/model/IModel;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2158
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForReplacements()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_replacements:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v0, v3, v4, v2, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    goto :goto_0

    .line 2160
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_replacements:Lcom/metamoji/df/model/IModel;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeAllProperties(Lcom/metamoji/df/model/IModel;)V

    .line 2161
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_replacements:Lcom/metamoji/df/model/IModel;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    .line 2163
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_reverseReplacements:Lcom/metamoji/df/model/IModel;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkPropertiesOfModel(Lcom/metamoji/df/model/IModel;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2164
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForReplacements()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_reverseReplacements:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    goto :goto_1

    .line 2166
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_reverseReplacements:Lcom/metamoji/df/model/IModel;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeAllProperties(Lcom/metamoji/df/model/IModel;)V

    .line 2167
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_reverseReplacements:Lcom/metamoji/df/model/IModel;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    :goto_1
    const/4 v0, 0x0

    .line 2171
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_replacements:Lcom/metamoji/df/model/IModel;

    .line 2172
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_reverseReplacements:Lcom/metamoji/df/model/IModel;

    .line 2173
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_canRegisterReplacementsOfModel:Z

    return-void
.end method

.method private extraDataNameForEditedByUnknown()Ljava/lang/String;
    .locals 2

    .line 2193
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForEditedByUnknown:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2194
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2195
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2197
    const-string v1, "EU!"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForEditedByUnknown:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2199
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 2203
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2204
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForEditedByUnknown:Ljava/lang/String;

    .line 2207
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForEditedByUnknown:Ljava/lang/String;

    return-object v0
.end method

.method private extraDataNameForReplacements()Ljava/lang/String;
    .locals 2

    .line 2247
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForReplacements:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2248
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2249
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2251
    const-string v1, "ER!"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForReplacements:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2253
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 2257
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2258
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForReplacements:Ljava/lang/String;

    .line 2261
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForReplacements:Ljava/lang/String;

    return-object v0
.end method

.method private extraDataNameForSegmentBounds()Ljava/lang/String;
    .locals 2

    .line 2229
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForSegmentBounds:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2230
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2231
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2233
    const-string v1, "EB!"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForSegmentBounds:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2235
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 2239
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2240
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForSegmentBounds:Ljava/lang/String;

    .line 2243
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForSegmentBounds:Ljava/lang/String;

    return-object v0
.end method

.method private extraDataNameForSegmentModels()Ljava/lang/String;
    .locals 2

    .line 2211
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForSegmentModels:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2212
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2213
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2215
    const-string v1, "ES!"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForSegmentModels:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2217
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 2221
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2222
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForSegmentModels:Ljava/lang/String;

    .line 2225
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForSegmentModels:Ljava/lang/String;

    return-object v0
.end method

.method private filled()Z
    .locals 2

    .line 1998
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz v0, :cond_0

    .line 1999
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillType()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 2000
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillColors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 2001
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 2002
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static newEmptySegmentalShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 1943
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->newEmptyShapeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1945
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->setIsSegmentalToModel(Lcom/metamoji/df/model/IModel;Z)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1947
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method private static restoreSegmentsFromModel(Lcom/metamoji/df/model/IModel;Ljava/util/ArrayList;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/segment/DrSgSegment;",
            ">;",
            "Lcom/metamoji/cm/RectEx;",
            "Lcom/metamoji/cm/RectEx;",
            ")Z"
        }
    .end annotation

    .line 2273
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 2274
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    .line 2276
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-eqz p0, :cond_4

    .line 2278
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->checkSegmentModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2279
    new-instance v4, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    invoke-direct {v4, p0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;-><init>(Lcom/metamoji/df/model/IModel;)V

    if-eqz v3, :cond_0

    .line 2281
    invoke-virtual {v4, v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setPrevSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V

    .line 2283
    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2284
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->isBoundable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2285
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    invoke-static {v3, v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    .line 2287
    :cond_1
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2288
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    invoke-static {v3, v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    :cond_2
    move-object v3, v4

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 2294
    :goto_1
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    goto :goto_0

    .line 2296
    :cond_4
    invoke-virtual {p2, v0}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 2297
    invoke-virtual {p3, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    return v2
.end method

.method private static segmentModelsFromSegments(Ljava/util/ArrayList;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/segment/DrSgSegment;",
            ">;",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2348
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2349
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    if-eqz p1, :cond_2

    .line 2352
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newEmptySegmentModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    goto :goto_1

    .line 2353
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2354
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newEmptySegmentModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 2358
    :goto_1
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->saveToModel(Lcom/metamoji/df/model/IModel;)V

    .line 2359
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static segmentsFromSegmentModels(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/segment/DrSgSegment;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2368
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2369
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2370
    const-class v2, Lcom/metamoji/df/model/IModel;

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 2371
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->checkSegmentModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 2374
    :cond_2
    new-instance v2, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    invoke-direct {v2, v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;-><init>(Lcom/metamoji/df/model/IModel;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private static segmentsFromSegmentModels(Ljava/util/List;Lcom/metamoji/cm/RectEx;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Lcom/metamoji/cm/RectEx;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/segment/DrSgSegment;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2383
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2385
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2386
    const-class v2, Lcom/metamoji/df/model/IModel;

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/model/IModel;

    .line 2387
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->checkSegmentModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 2390
    :cond_2
    new-instance v2, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    invoke-direct {v2, v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;-><init>(Lcom/metamoji/df/model/IModel;)V

    .line 2391
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2392
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->isBoundable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2394
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1, p1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static transformForSegmentBounds(Lcom/metamoji/cm/RectEx;FZZ)Landroid/graphics/Matrix;
    .locals 1

    .line 1960
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1961
    invoke-static {p0, p1, p2, p3, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->transformForSegmentBounds(Lcom/metamoji/cm/RectEx;FZZLandroid/graphics/Matrix;)V

    return-object v0
.end method

.method public static transformForSegmentBounds(Lcom/metamoji/cm/RectEx;FZZLandroid/graphics/Matrix;)V
    .locals 5

    .line 1970
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1971
    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-eqz p3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    const/4 p3, 0x0

    cmpl-float p3, p1, p3

    if-nez p3, :cond_3

    cmpl-float v2, p2, v1

    if-nez v2, :cond_3

    cmpl-float v2, v0, v1

    if-nez v2, :cond_3

    .line 1977
    invoke-virtual {p4}, Landroid/graphics/Matrix;->reset()V

    return-void

    .line 1980
    :cond_3
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 1981
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    .line 1982
    invoke-virtual {p4, v2, p0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    if-eqz p3, :cond_4

    float-to-double v3, p1

    .line 1984
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float p1, v3

    invoke-virtual {p4, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_4
    cmpl-float p1, p2, v1

    if-nez p1, :cond_5

    cmpl-float p1, v0, v1

    if-eqz p1, :cond_6

    .line 1988
    :cond_5
    invoke-virtual {p4, p2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_6
    neg-float p1, v2

    neg-float p0, p0

    .line 1990
    invoke-virtual {p4, p1, p0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-void
.end method

.method private updateRect()V
    .locals 2

    .line 2037
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2040
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_adjustedLineWidth:F

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2041
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v1, v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateRect(Lcom/metamoji/cm/RectEx;)V

    return-void
.end method

.method private updateSegmentPathAndCovers()V
    .locals 6

    .line 2057
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 2058
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentCovers:Ljava/lang/Object;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->removeAllRects(Ljava/lang/Object;)V

    .line 2059
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_samplePoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 2063
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->replacementPath_()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2066
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentPath:Landroid/graphics/Path;

    .line 2067
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 2070
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 2071
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->hasStartPoint()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2072
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_samplePoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 2074
    :cond_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->getBoundsWithTransform(Landroid/graphics/Matrix;)Lcom/metamoji/cm/RectEx;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentCovers:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->addRect(Lcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    goto :goto_0

    .line 2097
    :cond_1
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2098
    new-instance v1, Lcom/metamoji/cm/RectEx;

    invoke-direct {v1}, Lcom/metamoji/cm/RectEx;-><init>()V

    .line 2099
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 2100
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2101
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v5, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->addToPath(Landroid/graphics/Path;Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    .line 2102
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->hasStartPoint()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2103
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_samplePoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v4, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 2106
    :cond_2
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->getBoundsWithTransform(Landroid/graphics/Matrix;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentCovers:Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->addRect(Lcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateSimplePenStyleWithTranslate(FFFFF)V
    .locals 0

    .line 2117
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz p1, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p5, p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2122
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result p1

    mul-float/2addr p1, p5

    .line 2125
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 2128
    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->updateLineDashWithLineWidth(F)V

    .line 2131
    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 2134
    invoke-virtual {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updatePenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2135
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTransform()V
    .locals 5

    .line 2046
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    .line 2047
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->angleInRadians()F

    move-result v1

    .line 2048
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isReversingX()Z

    move-result v2

    .line 2049
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isReversingY()Z

    move-result v3

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    .line 2046
    invoke-static {v0, v1, v2, v3, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->transformForSegmentBounds(Lcom/metamoji/cm/RectEx;FZZLandroid/graphics/Matrix;)V

    .line 2051
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_inversion:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    return-void
.end method


# virtual methods
.method protected addSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V
    .locals 3

    .line 1736
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1737
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1740
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isActive()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1741
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 1745
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1750
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1751
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setPrevSegment(Lcom/metamoji/un/draw2/library/segment/DrSgSegment;)V

    .line 1755
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->isBoundable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1759
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    .line 1763
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->hasStartPoint()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1764
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->startPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_samplePoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 1768
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1769
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    :cond_6
    return-void
.end method

.method protected applyExtraHandleCenterPointAtIndex_(ILandroid/graphics/PointF;)Z
    .locals 1

    .line 1420
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_inversion:Landroid/graphics/Matrix;

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->adjustExtraHandlePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 1423
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->applyExtraHandlePoint_(Landroid/graphics/PointF;I)Z

    move-result p1

    return p1
.end method

.method protected applyExtraHandlePoint_(Landroid/graphics/PointF;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected applyPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1239
    move-object v0, p1

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz p1, :cond_1

    .line 1242
    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->isEqualToPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1247
    :cond_1
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_adjustedLineWidth:F

    .line 1250
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->adjustLineWidth()V

    .line 1253
    iget p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_adjustedLineWidth:F

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_2

    .line 1254
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateRect()V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected applySegmentBounds_(Lcom/metamoji/cm/RectEx;F)V
    .locals 1

    .line 1478
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 1483
    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->transformFromRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p1

    .line 1484
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1485
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1486
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->applyTransform(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public applySegments(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/segment/DrSgSegment;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 173
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_6

    .line 176
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x2

    .line 181
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->copySegments(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x3

    .line 187
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 191
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateSegmentBounds()V

    .line 194
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->applySegments_()V

    .line 197
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->adjustLineWidth()V

    .line 200
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateRect()V

    .line 203
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateTransform()V

    .line 206
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateSegmentPathAndCovers()V

    .line 209
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraHandleCount_()I

    move-result p1

    if-lez p1, :cond_4

    .line 210
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateExtraHandles()V

    .line 214
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isActive()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 215
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateCovers()V

    .line 216
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->repaint_()V

    :cond_5
    return-void

    :cond_6
    :goto_0
    const/4 p1, 0x1

    .line 177
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method protected applySegments_()V
    .locals 0

    return-void
.end method

.method protected applyUnknownExtraHandleVariation_(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    .line 1333
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_isUnknown:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1338
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object p1

    .line 1339
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForSegmentModels()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 1340
    instance-of v3, v1, Ljava/util/List;

    if-nez v3, :cond_1

    goto :goto_2

    .line 1344
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 1347
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    .line 1348
    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->segmentsFromSegmentModels(Ljava/util/List;Lcom/metamoji/cm/RectEx;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1351
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v6, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_4

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1357
    :cond_2
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->transformFromRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 1360
    sget-object v3, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/Matrix;Landroid/graphics/Matrix;I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1361
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1362
    invoke-virtual {v4, v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->applyTransform(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 1367
    :cond_3
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->applySegments(Ljava/util/List;)V

    .line 1370
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForReplacements()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    const-class v0, Lcom/metamoji/df/model/IModel;

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->applyReplacements(Lcom/metamoji/df/model/IModel;)V

    return v5

    .line 1352
    :cond_4
    :goto_1
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 1341
    :cond_5
    :goto_2
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0
.end method

.method protected applyVariationWithTranslate_(FFFFZZFF)Z
    .locals 15

    .line 932
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v6

    .line 933
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForEditedByUnknown()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 934
    const-string v1, "U"

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    .line 936
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_isUnknown:Z

    if-nez v2, :cond_3

    .line 938
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v12, v9

    goto :goto_1

    .line 942
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForSegmentModels()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 945
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_isUnknown:Z

    if-eqz v2, :cond_3

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 946
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->segmentsFromSegmentModels(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 947
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 952
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v2

    move v12, v8

    goto :goto_2

    .line 948
    :cond_2
    :goto_0
    invoke-static {v7, v10}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v7

    :cond_3
    move v12, v7

    :goto_1
    move-object v11, v10

    .line 958
    :goto_2
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_isUnknown:Z

    if-eqz v0, :cond_4

    .line 959
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForReplacements()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    const-class v2, Lcom/metamoji/df/model/IModel;

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->applyReplacements(Lcom/metamoji/df/model/IModel;)V

    .line 965
    :cond_4
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->willSendCollaborationData()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->willSendCollaborationDataIndirectly()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 966
    :cond_5
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_isUnknown:Z

    if-eqz v0, :cond_6

    move v13, v7

    move v0, v9

    goto :goto_3

    .line 969
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->editOriginally_()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_necessityOfForwardCompatibility:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_7

    move v0, v7

    move v13, v9

    goto :goto_3

    :cond_7
    move v0, v7

    move v13, v0

    :goto_3
    if-eqz v0, :cond_8

    .line 977
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForEditedByUnknown()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v1, v7, v9}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 981
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForEditedByUnknown()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v1, v9, v9}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    :cond_8
    if-eqz v13, :cond_9

    .line 989
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForSegmentModels()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    .line 990
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->segmentModelsFromSegments(Ljava/util/ArrayList;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 989
    invoke-virtual {v6, v0, v1, v9, v9}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 996
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v6, v7}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->allExtraDataPropertyNamesForReverse(Z)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 997
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 998
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForEditedByUnknown()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 999
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForReplacements()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1000
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForSegmentModels()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_a
    const/4 v14, 0x0

    if-nez v12, :cond_c

    cmpl-float v1, p1, v14

    if-nez v1, :cond_c

    cmpl-float v1, p2, v14

    if-nez v1, :cond_c

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p3, v1

    if-nez v2, :cond_c

    cmpl-float v2, p4, v1

    if-nez v2, :cond_c

    if-nez p5, :cond_c

    if-nez p6, :cond_c

    cmpl-float v2, p7, v14

    if-nez v2, :cond_c

    cmpl-float v1, p8, v1

    if-nez v1, :cond_c

    .line 1013
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_c

    if-eqz v13, :cond_b

    .line 1016
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForSegmentModels()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    .line 1017
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->segmentModelsFromSegments(Ljava/util/ArrayList;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1016
    invoke-virtual {v6, v0, v1, v7, v9}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    :cond_b
    return v9

    :cond_c
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p8

    .line 1026
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateSimplePenStyleWithTranslate(FFFFF)V

    .line 1029
    new-instance v1, Lcom/metamoji/cm/RectEx;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-direct {v1, v2}, Lcom/metamoji/cm/RectEx;-><init>(Lcom/metamoji/cm/RectEx;)V

    .line 1032
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForSegmentBounds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v7}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1033
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->checkRectArray(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, v9, :cond_e

    .line 1034
    :cond_d
    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move-object v2, v10

    :cond_e
    if-ge v12, v8, :cond_13

    if-eqz v2, :cond_f

    .line 1044
    invoke-static {v7, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->rectAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/RectEx;

    move-result-object v3

    goto :goto_4

    .line 1047
    :cond_f
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v14

    .line 1048
    :cond_10
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    invoke-static {v3, v14}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->calculateSegmentBoundsFromRect(Lcom/metamoji/cm/RectEx;F)Lcom/metamoji/cm/RectEx;

    move-result-object v3

    :goto_4
    if-eqz v12, :cond_12

    if-eq v12, v9, :cond_11

    goto :goto_6

    .line 1067
    :cond_11
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->transformFromRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object v3

    .line 1068
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1069
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1070
    invoke-virtual {v5, v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->applyTransform(Landroid/graphics/Matrix;)V

    goto :goto_5

    .line 1055
    :cond_12
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->beginRegistrationOfReplacements()V

    .line 1058
    invoke-virtual {p0, v3, v5}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->applySegmentBounds_(Lcom/metamoji/cm/RectEx;F)V

    .line 1061
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->endRegistrationOfReplacements()V

    goto :goto_6

    .line 1081
    :cond_13
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-static {v11, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->copySegments(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1082
    invoke-static {v8, v10}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1087
    :cond_14
    :goto_6
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateSegmentBounds()V

    .line 1090
    iget v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_adjustedLineWidth:F

    neg-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    if-ge v12, v8, :cond_16

    .line 1091
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->extraDataAcceptability()Z

    move-result v4

    if-eqz v4, :cond_16

    if-nez v2, :cond_15

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    .line 1092
    invoke-static {v2, v3, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;I)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1093
    :cond_15
    invoke-static {v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->newRectArrayWithCapacity(I)Ljava/lang/Object;

    move-result-object v2

    .line 1094
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->addRect(Lcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    .line 1095
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForSegmentBounds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v2, v9, v7}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 1096
    invoke-static {v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->newRectArrayWithCapacity(I)Ljava/lang/Object;

    move-result-object v1

    .line 1097
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->addRect(Lcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    .line 1098
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForSegmentBounds()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2, v1, v7, v7}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    :cond_16
    if-eq v12, v9, :cond_17

    if-eq v12, v8, :cond_17

    goto :goto_7

    .line 1105
    :cond_17
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->applySegments_()V

    .line 1112
    :goto_7
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->adjustLineWidth()V

    .line 1115
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateRect()V

    .line 1118
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateTransform()V

    .line 1121
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateSegmentPathAndCovers()V

    .line 1124
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraHandleCount_()I

    move-result v1

    if-lez v1, :cond_18

    .line 1125
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateExtraHandles()V

    :cond_18
    if-eqz v13, :cond_19

    .line 1130
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForSegmentModels()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->segmentModelsFromSegments(Ljava/util/ArrayList;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v6, v1, v2, v7, v9}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    :cond_19
    return v9
.end method

.method protected canRegisterReplacementsOfModel()Z
    .locals 1

    .line 1908
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_canRegisterReplacementsOfModel:Z

    return v0
.end method

.method protected cancelEvaluationOfExtraHandleAtIndex_(I)V
    .locals 0

    return-void
.end method

.method protected cancelExtraHandleEvaluationAtIndex_(I)V
    .locals 0

    .line 1405
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->cancelEvaluationOfExtraHandleAtIndex_(I)V

    return-void
.end method

.method protected checkEqualityOfExtraHandleVariation_(Ljava/util/Map;Ljava/util/Map;I)Z
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

    const/4 p1, 0x0

    return p1
.end method

.method protected checkExtraHandleMovementAtIndex_(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_inversion:Landroid/graphics/Matrix;

    .line 1384
    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->adjustExtraHandlePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 1385
    invoke-static {p3, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->adjustExtraHandlePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p3

    .line 1387
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->checkMovementOfExtraHandleAtIndex_(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    return p1
.end method

.method protected checkExtraHandleVariationsEqualityAtIndex_(ILjava/util/Map;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    .line 1377
    invoke-virtual {p0, p2, p3, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->checkEqualityOfExtraHandleVariation_(Ljava/util/Map;Ljava/util/Map;I)Z

    move-result p1

    return p1
.end method

.method protected checkMovementOfExtraHandleAtIndex_(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected checkPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1234
    instance-of p1, p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected containsPoint_(Landroid/graphics/PointF;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected coverAtIndex_(I)Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentCovers:Ljava/lang/Object;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->filled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1

    .line 409
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_adjustedLineWidth:F

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 410
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentCovers:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->rectAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    invoke-static {p1, v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected coverCount_()I
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentCovers:Ljava/lang/Object;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->filled()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method protected deactivate_()V
    .locals 3

    .line 905
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightOverlayId:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightId:I

    iget v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightOverlayId:I

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->removeHighlightObjectWithId(II)V

    .line 910
    :cond_0
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->deactivate_()V

    return-void
.end method

.method protected destroy_()V
    .locals 3

    .line 811
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 812
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 813
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->destroy()V

    goto :goto_0

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 816
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    .line 818
    :cond_1
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentCovers:Ljava/lang/Object;

    .line 819
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentPath:Landroid/graphics/Path;

    .line 820
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 821
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_samplePoints:Lcom/metamoji/cm/PointArray;

    .line 822
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 823
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForEditedByUnknown:Ljava/lang/String;

    .line 824
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForSegmentModels:Ljava/lang/String;

    .line 825
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForSegmentBounds:Ljava/lang/String;

    .line 826
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForReplacements:Ljava/lang/String;

    .line 827
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_replacements:Lcom/metamoji/df/model/IModel;

    .line 828
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_reverseReplacements:Lcom/metamoji/df/model/IModel;

    .line 829
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    .line 830
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightContext:Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    .line 831
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->destroy_()V

    return-void
.end method

.method protected displayAngleForExtraHandlePoint_(Landroid/graphics/PointF;I)F
    .locals 0

    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public displayBounds()Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 229
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 230
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    return-object v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_visibleSegmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    return-object v0

    .line 235
    :cond_1
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_adjustedLineWidth:F

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 236
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_visibleSegmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v1, v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->boundsFromRect(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method protected distanceToPoint_(Landroid/graphics/PointF;I)F
    .locals 4

    .line 740
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    return v1

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentCovers:Ljava/lang/Object;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->filled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 746
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v0, p1, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathContainsPoint(Landroid/graphics/Path;Landroid/graphics/Matrix;Landroid/graphics/PointF;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    return v1

    .line 750
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 751
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_inversion:Landroid/graphics/Matrix;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 755
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->filled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->containsPoint_(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 760
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 761
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_adjustedLineWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->distanceToPoint(Landroid/graphics/PointF;F)F

    move-result p1

    return p1

    :cond_5
    return v1
.end method

.method protected distanceToSegment_(Landroid/graphics/PointF;Landroid/graphics/PointF;I)F
    .locals 4

    .line 766
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    return v1

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentCovers:Ljava/lang/Object;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x0

    if-ne p3, v0, :cond_3

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->filled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 772
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {p3, v0, p1, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathContainsPoint(Landroid/graphics/Path;Landroid/graphics/Matrix;Landroid/graphics/PointF;Z)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentPath:Landroid/graphics/Path;

    .line 773
    invoke-static {p1, v0, p2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathContainsPoint(Landroid/graphics/Path;Landroid/graphics/Matrix;Landroid/graphics/PointF;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2

    .line 777
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 778
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_inversion:Landroid/graphics/Matrix;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    .line 779
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_inversion:Landroid/graphics/Matrix;

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p2

    .line 783
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->filled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->containsPoint_(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->containsPoint_(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    return v2

    .line 788
    :cond_6
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 789
    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_adjustedLineWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->distanceToSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;F)F

    move-result p1

    return p1

    :cond_7
    return v1
.end method

.method protected editContext()Lcom/metamoji/un/draw2/module/element/DrEditContext;
    .locals 1

    .line 1923
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    return-object v0
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

.method protected editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z
    .locals 1

    .line 421
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    .line 422
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z

    move-result p1

    const/4 v0, 0x0

    .line 423
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_editContext:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    return p1
.end method

.method protected editWithExtraHandleVariationAlways_()Z
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->editExtraHandleWithVariationAlways_()Z

    move-result v0

    return v0
.end method

.method protected evaluateExtraHandleCenterPointAtIndex_(ILandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 1392
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1394
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_inversion:Landroid/graphics/Matrix;

    invoke-static {p2, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->adjustExtraHandlePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 1396
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->evaluateExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object p1

    if-nez v0, :cond_1

    .line 1398
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method protected evaluateExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/PointF;
    .locals 0

    return-object p1
.end method

.method protected extraHandleCount_()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected extraHandleEnablementAtIndex_(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected extraHandlePointAtIndex_(I)Landroid/graphics/PointF;
    .locals 0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 1518
    invoke-static {p1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

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

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 1528
    invoke-static {p1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

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
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

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
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected frameRect_()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 915
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method protected getDisplayAngleForExtraHandleAtIndex_(ILandroid/graphics/PointF;)F
    .locals 0

    .line 1415
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->displayAngleForExtraHandlePoint_(Landroid/graphics/PointF;I)F

    move-result p1

    return p1
.end method

.method protected getExtraHandleCenterPointAtIndex_(I)Landroid/graphics/PointF;
    .locals 1

    .line 1267
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraHandlePointAtIndex_(I)Landroid/graphics/PointF;

    move-result-object p1

    .line 1268
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected getExtraHandleCenterPointAtIndex_(ILjava/util/Map;)Landroid/graphics/PointF;
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

    .line 1273
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraHandlePointAtIndex_(ILjava/util/Map;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1274
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected getExtraHandleCount_()I
    .locals 1

    .line 1262
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraHandleCount_()I

    move-result v0

    return v0
.end method

.method protected getExtraHandleEnablementAtIndex_(I)Z
    .locals 0

    .line 1279
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraHandleEnablementAtIndex_(I)Z

    move-result p1

    return p1
.end method

.method protected getExtraHandleVariationAtIndex_(I)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1284
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraHandleVariationAtIndex_(I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected getExtraHandleVariationAtIndex_(ILandroid/graphics/PointF;)Ljava/util/Map;
    .locals 1
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

    .line 1289
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_inversion:Landroid/graphics/Matrix;

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->adjustExtraHandlePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p2

    .line 1292
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraHandleVariationAtIndex_(ILandroid/graphics/PointF;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected highlightContext()Lcom/metamoji/un/draw2/module/element/DrHighlightContext;
    .locals 1

    .line 1932
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightContext:Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    return-object v0
.end method

.method protected highlightPathWithExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/Path;
    .locals 0

    .line 1702
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentPath:Landroid/graphics/Path;

    return-object p1
.end method

.method protected highlightPathWithSegmentBounds_(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;
    .locals 4

    .line 1652
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1657
    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->transformFromRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p1

    .line 1660
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    .line 1675
    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1676
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1677
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1678
    invoke-virtual {v2, p2, p1, v0}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->addToPath(Landroid/graphics/Path;Landroid/graphics/Matrix;Landroid/graphics/PointF;)V

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method protected highlightRectWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;Lcom/metamoji/cm/RectEx;F)Lcom/metamoji/cm/RectEx;
    .locals 6

    .line 1140
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrHighlightProcess:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->process()Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 1142
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->editContext()Lcom/metamoji/un/draw2/module/element/DrEditContext;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 1144
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 1149
    :cond_1
    sget-object v3, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_8

    if-eq v3, v1, :cond_8

    const/4 v1, 0x5

    if-eq v3, v1, :cond_2

    .line 1200
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1184
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->extraHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->getIndexOfExtraHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)I

    move-result v1

    if-ltz v1, :cond_8

    .line 1186
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->extraHandleCenterPoint()Landroid/graphics/PointF;

    move-result-object v0

    .line 1187
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1188
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_inversion:Landroid/graphics/Matrix;

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->adjustExtraHandlePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1190
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->highlightRectWithExtraHandlePoint_(Landroid/graphics/PointF;I)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 1191
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1192
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_adjustedLineWidth:F

    neg-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 1193
    invoke-static {v0, p1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1

    .line 1158
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_8

    .line 1160
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->highlightRectWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;Lcom/metamoji/cm/RectEx;F)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 1163
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result p2

    .line 1164
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p3

    .line 1167
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    .line 1168
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->rectWidth()F

    move-result v0

    iput v0, p1, Lcom/metamoji/cm/RectEx;->width:F

    .line 1170
    :cond_6
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    .line 1171
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->rectHeight()F

    move-result v0

    iput v0, p1, Lcom/metamoji/cm/RectEx;->height:F

    .line 1175
    :cond_7
    iget v0, p1, Lcom/metamoji/cm/RectEx;->x:F

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    sub-float/2addr p2, v1

    add-float/2addr v0, p2

    iput v0, p1, Lcom/metamoji/cm/RectEx;->x:F

    .line 1176
    iget p2, p1, Lcom/metamoji/cm/RectEx;->y:F

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    sub-float/2addr p3, v0

    add-float/2addr p2, p3

    iput p2, p1, Lcom/metamoji/cm/RectEx;->y:F

    return-object p1

    .line 1209
    :cond_8
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->highlightRectWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;Lcom/metamoji/cm/RectEx;F)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected highlightRectWithExtraHandlePoint_(Landroid/graphics/PointF;I)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 1692
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    return-object p1
.end method

.method protected highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V
    .locals 18

    move-object/from16 v0, p0

    .line 430
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_a

    .line 435
    :cond_0
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz v1, :cond_24

    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_9

    :cond_1
    move-object/from16 v1, p1

    .line 439
    iput-object v1, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightContext:Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    .line 442
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    .line 448
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->editContext()Lcom/metamoji/un/draw2/module/element/DrEditContext;

    move-result-object v3

    .line 449
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v4

    .line 450
    sget-object v5, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrHighlightProcess:[I

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->process()Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-eq v5, v6, :cond_16

    const/4 v11, 0x2

    if-eq v5, v11, :cond_11

    const/4 v12, 0x3

    if-eq v5, v12, :cond_f

    const/4 v13, 0x4

    if-eq v5, v13, :cond_2

    .line 672
    invoke-static {v11, v10}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 673
    invoke-super/range {p0 .. p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    .line 674
    iput-object v10, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightContext:Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    return-void

    :cond_2
    if-nez v3, :cond_3

    .line 555
    invoke-static {v7, v10}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 556
    invoke-super/range {p0 .. p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    .line 557
    iput-object v10, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightContext:Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    return-void

    .line 562
    :cond_3
    sget-object v5, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v14

    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v14

    aget v5, v5, v14

    if-eq v5, v6, :cond_9

    if-eq v5, v11, :cond_9

    if-eq v5, v12, :cond_9

    if-eq v5, v13, :cond_9

    const/4 v11, 0x5

    if-eq v5, v11, :cond_4

    .line 664
    invoke-static {v6, v10}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 665
    invoke-super/range {p0 .. p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    .line 666
    iput-object v10, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightContext:Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    return-void

    .line 619
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraHandleCount_()I

    move-result v5

    if-nez v5, :cond_5

    .line 620
    invoke-super/range {p0 .. p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    .line 621
    iput-object v10, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightContext:Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    return-void

    .line 626
    :cond_5
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->extraHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->getIndexOfExtraHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)I

    move-result v5

    if-gez v5, :cond_6

    .line 628
    invoke-super/range {p0 .. p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    .line 629
    iput-object v10, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightContext:Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    return-void

    .line 634
    :cond_6
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->extraHandleCenterPoint()Landroid/graphics/PointF;

    move-result-object v3

    .line 635
    invoke-virtual {v0, v3, v5}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->highlightRectWithExtraHandlePoint_(Landroid/graphics/PointF;I)Lcom/metamoji/cm/RectEx;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 638
    iget v11, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightAngleInRadians:F

    cmpl-float v11, v11, v8

    if-nez v11, :cond_8

    iget-boolean v11, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightIsReversingX:Z

    if-nez v11, :cond_8

    iget-boolean v11, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightIsReversingY:Z

    if-eqz v11, :cond_7

    goto :goto_0

    .line 645
    :cond_7
    invoke-virtual {v0, v3, v5}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->highlightPathWithExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/Path;

    move-result-object v3

    goto :goto_1

    .line 640
    :cond_8
    :goto_0
    iget-object v11, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightInvertTransform:Landroid/graphics/Matrix;

    invoke-static {v3, v11}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->adjustExtraHandlePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    .line 643
    invoke-virtual {v0, v3, v5}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->highlightPathWithExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/Path;

    move-result-object v3

    .line 649
    :goto_1
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget v11, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightLineAlpha:F

    invoke-virtual {v5, v11}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineAlpha(F)V

    .line 652
    iget v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightAngleInRadians:F

    .line 655
    iget-boolean v11, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightIsReversingX:Z

    .line 656
    iget-boolean v12, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightIsReversingY:Z

    .line 659
    iget v13, v4, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightEditAlpha:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    goto/16 :goto_5

    .line 568
    :cond_9
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightRect:Lcom/metamoji/cm/RectEx;

    iget v11, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightAngleInRadians:F

    invoke-virtual {v3, v5, v11}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->updateVariationForRectInRadians(Lcom/metamoji/cm/RectEx;F)V

    .line 571
    iget v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightLineWidth:F

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result v11

    mul-float/2addr v5, v11

    .line 574
    new-instance v11, Lcom/metamoji/cm/RectEx;

    iget-object v12, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightRect:Lcom/metamoji/cm/RectEx;

    iget v12, v12, Lcom/metamoji/cm/RectEx;->x:F

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateX()F

    move-result v13

    add-float/2addr v12, v13

    iget-object v13, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightRect:Lcom/metamoji/cm/RectEx;

    iget v13, v13, Lcom/metamoji/cm/RectEx;->y:F

    .line 575
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateY()F

    move-result v14

    add-float/2addr v13, v14

    iget-object v14, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightRect:Lcom/metamoji/cm/RectEx;

    iget v14, v14, Lcom/metamoji/cm/RectEx;->width:F

    .line 576
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleWidth()F

    move-result v15

    mul-float/2addr v14, v15

    iget-object v15, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightRect:Lcom/metamoji/cm/RectEx;

    iget v15, v15, Lcom/metamoji/cm/RectEx;->height:F

    .line 577
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleHeight()F

    move-result v16

    mul-float v15, v15, v16

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    .line 574
    invoke-static {v11, v5}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->calculateSegmentBoundsFromRect(Lcom/metamoji/cm/RectEx;F)Lcom/metamoji/cm/RectEx;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 581
    new-instance v11, Lcom/metamoji/cm/SizeF;

    iget-object v12, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightSegmentBounds:Lcom/metamoji/cm/RectEx;

    iget v12, v12, Lcom/metamoji/cm/RectEx;->width:F

    iget-object v13, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightSegmentBounds:Lcom/metamoji/cm/RectEx;

    iget v13, v13, Lcom/metamoji/cm/RectEx;->height:F

    invoke-direct {v11, v12, v13}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    .line 582
    iget v12, v11, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v12, v12, v8

    if-eqz v12, :cond_a

    iget v12, v11, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v12, v12, v8

    if-nez v12, :cond_d

    .line 583
    :cond_a
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v12

    .line 584
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v13

    .line 585
    iget v14, v11, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v14, v14, v8

    if-nez v14, :cond_b

    .line 586
    iput v8, v2, Lcom/metamoji/cm/RectEx;->width:F

    .line 588
    :cond_b
    iget v11, v11, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v11, v11, v8

    if-nez v11, :cond_c

    .line 589
    iput v8, v2, Lcom/metamoji/cm/RectEx;->height:F

    .line 591
    :cond_c
    iget v11, v2, Lcom/metamoji/cm/RectEx;->x:F

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v14

    sub-float/2addr v12, v14

    add-float/2addr v11, v12

    iput v11, v2, Lcom/metamoji/cm/RectEx;->x:F

    .line 592
    iget v11, v2, Lcom/metamoji/cm/RectEx;->y:F

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v12

    sub-float/2addr v13, v12

    add-float/2addr v11, v13

    iput v11, v2, Lcom/metamoji/cm/RectEx;->y:F

    .line 596
    :cond_d
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result v11

    invoke-virtual {v0, v2, v11}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->highlightPathWithSegmentBounds_(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;

    move-result-object v11

    .line 599
    iget v12, v2, Lcom/metamoji/cm/RectEx;->width:F

    iget v13, v2, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v5, v12, v13}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->adjustLineWidth(FFF)F

    move-result v5

    iget v12, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightDisplayZoom:F

    mul-float/2addr v5, v12

    .line 600
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result v12

    cmpl-float v12, v12, v9

    if-eqz v12, :cond_e

    .line 601
    iget-object v12, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v12}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineDash()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_e

    .line 602
    iget-object v12, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v12, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->updateLineDashWithLineWidth(F)V

    .line 605
    :cond_e
    iget-object v12, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v12, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 606
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget v12, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightLineAlpha:F

    iget v13, v4, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightEditAlpha:F

    mul-float/2addr v12, v13

    invoke-virtual {v5, v12}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineAlpha(F)V

    .line 609
    iget v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightAngleInRadians:F

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInRadians()F

    move-result v12

    add-float/2addr v5, v12

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustRadian(F)F

    move-result v5

    .line 612
    iget-boolean v12, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightIsReversingX:Z

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingX()Z

    move-result v13

    xor-int/2addr v12, v13

    .line 613
    iget-boolean v13, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightIsReversingY:Z

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingY()Z

    move-result v3

    xor-int/2addr v3, v13

    move/from16 v17, v12

    move v12, v3

    move-object v3, v11

    move/from16 v11, v17

    goto/16 :goto_5

    .line 545
    :cond_f
    iput-object v10, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 548
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->alpha(Lcom/metamoji/df/sprite/Sprite;)F

    move-result v3

    cmpg-float v3, v3, v9

    if-gez v3, :cond_10

    .line 549
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    :cond_10
    move v11, v7

    move v12, v11

    move v5, v8

    move-object v3, v10

    goto/16 :goto_5

    .line 498
    :cond_11
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v3

    .line 499
    iget v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightDisplayZoom:F

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_12

    .line 500
    iput v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightDisplayZoom:F

    .line 501
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineDash()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_12

    move v3, v6

    goto :goto_2

    :cond_12
    move v3, v7

    .line 507
    :goto_2
    iget v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightLineWidth:F

    iget-object v11, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    iget v11, v11, Lcom/metamoji/cm/RectEx;->width:F

    iget-object v12, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    iget v12, v12, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v5, v11, v12}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->adjustLineWidth(FFF)F

    move-result v5

    iget v11, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightDisplayZoom:F

    mul-float/2addr v5, v11

    .line 510
    iget-object v11, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v11

    cmpl-float v11, v5, v11

    if-nez v11, :cond_14

    if-eqz v3, :cond_13

    goto :goto_3

    :cond_13
    move v6, v7

    move v11, v6

    move v12, v11

    move v5, v8

    move-object v3, v10

    goto :goto_4

    .line 512
    :cond_14
    :goto_3
    iget-object v11, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v11, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 513
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget v11, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightLineAlpha:F

    iget v12, v4, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseAlpha:F

    mul-float/2addr v11, v12

    invoke-virtual {v5, v11}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineAlpha(F)V

    if-eqz v3, :cond_15

    .line 515
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineDash()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineDash(Ljava/util/List;)V

    .line 516
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightDisplayZoom:F

    invoke-virtual {v3, v5, v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->updateLineDashWithScale(FZ)V

    .line 520
    :cond_15
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 523
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v3, v9}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->highlightPathWithSegmentBounds_(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;

    move-result-object v3

    .line 526
    iget v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightAngleInRadians:F

    .line 529
    iget-boolean v11, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightIsReversingX:Z

    .line 530
    iget-boolean v12, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightIsReversingY:Z

    .line 537
    :goto_4
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v13

    invoke-static {v13}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->alpha(Lcom/metamoji/df/sprite/Sprite;)F

    move-result v13

    cmpg-float v13, v13, v9

    if-gez v13, :cond_18

    .line 538
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    goto/16 :goto_5

    .line 453
    :cond_16
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v3

    iput v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightLineWidth:F

    .line 454
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineAlpha()F

    move-result v3

    iput v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightLineAlpha:F

    .line 455
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightRect:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 456
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightSegmentBounds:Lcom/metamoji/cm/RectEx;

    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v3, v5}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 457
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->angleInRadians()F

    move-result v3

    iput v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightAngleInRadians:F

    .line 458
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isReversingX()Z

    move-result v3

    iput-boolean v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightIsReversingX:Z

    .line 459
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isReversingY()Z

    move-result v3

    iput-boolean v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightIsReversingY:Z

    .line 461
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightInvertTransform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 464
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v3

    iput v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightDisplayZoom:F

    .line 467
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v3, v10}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iput-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 468
    iget v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightLineWidth:F

    iget-object v11, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    iget v11, v11, Lcom/metamoji/cm/RectEx;->width:F

    iget-object v12, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    iget v12, v12, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v5, v11, v12}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->adjustLineWidth(FFF)F

    move-result v5

    iget v11, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightDisplayZoom:F

    mul-float/2addr v5, v11

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 469
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightLineAlpha:F

    iget v11, v4, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseAlpha:F

    mul-float/2addr v5, v11

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineAlpha(F)V

    .line 470
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineDash()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 471
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightDisplayZoom:F

    invoke-virtual {v3, v5, v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->updateLineDashWithScale(FZ)V

    .line 473
    :cond_17
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v3, v8}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillAlpha(F)V

    .line 476
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 479
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v3, v9}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->highlightPathWithSegmentBounds_(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Path;

    move-result-object v3

    .line 482
    iget v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightAngleInRadians:F

    .line 485
    iget-boolean v11, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightIsReversingX:Z

    .line 486
    iget-boolean v12, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightIsReversingY:Z

    .line 489
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v13

    invoke-static {v13}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->alpha(Lcom/metamoji/df/sprite/Sprite;)F

    move-result v13

    cmpg-float v13, v13, v9

    if-gez v13, :cond_18

    .line 490
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v13

    invoke-static {v9, v13}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    :cond_18
    :goto_5
    if-eqz v6, :cond_23

    if-eqz v3, :cond_22

    cmpl-float v6, v5, v8

    if-nez v6, :cond_19

    if-nez v11, :cond_19

    if-eqz v12, :cond_1f

    .line 683
    :cond_19
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v7

    .line 684
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 685
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 686
    invoke-virtual {v8, v7, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    if-eqz v6, :cond_1a

    float-to-double v5, v5

    .line 688
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v8, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_1a
    if-nez v11, :cond_1b

    if-eqz v12, :cond_1e

    :cond_1b
    const/high16 v5, -0x40800000    # -1.0f

    if-eqz v11, :cond_1c

    move v6, v5

    goto :goto_6

    :cond_1c
    move v6, v9

    :goto_6
    if-eqz v12, :cond_1d

    move v9, v5

    .line 694
    :cond_1d
    invoke-virtual {v8, v6, v9}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_1e
    neg-float v5, v7

    neg-float v2, v2

    .line 696
    invoke-virtual {v8, v5, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 697
    invoke-virtual {v3, v8}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 701
    :cond_1f
    iget v2, v4, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightMinLineWidth:F

    .line 702
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_20

    .line 703
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v5, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 707
    :cond_20
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v2

    iget v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightId:I

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->checkObjectWithId(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 708
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v2

    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget v6, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightId:I

    invoke-virtual {v2, v3, v5, v6}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->repaintPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V

    goto :goto_7

    .line 710
    :cond_21
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v2

    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v2, v3, v5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->drawPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)I

    move-result v2

    iput v2, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightId:I

    .line 714
    :goto_7
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v11

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->highlightBaseColor()Ljava/lang/Integer;

    move-result-object v12

    iget-object v14, v4, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightDropShadowOffset:Landroid/graphics/PointF;

    iget v15, v4, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightDropShadowBlur:F

    iget v2, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightId:I

    const/high16 v13, 0x3f800000    # 1.0f

    move/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->setDropShadowWithColor(Ljava/lang/Integer;FLandroid/graphics/PointF;FI)V

    .line 721
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->uid()I

    move-result v2

    iput v2, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightOverlayId:I

    goto :goto_8

    .line 723
    :cond_22
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v2

    iget v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightId:I

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->checkObjectWithId(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 724
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v2

    iget v3, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightId:I

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->removeObjectWithId(I)V

    const/4 v2, -0x1

    .line 725
    iput v2, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightId:I

    .line 726
    iput v7, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightOverlayId:I

    .line 732
    :cond_23
    :goto_8
    invoke-super/range {p0 .. p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    .line 735
    iput-object v10, v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightContext:Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    return-void

    :cond_24
    :goto_9
    move-object/from16 v1, p1

    .line 436
    invoke-super/range {p0 .. p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    return-void

    :cond_25
    :goto_a
    move-object/from16 v1, p1

    .line 431
    invoke-super/range {p0 .. p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    return-void
.end method

.method protected initWithTranslate_(FFFFZZF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected initWithTranslate_(FFFFZZFF)Z
    .locals 11

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    .line 286
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->newRectArray()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentCovers:Ljava/lang/Object;

    .line 287
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    sget-object v2, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 288
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_visibleSegmentBounds:Lcom/metamoji/cm/RectEx;

    sget-object v2, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 289
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentPath:Landroid/graphics/Path;

    .line 290
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 291
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_inversion:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 292
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_samplePoints:Lcom/metamoji/cm/PointArray;

    const/4 v1, -0x1

    .line 293
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightId:I

    const/4 v1, 0x0

    .line 294
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_highlightOverlayId:I

    .line 295
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->shapeType_()Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    const/4 v8, 0x1

    if-ne v2, v3, :cond_0

    move v2, v8

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_isUnknown:Z

    .line 296
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->checkNecessityOfForwardCompatibilityOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_necessityOfForwardCompatibility:Z

    .line 297
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_canRegisterReplacementsOfModel:Z

    .line 300
    invoke-super/range {p0 .. p8}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->initWithTranslate_(FFFFZZFF)Z

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_1

    .line 308
    invoke-static {v1, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 313
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    goto :goto_1

    :cond_2
    move-object v2, v6

    :goto_1
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    const/4 v9, 0x0

    cmpl-float v2, p1, v9

    if-nez v2, :cond_4

    cmpl-float v2, p2, v9

    if-nez v2, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p3, v2

    if-nez v3, :cond_4

    cmpl-float v2, p4, v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move v10, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v10, v8

    :goto_3
    if-eqz v10, :cond_5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p8

    .line 320
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateSimplePenStyleWithTranslate(FFFFF)V

    .line 324
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 326
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_visibleSegmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v1, v2, v3, v4}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->restoreSegmentsFromModel(Lcom/metamoji/df/model/IModel;Ljava/util/ArrayList;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 327
    invoke-static {v8, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 331
    :cond_6
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 333
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->adjustLineWidth()V

    if-nez v10, :cond_7

    .line 337
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateRect()V

    :cond_7
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p8

    .line 343
    invoke-virtual/range {v0 .. v7}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->initWithTranslate_(FFFFZZF)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 351
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateSegmentBounds()V

    .line 354
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->adjustLineWidth()V

    .line 357
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateRect()V

    :cond_8
    if-eqz v10, :cond_a

    .line 363
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v9

    .line 364
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->calculateSegmentBoundsFromRect(Lcom/metamoji/cm/RectEx;F)Lcom/metamoji/cm/RectEx;

    move-result-object v1

    move/from16 v7, p8

    invoke-virtual {p0, v1, v7}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->applySegmentBounds_(Lcom/metamoji/cm/RectEx;F)V

    .line 367
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateSegmentBounds()V

    .line 370
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->adjustLineWidth()V

    .line 373
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateRect()V

    .line 377
    :cond_a
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateTransform()V

    .line 380
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateSegmentPathAndCovers()V

    .line 383
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraHandleCount_()I

    move-result v1

    if-lez v1, :cond_b

    .line 384
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateExtraHandles()V

    :cond_b
    return v8
.end method

.method protected isAbleToFill_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isFillable_()Z
    .locals 1

    .line 1229
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isAbleToFill_()Z

    move-result v0

    return v0
.end method

.method protected isSegmental_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public lastSegment()Lcom/metamoji/un/draw2/library/segment/DrSgSegment;
    .locals 3

    .line 155
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 156
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 160
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    return-object v0
.end method

.method protected registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2

    .line 1873
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1874
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 1878
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1881
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_canRegisterReplacementsOfModel:Z

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 1882
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_2
    if-eqz p3, :cond_4

    .line 1889
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_reverseReplacements:Lcom/metamoji/df/model/IModel;

    if-eqz p2, :cond_3

    .line 1887
    invoke-static {p1, p2, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1889
    :cond_3
    invoke-static {p1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1895
    :cond_4
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_replacements:Lcom/metamoji/df/model/IModel;

    if-eqz p2, :cond_5

    .line 1893
    invoke-static {p1, p2, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1895
    :cond_5
    invoke-static {p1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method protected removeAllSegments()V
    .locals 3

    .line 1779
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1780
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1783
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1784
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1787
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1792
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1793
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeChildren(Lcom/metamoji/df/model/IModel;)V

    .line 1797
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1798
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    .line 1799
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->destroy()V

    goto :goto_0

    .line 1801
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1804
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateSegmentBounds()V

    .line 1807
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateTransform()V

    .line 1810
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateSegmentPathAndCovers()V

    return-void
.end method

.method protected repaintHighlightAlways_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected repaint_()V
    .locals 11

    .line 837
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->clear(Lcom/metamoji/df/sprite/Sprite;)V

    .line 840
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 845
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->bounds_()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->displayableCanvasBoundaryLimit:F

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkBoundaryOfRect(Lcom/metamoji/cm/RectEx;F)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 852
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStSimplePenStyle$FillType:[I

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillType()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v4, v0

    move-object v7, v4

    goto/16 :goto_1

    .line 866
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->rightTop()Landroid/graphics/PointF;

    move-result-object v0

    .line 867
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->leftBottom()Landroid/graphics/PointF;

    move-result-object v2

    goto/16 :goto_0

    .line 862
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->leftTop()Landroid/graphics/PointF;

    move-result-object v0

    .line 863
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->rightBottom()Landroid/graphics/PointF;

    move-result-object v2

    goto/16 :goto_0

    .line 858
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->leftTop()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->leftBottom()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v3

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->leftTop()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->leftBottom()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 859
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->rightTop()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->rightBottom()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->rightTop()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->rightBottom()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    div-float/2addr v4, v2

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    goto :goto_0

    .line 854
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->leftTop()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->rightTop()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v3

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->leftTop()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->rightTop()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 855
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->leftBottom()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->rightBottom()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    div-float/2addr v3, v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->leftBottom()Landroid/graphics/PointF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->rightBottom()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v4, v5

    div-float/2addr v4, v2

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    :goto_0
    move-object v4, v0

    move-object v7, v2

    :goto_1
    if-eqz v1, :cond_6

    .line 874
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 876
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->gradientFillStartColor()Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 877
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillAlpha()F

    move-result v6

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 878
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->gradientFillEndColor()Ljava/lang/Integer;

    move-result-object v8

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 879
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillAlpha()F

    move-result v9

    .line 880
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v10

    .line 874
    invoke-static/range {v3 .. v10}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawLinearGradientPath(Landroid/graphics/Path;Landroid/graphics/PointF;Ljava/lang/Integer;FLandroid/graphics/PointF;Ljava/lang/Integer;FLcom/metamoji/df/sprite/Sprite;)V

    .line 884
    :cond_6
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_adjustedLineWidth:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineWidth(FLcom/metamoji/df/sprite/Sprite;)V

    .line 885
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 886
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineAlpha()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    .line 887
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineDashAsArray()[F

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineDash([FLcom/metamoji/df/sprite/Sprite;)V

    .line 888
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineCap(Lcom/metamoji/df/sprite/LineCap;Lcom/metamoji/df/sprite/Sprite;)V

    .line 889
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineJoin()Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;Lcom/metamoji/df/sprite/Sprite;)V

    .line 890
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineJoin()Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v0

    sget-object v2, Lcom/metamoji/df/sprite/LineJoin;->MITER:Lcom/metamoji/df/sprite/LineJoin;

    if-ne v0, v2, :cond_7

    .line 891
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->miterLimit()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setMiterLimit(FLcom/metamoji/df/sprite/Sprite;)V

    :cond_7
    if-nez v1, :cond_8

    .line 893
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillType()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    if-ne v0, v1, :cond_8

    .line 894
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setFillColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 895
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillAlpha()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setFillAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    .line 899
    :cond_8
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawPath(Landroid/graphics/Path;Lcom/metamoji/df/sprite/Sprite;)V

    :cond_9
    :goto_2
    return-void
.end method

.method protected replacementPath_()Landroid/graphics/Path;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected samplePointAtIndex_(I)Landroid/graphics/PointF;
    .locals 1

    .line 799
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_samplePoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    .line 800
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected samplePointCount_()I
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_samplePoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    return v0
.end method

.method public segmentAtIndex(I)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;
    .locals 2

    .line 143
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 144
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    .line 148
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    return-object p1
.end method

.method public segmentBounds()Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public segmentCount()I
    .locals 2

    .line 113
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 114
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected setExtraHandleVariationAtIndex_(ILjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 1298
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    .line 1299
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_isUnknown:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_necessityOfForwardCompatibility:Z

    if-eqz v1, :cond_1

    .line 1301
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->willSendCollaborationData()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->willSendCollaborationDataIndirectly()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1302
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 1306
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForSegmentModels()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    .line 1307
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->segmentModelsFromSegments(Ljava/util/ArrayList;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1306
    invoke-virtual {v0, v4, v5, v3, v3}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 1313
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->beginRegistrationOfReplacements()V

    .line 1316
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->setExtraHandleVariation_(Ljava/util/Map;I)V

    .line 1319
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->endRegistrationOfReplacements()V

    if-eqz v1, :cond_3

    .line 1323
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->extraDataNameForSegmentModels()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    .line 1324
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->segmentModelsFromSegments(Ljava/util/ArrayList;Lcom/metamoji/df/model/IModel;)Ljava/util/ArrayList;

    move-result-object p2

    .line 1323
    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    :cond_3
    return-void
.end method

.method protected setExtraHandleVariation_(Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)V"
        }
    .end annotation

    return-void
.end method

.method public setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 1

    .line 244
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 245
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 248
    const-string v0, "EU!"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForEditedByUnknown:Ljava/lang/String;

    .line 249
    const-string v0, "ES!"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForSegmentModels:Ljava/lang/String;

    .line 250
    const-string v0, "EB!"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForSegmentBounds:Ljava/lang/String;

    .line 251
    const-string v0, "ER!"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForReplacements:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 254
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 257
    :cond_1
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForEditedByUnknown:Ljava/lang/String;

    .line 258
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForSegmentModels:Ljava/lang/String;

    .line 259
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForSegmentBounds:Ljava/lang/String;

    .line 260
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_extraDataNameForReplacements:Ljava/lang/String;

    return-void
.end method

.method protected shapeType_()Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;
    .locals 1

    .line 1219
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->shapeType_()Lcom/metamoji/un/draw2/module/element/shape/DrShapeType;

    move-result-object v0

    return-object v0
.end method

.method public simplePenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 2

    .line 131
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_simplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-object v0
.end method

.method protected transform()Landroid/graphics/Matrix;
    .locals 1

    .line 1914
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_transform:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected updateSegmentBounds()V
    .locals 4

    .line 1853
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 1854
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_visibleSegmentBounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 1855
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    .line 1856
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->isBoundable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1857
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v2, v3, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    .line 1859
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1860
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_visibleSegmentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v1, v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected updateSegments()V
    .locals 2

    .line 1818
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1819
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1822
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->m_segments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1827
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateSegmentBounds()V

    .line 1830
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->adjustLineWidth()V

    .line 1833
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateRect()V

    .line 1836
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateTransform()V

    .line 1839
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateSegmentPathAndCovers()V

    .line 1842
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1843
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->updateCovers()V

    .line 1844
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/shape/DrSegmentalShapeElement;->repaint_()V

    :cond_2
    :goto_0
    return-void
.end method
