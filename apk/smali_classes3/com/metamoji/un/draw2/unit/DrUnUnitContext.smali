.class public Lcom/metamoji/un/draw2/unit/DrUnUnitContext;
.super Lcom/metamoji/un/draw2/module/DrModuleContext;
.source "DrUnUnitContext.java"

# interfaces
.implements Lcom/metamoji/un/draw2/unit/DrUnUnitDefinitions;


# instance fields
.field private m_controller:Lcom/metamoji/un/draw2/unit/DrUnUnitController;

.field private m_controllerContext:Lcom/metamoji/df/controller/ControllerContext;

.field private m_controllerIsClosing:Z

.field private m_defaultArrowPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

.field private m_defaultCalligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

.field private m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

.field private m_defaultSimplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

.field private m_delayNotifyUnit:Z

.field private m_externalDisplayZoom:F

.field private m_externalFingerCount:I

.field private m_externalOverlayCount:I

.field m_forciblyNotifyGeometricNumbersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_isRedoing:Z

.field private m_isUndoing:Z

.field private m_lockedGroupFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

.field m_notifyGeometricNumbersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;>;"
        }
    .end annotation
.end field

.field m_notifyTargetControllerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/nt/NtUnitController;",
            ">;"
        }
    .end annotation
.end field

.field private m_notifyUnitEnabled:Z

.field private m_tagProxy:Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;

.field private m_taggedGroupFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

.field private m_undoBySelf:Z

.field private m_undoEditContext:Lcom/metamoji/df/controller/EditContext;

.field private m_undoModel:Lcom/metamoji/df/model/IModel;

.field private m_undoRegistering:Z


# direct methods
.method public static synthetic $r8$lambda$-uwCoZGNoyyh43xTL-avfawAokI(Lcom/metamoji/un/draw2/unit/DrUnUnitContext;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->lambda$focusToUnit$4(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fg4xCxun_MfmsgWPaXa0Lar4fhM(Lcom/metamoji/un/draw2/unit/DrUnUnitContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->lambda$focusToUnit$3(Lcom/metamoji/nt/NtUnitController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GhZNa-d8eNRBBeGd_3R6fnS15Wg(Lcom/metamoji/un/draw2/unit/DrUnUnitContext;Lcom/metamoji/nt/NtFocusOption;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->lambda$blurAtPoint$5(Lcom/metamoji/nt/NtFocusOption;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MZa_rW-otVJx9u15aFjT7BtKq-o(Lcom/metamoji/un/draw2/unit/DrUnUnitContext;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->lambda$setCanvasQueueing$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$sJV65Ph_QqGw7G90IhTRFGOxkxM(Lcom/metamoji/un/draw2/unit/DrUnUnitContext;Lcom/metamoji/nt/NtUnitController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->lambda$notifyUnit$1(Lcom/metamoji/nt/NtUnitController;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;-><init>()V

    const v0, 0x186a0

    .line 101
    iput v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_externalFingerCount:I

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_externalOverlayCount:I

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyUnitEnabled:Z

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_delayNotifyUnit:Z

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->setExternalDisplayZoom(F)V

    return-void
.end method

.method public static arrowPenStyleFromNtPenStyle(Lcom/metamoji/nt/share/NtPenStyle;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;
    .locals 4

    .line 2141
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->newArrowPenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object p1

    .line 2142
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineWidth(F)V

    .line 2143
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineColorWithColor(Ljava/lang/Integer;)V

    .line 2144
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineAlpha:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineAlpha(F)V

    .line 2145
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineDash:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineDash(Ljava/util/List;)V

    .line 2146
    iget-boolean v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasFill:Z

    if-eqz v0, :cond_4

    .line 2147
    const-string/jumbo v0, "standard"

    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2148
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    .line 2149
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2150
    new-array v0, v2, [Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setFillColors(Ljava/util/List;)V

    goto :goto_0

    .line 2152
    :cond_0
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setFillColors(Ljava/util/List;)V

    .line 2154
    :goto_0
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setFillAlpha(F)V

    goto :goto_2

    .line 2155
    :cond_1
    const-string v0, "gradation"

    iget-object v3, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2156
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->GRADATION_LEFTTOP_RIGHTBOTTOM:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    .line 2157
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 2158
    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setFillColors(Ljava/util/List;)V

    goto :goto_1

    .line 2160
    :cond_2
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillColors:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setFillColors(Ljava/util/List;)V

    .line 2162
    :goto_1
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->fillAlpha:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setFillAlpha(F)V

    goto :goto_2

    .line 2164
    :cond_3
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    goto :goto_2

    .line 2167
    :cond_4
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    .line 2169
    :goto_2
    iget-object v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->inkId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setInkId(Ljava/lang/String;)V

    .line 2170
    iget-boolean v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->hasArrow:Z

    if-eqz v0, :cond_9

    .line 2171
    const-string v0, "default"

    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowKinds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2172
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->HAT:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadType(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;)V

    goto :goto_3

    .line 2174
    :cond_5
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadType(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;)V

    .line 2176
    :goto_3
    const-string/jumbo v0, "start"

    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2177
    sget-object p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->START:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadPosition(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;)V

    return-object p1

    .line 2178
    :cond_6
    const-string v0, "end"

    iget-object v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2179
    sget-object p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->END:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadPosition(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;)V

    return-object p1

    .line 2180
    :cond_7
    const-string v0, "both"

    iget-object p0, p0, Lcom/metamoji/nt/share/NtPenStyle;->arrowType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 2181
    sget-object p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->BOTH:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadPosition(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;)V

    return-object p1

    .line 2183
    :cond_8
    sget-object p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadPosition(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;)V

    return-object p1

    .line 2186
    :cond_9
    sget-object p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadType(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;)V

    .line 2187
    sget-object p0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadPosition(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;)V

    return-object p1
.end method

.method public static calligraphicPenStyleFromNtPenStyle(Lcom/metamoji/nt/share/NtPenStyle;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;
    .locals 3

    .line 2077
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->newCalligraphicPenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    move-result-object p1

    .line 2078
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineWidth()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setLineWidth(F)V

    .line 2079
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setLineColorWithColor(Ljava/lang/Integer;)V

    .line 2080
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setLineAlpha(F)V

    .line 2081
    const-string v0, "gradation"

    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2082
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->GRADATION:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setInkType(Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;)V

    goto :goto_0

    .line 2083
    :cond_0
    const-string v0, "2colors"

    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2084
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->TWO_COLORS:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setInkType(Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;)V

    goto :goto_0

    .line 2086
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setInkType(Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;)V

    .line 2088
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2089
    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setInkColors(Ljava/util/List;)V

    goto :goto_1

    .line 2091
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setInkColors(Ljava/util/List;)V

    .line 2093
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getPenAngle()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setPenAngle(F)V

    .line 2094
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getPenRate()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setPenRate(F)V

    .line 2095
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setInkId(Ljava/lang/String;)V

    return-object p1
.end method

.method public static fountainPenStyleFromNtPenStyle(Lcom/metamoji/nt/share/NtPenStyle;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;
    .locals 3

    .line 2100
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->newFountainPenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    move-result-object p1

    .line 2101
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineWidth()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setLineWidth(F)V

    .line 2102
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setLineColorWithColor(Ljava/lang/Integer;)V

    .line 2103
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setLineAlpha(F)V

    .line 2104
    const-string v0, "gradation"

    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2105
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->GRADATION:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setInkType(Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;)V

    goto :goto_0

    .line 2106
    :cond_0
    const-string v0, "2colors"

    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2107
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->TWO_COLORS:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setInkType(Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;)V

    goto :goto_0

    .line 2109
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setInkType(Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;)V

    .line 2111
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2112
    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setInkColors(Ljava/util/List;)V

    goto :goto_1

    .line 2114
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setInkColors(Ljava/util/List;)V

    .line 2116
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setInkId(Ljava/lang/String;)V

    .line 2118
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTrans(F)V

    .line 2119
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStay:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginStay(F)V

    .line 2120
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayRate:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginStayRate(F)V

    .line 2121
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginStayDelta:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginStayDelta(F)V

    .line 2122
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRun:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginRun(F)V

    .line 2123
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunRate:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginRunRate(F)V

    .line 2124
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->beginRunDelta:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginRunDelta(F)V

    .line 2125
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStay:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndStay(F)V

    .line 2126
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayRate:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndStayRate(F)V

    .line 2127
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endStayDelta:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndStayDelta(F)V

    .line 2128
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRun:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndRun(F)V

    .line 2129
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunRate:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndRunRate(F)V

    .line 2130
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->endRunDelta:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndRunDelta(F)V

    .line 2131
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStay:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailStay(F)V

    .line 2132
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayRate:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailStayRate(F)V

    .line 2133
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailStayDelta:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailStayDelta(F)V

    .line 2134
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRun:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailRun(F)V

    .line 2135
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunRate:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailRunRate(F)V

    .line 2136
    iget p0, p0, Lcom/metamoji/nt/share/NtPenStyle;->tailRunDelta:F

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailRunDelta(F)V

    return-object p1
.end method

.method private synthetic lambda$blurAtPoint$5(Lcom/metamoji/nt/NtFocusOption;)V
    .locals 1

    .line 1989
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/nt/INtAppFrame;->requestKillFocus(Lcom/metamoji/nt/NtFocusOption;)V

    return-void
.end method

.method static synthetic lambda$dismissContextMenuWithAnimation$2()V
    .locals 1

    .line 1777
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->isCurrentPopupVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1778
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->closeMenu()Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$focusToUnit$3(Lcom/metamoji/nt/NtUnitController;)V
    .locals 1

    .line 1931
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/nt/INtAppFrame;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)V

    return-void
.end method

.method private synthetic lambda$focusToUnit$4(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)V
    .locals 1

    .line 1950
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/metamoji/nt/INtAppFrame;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)V

    return-void
.end method

.method private synthetic lambda$notifyUnit$1(Lcom/metamoji/nt/NtUnitController;Ljava/lang/String;)V
    .locals 11

    .line 857
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_forciblyNotifyGeometricNumbersMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 865
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 871
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_forciblyNotifyGeometricNumbersMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_forciblyNotifyGeometricNumbersMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_3

    .line 873
    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_forciblyNotifyGeometricNumbersMap:Ljava/util/HashMap;

    :cond_3
    const/4 p2, 0x0

    .line 877
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    const/4 v2, 0x1

    .line 878
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    const/4 v3, 0x2

    .line 879
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const/4 v4, 0x3

    .line 880
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/4 v5, 0x4

    .line 881
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/4 v6, 0x5

    .line 882
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 883
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getX()F

    move-result v7

    invoke-static {p2, v7, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 884
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getY()F

    move-result v7

    invoke-static {v2, v7, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 885
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getWidth()F

    move-result v7

    invoke-static {v3, v7, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 886
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getHeight()F

    move-result v7

    invoke-static {v4, v7, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v7

    if-eqz v7, :cond_5

    float-to-double v7, v5

    .line 887
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getRotation()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v7

    if-eqz v7, :cond_5

    float-to-double v7, v0

    .line 888
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getContentScale()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    .line 890
    :cond_5
    :goto_1
    new-instance v6, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v6}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 891
    invoke-static {p2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p2

    iput-object p2, v6, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 892
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object p2

    iput-object p2, v6, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 893
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, v6, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    .line 894
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iput-object p2, v6, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    .line 897
    sget-object p2, Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;->None:Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;

    invoke-virtual {p1, v6, v1, p2}, Lcom/metamoji/nt/NtUnitController;->setGeometricProps(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;)V

    return-void
.end method

.method private synthetic lambda$setCanvasQueueing$0(Z)V
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Stage;->setQueueing(Z)V

    return-void
.end method

.method public static simplePenStyleFromNtPenStyle(Lcom/metamoji/nt/share/NtPenStyle;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 4

    .line 2044
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object p1

    .line 2045
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineWidth()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 2046
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineColorWithColor(Ljava/lang/Integer;)V

    .line 2047
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineAlpha(F)V

    .line 2048
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineDash()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineDash(Ljava/util/List;)V

    .line 2049
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getHasFill()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2050
    const-string/jumbo v0, "standard"

    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getFillType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2051
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    .line 2052
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getFillColors()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2053
    new-array v0, v2, [Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillColors(Ljava/util/List;)V

    goto :goto_0

    .line 2055
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getFillColors()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillColors(Ljava/util/List;)V

    .line 2057
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getFillAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillAlpha(F)V

    goto :goto_2

    .line 2058
    :cond_1
    const-string v0, "gradation"

    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getFillType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2059
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->GRADATION_LEFTTOP_RIGHTBOTTOM:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    .line 2060
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getFillColors()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 2061
    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillColors(Ljava/util/List;)V

    goto :goto_1

    .line 2063
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getFillColors()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillColors(Ljava/util/List;)V

    .line 2065
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getFillAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillAlpha(F)V

    goto :goto_2

    .line 2067
    :cond_3
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    goto :goto_2

    .line 2070
    :cond_4
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    .line 2072
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setInkId(Ljava/lang/String;)V

    return-object p1
.end method

.method public static variationFromGeometricProps(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_1a

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 2204
    :cond_0
    iget-object v1, p0, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    const/high16 v2, 0x7fc00000    # Float.NaN

    if-eqz v1, :cond_1

    .line 2205
    iget-object v1, p0, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 2206
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidPoint(Landroid/graphics/PointF;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x0

    .line 2207
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 2208
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    goto :goto_0

    .line 2211
    :cond_1
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    .line 2214
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    if-eqz v3, :cond_3

    .line 2215
    iget-object v3, p0, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 2216
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidSize(Lcom/metamoji/cm/SizeF;)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v3, 0x1

    .line 2217
    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 2218
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v3

    goto :goto_1

    .line 2221
    :cond_3
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v3

    .line 2224
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    if-eqz v4, :cond_5

    .line 2225
    iget-object v4, p0, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 2226
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v4, 0x2

    .line 2227
    invoke-static {v4, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_5
    move v4, v2

    .line 2234
    :cond_6
    iget-object v5, p0, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    if-eqz v5, :cond_8

    .line 2235
    iget-object p0, p0, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 2236
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkValidFloat(F)Z

    move-result v5

    if-nez v5, :cond_7

    const/4 p0, 0x3

    .line 2237
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    :cond_7
    move v2, p0

    .line 2251
    :cond_8
    :goto_2
    sget-object p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v5

    aget p0, p0, v5

    const/4 v5, 0x4

    if-eq p0, v5, :cond_9

    .line 2284
    invoke-static {v5, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 2254
    :cond_9
    move-object p0, p1

    check-cast p0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object p0

    .line 2257
    iget v5, v1, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v5

    if-nez v5, :cond_a

    iget v5, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2258
    :cond_a
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->originOf(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v1

    .line 2260
    :cond_b
    iget v5, v3, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v5

    if-nez v5, :cond_c

    iget v5, v3, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2261
    :cond_c
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v3

    .line 2263
    :cond_d
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2264
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->angleInRadians()F

    move-result v4

    .line 2266
    :cond_e
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2267
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->contentScale()F

    move-result v2

    .line 2271
    :cond_f
    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, p0, Lcom/metamoji/cm/RectEx;->x:F

    sub-float/2addr v5, v6

    .line 2272
    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr v1, v6

    .line 2273
    iget v6, p0, Lcom/metamoji/cm/RectEx;->width:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v6, :cond_10

    iget v6, v3, Lcom/metamoji/cm/SizeF;->width:F

    iget v9, p0, Lcom/metamoji/cm/RectEx;->width:F

    div-float/2addr v6, v9

    goto :goto_3

    :cond_10
    move v6, v8

    .line 2274
    :goto_3
    iget v9, p0, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v9, v9, v7

    if-eqz v9, :cond_11

    iget v3, v3, Lcom/metamoji/cm/SizeF;->height:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    div-float/2addr v3, p0

    goto :goto_4

    :cond_11
    move v3, v8

    .line 2275
    :goto_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->angleInRadians()F

    move-result p0

    sub-float/2addr v4, p0

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p0

    .line 2276
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->contentScale()F

    move-result v4

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_12

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->contentScale()F

    move-result p1

    div-float/2addr v2, p1

    goto :goto_5

    :cond_12
    move v2, v8

    :goto_5
    const/4 p1, 0x5

    .line 2289
    invoke-static {v5, v7, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    if-eqz v4, :cond_13

    move v5, v7

    .line 2292
    :cond_13
    invoke-static {v1, v7, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    if-eqz v4, :cond_14

    move v1, v7

    .line 2295
    :cond_14
    invoke-static {v6, v8, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    if-eqz v4, :cond_15

    move v6, v8

    .line 2298
    :cond_15
    invoke-static {v3, v8, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    if-eqz v4, :cond_16

    move v3, v8

    .line 2301
    :cond_16
    invoke-static {p0, v7, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    if-eqz v4, :cond_17

    move p0, v7

    .line 2304
    :cond_17
    invoke-static {v2, v8, p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p1

    if-eqz p1, :cond_18

    move v2, v8

    :cond_18
    cmpl-float p1, v5, v7

    if-nez p1, :cond_19

    cmpl-float p1, v1, v7

    if-nez p1, :cond_19

    cmpl-float p1, v6, v8

    if-nez p1, :cond_19

    cmpl-float p1, v3, v8

    if-nez p1, :cond_19

    cmpl-float p1, p0, v7

    if-nez p1, :cond_19

    cmpl-float p1, v2, v8

    if-nez p1, :cond_19

    return-object v0

    .line 2312
    :cond_19
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initRectTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p1

    .line 2313
    invoke-virtual {p1, v5}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateX(F)V

    .line 2314
    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateY(F)V

    .line 2315
    invoke-virtual {p1, v6}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleWidth(F)V

    .line 2316
    invoke-virtual {p1, v3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleHeight(F)V

    .line 2317
    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setAngleInDegrees(F)V

    .line 2318
    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setContentScale(F)V

    return-object p1

    :cond_1a
    :goto_6
    return-object v0
.end method


# virtual methods
.method public applicationIsCollaborating()Z
    .locals 2

    .line 1323
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1327
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public areaBounds()Lcom/metamoji/cm/RectEx;
    .locals 6

    .line 381
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 382
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_1

    .line 386
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0

    .line 392
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 401
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    .line 404
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getDrawBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 405
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->matrixFromLocalToGlobal(Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 413
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 414
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    .line 416
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    .line 417
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    .line 418
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v2, v3, v1

    sub-float v5, v4, v1

    add-float/2addr v3, v1

    add-float/2addr v4, v1

    .line 419
    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 424
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->matrixFromGlobalToLocal(Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 425
    new-instance v1, Lcom/metamoji/cm/RectEx;

    invoke-direct {v1, v0}, Lcom/metamoji/cm/RectEx;-><init>(Landroid/graphics/RectF;)V

    return-object v1

    :cond_3
    const/4 v0, 0x1

    .line 408
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method public autoWristGuardEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public autoWristGuardForLefty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method blurAtPoint(Landroid/graphics/PointF;Z)V
    .locals 1

    .line 1979
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1980
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1983
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1986
    :cond_1
    new-instance v0, Lcom/metamoji/nt/NtFocusOption;

    invoke-direct {v0}, Lcom/metamoji/nt/NtFocusOption;-><init>()V

    .line 1987
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtFocusOption;->setTapPos(Landroid/graphics/PointF;)V

    if-eqz p2, :cond_2

    .line 1989
    new-instance p1, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/un/draw2/unit/DrUnUnitContext;Lcom/metamoji/nt/NtFocusOption;)V

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void

    .line 1991
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/metamoji/nt/INtAppFrame;->requestKillFocus(Lcom/metamoji/nt/NtFocusOption;)V

    return-void
.end method

.method blurOnBackgroundThread(Z)V
    .locals 1

    .line 1960
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1961
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1964
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 1968
    new-instance p1, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$1;

    invoke-direct {p1, p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$1;-><init>(Lcom/metamoji/un/draw2/unit/DrUnUnitContext;)V

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void

    .line 1974
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/nt/INtAppFrame;->requestKillFocus()V

    return-void
.end method

.method public cancelInitialization()Z
    .locals 1

    .line 502
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controllerContext()Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controllerContext()Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/controller/ControllerContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canvasPointFromStagePoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 1803
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 1804
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1805
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 1807
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 1808
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1809
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 1811
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1812
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 1814
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->localPointFromGlobalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public canvasQueueing()Z
    .locals 2

    .line 472
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 475
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 476
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 482
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->isQueueing()Z

    move-result v0

    return v0
.end method

.method public canvasRectFromStageRect(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 1834
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 1835
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1836
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1

    .line 1838
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 1839
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1840
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1

    .line 1842
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1843
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1

    .line 1845
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/cm/RectEx;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    .line 1846
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getStageInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1847
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->matrixFromGlobalToLocal(Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1848
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0, p1}, Lcom/metamoji/cm/RectEx;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public canvasZoom()F
    .locals 7

    .line 336
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 337
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 343
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 346
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->externalDisplayZoom()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 347
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->externalDisplayZoom()F

    move-result v0

    return v0

    .line 352
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v0

    .line 353
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_6

    .line 355
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->scaleX(Lcom/metamoji/df/sprite/Sprite;)F

    move-result v3

    .line 356
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->scaleY(Lcom/metamoji/df/sprite/Sprite;)F

    move-result v4

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_4

    float-to-double v5, v0

    mul-float/2addr v3, v4

    float-to-double v3, v3

    .line 358
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v5, v3

    double-to-float v0, v5

    goto :goto_1

    :cond_4
    cmpl-float v4, v3, v1

    if-eqz v4, :cond_5

    mul-float/2addr v0, v3

    .line 364
    :cond_5
    :goto_1
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->parent(Lcom/metamoji/df/sprite/Sprite;)Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    goto :goto_0

    :cond_6
    return v0
.end method

.method public checkDrawabilityAtPoint(Landroid/graphics/PointF;)Z
    .locals 5

    .line 430
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 431
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 439
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 440
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->restrictDrawAreaToPage()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 442
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsEmpty(Lcom/metamoji/cm/RectEx;)Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, p1, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v3, v2

    if-ltz v3, :cond_2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    .line 443
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    iget v4, v4, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v3, v2

    if-ltz v3, :cond_2

    iget v3, p1, Landroid/graphics/PointF;->y:F

    .line 444
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    iget v4, v4, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    :cond_2
    return v1

    .line 451
    :cond_3
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getPaperWidth()F

    move-result v3

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getPaperHeight()F

    move-result v4

    invoke-direct {v1, v2, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 452
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->matrixFromLocalToGlobal(Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 457
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->globalPointFromLocalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectContainsPoint(Landroid/graphics/RectF;Landroid/graphics/PointF;)Z

    move-result p1

    return p1

    .line 459
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsEmpty(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    return v3

    .line 464
    :cond_5
    iget v0, p1, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6

    iget v0, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    iget v4, v4, Lcom/metamoji/cm/RectEx;->width:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_6

    iget v0, p1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_6

    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 465
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/cm/RectEx;->height:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_6

    return v3

    :cond_6
    return v1
.end method

.method public checkNewTypeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z
    .locals 2

    .line 1193
    sget-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1195
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$2;->$SwitchMap$com$metamoji$un$draw2$module$element$arrow$DrArrowType:[I

    check-cast p1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->arrowType()Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method public checkOwnElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1173
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 1176
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->information()Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 1179
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->information()Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->createAuthorInfoFromInformation(Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;)Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1180
    invoke-static {p1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->isAuthorMyself(Lcom/metamoji/nt/NtAuthorInfo;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method public classifyGroupFramesAndStylesForGroupFrameMap(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/cm/RectEx;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/cm/RectEx;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1039
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    .line 1043
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    const/4 p1, 0x2

    .line 1047
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1050
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 1051
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1053
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1054
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 1056
    :cond_4
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_4

    .line 1063
    :cond_5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1064
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1065
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1067
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1068
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1069
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/cm/RectEx;

    .line 1070
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->tagProxy()Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->checkTaggedGroupWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1071
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1078
    :cond_6
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1083
    :cond_7
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 1085
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_taggedGroupFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-nez p1, :cond_8

    .line 1086
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->defaultGroupFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_taggedGroupFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 1087
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseColor3:Ljava/lang/Integer;

    invoke-virtual {p1, v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineColorWithColor(Ljava/lang/Integer;)V

    .line 1091
    :cond_8
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/cm/RectEx;

    .line 1092
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1093
    iget-object v4, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_taggedGroupFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1097
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1102
    :cond_9
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_b

    .line 1104
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_lockedGroupFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-nez p1, :cond_a

    .line 1105
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->defaultGroupFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_lockedGroupFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 1106
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseColor2:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineColorWithColor(Ljava/lang/Integer;)V

    .line 1110
    :cond_a
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cm/RectEx;

    .line 1111
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1112
    iget-object v2, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_lockedGroupFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1115
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1120
    :cond_b
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_c

    .line 1121
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cm/RectEx;

    .line 1122
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1123
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->defaultGroupFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    :goto_4
    return-void
.end method

.method public collaboratingAnotherController()Lcom/metamoji/un/draw2/unit/DrUnUnitController;
    .locals 4

    .line 1295
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1296
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 1299
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1301
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 1305
    :cond_1
    const-string/jumbo v3, "system:edit"

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;)I

    move-result v3

    .line 1306
    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 1308
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 1311
    :cond_2
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtLayerController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1312
    instance-of v1, v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    if-nez v1, :cond_3

    goto :goto_0

    .line 1316
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v1

    if-eq v0, v1, :cond_4

    check-cast v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    return-object v0

    :cond_4
    return-object v2

    :cond_5
    :goto_0
    const/4 v0, 0x3

    .line 1313
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2
.end method

.method public contextMenuIsVisible()Z
    .locals 1

    .line 1768
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->isCurrentPopupVisible()Z

    move-result v0

    return v0
.end method

.method public controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;
    .locals 1

    .line 1263
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_controller:Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    return-object v0
.end method

.method public controllerContext()Lcom/metamoji/df/controller/ControllerContext;
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_controllerContext:Lcom/metamoji/df/controller/ControllerContext;

    return-object v0
.end method

.method public controllerIsClosing()Z
    .locals 1

    .line 1277
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_controllerIsClosing:Z

    return v0
.end method

.method public createAuthorInfoFromInformation(Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;)Lcom/metamoji/nt/NtAuthorInfo;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1872
    :cond_0
    new-instance v0, Lcom/metamoji/nt/NtAuthorInfo;

    invoke-direct {v0}, Lcom/metamoji/nt/NtAuthorInfo;-><init>()V

    .line 1873
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtAuthorInfo;->setUserId(Ljava/lang/String;)V

    .line 1874
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtAuthorInfo;->setDcUserId(Ljava/lang/String;)V

    .line 1875
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtAuthorInfo;->setDcUserName(Ljava/lang/String;)V

    .line 1876
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creatorGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtAuthorInfo;->setCompanyId(Ljava/lang/String;)V

    .line 1877
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creationTime()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1878
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->creationTime()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtAuthorInfo;->setActionTime(D)V

    .line 1880
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->collaborationRoom()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtAuthorInfo;->setRoomId(Ljava/lang/String;)V

    return-object v0
.end method

.method public createUnitByModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtUnitController;
    .locals 3

    .line 629
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 630
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 636
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    if-nez v0, :cond_1

    .line 640
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {p1, v0, v2}, Lcom/metamoji/df/controller/DfUtility;->attachChildControllerFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/DfController;I)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    .line 648
    instance-of p1, v0, Lcom/metamoji/nt/NtUnitController;

    if-nez p1, :cond_2

    goto :goto_0

    .line 653
    :cond_2
    const-class p1, Lcom/metamoji/nt/NtUnitController;

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtUnitController;

    return-object p1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    .line 649
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1
.end method

.method public currentCollaborationBoothId()Ljava/lang/String;
    .locals 3

    .line 1334
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1335
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1338
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1340
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1343
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v0, 0x2

    .line 1345
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1348
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->boothIdWithPageId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public currentEditType()Lcom/metamoji/nt/NtDocument$EditMode;
    .locals 2

    .line 1363
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1364
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1365
    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    return-object v0

    .line 1367
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1369
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1370
    sget-object v0, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    return-object v0

    .line 1372
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object v0

    return-object v0
.end method

.method public currentEraserStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 4

    .line 1559
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtEraserSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtEraserSettings;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1561
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEraserSettings;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtEraserSettings;->getEraserAt(I)Lcom/metamoji/nt/NtEraserStyle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1563
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1569
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEraserStyle;->getLineWidth()F

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 1571
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/high16 v0, 0x41c80000    # 25.0f

    .line 1575
    :goto_1
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v1

    .line 1576
    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 1577
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->eraserLineColorR()I

    move-result v0

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->eraserLineColorG()I

    move-result v2

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->eraserLineColorB()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineColorRGB(III)V

    .line 1578
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->eraserLineAlpha()D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineAlpha(F)V

    .line 1579
    sget-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->ERASER_LINE_CAP:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 1580
    sget-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->ERASER_LINE_JOIN:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    .line 1581
    sget-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->ERASER_LINE_DASH:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineDash(Ljava/util/List;)V

    return-object v1
.end method

.method public currentGroupFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 5

    const/4 v0, 0x0

    .line 1517
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 1518
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 1519
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->groupFrameLineColorR()I

    move-result v2

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->groupFrameLineColorG()I

    move-result v3

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->groupFrameLineColorB()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineColorRGB(III)V

    .line 1520
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->groupFrameLineAlpha()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineAlpha(F)V

    .line 1521
    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->GROUP_FRAME_LINE_CAP:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 1522
    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->GROUP_FRAME_LINE_JOIN:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    const/4 v2, 0x2

    .line 1523
    new-array v2, v2, [Ljava/lang/Float;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineDash(Ljava/util/List;)V

    return-object v0
.end method

.method public currentLassoStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 5

    const/4 v0, 0x0

    .line 1492
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    .line 1498
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 1493
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 1494
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->lassoLineColorR()I

    move-result v1

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->lassoLineColorG()I

    move-result v3

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->lassoLineColorB()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineColorRGB(III)V

    .line 1495
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->lassoLineAlpha()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineAlpha(F)V

    .line 1496
    sget-object v1, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->LASSO_LINE_CAP:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 1497
    sget-object v1, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->LASSO_LINE_JOIN:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    const/4 v1, 0x2

    .line 1498
    new-array v1, v1, [Ljava/lang/Float;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineDash(Ljava/util/List;)V

    .line 1499
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    .line 1500
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->lassoFillColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillColors(Ljava/util/List;)V

    .line 1501
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->lassoFillAlpha()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillAlpha(F)V

    return-object v0
.end method

.method public currentLongPressEffectStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 5

    const/4 v0, 0x0

    .line 1589
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    .line 1595
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 1590
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 1591
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->lassoLineColorR()I

    move-result v1

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->lassoLineColorG()I

    move-result v3

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->lassoLineColorB()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineColorRGB(III)V

    .line 1592
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->lassoLineAlpha()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineAlpha(F)V

    .line 1593
    sget-object v1, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->LONG_PRESS_EFFECT_LINE_CAP:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 1594
    sget-object v1, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->LONG_PRESS_EFFECT_LINE_JOIN:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    const/4 v1, 0x2

    .line 1595
    new-array v1, v1, [Ljava/lang/Float;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineDash(Ljava/util/List;)V

    .line 1596
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->lassoFillColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillColors(Ljava/util/List;)V

    .line 1597
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->lassoFillAlpha()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillAlpha(F)V

    return-object v0
.end method

.method public currentMaskStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 4

    const/4 v0, 0x0

    .line 1602
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1603
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    const/16 v1, 0x33

    .line 1604
    invoke-virtual {v0, v1, v1, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineColorRGB(III)V

    const v2, 0x3ecccccd    # 0.4f

    .line 1605
    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineAlpha(F)V

    .line 1606
    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->MASK_LINE_CAP:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 1607
    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->MASK_LINE_JOIN:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    .line 1608
    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->MASK_LINE_DASH:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineDash(Ljava/util/List;)V

    .line 1609
    sget-object v2, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->STANDARD:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    const/4 v2, 0x1

    .line 1610
    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillColors(Ljava/util/List;)V

    const v1, 0x3e4ccccd    # 0.2f

    .line 1611
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillAlpha(F)V

    return-object v0
.end method

.method public currentPenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
    .locals 4

    .line 1462
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1464
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1466
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_8

    .line 1471
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v2

    .line 1472
    const-string/jumbo v3, "standard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "markerpen"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 1474
    :cond_1
    const-string v3, "calligraphy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1475
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->calligraphicPenStyleFromNtPenStyle(Lcom/metamoji/nt/share/NtPenStyle;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    move-result-object v0

    return-object v0

    .line 1476
    :cond_2
    const-string v3, "fountainpen"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1477
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->fountainPenStyleFromNtPenStyle(Lcom/metamoji/nt/share/NtPenStyle;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    move-result-object v0

    return-object v0

    .line 1478
    :cond_3
    const-string/jumbo v3, "shapepen"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "shapemarkerpen"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    .line 1481
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_3

    .line 1479
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getHasArrow()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->arrowPenStyleFromNtPenStyle(Lcom/metamoji/nt/share/NtPenStyle;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->simplePenStyleFromNtPenStyle(Lcom/metamoji/nt/share/NtPenStyle;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    return-object v0

    .line 1473
    :cond_7
    :goto_2
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->simplePenStyleFromNtPenStyle(Lcom/metamoji/nt/share/NtPenStyle;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x2

    .line 1484
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1488
    :goto_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->defaultSimplePenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    return-object v0
.end method

.method public currentPenType()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;
    .locals 3

    .line 1395
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1397
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1398
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    return-object v0

    .line 1400
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1402
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1403
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    return-object v0

    .line 1405
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1406
    const-string/jumbo v2, "standard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "markerpen"

    .line 1407
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 1409
    :cond_2
    const-string v2, "calligraphy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1410
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->CALLIGRAPHIC:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    return-object v0

    .line 1411
    :cond_3
    const-string v2, "fountainpen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1412
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->FOUNTAIN:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    return-object v0

    .line 1413
    :cond_4
    const-string/jumbo v2, "shapepen"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "shapemarkerpen"

    .line 1414
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 1418
    :cond_5
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    return-object v0

    .line 1415
    :cond_6
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getHasArrow()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ARROW:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    return-object v0

    :cond_7
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    return-object v0

    .line 1408
    :cond_8
    :goto_1
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->SIMPLE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    return-object v0
.end method

.method public currentRubberBandFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 4

    const/4 v0, 0x0

    .line 1506
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    .line 1507
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 1508
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->rubberBandFrameLineColorR()I

    move-result v1

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->rubberBandFrameLineColorG()I

    move-result v2

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->rubberBandFrameLineColorB()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineColorRGB(III)V

    .line 1509
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->rubberBandFrameLineAlpha()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineAlpha(F)V

    .line 1510
    sget-object v1, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->RUBBER_BAND_FRAME_LINE_CAP:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 1511
    sget-object v1, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->RUBBER_BAND_FRAME_LINE_JOIN:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    const/4 v1, 0x2

    .line 1512
    new-array v1, v1, [Ljava/lang/Float;

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineDash(Ljava/util/List;)V

    return-object v0
.end method

.method public currentShapeFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 4

    const/4 v0, 0x0

    .line 1541
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1542
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    const/16 v1, 0x96

    const/4 v2, 0x0

    const/16 v3, 0xff

    .line 1543
    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineColorRGB(III)V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 1544
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineAlpha(F)V

    .line 1551
    sget-object v1, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->SHAPE_FRAME_LINE_CAP:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 1552
    sget-object v1, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->SHAPE_FRAME_LINE_JOIN:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    return-object v0
.end method

.method public currentToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;
    .locals 2

    .line 1379
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1380
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1381
    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->NONE:Lcom/metamoji/nt/NtDocument$ToolMode;

    return-object v0

    .line 1383
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1385
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1386
    sget-object v0, Lcom/metamoji/nt/NtDocument$ToolMode;->NONE:Lcom/metamoji/nt/NtDocument$ToolMode;

    return-object v0

    .line 1388
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getToolMode()Lcom/metamoji/nt/NtDocument$ToolMode;

    move-result-object v0

    return-object v0
.end method

.method public currentUnitFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 5

    const/4 v0, 0x0

    .line 1528
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 1529
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 1530
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameLineColorR()I

    move-result v1

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameLineColorG()I

    move-result v2

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameLineColorB()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineColorRGB(III)V

    .line 1531
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameLineAlpha()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineAlpha(F)V

    .line 1532
    sget-object v1, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->UNIT_FRAME_LINE_CAP:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 1533
    sget-object v1, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->UNIT_FRAME_LINE_JOIN:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    const/4 v1, 0x2

    .line 1534
    new-array v1, v1, [Ljava/lang/Float;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineDash(Ljava/util/List;)V

    .line 1535
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameFillColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillColors(Ljava/util/List;)V

    .line 1536
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameFillAlpha()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillAlpha(F)V

    return-object v0
.end method

.method public defaultArrowPenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultArrowPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 580
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->newArrowPenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultArrowPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    const/high16 v2, 0x40000000    # 2.0f

    .line 581
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineWidth(F)V

    .line 582
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultArrowPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineColorRGB(III)V

    .line 585
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultArrowPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineAlpha(F)V

    .line 586
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultArrowPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->ARROW_STROKE_LINE_CAP:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 587
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultArrowPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->ARROW_STROKE_LINE_JOIN:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    .line 588
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultArrowPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->ARROW_STROKE_LINE_DASH:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setLineDash(Ljava/util/List;)V

    .line 589
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultArrowPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->ARROW_STROKE_FILL_TYPE:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    .line 590
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultArrowPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->ARROW_STROKE_FILL_COLORS:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setFillColors(Ljava/util/List;)V

    .line 591
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultArrowPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setFillAlpha(F)V

    .line 592
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultArrowPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->ARROW_STROKE_HEAD_TYPE:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadType(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;)V

    .line 593
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultArrowPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->ARROW_STROKE_HEAD_POSITION:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadPosition(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;)V

    .line 594
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultArrowPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setInkId(Ljava/lang/String;)V

    return-object v0
.end method

.method public defaultCalligraphicPenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;
    .locals 5

    .line 526
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultCalligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 529
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->newCalligraphicPenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultCalligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    const/high16 v2, 0x40000000    # 2.0f

    .line 530
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setLineWidth(F)V

    .line 531
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultCalligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setLineColorRGB(III)V

    .line 532
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultCalligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setLineAlpha(F)V

    .line 533
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultCalligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    sget-object v3, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->CALLIGRAPHIC_STROKE_INK_TYPE:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setInkType(Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;)V

    .line 534
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultCalligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setInkColors(Ljava/util/List;)V

    .line 535
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultCalligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    const/high16 v2, 0x43610000    # 225.0f

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setPenAngle(F)V

    .line 536
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultCalligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    const v2, 0x3cf5c28f    # 0.03f

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setPenRate(F)V

    .line 537
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultCalligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->setInkId(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultCalligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    return-object v0
.end method

.method public defaultFountainPenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;
    .locals 5

    .line 543
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 546
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->newFountainPenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    const/high16 v2, 0x40000000    # 2.0f

    .line 547
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setLineWidth(F)V

    .line 548
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setLineColorRGB(III)V

    .line 549
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setLineAlpha(F)V

    .line 550
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    sget-object v3, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->FOUNTAIN_STROKE_INK_TYPE:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;

    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setInkType(Lcom/metamoji/un/draw2/library/style/pen/DrStFountainInkType;)V

    .line 551
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->lineColor()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setInkColors(Ljava/util/List;)V

    .line 552
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setInkId(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    const v1, 0x3ea8f5c3    # 0.33f

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTrans(F)V

    .line 554
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginStay(F)V

    .line 555
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginStayRate(F)V

    .line 556
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginStayDelta(F)V

    .line 557
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    const v3, 0x3f666666    # 0.9f

    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginRun(F)V

    .line 558
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginRunRate(F)V

    .line 559
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setBeginRunDelta(F)V

    .line 560
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    const v4, 0x3f99999a    # 1.2f

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndStay(F)V

    .line 561
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndStayRate(F)V

    .line 562
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndStayDelta(F)V

    .line 563
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndRun(F)V

    .line 564
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndRunRate(F)V

    .line 565
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setEndRunDelta(F)V

    .line 566
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailStay(F)V

    .line 567
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailStayRate(F)V

    .line 568
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailStayDelta(F)V

    .line 569
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailRun(F)V

    .line 570
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailRunRate(F)V

    .line 571
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->setTailRunDelta(F)V

    .line 572
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    return-object v0
.end method

.method public defaultSimplePenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultSimplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 510
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultSimplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    const/high16 v2, 0x40000000    # 2.0f

    .line 511
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 512
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultSimplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineColorRGB(III)V

    .line 513
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultSimplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineAlpha(F)V

    .line 514
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultSimplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->SIMPLE_STROKE_LINE_CAP:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 515
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultSimplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->SIMPLE_STROKE_LINE_JOIN:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    .line 516
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultSimplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->SIMPLE_STROKE_LINE_DASH:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineDash(Ljava/util/List;)V

    .line 517
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultSimplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->SIMPLE_STROKE_FILL_TYPE:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    .line 518
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultSimplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    sget-object v2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->SIMPLE_STROKE_FILL_COLORS:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillColors(Ljava/util/List;)V

    .line 519
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultSimplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillAlpha(F)V

    .line 520
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultSimplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setInkId(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultSimplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-object v0
.end method

.method public delayNotifyUnit()Z
    .locals 1

    .line 726
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_delayNotifyUnit:Z

    return v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1239
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->setController(Lcom/metamoji/un/draw2/unit/DrUnUnitController;)V

    .line 1240
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->setControllerContext(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 1241
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->setUndoEditContext(Lcom/metamoji/df/controller/EditContext;)V

    .line 1242
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->setUndoModel(Lcom/metamoji/df/model/IModel;)V

    .line 1243
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->setTagProxy(Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;)V

    .line 1244
    iput-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultSimplePenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 1245
    iput-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultCalligraphicPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    .line 1246
    iput-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultFountainPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 1247
    iput-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_defaultArrowPenStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    .line 1248
    iput-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_taggedGroupFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 1249
    iput-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_lockedGroupFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 1250
    iput-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyTargetControllerMap:Ljava/util/HashMap;

    .line 1251
    iput-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyGeometricNumbersMap:Ljava/util/HashMap;

    .line 1252
    iput-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_forciblyNotifyGeometricNumbersMap:Ljava/util/HashMap;

    .line 1253
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->destroy()V

    return-void
.end method

.method public destroyUnit(Lcom/metamoji/nt/NtUnitController;)V
    .locals 1

    .line 658
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->checkUnit(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 659
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controllerIsClosing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 666
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->tagProxy()Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->notifyRemovedUnit(Lcom/metamoji/nt/NtUnitController;)V

    .line 669
    invoke-static {p1}, Lcom/metamoji/df/controller/DfUtility;->detachChildController(Lcom/metamoji/df/controller/DfController;)V

    :cond_1
    return-void
.end method

.method public dismissContextMenuWithAnimation(Z)V
    .locals 0

    .line 1776
    new-instance p1, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public displayAngleInDegrees()F
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->displayAngleInRadians()F

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result v0

    return v0
.end method

.method public displayAngleInRadians()F
    .locals 3

    .line 172
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 173
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 184
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->angleInRadians(Lcom/metamoji/df/sprite/Sprite;)F

    move-result v2

    add-float/2addr v1, v2

    .line 185
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->parent(Lcom/metamoji/df/sprite/Sprite;)Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    goto :goto_0

    :cond_2
    neg-float v0, v1

    return v0
.end method

.method public displayBounds()Lcom/metamoji/cm/RectEx;
    .locals 8

    .line 122
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 123
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 124
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    return-object v0

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_1

    .line 127
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    return-object v0

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 134
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v1

    .line 135
    new-instance v2, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getViewportWidth()F

    move-result v4

    add-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getViewportHeight()F

    move-result v5

    add-float/2addr v4, v5

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 136
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->globalPointFromLocalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v1

    .line 137
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->globalPointFromLocalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->localPointFromGlobalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->localPointFromGlobalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->displayAngleInRadians()F

    move-result v2

    neg-float v2, v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    .line 152
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 153
    iget v5, v1, Landroid/graphics/PointF;->y:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    div-float/2addr v5, v4

    .line 156
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    float-to-double v6, v2

    .line 157
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v2, v6

    invoke-virtual {v4, v2, v3, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 158
    invoke-static {v1, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v1

    .line 159
    invoke-static {v0, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v0

    .line 162
    :cond_2
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-static {v2, v3, v4, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x1

    .line 140
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 141
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public displayLeftBottom()Landroid/graphics/PointF;
    .locals 4

    .line 243
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 244
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 245
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_1

    .line 248
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v1

    .line 256
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getViewportHeight()F

    move-result v3

    add-float/2addr v1, v3

    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->globalPointFromLocalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->localPointFromGlobalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x1

    .line 259
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 260
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public displayLeftTop()Landroid/graphics/PointF;
    .locals 3

    .line 194
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 195
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 196
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_1

    .line 199
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 206
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->globalPointFromLocalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->localPointFromGlobalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x1

    .line 209
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 210
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public displayRightBottom()Landroid/graphics/PointF;
    .locals 4

    .line 268
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 269
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 270
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_1

    .line 273
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 280
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v1

    .line 281
    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getViewportWidth()F

    move-result v3

    add-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getViewportHeight()F

    move-result v3

    add-float/2addr v1, v3

    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->globalPointFromLocalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v0

    .line 288
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->localPointFromGlobalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x1

    .line 284
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 285
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public displayRightTop()Landroid/graphics/PointF;
    .locals 4

    .line 218
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 219
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 220
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_1

    .line 223
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 230
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v1

    .line 231
    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getViewportWidth()F

    move-result v3

    add-float/2addr v2, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->globalPointFromLocalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->localPointFromGlobalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x1

    .line 234
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 235
    invoke-static {v2, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public displayTotalBounds()Lcom/metamoji/cm/RectEx;
    .locals 6

    .line 293
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 294
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_1

    .line 298
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 305
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getViewportOffset()Landroid/graphics/PointF;

    move-result-object v1

    .line 306
    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getViewportWidth()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getViewportHeight()F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    .line 307
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->globalPointFromLocalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v1

    .line 308
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->globalPointFromLocalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v0

    .line 316
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->displayAngleInRadians()F

    move-result v2

    neg-float v2, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 319
    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v2

    .line 320
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    .line 321
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->localPointFromGlobalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v1

    .line 322
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->localPointFromGlobalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v2

    .line 323
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->localPointFromGlobalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v3

    .line 324
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->localPointFromGlobalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v0

    .line 321
    invoke-static {v1, v2, v3, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->boundsOfPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0

    .line 326
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->localPointFromGlobalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v1

    .line 327
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->localPointFromGlobalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object v0

    .line 328
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-static {v2, v3, v4, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x1

    .line 311
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method public displayZoom()F
    .locals 2

    .line 375
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 376
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvasZoom()F

    move-result v1

    div-float/2addr v1, v0

    return v1
.end method

.method public editorWindowController()Lcom/metamoji/nt/NtEditorWindowController;
    .locals 1

    .line 1356
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    return-object v0
.end method

.method public externalDisplayZoom()F
    .locals 1

    .line 1737
    iget v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_externalDisplayZoom:F

    return v0
.end method

.method focusToUnit(Lcom/metamoji/nt/NtUnitController;Landroid/graphics/PointF;Z)V
    .locals 1

    .line 1938
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->checkUnit(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1939
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1942
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->focusable(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->noFocusing(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1945
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->globalPointFromLocalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object p2

    .line 1946
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->localPointFromGlobalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object p2

    .line 1947
    new-instance v0, Lcom/metamoji/nt/NtFocusOption;

    invoke-direct {v0}, Lcom/metamoji/nt/NtFocusOption;-><init>()V

    .line 1948
    invoke-virtual {v0, p2}, Lcom/metamoji/nt/NtFocusOption;->setTapPos(Landroid/graphics/PointF;)V

    if-eqz p3, :cond_2

    .line 1950
    new-instance p2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p1, v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/un/draw2/unit/DrUnUnitContext;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)V

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void

    .line 1952
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lcom/metamoji/nt/INtAppFrame;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)V

    :cond_3
    :goto_0
    return-void
.end method

.method focusToUnit(Lcom/metamoji/nt/NtUnitController;Z)V
    .locals 1

    .line 1923
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->checkUnit(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1924
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1927
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->focusable(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->noFocusing(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1931
    new-instance p2, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/draw2/unit/DrUnUnitContext;Lcom/metamoji/nt/NtUnitController;)V

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void

    .line 1933
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/metamoji/nt/INtAppFrame;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public generateExternalFingerNumber()I
    .locals 2

    .line 1855
    iget v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_externalFingerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_externalFingerCount:I

    return v0
.end method

.method public generateExternalOverlayId()I
    .locals 2

    .line 1862
    iget v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_externalOverlayCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_externalOverlayCount:I

    return v0
.end method

.method public generateInformation()Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;
    .locals 4

    .line 997
    invoke-static {}, Lcom/metamoji/nt/NtAuthorInfo;->newAuthorInfoOfNow()Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1001
    :cond_0
    new-instance v1, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;-><init>()V

    .line 1002
    invoke-virtual {v0}, Lcom/metamoji/nt/NtAuthorInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->setCreator(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v0}, Lcom/metamoji/nt/NtAuthorInfo;->getDcUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->setCreatorId(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v0}, Lcom/metamoji/nt/NtAuthorInfo;->getDcUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->setCreatorName(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v0}, Lcom/metamoji/nt/NtAuthorInfo;->getCompanyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->setCreatorGroup(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v0}, Lcom/metamoji/nt/NtAuthorInfo;->getActionTimeInUnixTimestamp()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->setCreationTime(Ljava/lang/Double;)V

    .line 1007
    invoke-virtual {v0}, Lcom/metamoji/nt/NtAuthorInfo;->getRoomId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->setCollaborationRoom(Ljava/lang/String;)V

    return-object v1
.end method

.method public getHighlightBaseColorForElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Ljava/lang/Integer;
    .locals 2

    .line 1013
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->tagProxy()Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->checkTaggedElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object p1

    iget-object p1, p1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseColor3:Ljava/lang/Integer;

    return-object p1

    .line 1018
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$2;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 p1, 0x2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1030
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1031
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object p1

    iget-object p1, p1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseColor:Ljava/lang/Integer;

    return-object p1

    .line 1028
    :cond_1
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameFillColorR()I

    move-result p1

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameFillColorG()I

    move-result v0

    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameFillColorB()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1025
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object p1

    iget-object p1, p1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseColor2:Ljava/lang/Integer;

    return-object p1

    .line 1021
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isErasable()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object p1

    iget-object p1, p1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseColor:Ljava/lang/Integer;

    return-object p1

    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object p1

    iget-object p1, p1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseColor2:Ljava/lang/Integer;

    return-object p1
.end method

.method public getImageWithResourceName(Ljava/lang/String;ZLjava/lang/Integer;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1889
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p2

    .line 1908
    :cond_0
    :try_start_0
    const-class p3, Lcom/metamoji/noteanytime/R$drawable;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 1909
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1910
    invoke-static {p1}, Lcom/metamoji/cm/ImageUtils;->loadAssetBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const/4 p3, 0x3

    .line 1914
    invoke-static {p3, p2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 p3, 0x2

    .line 1912
    invoke-static {p3, p2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-object p2
.end method

.method public getMarkingOrderAtPoint(Landroid/graphics/PointF;)I
    .locals 12

    .line 939
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->hitTestMargin:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->displayZoom()F

    move-result v1

    div-float/2addr v0, v1

    .line 942
    new-instance v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;-><init>()V

    .line 943
    sget-object v2, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->HIT_TEST_WITH_POINT:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    iput-object v2, v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->type:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    .line 944
    iput-object p1, v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    .line 945
    iput v0, v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->hitTestMargin:F

    .line 948
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->directSearchWithContext(Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 949
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 954
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getSortedElementOrdersByAscending(ZLjava/util/Set;)Ljava/util/List;

    move-result-object v3

    .line 955
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    const/4 p1, 0x0

    .line 956
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 961
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 963
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 966
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementByOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v5

    .line 967
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v6

    sget-object v7, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-eq v6, v7, :cond_3

    goto :goto_0

    .line 972
    :cond_3
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    const/4 v7, 0x1

    if-eqz v6, :cond_8

    .line 973
    array-length v8, v6

    if-nez v8, :cond_4

    goto :goto_3

    .line 979
    :cond_4
    array-length v8, v6

    move v9, v2

    :goto_1
    if-ge v9, v8, :cond_2

    aget v10, v6, v9

    if-ltz v10, :cond_6

    .line 981
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->coverCount()I

    move-result v11

    if-lt v10, v11, :cond_5

    goto :goto_2

    .line 985
    :cond_5
    invoke-virtual {v5, p1, v10}, Lcom/metamoji/un/draw2/module/element/DrElement;->distanceToPoint(Landroid/graphics/PointF;I)F

    move-result v10

    cmpg-float v10, v10, v0

    if-gtz v10, :cond_7

    add-int/2addr v4, v7

    return v4

    .line 982
    :cond_6
    :goto_2
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v10

    invoke-static {v10}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v11, v10}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 974
    :cond_8
    :goto_3
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    :cond_9
    :goto_4
    return v2
.end method

.method public getUnitElementByChildUnitController(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;
    .locals 5

    .line 1999
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 2000
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->elementCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2001
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementByOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v2

    .line 2002
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 2005
    :cond_0
    check-cast v2, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    .line 2006
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->unit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUnitElementByChildUnitControllerId(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;
    .locals 5

    .line 2014
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 2015
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->elementCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2016
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementByOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v2

    .line 2017
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 2020
    :cond_0
    check-cast v2, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->unitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public groupEditEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ignoreOthersElementsInSelectionsAndEditsAndFocuses()Z
    .locals 4

    .line 1158
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1159
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 1162
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 1164
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 1167
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->allowToEditOthersWritings()Z

    move-result v0

    xor-int/2addr v0, v3

    return v0
.end method

.method public inclusiveLassoEnabled()Z
    .locals 3

    .line 1641
    const-string v0, "RubberBandKindIndex"

    .line 1642
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/nt/NtUserDefaults;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public isRedoing()Z
    .locals 1

    .line 1719
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_isRedoing:Z

    return v0
.end method

.method public isUndoing()Z
    .locals 1

    .line 1717
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_isUndoing:Z

    return v0
.end method

.method public longPressDuration()F
    .locals 3

    .line 1631
    const-string v0, "DrawLongPressTime"

    .line 1632
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/nt/NtUserDefaults;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    .line 1633
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    return v0
.end method

.method public longPressEnabled()Z
    .locals 3

    .line 1620
    const-string v0, "DrawLongPressJudge"

    .line 1621
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public markerModeEnabled()Z
    .locals 5

    .line 1442
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1444
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 1447
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 1449
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 1452
    :cond_1
    const-string v1, "markerpen"

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "shapemarkerpen"

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v3
.end method

.method public nonLimitationSelectEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public notifyLinkageManagerIsEmpty()V
    .locals 2

    .line 1130
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1131
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1134
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->hasNewTypeElement()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1138
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    :cond_1
    return-void
.end method

.method public notifyLinkageManagerIsNotEmpty()V
    .locals 2

    .line 1144
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1145
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1148
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1152
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    :cond_1
    return-void
.end method

.method public notifyNewTypeElementDoesNotExists()V
    .locals 2

    .line 1225
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1226
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1229
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->followerCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1233
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    :cond_1
    return-void
.end method

.method public notifyNewTypeElementExists()V
    .locals 2

    .line 1211
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1212
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1215
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1219
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    :cond_1
    return-void
.end method

.method public notifyUnit(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/cm/RectEx;FF)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 769
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 773
    :cond_0
    new-instance v2, Lcom/metamoji/cm/RectEx;

    invoke-direct {v2, p2}, Lcom/metamoji/cm/RectEx;-><init>(Lcom/metamoji/cm/RectEx;)V

    .line 775
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getUnitId()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x1

    if-nez p2, :cond_1

    .line 777
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 782
    :cond_1
    iget v4, v2, Lcom/metamoji/cm/RectEx;->x:F

    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getX()F

    move-result v5

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 783
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getX()F

    move-result v4

    iput v4, v2, Lcom/metamoji/cm/RectEx;->x:F

    .line 785
    :cond_2
    iget v4, v2, Lcom/metamoji/cm/RectEx;->y:F

    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getY()F

    move-result v5

    invoke-static {v4, v5, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 786
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getY()F

    move-result v4

    iput v4, v2, Lcom/metamoji/cm/RectEx;->y:F

    .line 788
    :cond_3
    iget v4, v2, Lcom/metamoji/cm/RectEx;->width:F

    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getWidth()F

    move-result v5

    invoke-static {v4, v5, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 789
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getWidth()F

    move-result v4

    iput v4, v2, Lcom/metamoji/cm/RectEx;->width:F

    .line 791
    :cond_4
    iget v4, v2, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getHeight()F

    move-result v5

    invoke-static {v4, v5, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 792
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getHeight()F

    move-result v4

    iput v4, v2, Lcom/metamoji/cm/RectEx;->height:F

    .line 794
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getRotation()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {p3, v4, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 795
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getRotation()D

    move-result-wide v4

    double-to-float p3, v4

    .line 797
    :cond_6
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getContentScale()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-static {p4, v4, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 798
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getContentScale()D

    move-result-wide v4

    double-to-float p4, v4

    .line 801
    :cond_7
    iget v4, v2, Lcom/metamoji/cm/RectEx;->x:F

    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getX()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_a

    iget v4, v2, Lcom/metamoji/cm/RectEx;->y:F

    .line 802
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getY()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_a

    iget v4, v2, Lcom/metamoji/cm/RectEx;->width:F

    .line 803
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getWidth()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_a

    iget v4, v2, Lcom/metamoji/cm/RectEx;->height:F

    .line 804
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getHeight()F

    move-result v5

    cmpl-float v4, v4, v5

    if-nez v4, :cond_a

    .line 805
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getRotation()D

    move-result-wide v4

    double-to-float v4, v4

    cmpl-float v4, p3, v4

    if-nez v4, :cond_a

    .line 806
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getContentScale()D

    move-result-wide v4

    double-to-float v4, v4

    cmpl-float v4, p4, v4

    if-nez v4, :cond_a

    .line 807
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyGeometricNumbersMap:Ljava/util/HashMap;

    if-eqz p1, :cond_8

    .line 808
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_delayNotifyUnit:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyGeometricNumbersMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_8

    .line 810
    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyGeometricNumbersMap:Ljava/util/HashMap;

    .line 813
    :cond_8
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyUnitEnabled:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_forciblyNotifyGeometricNumbersMap:Ljava/util/HashMap;

    if-eqz p1, :cond_9

    .line 814
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_forciblyNotifyGeometricNumbersMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_9

    .line 816
    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_forciblyNotifyGeometricNumbersMap:Ljava/util/HashMap;

    :cond_9
    return-void

    .line 823
    :cond_a
    iget-boolean v4, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyUnitEnabled:Z

    const/4 v5, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x6

    if-nez v4, :cond_c

    .line 840
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_forciblyNotifyGeometricNumbersMap:Ljava/util/HashMap;

    if-nez v1, :cond_b

    .line 841
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_forciblyNotifyGeometricNumbersMap:Ljava/util/HashMap;

    .line 843
    :cond_b
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_forciblyNotifyGeometricNumbersMap:Ljava/util/HashMap;

    new-array v4, v9, [Ljava/lang/Float;

    iget v9, v2, Lcom/metamoji/cm/RectEx;->x:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v4, v0

    iget v0, v2, Lcom/metamoji/cm/RectEx;->y:F

    .line 844
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v3

    iget v0, v2, Lcom/metamoji/cm/RectEx;->width:F

    .line 845
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v8

    iget v0, v2, Lcom/metamoji/cm/RectEx;->height:F

    .line 846
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v4, v7

    .line 847
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v4, v5

    .line 848
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v4, v6

    .line 843
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p3

    new-instance p4, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$$ExternalSyntheticLambda3;

    invoke-direct {p4, p0, p1, p2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/un/draw2/unit/DrUnUnitContext;Lcom/metamoji/nt/NtUnitController;Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void

    .line 906
    :cond_c
    iget-boolean v4, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_delayNotifyUnit:Z

    if-eqz v4, :cond_d

    .line 907
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyTargetControllerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyGeometricNumbersMap:Ljava/util/HashMap;

    new-array v1, v9, [Ljava/lang/Number;

    iget v4, v2, Lcom/metamoji/cm/RectEx;->x:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v0

    iget v0, v2, Lcom/metamoji/cm/RectEx;->y:F

    .line 909
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v3

    iget v0, v2, Lcom/metamoji/cm/RectEx;->width:F

    .line 910
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v8

    iget v0, v2, Lcom/metamoji/cm/RectEx;->height:F

    .line 911
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v1, v7

    .line 912
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v1, v5

    .line 913
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v1, v6

    .line 908
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 918
    :cond_d
    new-instance p2, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {p2}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 919
    new-instance v0, Landroid/graphics/PointF;

    iget v3, v2, Lcom/metamoji/cm/RectEx;->x:F

    iget v4, v2, Lcom/metamoji/cm/RectEx;->y:F

    invoke-direct {v0, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p2, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    .line 920
    new-instance v0, Lcom/metamoji/cm/SizeF;

    iget v3, v2, Lcom/metamoji/cm/RectEx;->width:F

    iget v2, v2, Lcom/metamoji/cm/RectEx;->height:F

    invoke-direct {v0, v3, v2}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iput-object v0, p2, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    .line 921
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    iput-object p3, p2, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    .line 922
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    iput-object p3, p2, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    .line 925
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->disableUndoRegistrationForUnit()Z

    move-result p3

    if-eqz p3, :cond_e

    .line 926
    sget-object p3, Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;->None:Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;

    invoke-virtual {p1, p2, v1, p3}, Lcom/metamoji/nt/NtUnitController;->setGeometricProps(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;)V

    return-void

    .line 928
    :cond_e
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->undoEditContext()Lcom/metamoji/df/controller/EditContext;

    move-result-object p3

    sget-object p4, Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;->None:Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;

    invoke-virtual {p1, p2, p3, p4}, Lcom/metamoji/nt/NtUnitController;->setGeometricProps(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;)V

    return-void
.end method

.method public notifyUnitEnabled()Z
    .locals 1

    .line 709
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyUnitEnabled:Z

    return v0
.end method

.method public rasterizeHighDrawingCostStrokesEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public registerUnit(Lcom/metamoji/nt/NtUnitController;)V
    .locals 2

    .line 677
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 678
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 681
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->checkUnit(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 682
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 687
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->model(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public restrictDrawAreaToPage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public rubberBandStepRotationEnabled()Z
    .locals 1

    .line 623
    sget-object v0, Lcom/metamoji/lb/LbInAppPurchaseConstants;->PRODUCTID_45DEGREE_ROTATION:Ljava/lang/String;

    .line 624
    invoke-static {v0}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isPurchaseProduct(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCanvasQueueing(Z)V
    .locals 1

    .line 487
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 491
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 494
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 497
    :cond_2
    new-instance v0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/un/draw2/unit/DrUnUnitContext;Z)V

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setController(Lcom/metamoji/un/draw2/unit/DrUnUnitController;)V
    .locals 0

    .line 1264
    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_controller:Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    return-void
.end method

.method public setControllerContext(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    .line 1271
    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_controllerContext:Lcom/metamoji/df/controller/ControllerContext;

    return-void
.end method

.method public setControllerIsClosing(Z)V
    .locals 0

    .line 1278
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_controllerIsClosing:Z

    return-void
.end method

.method public setDelayNotifyUnit(Z)V
    .locals 8

    .line 730
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyUnitEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 731
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 734
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_delayNotifyUnit:Z

    if-ne v0, p1, :cond_1

    return-void

    .line 737
    :cond_1
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_delayNotifyUnit:Z

    if-eqz p1, :cond_2

    .line 739
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyTargetControllerMap:Ljava/util/HashMap;

    .line 740
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyGeometricNumbersMap:Ljava/util/HashMap;

    return-void

    .line 742
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyTargetControllerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 743
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyTargetControllerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 744
    iget-object v3, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyTargetControllerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtUnitController;

    .line 745
    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitController;->isValid()Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 748
    :cond_4
    iget-object v4, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyGeometricNumbersMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 749
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_5

    goto :goto_0

    .line 753
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    const/4 v5, 0x1

    .line 754
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/4 v6, 0x2

    .line 755
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    const/4 v7, 0x3

    .line 756
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    .line 753
    invoke-static {v4, v5, v6, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v4

    const/4 v5, 0x4

    .line 757
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const/4 v6, 0x5

    .line 758
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 752
    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->notifyUnit(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/cm/RectEx;FF)V

    goto :goto_0

    .line 761
    :cond_6
    iput-object v2, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyTargetControllerMap:Ljava/util/HashMap;

    .line 762
    iput-object v2, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyGeometricNumbersMap:Ljava/util/HashMap;

    return-void
.end method

.method public setExternalDisplayZoom(F)V
    .locals 0

    .line 1738
    iput p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_externalDisplayZoom:F

    return-void
.end method

.method public setIsRedoing(Z)V
    .locals 0

    .line 1720
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_isRedoing:Z

    return-void
.end method

.method public setIsUndoing(Z)V
    .locals 0

    .line 1718
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_isUndoing:Z

    return-void
.end method

.method public setNotifyUnitEnabled(Z)V
    .locals 1

    .line 713
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyUnitEnabled:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 716
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_notifyUnitEnabled:Z

    if-nez p1, :cond_1

    .line 719
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_delayNotifyUnit:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 720
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method setStageFreezing(Z)V
    .locals 1

    .line 1754
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1755
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1758
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1761
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Stage;->setFrozen(Z)V

    return-void
.end method

.method public setTagProxy(Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;)V
    .locals 0

    .line 2032
    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_tagProxy:Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;

    return-void
.end method

.method public setUndoBySelf(Z)V
    .locals 0

    .line 1711
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_undoBySelf:Z

    return-void
.end method

.method public setUndoEditContext(Lcom/metamoji/df/controller/EditContext;)V
    .locals 0

    .line 1690
    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_undoEditContext:Lcom/metamoji/df/controller/EditContext;

    return-void
.end method

.method public setUndoModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 1697
    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_undoModel:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method public setUndoRegistering(Z)V
    .locals 0

    .line 1704
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_undoRegistering:Z

    return-void
.end method

.method public shapeModeEnabled()Z
    .locals 5

    .line 1425
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    const-string v1, "MMJNtPenSettings"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtSystemSettings;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPenSettings;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1427
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 1430
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPenSettings;->getCurrentIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtPenSettings;->getPenAt(I)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 1432
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 1435
    :cond_1
    const-string/jumbo v1, "shapepen"

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "shapemarkerpen"

    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/share/NtPenStyle;->getHasArrow()Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method stageFreezing()Z
    .locals 2

    .line 1744
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1745
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 1748
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 1751
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->isFrozen()Z

    move-result v0

    return v0
.end method

.method public stagePointFromCanvasPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 1789
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 1790
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1791
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 1793
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 1794
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1795
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 1797
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1798
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 1800
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->globalPointFromLocalPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Stage;->spriteToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public stageRectFromCanvasRect(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 1817
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 1818
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1819
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1

    .line 1821
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 1822
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1823
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1

    .line 1825
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1826
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1

    .line 1828
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/cm/RectEx;->getRectF()Landroid/graphics/RectF;

    move-result-object p1

    .line 1829
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->matrixFromLocalToGlobal(Lcom/metamoji/df/sprite/Sprite;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1830
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getStageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1831
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0, p1}, Lcom/metamoji/cm/RectEx;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public tagProxy()Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;
    .locals 1

    .line 2031
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_tagProxy:Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;

    return-object v0
.end method

.method public toolBarHeight()F
    .locals 1

    .line 1682
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getTopAppBarHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public undoBySelf()Z
    .locals 1

    .line 1710
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_undoBySelf:Z

    return v0
.end method

.method public undoEditContext()Lcom/metamoji/df/controller/EditContext;
    .locals 1

    .line 1689
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_undoEditContext:Lcom/metamoji/df/controller/EditContext;

    return-object v0
.end method

.method public undoModel()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 1696
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_undoModel:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public undoRegistering()Z
    .locals 1

    .line 1703
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->m_undoRegistering:Z

    return v0
.end method

.method public unitId()Ljava/lang/String;
    .locals 2

    .line 1284
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1285
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 1288
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterUnit(Lcom/metamoji/nt/NtUnitController;)V
    .locals 2

    .line 692
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 693
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 696
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->checkUnit(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 697
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 702
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->model(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->parent(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 703
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->model(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeChild(Lcom/metamoji/df/model/IModel;)V

    :cond_2
    return-void
.end method

.method public unselectableRubberBandFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 3

    const/4 v0, 0x0

    .line 600
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    const/high16 v1, 0x40400000    # 3.0f

    .line 601
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    const/16 v1, 0xff

    const/4 v2, 0x0

    .line 602
    invoke-static {v1, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineColorWithColor(Ljava/lang/Integer;)V

    .line 603
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->rubberBandFrameLineAlpha()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineAlpha(F)V

    .line 604
    sget-object v1, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->RUBBER_BAND_FRAME_LINE_CAP:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 605
    sget-object v1, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->RUBBER_BAND_FRAME_LINE_JOIN:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    return-object v0
.end method

.method public updateContentBounds(Lcom/metamoji/cm/RectEx;FF)V
    .locals 0

    .line 112
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->updateContentBounds(Lcom/metamoji/cm/RectEx;FF)V

    .line 113
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->applyContentProperties()V

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 116
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method
