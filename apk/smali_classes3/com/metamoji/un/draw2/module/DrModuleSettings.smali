.class public Lcom/metamoji/un/draw2/module/DrModuleSettings;
.super Ljava/lang/Object;
.source "DrModuleSettings.java"


# instance fields
.field public calligrapherInferenceRatio:F

.field public calligraphicStrokeSmoothness:I

.field public displayableCanvasBoundaryLimit:F

.field public duplicationShift:Landroid/graphics/PointF;

.field public eraserMovementThreshold:F

.field public eraserSmoothness:I

.field public focusMargin:F

.field public fountainStrokeSmoothness:I

.field public fountainerSCDistance:F

.field public fountainerWCDistance:F

.field public groupFramePadding:F

.field public highlightBaseAlpha:F

.field public highlightBaseColor:Ljava/lang/Integer;

.field public highlightBaseColor2:Ljava/lang/Integer;

.field public highlightBaseColor3:Ljava/lang/Integer;

.field public highlightBaseMargin:F

.field public highlightDropShadowBlur:F

.field public highlightDropShadowOffset:Landroid/graphics/PointF;

.field public highlightEditAlpha:F

.field public highlightImageSurplusRatio:F

.field public highlightImageUpdateThreshold:F

.field public highlightMinLineWidth:F

.field public hitTestMargin:F

.field public lassoMovementThreshold:F

.field public lassoSmoothness:I

.field public lineDashBaseInterval1:F

.field public lineDashBaseInterval2:F

.field public longPressDuration:D

.field public longPressEffectCircleRadius:F

.field public longPressEffectDuration:D

.field public longPressMovement:F

.field private m_rubberBandHandleFunctionTypeMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;",
            ">;"
        }
    .end annotation
.end field

.field private m_rubberBandHandleImageMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public maxPenSize:F

.field public middlePointSmootherInferenceRatio1:F

.field public middlePointSmootherInferenceRatio2:F

.field public minExtraHandleableSize:Lcom/metamoji/cm/SizeF;

.field public minPenSize:F

.field public minRubberBandSize:Lcom/metamoji/cm/SizeF;

.field public permittedFingerCount:I

.field public recognizeMouse:Z

.field public reducerDelta:F

.field public reducerRealtimeDelta:F

.field public restrictPenToRegisteredId:Z

.field public rotationStep:I

.field public rubberBandAdsorptionMargin:F

.field public rubberBandExtraHandleImage:Landroid/graphics/Bitmap;

.field public rubberBandFramePadding:F

.field public rubberBandMovementThreshold:F

.field public shapeFramePadding:F

.field public simpleStrokeSmoothness:I

.field public tapThreshold:F

.field public uncancelThreshold:F

.field public unitFramePadding:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->m_rubberBandHandleFunctionTypeMap:Ljava/util/EnumMap;

    .line 28
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->m_rubberBandHandleImageMap:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method public clearAllRubberBandHandleSettings()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->m_rubberBandHandleFunctionTypeMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    .line 158
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->m_rubberBandHandleImageMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    return-void
.end method

.method public clearRubberBandHandleSettingsForPosition(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->m_rubberBandHandleFunctionTypeMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->m_rubberBandHandleImageMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->m_rubberBandHandleFunctionTypeMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    .line 179
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->m_rubberBandHandleImageMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->m_rubberBandHandleFunctionTypeMap:Ljava/util/EnumMap;

    .line 181
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->m_rubberBandHandleImageMap:Ljava/util/EnumMap;

    .line 182
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->rubberBandExtraHandleImage:Landroid/graphics/Bitmap;

    .line 183
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseColor:Ljava/lang/Integer;

    .line 184
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseColor2:Ljava/lang/Integer;

    .line 185
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseColor3:Ljava/lang/Integer;

    return-void
.end method

.method public getAllRubberBandHandlePositions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->m_rubberBandHandleFunctionTypeMap:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRubberBandHandleFunctionTypeForPosition(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->m_rubberBandHandleFunctionTypeMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    if-eqz p1, :cond_0

    return-object p1

    .line 144
    :cond_0
    sget-object p1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->NONE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    return-object p1
.end method

.method public getRubberBandHandleImageForPosition(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;)Landroid/graphics/Bitmap;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->m_rubberBandHandleImageMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public setRubberBandHandleSettingsForPosition(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;Landroid/graphics/Bitmap;)V
    .locals 1

    if-nez p3, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 131
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->m_rubberBandHandleFunctionTypeMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->m_rubberBandHandleImageMap:Ljava/util/EnumMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
