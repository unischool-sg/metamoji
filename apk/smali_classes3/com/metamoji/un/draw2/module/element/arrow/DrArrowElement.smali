.class public Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;
.super Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;
.source "DrArrowElement.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;
    }
.end annotation


# static fields
.field private static final EXTRA_DATA_MODEL_TYPE_REPLACEMENTS:Ljava/lang/String; = "R"

.field private static final EXTRA_DATA_NAME_PREFIX_EDITED_BY_UNKNOWN:Ljava/lang/String; = "EU!"

.field private static final EXTRA_DATA_NAME_PREFIX_PATH_INFORMATION:Ljava/lang/String; = "EI!"

.field private static final EXTRA_DATA_NAME_PREFIX_POINTS:Ljava/lang/String; = "EP!"

.field private static final EXTRA_DATA_NAME_PREFIX_REPLACEMENTS:Ljava/lang/String; = "ER!"

.field private static final EXTRA_DATA_VALUE_EDITED_BY_UNKNOWN:Ljava/lang/String; = "U"

.field protected static final MODEL_PROPERTY_ARROW_TYPE:Ljava/lang/String; = "a"

.field private static final MODEL_PROPERTY_EXTRA_HANDLES_ENABLEMENT:Ljava/lang/String; = "e"

.field private static final MODEL_PROPERTY_PATH_INFORMATION:Ljava/lang/String; = "i"

.field private static final MODEL_PROPERTY_PEN_STYLE:Ljava/lang/String; = "p"


# instance fields
.field private m_adjustedLineWidth:F

.field private m_bezierPath:Landroid/graphics/Path;

.field private final m_bounds:Lcom/metamoji/cm/RectEx;

.field private m_canRegisterReplacementsOfModel:Z

.field private final m_endHeadBounds:Lcom/metamoji/cm/RectEx;

.field private m_endHeadPath:Landroid/graphics/Path;

.field private final m_endHeadPoint1:Landroid/graphics/PointF;

.field private final m_endHeadPoint2:Landroid/graphics/PointF;

.field private m_endHeadPoints:Lcom/metamoji/cm/PointArray;

.field private final m_endHeadTip:Landroid/graphics/PointF;

.field private m_extraDataNameForEditedByUnknown:Ljava/lang/String;

.field private m_extraDataNameForPathInformation:Ljava/lang/String;

.field private m_extraDataNameForPoints:Ljava/lang/String;

.field private m_extraDataNameForReplacements:Ljava/lang/String;

.field private m_extraHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_extraHandlesEnablement:Z

.field private m_highlightDisplayZoom:F

.field private m_highlightEndHeadType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

.field private m_highlightId:I

.field private m_highlightLineAlpha:F

.field private m_highlightLineWidth:F

.field private m_highlightOverlayId:I

.field private m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

.field private m_highlightStartHeadType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

.field private m_isHorizontal:Z

.field private m_isUnknown:Z

.field private m_isVertical:Z

.field private m_necessityOfForwardCompatibility:Z

.field private final m_pathBounds:Lcom/metamoji/cm/RectEx;

.field private m_pathInformation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private m_pathRects:Ljava/lang/Object;

.field private m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

.field private m_replacements:Lcom/metamoji/df/model/IModel;

.field private m_reverseReplacements:Lcom/metamoji/df/model/IModel;

.field private final m_startHeadBounds:Lcom/metamoji/cm/RectEx;

.field private m_startHeadPath:Landroid/graphics/Path;

.field private final m_startHeadPoint1:Landroid/graphics/PointF;

.field private final m_startHeadPoint2:Landroid/graphics/PointF;

.field private m_startHeadPoints:Lcom/metamoji/cm/PointArray;

.field private final m_startHeadTip:Landroid/graphics/PointF;


# direct methods
.method public static synthetic $r8$lambda$LcFdHTqRhbsxGFPAWIvYjbPp7II(Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->lambda$updateExtraHandleAtIndex$0(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;-><init>()V

    .line 115
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadTip:Landroid/graphics/PointF;

    .line 116
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoint1:Landroid/graphics/PointF;

    .line 117
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoint2:Landroid/graphics/PointF;

    .line 118
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadTip:Landroid/graphics/PointF;

    .line 119
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoint1:Landroid/graphics/PointF;

    .line 120
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoint2:Landroid/graphics/PointF;

    .line 121
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    .line 122
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    .line 123
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadBounds:Lcom/metamoji/cm/RectEx;

    .line 124
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadBounds:Lcom/metamoji/cm/RectEx;

    return-void
.end method

.method private applyReplacements(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 3142
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 3145
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

    .line 3146
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->propertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3148
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3150
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private beginRegistrationOfReplacements()V
    .locals 2

    .line 3102
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->willSendCollaborationData()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->willSendCollaborationDataIndirectly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3103
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->extraDataAcceptability()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isUnknown:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_necessityOfForwardCompatibility:Z

    if-eqz v0, :cond_1

    .line 3106
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_canRegisterReplacementsOfModel:Z

    if-eqz v0, :cond_2

    .line 3110
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "R"

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_replacements:Lcom/metamoji/df/model/IModel;

    .line 3111
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_reverseReplacements:Lcom/metamoji/df/model/IModel;

    :cond_2
    return-void
.end method

.method public static changePenStyleOfArrowElement(Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 2834
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 2838
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0

    .line 2844
    :cond_1
    sget-object v3, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->penType()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3

    const/4 v0, 0x4

    if-eq v3, v0, :cond_2

    .line 2899
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 2900
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object p1

    goto/16 :goto_0

    .line 2895
    :cond_2
    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    goto/16 :goto_0

    .line 2862
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->newArrowPenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v3

    .line 2865
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineWidth()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineWidth(F)V

    .line 2866
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColorRed()I

    move-result v5

    .line 2867
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColorGreen()I

    move-result v6

    .line 2868
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColorBlue()I

    move-result v7

    .line 2866
    invoke-virtual {v3, v5, v6, v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineColorRGB(III)V

    .line 2869
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineAlpha()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineAlpha(F)V

    .line 2870
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->inkId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setInkId(Ljava/lang/String;)V

    .line 2873
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object p1

    .line 2874
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 2875
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineJoin()Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    .line 2876
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->miterLimit()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setMiterLimit(F)V

    .line 2877
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineDash()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2879
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v5

    iget v5, v5, Lcom/metamoji/un/draw2/module/DrModuleSettings;->lineDashBaseInterval1:F

    invoke-virtual {p1, v5, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->getLineDashScaleWithBaseDashInterval(FZ)F

    move-result v5

    .line 2882
    new-array v4, v4, [Ljava/lang/Float;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v6

    iget v6, v6, Lcom/metamoji/un/draw2/module/DrModuleSettings;->lineDashBaseInterval1:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v0

    .line 2883
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->lineDashBaseInterval2:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v2

    .line 2882
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineDash(Ljava/util/List;)V

    .line 2884
    invoke-virtual {v3, v5, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->updateLineDashWithScale(FZ)V

    .line 2886
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->fillType()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    .line 2887
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->fillColors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->fillColors()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :cond_5
    invoke-virtual {v3, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setFillColors(Ljava/util/List;)V

    .line 2888
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->fillAlpha()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setFillAlpha(F)V

    .line 2889
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadType(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;)V

    .line 2890
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headPosition()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadPosition(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;)V

    move-object p1, v3

    goto :goto_0

    .line 2847
    :cond_6
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->newArrowPenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v0

    .line 2850
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->copyToStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z

    .line 2851
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->inkId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setInkId(Ljava/lang/String;)V

    .line 2854
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadType(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;)V

    .line 2855
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headPosition()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadPosition(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;)V

    move-object p1, v0

    .line 2903
    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;)V

    return-object p0
.end method

.method public static checkArrowElementModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 2773
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->checkPointsBaseElementModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->getTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object p0

    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static constructHeadPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;)V
    .locals 6

    .line 3233
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 3237
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    .line 3238
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 3241
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    add-int/lit8 v1, v1, 0x2

    .line 3242
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 3243
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3244
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 3246
    :cond_1
    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v4, v3, v5, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private copyAsNumberList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 3365
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3366
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3367
    invoke-static {v1}, Lcom/metamoji/cm/TypeUtils;->toNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static distanceToHeadPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)F
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3253
    invoke-static {p0, v0, p2, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathContainsPoint(Landroid/graphics/Path;Landroid/graphics/Matrix;Landroid/graphics/PointF;Z)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 3257
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-nez p0, :cond_1

    return v2

    .line 3261
    :cond_1
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    const/4 v3, 0x1

    :goto_0
    if-ge v3, p0, :cond_5

    add-int/lit8 v4, v3, 0x1

    .line 3264
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    add-int/lit8 v3, v3, 0x2

    .line 3265
    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    .line 3267
    invoke-static {v5, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3268
    invoke-static {v1, v4, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    goto :goto_1

    .line 3272
    :cond_2
    invoke-static {v1, v5, v4, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenQuadCurveAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    :goto_1
    cmpg-float v5, v1, v2

    if-gez v5, :cond_4

    cmpl-float v2, v1, v0

    if-nez v2, :cond_3

    return v0

    :cond_3
    move v2, v1

    :cond_4
    move-object v1, v4

    goto :goto_0

    :cond_5
    return v2
.end method

.method private static distanceToHeadPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3292
    invoke-static {p0, v0, p2, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathContainsPoint(Landroid/graphics/Path;Landroid/graphics/Matrix;Landroid/graphics/PointF;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6

    invoke-static {p0, v0, p3, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathContainsPoint(Landroid/graphics/Path;Landroid/graphics/Matrix;Landroid/graphics/PointF;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    .line 3296
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p0

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    if-nez p0, :cond_1

    return v0

    .line 3300
    :cond_1
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p0, :cond_5

    add-int/lit8 v4, v2, 0x1

    .line 3303
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    add-int/lit8 v2, v2, 0x2

    .line 3304
    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    .line 3306
    invoke-static {v5, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3307
    invoke-static {v1, v4, p2, p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    goto :goto_1

    .line 3312
    :cond_2
    invoke-static {v1, v5, v4, p2, p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenQuadCurveAndSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    :goto_1
    cmpg-float v5, v1, v0

    if-gez v5, :cond_4

    cmpl-float v0, v1, v3

    if-nez v0, :cond_3

    return v3

    :cond_3
    move v0, v1

    :cond_4
    move-object v1, v4

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v3
.end method

.method private endRegistrationOfReplacements()V
    .locals 5

    .line 3116
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_canRegisterReplacementsOfModel:Z

    if-nez v0, :cond_0

    return-void

    .line 3121
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_replacements:Lcom/metamoji/df/model/IModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkPropertiesOfModel(Lcom/metamoji/df/model/IModel;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3122
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForReplacements()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_replacements:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v0, v3, v4, v2, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    goto :goto_0

    .line 3124
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_replacements:Lcom/metamoji/df/model/IModel;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeAllProperties(Lcom/metamoji/df/model/IModel;)V

    .line 3125
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_replacements:Lcom/metamoji/df/model/IModel;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    .line 3127
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_reverseReplacements:Lcom/metamoji/df/model/IModel;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkPropertiesOfModel(Lcom/metamoji/df/model/IModel;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3128
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForReplacements()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_reverseReplacements:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    goto :goto_1

    .line 3130
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_reverseReplacements:Lcom/metamoji/df/model/IModel;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeAllProperties(Lcom/metamoji/df/model/IModel;)V

    .line 3131
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_reverseReplacements:Lcom/metamoji/df/model/IModel;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    :goto_1
    const/4 v0, 0x0

    .line 3135
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_replacements:Lcom/metamoji/df/model/IModel;

    .line 3136
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_reverseReplacements:Lcom/metamoji/df/model/IModel;

    .line 3137
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_canRegisterReplacementsOfModel:Z

    return-void
.end method

.method private extraDataNameForEditedByUnknown()Ljava/lang/String;
    .locals 2

    .line 3157
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForEditedByUnknown:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3158
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3159
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3161
    const-string v1, "EU!"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForEditedByUnknown:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3163
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 3167
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3168
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForEditedByUnknown:Ljava/lang/String;

    .line 3171
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForEditedByUnknown:Ljava/lang/String;

    return-object v0
.end method

.method private extraDataNameForPathInformation()Ljava/lang/String;
    .locals 2

    .line 3193
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForPathInformation:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3194
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3195
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3197
    const-string v1, "EI!"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForPathInformation:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3199
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 3203
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3204
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForPathInformation:Ljava/lang/String;

    .line 3207
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForPathInformation:Ljava/lang/String;

    return-object v0
.end method

.method private extraDataNameForPoints()Ljava/lang/String;
    .locals 2

    .line 3175
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForPoints:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3176
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3177
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3179
    const-string v1, "EP!"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForPoints:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3181
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 3185
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3186
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForPoints:Ljava/lang/String;

    .line 3189
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForPoints:Ljava/lang/String;

    return-object v0
.end method

.method private extraDataNameForReplacements()Ljava/lang/String;
    .locals 2

    .line 3211
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForReplacements:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3212
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3213
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3215
    const-string v1, "ER!"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForReplacements:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3217
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 3221
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3222
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForReplacements:Ljava/lang/String;

    .line 3225
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForReplacements:Ljava/lang/String;

    return-object v0
.end method

.method public static getArrowTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;
    .locals 2

    if-nez p0, :cond_0

    .line 2783
    sget-object p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    return-object p0

    .line 2785
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    .line 2786
    const-string v1, "a"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    return-object p0
.end method

.method public static getPenStyleModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2793
    :cond_0
    const-string v0, "p"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateExtraHandleAtIndex$0(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;I)V
    .locals 1

    .line 2642
    invoke-virtual {p0, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraHandlePointAtIndex_(I)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setCenterPoint(Landroid/graphics/PointF;)V

    .line 2643
    invoke-virtual {p0, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraHandleEnablementAtIndex_(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    return-void
.end method

.method static synthetic lambda$updateExtraHandles$1(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V
    .locals 1

    const/4 v0, 0x0

    .line 2668
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setVisible(Z)V

    return-void
.end method

.method static synthetic lambda$updateExtraHandles$2(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V
    .locals 1

    const/4 v0, 0x1

    .line 2689
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setVisible(Z)V

    return-void
.end method

.method static synthetic lambda$updateExtraHandles$3(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V
    .locals 1

    const/4 v0, 0x1

    .line 2719
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setVisible(Z)V

    return-void
.end method

.method private lastCoverIndex()I
    .locals 3

    .line 2913
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-gez v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 2917
    :cond_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2920
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method public static newEmptyArrowElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 2818
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->newEmptyPointsBaseElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2820
    const-string v0, "T"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2822
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method private static saveExtraHandlesEnablementToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 3356
    :cond_0
    const-string v0, "e"

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 3357
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 3359
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePathInformationToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 3334
    :cond_0
    const-string v0, "i"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3335
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 3337
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePenStyleToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 3345
    :cond_0
    const-string v0, "p"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3346
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 3348
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static setPenStyleModelToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 2805
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->checkPenStyleModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2806
    const-string v0, "p"

    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_1
    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 2808
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method private updatePathAndRects()V
    .locals 17

    move-object/from16 v0, p0

    .line 2952
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 2953
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->removeAllRects(Ljava/lang/Object;)V

    .line 2956
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 2962
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    const/4 v3, 0x1

    .line 2963
    iput-boolean v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isHorizontal:Z

    .line 2964
    iput-boolean v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isVertical:Z

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 2965
    invoke-static {v4, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x2

    if-ge v6, v1, :cond_a

    .line 2968
    iget-object v9, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    sget-object v10, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->NONE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->enumOf(ILjava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v9

    check-cast v9, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    .line 2971
    iget-object v10, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    add-int/lit8 v11, v6, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 2974
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->ordinal()I

    move-result v9

    if-eq v9, v3, :cond_6

    if-eq v9, v8, :cond_1

    .line 3029
    invoke-static {v5, v7}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v7, v10, 0x1

    .line 3001
    invoke-static {v10, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v8

    add-int/lit8 v10, v10, 0x2

    .line 3002
    invoke-static {v7, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v7

    .line 3003
    invoke-static {v10, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v9

    if-nez v6, :cond_2

    .line 3007
    iget-object v10, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bezierPath:Landroid/graphics/Path;

    iget v11, v8, Landroid/graphics/PointF;->x:F

    iget v12, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3009
    :cond_2
    iget-object v10, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bezierPath:Landroid/graphics/Path;

    iget v11, v7, Landroid/graphics/PointF;->x:F

    iget v12, v7, Landroid/graphics/PointF;->y:F

    iget v13, v9, Landroid/graphics/PointF;->x:F

    iget v14, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/4 v10, 0x0

    .line 3012
    invoke-static {v8, v7, v9, v10}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getQuadCurveBounds(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Lcom/metamoji/cm/RectEx;

    move-result-object v10

    iget-object v11, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->addRect(Lcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    .line 3015
    iget-boolean v10, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isHorizontal:Z

    if-eqz v10, :cond_4

    iget v10, v8, Landroid/graphics/PointF;->y:F

    iget v11, v7, Landroid/graphics/PointF;->y:F

    .line 3016
    invoke-static {v10, v11, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v10

    if-eqz v10, :cond_3

    iget v10, v9, Landroid/graphics/PointF;->y:F

    iget v11, v7, Landroid/graphics/PointF;->y:F

    .line 3017
    invoke-static {v10, v11, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v10

    if-nez v10, :cond_4

    .line 3018
    :cond_3
    iput-boolean v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isHorizontal:Z

    .line 3020
    :cond_4
    iget-boolean v10, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isVertical:Z

    if-eqz v10, :cond_9

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget v10, v7, Landroid/graphics/PointF;->x:F

    .line 3021
    invoke-static {v8, v10, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, v9, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->x:F

    .line 3022
    invoke-static {v8, v7, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v7

    if-nez v7, :cond_9

    .line 3023
    :cond_5
    iput-boolean v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isVertical:Z

    goto :goto_1

    :cond_6
    add-int/lit8 v7, v10, 0x1

    .line 2977
    invoke-static {v10, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v8

    .line 2978
    invoke-static {v7, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v7

    if-nez v6, :cond_7

    .line 2982
    iget-object v9, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bezierPath:Landroid/graphics/Path;

    iget v10, v8, Landroid/graphics/PointF;->x:F

    iget v11, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2984
    :cond_7
    iget-object v9, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bezierPath:Landroid/graphics/Path;

    iget v10, v7, Landroid/graphics/PointF;->x:F

    iget v11, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2987
    invoke-static {v8, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object v9

    iget-object v10, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->addRect(Lcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    .line 2990
    iget-boolean v9, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isHorizontal:Z

    if-eqz v9, :cond_8

    iget v9, v8, Landroid/graphics/PointF;->y:F

    iget v10, v7, Landroid/graphics/PointF;->y:F

    invoke-static {v9, v10, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v9

    if-nez v9, :cond_8

    .line 2991
    iput-boolean v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isHorizontal:Z

    .line 2993
    :cond_8
    iget-boolean v9, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isVertical:Z

    if-eqz v9, :cond_9

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget v7, v7, Landroid/graphics/PointF;->x:F

    invoke-static {v8, v7, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v7

    if-nez v7, :cond_9

    .line 2994
    iput-boolean v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isVertical:Z

    :cond_9
    :goto_1
    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_0

    .line 3035
    :cond_a
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    if-nez v6, :cond_b

    :goto_2
    return-void

    .line 3040
    :cond_b
    sget-object v6, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    iget-object v9, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v0, v6, v10, v9}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->adjustLineWidthWithTransform_(Landroid/graphics/Matrix;FF)F

    move-result v6

    iput v6, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_adjustedLineWidth:F

    .line 3043
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 3044
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 3045
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 3046
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 3047
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadTip:Landroid/graphics/PointF;

    invoke-virtual {v6, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 3048
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoint1:Landroid/graphics/PointF;

    iget-object v9, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadTip:Landroid/graphics/PointF;

    invoke-virtual {v6, v9}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 3049
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoint2:Landroid/graphics/PointF;

    iget-object v9, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadTip:Landroid/graphics/PointF;

    invoke-virtual {v6, v9}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 3050
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadTip:Landroid/graphics/PointF;

    invoke-virtual {v6, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 3051
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoint1:Landroid/graphics/PointF;

    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadTip:Landroid/graphics/PointF;

    invoke-virtual {v4, v6}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 3052
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoint2:Landroid/graphics/PointF;

    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadTip:Landroid/graphics/PointF;

    invoke-virtual {v4, v6}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 3055
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    sget-object v6, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->NONE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-static {v4, v6}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->enumOf(ILjava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->ordinal()I

    move-result v4

    if-eq v4, v3, :cond_c

    if-eq v4, v8, :cond_c

    .line 3062
    invoke-static {v3, v7}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_3

    .line 3058
    :cond_c
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoint1:Landroid/graphics/PointF;

    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 3059
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoint2:Landroid/graphics/PointF;

    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 3065
    :goto_3
    iget-object v9, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoints:Lcom/metamoji/cm/PointArray;

    iget-object v10, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoint1:Landroid/graphics/PointF;

    iget-object v11, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoint2:Landroid/graphics/PointF;

    .line 3068
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v12

    iget v13, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_adjustedLineWidth:F

    iget-object v4, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 3070
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v14

    iget-object v4, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 3071
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headRatio()F

    move-result v15

    iget-object v4, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadTip:Landroid/graphics/PointF;

    move-object/from16 v16, v4

    .line 3065
    invoke-static/range {v9 .. v16}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;FLandroid/graphics/PointF;)Z

    .line 3073
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v4, v5}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->constructHeadPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;)V

    .line 3076
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v4

    .line 3077
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    sub-int/2addr v1, v8

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sget-object v5, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->NONE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-static {v1, v5}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->enumOf(ILjava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->ordinal()I

    move-result v1

    if-eq v1, v3, :cond_d

    if-eq v1, v8, :cond_d

    .line 3084
    invoke-static {v8, v7}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_4

    .line 3080
    :cond_d
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoint1:Landroid/graphics/PointF;

    add-int/lit8 v5, v4, -0x2

    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 3081
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoint2:Landroid/graphics/PointF;

    sub-int/2addr v4, v3

    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 3087
    :goto_4
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoints:Lcom/metamoji/cm/PointArray;

    iget-object v4, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoint1:Landroid/graphics/PointF;

    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoint2:Landroid/graphics/PointF;

    .line 3090
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v6

    iget v7, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_adjustedLineWidth:F

    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 3092
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v8

    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 3093
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headRatio()F

    move-result v9

    iget-object v10, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadTip:Landroid/graphics/PointF;

    .line 3087
    invoke-static/range {v3 .. v10}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;FLandroid/graphics/PointF;)Z

    .line 3095
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->constructHeadPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;)V

    return-void
.end method

.method private updatePenStyleWithTransform(Landroid/graphics/Matrix;FF)V
    .locals 0

    .line 2929
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    if-eqz p1, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p3, p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 2934
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result p1

    mul-float/2addr p1, p3

    .line 2937
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 2940
    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->updateLineDashWithLineWidth(F)V

    .line 2943
    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineWidth(F)V

    .line 2946
    invoke-virtual {p0, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected activate_()V
    .locals 2

    .line 1590
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->activate_()V

    .line 1593
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    if-eqz v0, :cond_1

    .line 1594
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->getStyleEqualsToStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1595
    instance-of v1, v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    if-eqz v1, :cond_0

    .line 1597
    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 1600
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1601
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->savePenStyleToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;)V

    .line 1606
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->useStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1609
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1610
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->defaultArrowPenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;)V

    return-void
.end method

.method public addLinePathWithEndPoint(Landroid/graphics/PointF;)V
    .locals 3

    .line 2235
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2236
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 2239
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2240
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 2243
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 2244
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 2249
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    sget-object v1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2250
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2253
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return-void
.end method

.method public addLinePathWithStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3

    .line 2212
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2213
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 2216
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2220
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 p1, 0x2

    .line 2221
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 2226
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    sget-object v2, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2227
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2230
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 2231
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 2217
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public addQuadCurvePathWithControlPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3

    .line 2281
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2282
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 2285
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2289
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 2290
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 2295
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    sget-object v1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->QUAD_CURVE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2296
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2299
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 2300
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return-void

    .line 2286
    :cond_3
    :goto_0
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public addQuadCurvePathWithStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3

    .line 2257
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2258
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 2261
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2265
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 p1, 0x2

    .line 2266
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 2271
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    sget-object v2, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->QUAD_CURVE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2272
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2275
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 2276
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 2277
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 2262
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method protected adjustLineWidthWithExtraHandlePoint_(Landroid/graphics/PointF;IF)F
    .locals 0

    return p3
.end method

.method protected adjustLineWidthWithTransform_(Landroid/graphics/Matrix;FF)F
    .locals 0

    return p3
.end method

.method public adjustedLineWidth()F
    .locals 1

    .line 2175
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_adjustedLineWidth:F

    return v0
.end method

.method protected applyExtraHandlePoint_(Landroid/graphics/PointF;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected applyPaths_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected applyPoints_()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1691
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1
.end method

.method protected applyTransform_(Landroid/graphics/Matrix;F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public applyUnknownVariation(Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    .line 463
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 464
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 468
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 471
    :cond_1
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isUnknown:Z

    if-nez p1, :cond_2

    return v2

    :cond_2
    if-nez p1, :cond_3

    return v2

    .line 481
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object p1

    .line 482
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForPoints()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Lcom/metamoji/cm/PointArray;

    invoke-static {v3, v4}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/cm/PointArray;

    if-eqz v3, :cond_9

    .line 483
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 487
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForPathInformation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 488
    instance-of v5, v4, Ljava/util/List;

    if-nez v5, :cond_5

    goto :goto_0

    .line 494
    :cond_5
    invoke-virtual {p0, v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePoints(Lcom/metamoji/cm/PointArray;)V

    .line 497
    check-cast v4, Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->copyAsNumberList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    .line 498
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 499
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->savePathInformationToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V

    .line 503
    :cond_6
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePathAndRects()V

    .line 506
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updateBounds()V

    .line 509
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isActive()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 510
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updateCovers()V

    .line 511
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->repaint_()V

    .line 515
    :cond_7
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForReplacements()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    const-class v1, Lcom/metamoji/df/model/IModel;

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/model/IModel;

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->applyReplacements(Lcom/metamoji/df/model/IModel;)V

    return v0

    .line 489
    :cond_8
    :goto_0
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 484
    :cond_9
    :goto_1
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method protected applyVariationWithTransform_(Landroid/graphics/Matrix;FF)Z
    .locals 10

    .line 1707
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    .line 1710
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForEditedByUnknown()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x2

    .line 1711
    const-string v4, "U"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 1713
    iget-boolean v7, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isUnknown:Z

    if-nez v7, :cond_0

    instance-of v7, v1, Ljava/lang/String;

    if-eqz v7, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_0
    move-object v1, v6

    goto :goto_2

    .line 1718
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForPoints()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1719
    const-class v7, Lcom/metamoji/cm/PointArray;

    invoke-static {v1, v7}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/cm/PointArray;

    invoke-static {v7}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1720
    check-cast v1, Lcom/metamoji/cm/PointArray;

    goto :goto_1

    :cond_2
    move-object v1, v6

    .line 1722
    :goto_1
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForPathInformation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1723
    instance-of v8, v7, Ljava/util/List;

    if-eqz v8, :cond_3

    .line 1724
    check-cast v7, Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->copyAsNumberList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 1726
    :cond_3
    iget-boolean v7, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isUnknown:Z

    if-eqz v7, :cond_4

    if-eqz v1, :cond_4

    if-eqz v6, :cond_4

    move-object v7, v6

    move-object v6, v1

    move-object v1, v7

    move v7, v3

    goto :goto_2

    :cond_4
    move-object v7, v6

    move-object v6, v1

    move-object v1, v7

    move v7, v2

    .line 1732
    :goto_2
    iget-boolean v8, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isUnknown:Z

    if-eqz v8, :cond_5

    .line 1733
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForReplacements()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v8

    const-class v9, Lcom/metamoji/df/model/IModel;

    invoke-static {v8, v9}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/df/model/IModel;

    invoke-direct {p0, v8}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->applyReplacements(Lcom/metamoji/df/model/IModel;)V

    .line 1739
    :cond_5
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->willSendCollaborationData()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->willSendCollaborationDataIndirectly()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1740
    :cond_6
    iget-boolean v8, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isUnknown:Z

    if-eqz v8, :cond_7

    move v9, v2

    move v8, v5

    goto :goto_3

    .line 1743
    :cond_7
    iget-boolean v8, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_necessityOfForwardCompatibility:Z

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    if-eqz v8, :cond_8

    move v8, v2

    move v9, v5

    goto :goto_3

    :cond_8
    move v8, v2

    move v9, v8

    :goto_3
    if-eqz v8, :cond_9

    .line 1751
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForEditedByUnknown()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v4, v2, v5}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 1755
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForEditedByUnknown()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v4, v5, v5}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    :cond_9
    if-eqz v9, :cond_a

    .line 1763
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForPoints()Ljava/lang/String;

    move-result-object v4

    .line 1764
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArrayWithArray(Lcom/metamoji/cm/PointArray;)Lcom/metamoji/cm/PointArray;

    move-result-object v8

    .line 1763
    invoke-virtual {v0, v4, v8, v5, v5}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 1767
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForPathInformation()Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    .line 1768
    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 1767
    invoke-virtual {v0, v4, v8, v5, v5}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 1774
    :cond_a
    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->allExtraDataPropertyNamesForReverse(Z)Ljava/util/List;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1775
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_b

    .line 1776
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForEditedByUnknown()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1777
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForReplacements()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1778
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForPoints()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1779
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForPathInformation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_b
    if-nez v7, :cond_d

    .line 1783
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-nez v8, :cond_d

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p3, v8

    if-nez v8, :cond_d

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_d

    if-eqz v9, :cond_c

    .line 1786
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForPoints()Ljava/lang/String;

    move-result-object p1

    .line 1787
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArrayWithArray(Lcom/metamoji/cm/PointArray;)Lcom/metamoji/cm/PointArray;

    move-result-object p2

    .line 1786
    invoke-virtual {v0, p1, p2, v2, v5}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 1790
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForPathInformation()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    .line 1791
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 1790
    invoke-virtual {v0, p1, p2, v2, v5}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    :cond_c
    return v5

    .line 1800
    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePenStyleWithTransform(Landroid/graphics/Matrix;FF)V

    if-eqz v7, :cond_11

    if-eq v7, v5, :cond_10

    if-eq v7, v3, :cond_e

    goto :goto_4

    .line 1825
    :cond_e
    invoke-virtual {p0, v6}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePoints(Lcom/metamoji/cm/PointArray;)V

    .line 1828
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    .line 1829
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 1830
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->savePathInformationToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V

    :cond_f
    :goto_4
    move p1, v2

    goto :goto_6

    .line 1819
    :cond_10
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->applyPaths_()Z

    move-result p1

    goto :goto_6

    .line 1807
    :cond_11
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->beginRegistrationOfReplacements()V

    .line 1810
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->applyTransform_(Landroid/graphics/Matrix;F)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraHandleCount_()I

    move-result p1

    if-lez p1, :cond_12

    move p1, v5

    goto :goto_5

    :cond_12
    move p1, v2

    .line 1813
    :goto_5
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->endRegistrationOfReplacements()V

    .line 1840
    :goto_6
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePathAndRects()V

    .line 1843
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updateBounds()V

    if-eqz p1, :cond_13

    .line 1847
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updateExtraHandles()V

    :cond_13
    if-eqz v9, :cond_14

    .line 1852
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForPoints()Ljava/lang/String;

    move-result-object p1

    .line 1853
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArrayWithArray(Lcom/metamoji/cm/PointArray;)Lcom/metamoji/cm/PointArray;

    move-result-object p2

    .line 1852
    invoke-virtual {v0, p1, p2, v2, v5}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 1856
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForPathInformation()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    .line 1857
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 1856
    invoke-virtual {v0, p1, p2, v2, v5}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    :cond_14
    return v5
.end method

.method public arrowAngle()F
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 216
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->arrowAngle_()F

    move-result v0

    return v0
.end method

.method protected arrowAngle_()F
    .locals 3

    .line 1901
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadTip:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadTip:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadTip:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadTip:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    return v0
.end method

.method public arrowTipBounds()Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 227
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadTip:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadTip:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method public arrowType()Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;
    .locals 2

    .line 163
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 164
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 165
    sget-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->NONE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    return-object v0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->arrowType_()Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    move-result-object v0

    return-object v0
.end method

.method protected arrowType_()Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;
    .locals 1

    .line 1891
    sget-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->NONE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    return-object v0
.end method

.method protected bounds_()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 849
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public canRegisterReplacementsOfModel()Z
    .locals 1

    .line 2764
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_canRegisterReplacementsOfModel:Z

    return v0
.end method

.method protected cancelEvaluationOfExtraHandleAtIndex_(I)V
    .locals 0

    return-void
.end method

.method public cancelEvaluationOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V
    .locals 2

    .line 626
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 627
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 635
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 638
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result p1

    if-ltz p1, :cond_4

    .line 639
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto :goto_0

    .line 643
    :cond_3
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->cancelEvaluationOfExtraHandleAtIndex_(I)V

    return-void

    :cond_4
    :goto_0
    const/4 p1, 0x3

    .line 640
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    const/4 p1, 0x1

    .line 631
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

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

    const/4 p1, 0x0

    return p1
.end method

.method public checkLinePathAtIndex(ILandroid/graphics/PointF;)Z
    .locals 6

    const/4 v0, 0x2

    mul-int/2addr p1, v0

    add-int/lit8 v1, p1, 0x1

    .line 2339
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    .line 2340
    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v4

    .line 2345
    :cond_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v2, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->intValue()I

    move-result v2

    const/4 v5, 0x1

    if-eq p1, v2, :cond_1

    .line 2346
    invoke-static {v5, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v4

    .line 2351
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr p1, v5

    .line 2352
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 2353
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v4

    .line 2358
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return v5
.end method

.method public checkLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 6

    const/4 v0, 0x2

    mul-int/2addr p1, v0

    add-int/lit8 v1, p1, 0x1

    .line 2312
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    .line 2313
    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v4

    .line 2318
    :cond_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v2, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->intValue()I

    move-result v2

    const/4 v5, 0x1

    if-eq p1, v2, :cond_1

    .line 2319
    invoke-static {v5, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v4

    .line 2324
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/lit8 v1, p1, 0x1

    .line 2325
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 2326
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v4

    .line 2331
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 2332
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return v5
.end method

.method protected checkMovementOfExtraHandleAtIndex_(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public checkMovementOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 3

    .line 556
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 557
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 561
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 565
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 568
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result p1

    if-ltz p1, :cond_4

    .line 569
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto :goto_0

    .line 573
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->checkMovementOfExtraHandleAtIndex_(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x3

    .line 570
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method public checkQuadCurvePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 6

    const/4 v0, 0x2

    mul-int/2addr p1, v0

    add-int/lit8 v1, p1, 0x1

    .line 2398
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    .line 2399
    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v4

    .line 2404
    :cond_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v2, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->QUAD_CURVE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->intValue()I

    move-result v2

    const/4 v5, 0x1

    if-eq p1, v2, :cond_1

    .line 2405
    invoke-static {v5, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v4

    .line 2410
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/lit8 v1, p1, 0x1

    add-int/2addr p1, v0

    .line 2411
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 2412
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v4

    .line 2417
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 2418
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return v5
.end method

.method public checkQuadCurvePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 6

    const/4 v0, 0x2

    mul-int/2addr p1, v0

    add-int/lit8 v1, p1, 0x1

    .line 2368
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    .line 2369
    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v4

    .line 2374
    :cond_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v2, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->QUAD_CURVE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->intValue()I

    move-result v2

    const/4 v5, 0x1

    if-eq p1, v2, :cond_1

    .line 2375
    invoke-static {v5, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v4

    .line 2380
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/lit8 v1, p1, 0x2

    .line 2381
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 2382
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v4

    :cond_2
    add-int/lit8 v1, p1, 0x1

    .line 2387
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    add-int/2addr p1, v0

    .line 2388
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 2389
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return v5
.end method

.method protected checkVariationForResizedBounds_(Lcom/metamoji/cm/RectEx;Landroid/graphics/Matrix;)V
    .locals 0

    .line 1868
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->transformForResizedBounds_(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public checkVariationsEqualityOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)Z"
        }
    .end annotation

    .line 524
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 525
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 529
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x2

    .line 533
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_2
    const/4 v0, 0x3

    if-nez p3, :cond_3

    .line 537
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 540
    :cond_3
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    if-nez v3, :cond_4

    .line 541
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 544
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result p1

    if-ltz p1, :cond_6

    .line 545
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_5

    goto :goto_0

    .line 549
    :cond_5
    invoke-virtual {p0, p2, p3, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->checkEqualityOfExtraHandleVariations_(Ljava/util/Map;Ljava/util/Map;I)Z

    move-result p1

    return p1

    :cond_6
    :goto_0
    const/4 p1, 0x4

    .line 546
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method protected coverAtIndex_(I)Lcom/metamoji/cm/RectEx;
    .locals 3

    .line 884
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->lastCoverIndex()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 886
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 887
    sget-object p1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    return-object p1

    :cond_0
    add-int/lit8 v1, p1, 0x2

    if-le v1, v0, :cond_4

    .line 892
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    .line 905
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    if-nez v1, :cond_3

    .line 893
    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-ne p1, v0, :cond_1

    .line 895
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadBounds:Lcom/metamoji/cm/RectEx;

    return-object p1

    .line 897
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadBounds:Lcom/metamoji/cm/RectEx;

    return-object p1

    :cond_2
    if-ne p1, v0, :cond_4

    .line 901
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadBounds:Lcom/metamoji/cm/RectEx;

    return-object p1

    .line 905
    :cond_3
    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-ne p1, v0, :cond_4

    .line 907
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadBounds:Lcom/metamoji/cm/RectEx;

    return-object p1

    .line 914
    :cond_4
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_adjustedLineWidth:F

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 915
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->rectAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    invoke-static {p1, v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected coverCount_()I
    .locals 2

    .line 869
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathRects:Ljava/lang/Object;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 873
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 876
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method protected deactivate_()V
    .locals 3

    .line 1617
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    if-eqz v0, :cond_0

    .line 1618
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->disuseStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V

    .line 1622
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightId:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightOverlayId:I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1623
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightId:I

    iget v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightOverlayId:I

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->removeHighlightObjectWithId(II)V

    .line 1627
    :cond_1
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->deactivate_()V

    return-void
.end method

.method protected destroy_()V
    .locals 4

    const/4 v0, 0x0

    .line 1561
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    .line 1562
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathRects:Ljava/lang/Object;

    .line 1563
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bezierPath:Landroid/graphics/Path;

    .line 1564
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoints:Lcom/metamoji/cm/PointArray;

    .line 1565
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoints:Lcom/metamoji/cm/PointArray;

    .line 1566
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    .line 1567
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    .line 1568
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 1569
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1570
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1574
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    if-ge v1, v2, :cond_0

    .line 1571
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    .line 1572
    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setOwner(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1574
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1575
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    .line 1577
    :cond_1
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 1578
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForEditedByUnknown:Ljava/lang/String;

    .line 1579
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForPoints:Ljava/lang/String;

    .line 1580
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForPathInformation:Ljava/lang/String;

    .line 1581
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForReplacements:Ljava/lang/String;

    .line 1582
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_replacements:Lcom/metamoji/df/model/IModel;

    .line 1583
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_reverseReplacements:Lcom/metamoji/df/model/IModel;

    .line 1584
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->destroy_()V

    return-void
.end method

.method protected distanceToPoint_(Landroid/graphics/PointF;I)F
    .locals 6

    .line 1383
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->lastCoverIndex()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 1385
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    add-int/lit8 v3, p2, 0x2

    if-le v3, v0, :cond_4

    .line 1391
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    .line 1404
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    if-nez v3, :cond_3

    .line 1392
    invoke-virtual {v4}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    if-ne p2, v0, :cond_1

    .line 1394
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p2, v0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->distanceToHeadPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)F

    move-result p1

    return p1

    .line 1396
    :cond_1
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p2, v0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->distanceToHeadPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)F

    move-result p1

    return p1

    :cond_2
    if-ne p2, v0, :cond_4

    .line 1400
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p2, v0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->distanceToHeadPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)F

    move-result p1

    return p1

    .line 1404
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    if-ne p2, v0, :cond_4

    .line 1406
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p2, v0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->distanceToHeadPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)F

    move-result p1

    return p1

    :cond_4
    const/4 v0, 0x2

    mul-int/2addr p2, v0

    .line 1414
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt p2, v3, :cond_5

    .line 1415
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 1420
    :cond_5
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v5, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->NONE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->enumOf(ILjava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    .line 1423
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    add-int/2addr p2, v4

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 1426
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v5

    .line 1428
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->ordinal()I

    move-result v3

    if-eq v3, v4, :cond_7

    if-eq v3, v0, :cond_6

    .line 1451
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    :cond_6
    add-int/lit8 v1, p2, 0x1

    .line 1441
    invoke-static {p2, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    add-int/2addr p2, v0

    .line 1442
    invoke-static {v1, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1443
    invoke-static {p2, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p2

    .line 1446
    invoke-static {v2, v0, p2, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getExactDistanceBetweenQuadCurveAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide p1

    double-to-float v1, p1

    goto :goto_0

    :cond_7
    add-int/lit8 v0, p2, 0x1

    .line 1431
    invoke-static {p2, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p2

    .line 1432
    invoke-static {v0, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1435
    invoke-static {p2, v0, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegmentAndPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    .line 1456
    :goto_0
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_adjustedLineWidth:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    sub-float/2addr v1, p1

    const/4 p1, 0x0

    cmpl-float p2, v1, p1

    if-lez p2, :cond_8

    return v1

    :cond_8
    return p1
.end method

.method protected distanceToSegment_(Landroid/graphics/PointF;Landroid/graphics/PointF;I)F
    .locals 6

    .line 1463
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->lastCoverIndex()I

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v2, 0x0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 1465
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    add-int/lit8 v3, p3, 0x2

    if-le v3, v0, :cond_4

    .line 1471
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    .line 1493
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    if-nez v3, :cond_3

    .line 1472
    invoke-virtual {v4}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    if-ne p3, v0, :cond_1

    .line 1474
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p3, v0, p1, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->distanceToHeadPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    return p1

    .line 1479
    :cond_1
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p3, v0, p1, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->distanceToHeadPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    return p1

    :cond_2
    if-ne p3, v0, :cond_4

    .line 1486
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p3, v0, p1, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->distanceToHeadPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    return p1

    .line 1493
    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    if-ne p3, v0, :cond_4

    .line 1495
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p3, v0, p1, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->distanceToHeadPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    return p1

    :cond_4
    const/4 v0, 0x2

    mul-int/2addr p3, v0

    add-int/lit8 v3, p3, 0x1

    .line 1506
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_5

    .line 1507
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 1512
    :cond_5
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    sget-object v4, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->NONE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-static {p3, v4}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->enumOf(ILjava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    .line 1515
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 1518
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v4

    .line 1520
    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->ordinal()I

    move-result p3

    if-eq p3, v5, :cond_7

    if-eq p3, v0, :cond_6

    .line 1543
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    :cond_6
    add-int/lit8 p3, v3, 0x1

    .line 1533
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    add-int/2addr v3, v0

    .line 1534
    invoke-static {p3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p3

    .line 1535
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1538
    invoke-static {v1, p3, v0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getExactDistanceBetweenQuadCurveAndSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide p1

    double-to-float v1, p1

    goto :goto_0

    :cond_7
    add-int/lit8 p3, v3, 0x1

    .line 1523
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 1524
    invoke-static {p3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p3

    .line 1527
    invoke-static {p1, p2, v0, p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenSegments(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    .line 1548
    :goto_0
    iget p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_adjustedLineWidth:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    sub-float/2addr v1, p1

    const/4 p1, 0x0

    cmpl-float p2, v1, p1

    if-lez p2, :cond_8

    return v1

    :cond_8
    return p1
.end method

.method protected editExtraHandleWithVariationAlways_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z
    .locals 5

    .line 959
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z

    .line 962
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 967
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    .line 968
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result v2

    .line 969
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result v3

    .line 967
    invoke-direct {p0, v0, v2, v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePenStyleWithTransform(Landroid/graphics/Matrix;FF)V

    .line 975
    sget-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    .line 1004
    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 989
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->extraHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result v0

    if-ltz v0, :cond_3

    .line 990
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 992
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->extraHandleCenterPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->applyExtraHandlePoint_(Landroid/graphics/PointF;I)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    move v0, p1

    move v1, v0

    goto :goto_1

    :cond_2
    return v1

    .line 1000
    :cond_3
    invoke-static {v1, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move p1, v1

    goto :goto_0

    .line 984
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->applyTransform_(Landroid/graphics/Matrix;F)Z

    move-result p1

    if-eqz p1, :cond_5

    move p1, v2

    :goto_0
    move v0, p1

    goto :goto_1

    :cond_5
    move v0, v1

    move p1, v2

    :goto_1
    if-eqz v1, :cond_6

    .line 1009
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1010
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePoints(Lcom/metamoji/cm/PointArray;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 1013
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePathAndRects()V

    .line 1014
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updateBounds()V

    :cond_7
    if-eqz v0, :cond_8

    .line 1016
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraHandleCount_()I

    move-result p1

    if-lez p1, :cond_8

    .line 1017
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updateExtraHandles()V

    :cond_8
    return v2
.end method

.method public editWithHandleVariationAlways()Z
    .locals 2

    .line 666
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 667
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 670
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->editExtraHandleWithVariationAlways_()Z

    move-result v0

    return v0
.end method

.method public endHeadTip()Landroid/graphics/PointF;
    .locals 1

    .line 2169
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadTip:Landroid/graphics/PointF;

    return-object v0
.end method

.method public endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;
    .locals 1

    .line 2160
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    return-object v0
.end method

.method public evaluateCenterPointOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 2

    .line 604
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 605
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p2

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 613
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p2

    .line 616
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result p1

    if-ltz p1, :cond_4

    .line 617
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto :goto_0

    .line 621
    :cond_3
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->evaluateExtraHandlePoint_(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x3

    .line 618
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p2

    :cond_5
    :goto_1
    const/4 p1, 0x1

    .line 609
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p2
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

    .line 1947
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

    .line 1957
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

.method protected getBoundsResizeVariationWithResizeX_(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 1351
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1354
    :cond_0
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    .line 1355
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, p1, v3, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->applyScaleWithoutReversingToRect(Lcom/metamoji/cm/RectEx;FFLandroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->transformForResizedBounds_(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTransform(Landroid/graphics/Matrix;)V

    .line 1356
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method protected getBoundsResizeVariationWithResizeY_(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 1362
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1365
    :cond_0
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    .line 1366
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->applyScaleWithoutReversingToRect(Lcom/metamoji/cm/RectEx;FFLandroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->transformForResizedBounds_(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTransform(Landroid/graphics/Matrix;)V

    .line 1367
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method protected getBoundsResizeVariationWithResize_(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 1373
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1376
    :cond_0
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    .line 1377
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    invoke-static {v2, p1, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->applyScaleWithoutReversingToRect(Lcom/metamoji/cm/RectEx;FFLandroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->transformForResizedBounds_(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTransform(Landroid/graphics/Matrix;)V

    .line 1378
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v1

    :cond_1
    return-object v0
.end method

.method public getCenterPointOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Ljava/util/Map;)Landroid/graphics/PointF;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 578
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 579
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 580
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 583
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 584
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x2

    .line 587
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 588
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    const/4 p1, 0x3

    .line 591
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 592
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 594
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result p1

    if-ltz p1, :cond_5

    .line 595
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_4

    goto :goto_0

    .line 599
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraHandlePointAtIndex_(ILjava/util/Map;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const/4 p1, 0x4

    .line 596
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 597
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public getDisplayAngleForHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;)F
    .locals 2

    .line 648
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result p2

    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 649
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 652
    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 657
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 653
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1
.end method

.method public getHandleAtIndex(I)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;
    .locals 2

    .line 294
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 295
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-object v1

    .line 301
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    return-object v1

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    return-object p1
.end method

.method public getHandleCount()I
    .locals 2

    .line 282
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 283
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 286
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandlesEnablement:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public getIndexOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)I
    .locals 4

    .line 309
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 310
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 314
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 318
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 321
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result v0

    if-ltz v0, :cond_5

    .line 322
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_3

    goto :goto_0

    .line 326
    :cond_3
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0

    :cond_5
    :goto_0
    const/4 p1, 0x3

    .line 323
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method protected getMinimumTipMovementForLineWidthAdjustmentationWithTransform_(Landroid/graphics/Matrix;FF)F
    .locals 0

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    return p1
.end method

.method public getVariationOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 334
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 335
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 339
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 343
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 346
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result p1

    if-ltz p1, :cond_4

    .line 347
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto :goto_0

    .line 351
    :cond_3
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraHandleVariationAtIndex_(I)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x3

    .line 348
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1
.end method

.method public getVariationOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 356
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 357
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 361
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 365
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 368
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result p1

    if-ltz p1, :cond_4

    .line 369
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto :goto_0

    .line 373
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraHandleVariationAtIndex_(ILandroid/graphics/PointF;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x3

    .line 370
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1
.end method

.method public handlesEnablement()Z
    .locals 2

    .line 675
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 676
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 679
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandlesEnablement:Z

    return v0
.end method

.method protected highlightPathWithExtraHandlePoint_(Landroid/graphics/PointF;ILandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;
    .locals 0

    .line 2080
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object p1

    return-object p1
.end method

.method protected highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V
    .locals 23

    move-object/from16 v0, p0

    .line 1026
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_c

    .line 1031
    :cond_0
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    if-eqz v1, :cond_23

    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_b

    .line 1040
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->editContext()Lcom/metamoji/un/draw2/module/element/DrEditContext;

    move-result-object v7

    .line 1041
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v8

    .line 1042
    sget-object v1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrHighlightProcess:[I

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->process()Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-eq v1, v9, :cond_17

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    const/4 v3, 0x3

    if-eq v1, v3, :cond_e

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    .line 1273
    invoke-static {v2, v12}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_2
    if-nez v7, :cond_3

    .line 1140
    invoke-static {v10, v12}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1145
    :cond_3
    sget-object v1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v9, :cond_a

    if-eq v1, v2, :cond_a

    if-eq v1, v3, :cond_a

    if-eq v1, v4, :cond_a

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    .line 1266
    invoke-static {v9, v12}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1197
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraHandleCount_()I

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_b

    .line 1202
    :cond_5
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->extraHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->getIndexOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)I

    move-result v2

    if-gez v2, :cond_6

    goto/16 :goto_b

    .line 1208
    :cond_6
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoint1:Landroid/graphics/PointF;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v14

    .line 1209
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoint2:Landroid/graphics/PointF;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v15

    .line 1210
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoint1:Landroid/graphics/PointF;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v17

    .line 1211
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoint2:Landroid/graphics/PointF;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v18

    .line 1212
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->extraHandleCenterPoint()Landroid/graphics/PointF;

    move-result-object v1

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->highlightPathWithExtraHandlePoint_(Landroid/graphics/PointF;ILandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v1

    .line 1220
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->extraHandleCenterPoint()Landroid/graphics/PointF;

    move-result-object v3

    iget v4, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightLineWidth:F

    invoke-virtual {v0, v3, v2, v4}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->adjustLineWidthWithExtraHandlePoint_(Landroid/graphics/PointF;IF)F

    move-result v17

    .line 1223
    iget v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightDisplayZoom:F

    mul-float v2, v2, v17

    .line 1226
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result v3

    cmpl-float v3, v3, v11

    if-eqz v3, :cond_7

    .line 1227
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineDash()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1228
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->updateLineDashWithLineWidth(F)V

    .line 1231
    :cond_7
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineWidth(F)V

    .line 1232
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    iget v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightLineAlpha:F

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineAlpha(F)V

    .line 1235
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1236
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v13

    .line 1237
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightStartHeadType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 1242
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v18

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 1243
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headRatio()F

    move-result v19

    move-object/from16 v16, v2

    .line 1237
    invoke-static/range {v13 .. v19}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;F)Z

    .line 1244
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 1245
    invoke-static {v2, v13}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->constructHeadPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;)V

    goto :goto_0

    :cond_8
    move-object v2, v12

    .line 1247
    :goto_0
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1248
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v16

    .line 1249
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightEndHeadType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    iget-object v4, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 1254
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v21

    iget-object v4, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 1255
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headRatio()F

    move-result v22

    move-object/from16 v19, v3

    move-object/from16 v18, v6

    move/from16 v20, v17

    move-object/from16 v17, v5

    .line 1249
    invoke-static/range {v16 .. v22}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;F)Z

    move-object/from16 v3, v16

    .line 1256
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 1257
    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->constructHeadPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;)V

    goto :goto_1

    :cond_9
    move-object v4, v12

    .line 1261
    :goto_1
    iget v3, v8, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightEditAlpha:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    goto/16 :goto_9

    .line 1151
    :cond_a
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v1

    .line 1152
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1155
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result v3

    iget v4, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightLineWidth:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->adjustLineWidthWithTransform_(Landroid/graphics/Matrix;FF)F

    move-result v17

    .line 1156
    iget v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightDisplayZoom:F

    mul-float v2, v2, v17

    .line 1159
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result v3

    cmpl-float v3, v3, v11

    if-eqz v3, :cond_b

    .line 1160
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineDash()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1161
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->updateLineDashWithLineWidth(F)V

    .line 1164
    :cond_b
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineWidth(F)V

    .line 1165
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    iget v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightLineAlpha:F

    iget v4, v8, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightEditAlpha:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineAlpha(F)V

    .line 1168
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1169
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v13

    .line 1170
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoint1:Landroid/graphics/PointF;

    .line 1171
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v14

    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoint2:Landroid/graphics/PointF;

    .line 1172
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v15

    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightStartHeadType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 1175
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v18

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 1176
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headRatio()F

    move-result v19

    move-object/from16 v16, v2

    .line 1170
    invoke-static/range {v13 .. v19}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;F)Z

    .line 1177
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 1178
    invoke-static {v2, v13}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->constructHeadPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;)V

    goto :goto_2

    :cond_c
    move-object v2, v12

    .line 1180
    :goto_2
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1181
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v13

    .line 1182
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoint1:Landroid/graphics/PointF;

    .line 1183
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v14

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoint2:Landroid/graphics/PointF;

    .line 1184
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v15

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightEndHeadType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    iget-object v4, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 1187
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v18

    iget-object v4, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 1188
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headRatio()F

    move-result v19

    move-object/from16 v16, v3

    .line 1182
    invoke-static/range {v13 .. v19}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->addHeadPointsToArray(Lcom/metamoji/cm/PointArray;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;FLcom/metamoji/df/sprite/LineCap;F)Z

    .line 1189
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 1190
    invoke-static {v3, v13}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->constructHeadPath(Landroid/graphics/Path;Lcom/metamoji/cm/PointArray;)V

    move-object v4, v3

    goto/16 :goto_9

    :cond_d
    move-object v4, v12

    goto/16 :goto_9

    .line 1129
    :cond_e
    iput-object v12, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 1132
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->alpha(Lcom/metamoji/df/sprite/Sprite;)F

    move-result v1

    cmpg-float v1, v1, v11

    if-gez v1, :cond_f

    .line 1133
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    :cond_f
    move-object v1, v12

    move-object v2, v1

    move-object v4, v2

    goto/16 :goto_9

    .line 1084
    :cond_10
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v1

    .line 1085
    iget v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightDisplayZoom:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_11

    .line 1086
    iput v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightDisplayZoom:F

    .line 1087
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineDash()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_11

    move v1, v9

    goto :goto_3

    :cond_11
    move v1, v10

    .line 1093
    :goto_3
    iget v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_adjustedLineWidth:F

    iget v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightDisplayZoom:F

    mul-float/2addr v2, v3

    .line 1096
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v3

    cmpl-float v3, v2, v3

    if-nez v3, :cond_13

    if-eqz v1, :cond_12

    goto :goto_4

    :cond_12
    move v9, v10

    move-object v1, v12

    move-object v2, v1

    move-object v4, v2

    goto :goto_6

    .line 1098
    :cond_13
    :goto_4
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineWidth(F)V

    .line 1099
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    iget v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightLineAlpha:F

    iget v4, v8, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseAlpha:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineAlpha(F)V

    if-eqz v1, :cond_14

    .line 1101
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineDash()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineDash(Ljava/util/List;)V

    .line 1102
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    iget v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightDisplayZoom:F

    invoke-virtual {v1, v2, v10}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->updateLineDashWithScale(FZ)V

    .line 1106
    :cond_14
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v1

    .line 1109
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 1110
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v2

    goto :goto_5

    :cond_15
    move-object v2, v12

    .line 1112
    :goto_5
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    .line 1113
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v3

    move-object v4, v3

    goto :goto_6

    :cond_16
    move-object v4, v12

    .line 1121
    :goto_6
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->alpha(Lcom/metamoji/df/sprite/Sprite;)F

    move-result v3

    cmpg-float v3, v3, v11

    if-gez v3, :cond_1b

    .line 1122
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    goto/16 :goto_9

    .line 1045
    :cond_17
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v1

    iput v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightLineWidth:F

    .line 1046
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineAlpha()F

    move-result v1

    iput v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightLineAlpha:F

    .line 1049
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v1

    iput v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightDisplayZoom:F

    .line 1052
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v1, v12}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    iput-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 1053
    iget v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_adjustedLineWidth:F

    iget v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightDisplayZoom:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineWidth(F)V

    .line 1054
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    iget v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightLineAlpha:F

    iget v3, v8, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseAlpha:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineAlpha(F)V

    .line 1055
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineDash()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 1056
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    iget v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightDisplayZoom:F

    invoke-virtual {v1, v2, v10}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->updateLineDashWithScale(FZ)V

    .line 1060
    :cond_18
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightStartHeadType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    .line 1061
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->endHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightEndHeadType:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    .line 1064
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v1

    .line 1067
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    .line 1068
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v2

    goto :goto_7

    :cond_19
    move-object v2, v12

    .line 1070
    :goto_7
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1071
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/Path;)Landroid/graphics/Path;

    move-result-object v3

    move-object v4, v3

    goto :goto_8

    :cond_1a
    move-object v4, v12

    .line 1075
    :goto_8
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->alpha(Lcom/metamoji/df/sprite/Sprite;)F

    move-result v3

    cmpg-float v3, v3, v11

    if-gez v3, :cond_1b

    .line 1076
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    :cond_1b
    :goto_9
    if-eqz v9, :cond_23

    if-eqz v1, :cond_22

    .line 1281
    iget v3, v8, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightMinLineWidth:F

    .line 1282
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v5

    cmpg-float v5, v5, v3

    if-gez v5, :cond_1c

    .line 1283
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v5, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineWidth(F)V

    .line 1287
    :cond_1c
    invoke-static {v12}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v3

    .line 1288
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineWidth()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 1289
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineColorWithColor(Ljava/lang/Integer;)V

    .line 1290
    invoke-virtual {v3, v11}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineAlpha(F)V

    .line 1291
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 1292
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineJoin()Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    .line 1293
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->miterLimit()F

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setMiterLimit(F)V

    .line 1294
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineDash()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineDash(Ljava/util/List;)V

    if-nez v2, :cond_1d

    if-eqz v4, :cond_1e

    .line 1297
    :cond_1d
    invoke-static {v12}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v12

    .line 1298
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headLineWidth()F

    move-result v5

    invoke-virtual {v12, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 1299
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headLineColor()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineColorWithColor(Ljava/lang/Integer;)V

    .line 1300
    invoke-virtual {v12, v11}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineAlpha(F)V

    .line 1301
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headLineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 1302
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headLineJoin()Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    .line 1303
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headMiterLimit()F

    move-result v5

    invoke-virtual {v12, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setMiterLimit(F)V

    .line 1304
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headLineDash()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineDash(Ljava/util/List;)V

    .line 1305
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headFillType()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    .line 1306
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headFillColors()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v12, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillColors(Ljava/util/List;)V

    .line 1307
    invoke-virtual {v12, v11}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillAlpha(F)V

    .line 1311
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v5

    iget v6, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightId:I

    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->checkObjectWithId(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1312
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v5

    iget v6, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightId:I

    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->clearComplexObjectWithId(I)V

    goto :goto_a

    .line 1314
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->createComplexObjectId()I

    move-result v5

    iput v5, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightId:I

    .line 1318
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v5

    iget-object v6, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineAlpha()F

    move-result v6

    iget v7, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightId:I

    invoke-virtual {v5, v6, v7}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->setAlpha(FI)V

    .line 1321
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v5

    iget v6, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightId:I

    invoke-virtual {v5, v1, v3, v6}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->addPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V

    if-eqz v2, :cond_20

    .line 1323
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v1

    iget v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightId:I

    invoke-virtual {v1, v2, v12, v3}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->addPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V

    :cond_20
    if-eqz v4, :cond_21

    .line 1326
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v1

    iget v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightId:I

    invoke-virtual {v1, v4, v12, v2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->addPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;I)V

    .line 1330
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v13

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->highlightBaseColor()Ljava/lang/Integer;

    move-result-object v14

    iget-object v1, v8, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightDropShadowOffset:Landroid/graphics/PointF;

    iget v2, v8, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightDropShadowBlur:F

    iget v3, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightId:I

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-virtual/range {v13 .. v18}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->setDropShadowWithColor(Ljava/lang/Integer;FLandroid/graphics/PointF;FI)V

    .line 1337
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->uid()I

    move-result v1

    iput v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightOverlayId:I

    return-void

    .line 1339
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v1

    iget v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightId:I

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->checkObjectWithId(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1340
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->layer()Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    move-result-object v1

    iget v2, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightId:I

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->removeObjectWithId(I)V

    const/4 v1, -0x1

    .line 1341
    iput v1, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightId:I

    .line 1342
    iput v10, v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightOverlayId:I

    :cond_23
    :goto_b
    return-void

    .line 1027
    :cond_24
    :goto_c
    invoke-super/range {p0 .. p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    return-void
.end method

.method protected initWithTransform_(Landroid/graphics/Matrix;F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected initWithTransform_(Landroid/graphics/Matrix;FF)Z
    .locals 5

    const/4 v0, 0x0

    .line 737
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    .line 738
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->newRectArray()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathRects:Ljava/lang/Object;

    .line 739
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bezierPath:Landroid/graphics/Path;

    .line 740
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoints:Lcom/metamoji/cm/PointArray;

    .line 741
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoints:Lcom/metamoji/cm/PointArray;

    .line 742
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    .line 743
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    .line 744
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadTip:Landroid/graphics/PointF;

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 745
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoint1:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadTip:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 746
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPoint2:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadTip:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 747
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadTip:Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 748
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoint1:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadTip:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 749
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPoint2:Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadTip:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 750
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    sget-object v2, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 751
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    sget-object v2, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 752
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadBounds:Lcom/metamoji/cm/RectEx;

    sget-object v2, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 753
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadBounds:Lcom/metamoji/cm/RectEx;

    sget-object v2, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    const/4 v1, 0x0

    .line 754
    iput v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_adjustedLineWidth:F

    const/4 v1, 0x1

    .line 755
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandlesEnablement:Z

    .line 756
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->arrowType_()Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    move-result-object v2

    sget-object v3, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->UNKNOWN:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isUnknown:Z

    .line 757
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->checkNecessityOfForwardCompatibilityOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_necessityOfForwardCompatibility:Z

    .line 758
    iput-boolean v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_canRegisterReplacementsOfModel:Z

    const/4 v2, -0x1

    .line 759
    iput v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightId:I

    .line 760
    iput v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_highlightOverlayId:I

    .line 763
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 765
    const-string v2, "i"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    .line 768
    const-string v2, "p"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 771
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->getStyleByModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 774
    instance-of v2, v3, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    if-eqz v2, :cond_1

    .line 775
    check-cast v3, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    iput-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    goto :goto_1

    .line 778
    :cond_1
    invoke-static {v4, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 779
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->savePenStyleToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;)V

    goto :goto_1

    .line 783
    :cond_2
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->restoreStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 784
    instance-of v3, v2, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    if-eqz v3, :cond_3

    .line 785
    check-cast v2, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    iput-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 788
    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_1

    .line 791
    :cond_3
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 792
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->savePenStyleToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;)V

    .line 797
    :goto_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v0

    sget-object v2, Lcom/metamoji/df/sprite/LineCap;->BUTT:Lcom/metamoji/df/sprite/LineCap;

    if-ne v0, v2, :cond_4

    .line 798
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    sget-object v2, Lcom/metamoji/df/sprite/LineCap;->ROUND:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 803
    :cond_4
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandlesEnablement:Z

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    const-string v3, "e"

    invoke-static {v3, v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandlesEnablement:Z

    .line 807
    :cond_5
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    if-nez v0, :cond_6

    .line 808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    .line 812
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePenStyleWithTransform(Landroid/graphics/Matrix;FF)V

    .line 815
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePathAndRects()V

    .line 818
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updateBounds()V

    .line 821
    invoke-virtual {p0, p1, p3}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->initWithTransform_(Landroid/graphics/Matrix;F)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 823
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePathAndRects()V

    .line 826
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updateBounds()V

    .line 829
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 830
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePoints(Lcom/metamoji/cm/PointArray;)V

    .line 835
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraHandleCount_()I

    move-result p1

    if-lez p1, :cond_8

    .line 836
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updateExtraHandles()V

    :cond_8
    return v1
.end method

.method protected isErasable_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHorizontal()Z
    .locals 2

    .line 237
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 238
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 241
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isHorizontal:Z

    return v0
.end method

.method protected isMovable_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isResizable_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isReversible_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isRotatable_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isSelectable_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVertical()Z
    .locals 2

    .line 248
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 249
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isVertical:Z

    return v0
.end method

.method public lastPathType()Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;
    .locals 3

    .line 2197
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2199
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 2200
    sget-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->NONE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    return-object v0

    .line 2202
    :cond_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    sub-int/2addr v0, v1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->NONE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->enumOf(ILjava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    return-object v0
.end method

.method protected minScaleX_()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected minScaleY_()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected minScale_()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected pathBounds_()Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 1698
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadTip:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadTip:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method public pathCount()I
    .locals 1

    .line 2181
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public pathTypeAtIndex(I)Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;
    .locals 1

    mul-int/lit8 p1, p1, 0x2

    .line 2189
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2190
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 2191
    sget-object p1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->NONE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    return-object p1

    .line 2193
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->NONE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/EnumUtil;->enumOf(ILjava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    return-object p1
.end method

.method public penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 175
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    return-object v0
.end method

.method public registerReplacementOfModelPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2

    .line 2731
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2732
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 2736
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 2739
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_canRegisterReplacementsOfModel:Z

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 2740
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_2
    if-eqz p3, :cond_4

    .line 2747
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_reverseReplacements:Lcom/metamoji/df/model/IModel;

    if-eqz p2, :cond_3

    .line 2745
    invoke-static {p1, p2, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 2747
    :cond_3
    invoke-static {p1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 2753
    :cond_4
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_replacements:Lcom/metamoji/df/model/IModel;

    if-eqz p2, :cond_5

    .line 2751
    invoke-static {p1, p2, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 2753
    :cond_5
    invoke-static {p1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method protected repaintHighlightAlways_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected repaint_()V
    .locals 4

    .line 1633
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->clear(Lcom/metamoji/df/sprite/Sprite;)V

    .line 1636
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1641
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->displayableCanvasBoundaryLimit:F

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkBoundaryOfRect(Lcom/metamoji/cm/RectEx;F)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 1646
    :cond_1
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_adjustedLineWidth:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineWidth(FLcom/metamoji/df/sprite/Sprite;)V

    .line 1647
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 1648
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineAlpha()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    .line 1649
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineCap(Lcom/metamoji/df/sprite/LineCap;Lcom/metamoji/df/sprite/Sprite;)V

    .line 1650
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineJoin()Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;Lcom/metamoji/df/sprite/Sprite;)V

    .line 1651
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineJoin()Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v0

    sget-object v1, Lcom/metamoji/df/sprite/LineJoin;->MITER:Lcom/metamoji/df/sprite/LineJoin;

    if-ne v0, v1, :cond_2

    .line 1652
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->miterLimit()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setMiterLimit(FLcom/metamoji/df/sprite/Sprite;)V

    .line 1654
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->lineDashAsArray()[F

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineDash([FLcom/metamoji/df/sprite/Sprite;)V

    .line 1657
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawPath(Landroid/graphics/Path;Lcom/metamoji/df/sprite/Sprite;)V

    .line 1660
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    .line 1661
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    goto/16 :goto_0

    .line 1667
    :cond_3
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headLineWidth()F

    move-result v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineWidth(FLcom/metamoji/df/sprite/Sprite;)V

    .line 1668
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headLineColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 1669
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headLineAlpha()F

    move-result v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    .line 1670
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headLineCap()Lcom/metamoji/df/sprite/LineCap;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineCap(Lcom/metamoji/df/sprite/LineCap;Lcom/metamoji/df/sprite/Sprite;)V

    .line 1671
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headLineJoin()Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;Lcom/metamoji/df/sprite/Sprite;)V

    .line 1672
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headLineJoin()Lcom/metamoji/df/sprite/LineJoin;

    move-result-object v2

    sget-object v3, Lcom/metamoji/df/sprite/LineJoin;->MITER:Lcom/metamoji/df/sprite/LineJoin;

    if-ne v2, v3, :cond_4

    .line 1673
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headMiterLimit()F

    move-result v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setMiterLimit(FLcom/metamoji/df/sprite/Sprite;)V

    .line 1675
    :cond_4
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headLineDashAsArray()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setLineDash([FLcom/metamoji/df/sprite/Sprite;)V

    .line 1676
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headFillColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setFillColor(Ljava/lang/Integer;Lcom/metamoji/df/sprite/Sprite;)V

    .line 1677
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->headFillAlpha()F

    move-result v2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->setFillAlpha(FLcom/metamoji/df/sprite/Sprite;)V

    if-nez v0, :cond_5

    .line 1681
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawPath(Landroid/graphics/Path;Lcom/metamoji/df/sprite/Sprite;)V

    :cond_5
    if-nez v1, :cond_6

    .line 1684
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->drawPath(Landroid/graphics/Path;Lcom/metamoji/df/sprite/Sprite;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public resetLinePathAtIndex(ILandroid/graphics/PointF;)Z
    .locals 6

    .line 2461
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2462
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x2

    mul-int/2addr p1, v0

    add-int/lit8 v3, p1, 0x1

    .line 2466
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_1

    .line 2467
    invoke-static {v5, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 2472
    :cond_1
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v4, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->intValue()I

    move-result v4

    if-eq p1, v4, :cond_2

    .line 2473
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 2478
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/2addr p1, v5

    .line 2479
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-lt p1, v0, :cond_3

    const/4 p1, 0x3

    .line 2480
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 2485
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return v5
.end method

.method public resetLinePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 6

    .line 2430
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    mul-int/2addr p1, v0

    add-int/lit8 v3, p1, 0x1

    .line 2435
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_1

    .line 2436
    invoke-static {v5, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 2441
    :cond_1
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v4, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->LINE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->intValue()I

    move-result v4

    if-eq p1, v4, :cond_2

    .line 2442
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 2447
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    .line 2448
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v3

    if-lt v0, v3, :cond_3

    const/4 p1, 0x3

    .line 2449
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 2454
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 2455
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-static {v0, p3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return v5

    .line 2431
    :cond_4
    :goto_0
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method public resetQuadCurvePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 6

    .line 2523
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    mul-int/2addr p1, v0

    add-int/lit8 v3, p1, 0x1

    .line 2528
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_1

    .line 2529
    invoke-static {v5, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 2534
    :cond_1
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v4, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->QUAD_CURVE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->intValue()I

    move-result v4

    if-eq p1, v4, :cond_2

    .line 2535
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 2540
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/lit8 v3, p1, 0x1

    add-int/2addr p1, v0

    .line 2541
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-lt p1, v0, :cond_3

    const/4 p1, 0x3

    .line 2542
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 2547
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v3, p2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 2548
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return v5

    .line 2524
    :cond_4
    :goto_0
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method public resetQuadCurvePathAtIndex(ILandroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 6

    .line 2491
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkFinitePoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    mul-int/2addr p1, v0

    add-int/lit8 v3, p1, 0x1

    .line 2496
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_1

    .line 2497
    invoke-static {v5, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 2502
    :cond_1
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object v4, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->QUAD_CURVE:Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$DrArrowPathType;->intValue()I

    move-result v4

    if-eq p1, v4, :cond_2

    .line 2503
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 2508
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    add-int/lit8 v3, p1, 0x2

    .line 2509
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v4

    if-lt v3, v4, :cond_3

    const/4 p1, 0x3

    .line 2510
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_3
    add-int/lit8 v1, p1, 0x1

    .line 2515
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-static {p1, p2, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    add-int/2addr p1, v0

    .line 2516
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p2

    invoke-static {v1, p3, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 2517
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p2

    invoke-static {p1, p4, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return v5

    .line 2492
    :cond_4
    :goto_0
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2
.end method

.method protected setExtraHandleVariation_(Ljava/util/Map;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;I)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public setHandlesEnablement(Z)V
    .locals 1

    .line 683
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 684
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 687
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandlesEnablement:Z

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 690
    :cond_1
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandlesEnablement:Z

    .line 691
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 692
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandlesEnablement:Z

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->saveExtraHandlesEnablementToModel(Lcom/metamoji/df/model/IModel;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;)V
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 182
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 187
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 192
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePathAndRects()V

    .line 195
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updateBounds()V

    .line 198
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraHandleCount_()I

    move-result p1

    if-lez p1, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updateExtraHandles()V

    .line 203
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isActive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 204
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updateCovers()V

    .line 205
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->repaint_()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 1

    .line 263
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 264
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "EU!"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForEditedByUnknown:Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "EP!"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForPoints:Ljava/lang/String;

    .line 267
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "EI!"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForPathInformation:Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ER!"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForReplacements:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 270
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForEditedByUnknown:Ljava/lang/String;

    .line 271
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForPoints:Ljava/lang/String;

    .line 272
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForPathInformation:Ljava/lang/String;

    .line 273
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraDataNameForReplacements:Ljava/lang/String;

    return-void
.end method

.method public setVariationOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 379
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 383
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x2

    .line 387
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 390
    :cond_2
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    const/4 p1, 0x3

    .line 391
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 394
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->uid()I

    move-result p1

    if-ltz p1, :cond_b

    .line 395
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_4

    goto/16 :goto_1

    .line 401
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v2

    .line 402
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_isUnknown:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_necessityOfForwardCompatibility:Z

    if-eqz v3, :cond_6

    .line 404
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->willSendCollaborationData()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->willSendCollaborationDataIndirectly()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 405
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    if-eqz v3, :cond_6

    move v3, v0

    goto :goto_0

    :cond_6
    move v3, v1

    :goto_0
    if-eqz v3, :cond_7

    .line 409
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForPoints()Ljava/lang/String;

    move-result-object v4

    .line 410
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArrayWithArray(Lcom/metamoji/cm/PointArray;)Lcom/metamoji/cm/PointArray;

    move-result-object v5

    .line 409
    invoke-virtual {v2, v4, v5, v0, v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 413
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForPathInformation()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    .line 414
    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 413
    invoke-virtual {v2, v4, v5, v0, v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 420
    :cond_7
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->beginRegistrationOfReplacements()V

    .line 423
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->setExtraHandleVariation_(Ljava/util/Map;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 425
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePathAndRects()V

    .line 428
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updateBounds()V

    .line 431
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 432
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePoints(Lcom/metamoji/cm/PointArray;)V

    .line 436
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updateExtraHandles()V

    .line 439
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isActive()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 440
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updateCovers()V

    .line 441
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->repaint_()V

    .line 446
    :cond_9
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->endRegistrationOfReplacements()V

    if-eqz v3, :cond_a

    .line 450
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForPoints()Ljava/lang/String;

    move-result-object p1

    .line 451
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArrayWithArray(Lcom/metamoji/cm/PointArray;)Lcom/metamoji/cm/PointArray;

    move-result-object p2

    .line 450
    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    .line 454
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraDataNameForPathInformation()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    .line 455
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 454
    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V

    :cond_a
    return-void

    :cond_b
    :goto_1
    const/4 p1, 0x4

    .line 396
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public startHeadTip()Landroid/graphics/PointF;
    .locals 1

    .line 2168
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadTip:Landroid/graphics/PointF;

    return-object v0
.end method

.method public startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;
    .locals 1

    .line 2156
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->startHeadType()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    return-object v0
.end method

.method protected transformForResizedBounds_(Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;
    .locals 10

    .line 2120
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    .line 2121
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    .line 2122
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    .line 2123
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    .line 2124
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMakeTranslation(FF)Landroid/graphics/Matrix;

    move-result-object v2

    .line 2126
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->width:F

    iget v4, p1, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v3

    const/4 v4, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez v3, :cond_1

    .line 2127
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    iget-object v7, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v7

    sub-float/2addr v3, v7

    .line 2128
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v7

    iget-object v8, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result v8

    sub-float/2addr v7, v8

    .line 2129
    iget v8, p1, Lcom/metamoji/cm/RectEx;->width:F

    iget-object v9, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v9, v9, Lcom/metamoji/cm/RectEx;->width:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 2130
    iget v8, p1, Lcom/metamoji/cm/RectEx;->width:F

    iget-object v9, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v9, v9, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v8, v9

    mul-float/2addr v3, v8

    .line 2131
    iget v8, p1, Lcom/metamoji/cm/RectEx;->width:F

    iget-object v9, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v9, v9, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    .line 2133
    :cond_0
    iget-object v8, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    iget v8, v8, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v8, v8, v4

    if-eqz v8, :cond_1

    iget v8, p1, Lcom/metamoji/cm/RectEx;->width:F

    sub-float/2addr v8, v3

    sub-float/2addr v8, v7

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v8, v3

    goto :goto_0

    :cond_1
    move v8, v6

    .line 2136
    :goto_0
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->height:F

    iget v7, p1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v3, v7, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2137
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    sub-float/2addr v3, v5

    .line 2138
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    iget-object v7, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result v7

    sub-float/2addr v5, v7

    .line 2139
    iget v7, p1, Lcom/metamoji/cm/RectEx;->height:F

    iget-object v9, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v9, v9, Lcom/metamoji/cm/RectEx;->height:F

    cmpg-float v7, v7, v9

    if-gez v7, :cond_2

    .line 2140
    iget v7, p1, Lcom/metamoji/cm/RectEx;->height:F

    iget-object v9, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v9, v9, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v7, v9

    mul-float/2addr v3, v7

    .line 2141
    iget v7, p1, Lcom/metamoji/cm/RectEx;->height:F

    iget-object v9, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget v9, v9, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v7, v9

    mul-float/2addr v5, v7

    .line 2143
    :cond_2
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    iget v7, v7, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v4, v7, v4

    if-eqz v4, :cond_3

    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    sub-float/2addr p1, v3

    sub-float/2addr p1, v5

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    iget v3, v3, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr p1, v3

    move v6, p1

    .line 2146
    :cond_3
    invoke-virtual {v2, v8, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    neg-float p1, v0

    neg-float v0, v1

    .line 2148
    invoke-virtual {v2, p1, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-object v2
.end method

.method protected type_()Lcom/metamoji/un/draw2/module/element/DrElementType;
    .locals 1

    .line 844
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    return-object v0
.end method

.method public updateBounds()V
    .locals 3

    .line 701
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 702
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 703
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadBounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 704
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadBounds:Lcom/metamoji/cm/RectEx;

    sget-object v1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 707
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bezierPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 708
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bezierPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathGetPathBoundingBox(Landroid/graphics/Path;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    .line 709
    iget v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_adjustedLineWidth:F

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 710
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathBounds:Lcom/metamoji/cm/RectEx;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v1, v0, v0, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Lcom/metamoji/cm/RectEx;FFLcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    .line 717
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathGetPathBoundingBox(Landroid/graphics/Path;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    .line 719
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_startHeadBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v0, v1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathGetPathBoundingBox(Landroid/graphics/Path;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    .line 723
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_bounds:Lcom/metamoji/cm/RectEx;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_endHeadBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v0, v1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    .line 727
    :cond_1
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->updateBounds()V

    return-void

    .line 712
    :cond_2
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->updateBounds()V

    return-void
.end method

.method public updateExtraHandleAtIndex(I)V
    .locals 2

    .line 2634
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2640
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    .line 2641
    new-instance v1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0, p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;I)V

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2635
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public updateExtraHandles()V
    .locals 7

    .line 2650
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2651
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElementWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2652
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2653
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v0

    .line 2656
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->extraHandleCount()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2666
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    .line 2668
    new-instance v4, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    .line 2672
    :cond_3
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    if-eqz v0, :cond_4

    .line 2675
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    .line 2676
    invoke-virtual {v0, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->removeExtraHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V

    goto :goto_1

    .line 2681
    :cond_4
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2685
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraHandleCount_()I

    move-result v4

    if-nez v4, :cond_6

    .line 2687
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    if-eqz v3, :cond_a

    .line 2689
    new-instance v1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    return-void

    .line 2695
    :cond_6
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    if-nez v1, :cond_7

    .line 2696
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    .line 2700
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->rubberBandExtraHandleImage:Landroid/graphics/Bitmap;

    :goto_2
    if-ge v2, v4, :cond_9

    .line 2704
    new-instance v5, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    invoke-direct {v5, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;-><init>(Landroid/graphics/Bitmap;)V

    .line 2705
    invoke-virtual {p0, v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraHandlePointAtIndex_(I)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setCenterPoint(Landroid/graphics/PointF;)V

    .line 2706
    invoke-virtual {p0, v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->extraHandleEnablementAtIndex_(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 2707
    invoke-virtual {v5, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setUid(I)V

    .line 2708
    invoke-virtual {v5, p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setOwner(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;)V

    .line 2709
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_extraHandles:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_8

    .line 2714
    invoke-virtual {v0, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->addExtraHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    if-eqz v3, :cond_a

    .line 2719
    new-instance v1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    :cond_a
    return-void
.end method

.method public updatePaths()V
    .locals 2

    .line 2557
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2562
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePathAndRects()V

    .line 2565
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updateBounds()V

    .line 2568
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2569
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updatePoints(Lcom/metamoji/cm/PointArray;)V

    .line 2570
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_pathInformation:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->savePathInformationToModel(Lcom/metamoji/df/model/IModel;Ljava/util/List;)V

    .line 2574
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2575
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->updateCovers()V

    .line 2576
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->repaint_()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updatePenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;)Z
    .locals 3

    .line 2589
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 2594
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2596
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->getStyleEqualsToStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2597
    instance-of v2, v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    if-eqz v2, :cond_1

    .line 2598
    move-object p1, v0

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 2600
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    if-eqz v0, :cond_3

    .line 2606
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->disuseStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 2611
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->useStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V

    .line 2616
    :cond_4
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 2619
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2620
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->savePenStyleToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;)V

    :cond_5
    const/4 p1, 0x1

    return p1
.end method
