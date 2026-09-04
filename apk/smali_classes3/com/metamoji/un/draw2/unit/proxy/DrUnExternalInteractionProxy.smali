.class public Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;
.super Ljava/lang/Object;
.source "DrUnExternalInteractionProxy.java"


# instance fields
.field private m_calligraphicDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;

.field private m_closed:Z

.field private m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

.field private m_eraseInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;

.field private m_eraserMode:Lcom/metamoji/un/draw2/module/mode/DrMode;

.field private m_fountainDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;

.field private m_ignoreTouch:Z

.field private m_notifyingTouch:Z

.field private m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

.field private m_penMode:Lcom/metamoji/un/draw2/module/mode/DrMode;

.field private m_recommendsClearOverlay:Z

.field private m_reducibleDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;

.field private m_shapeDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;

.field private m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

.field private m_touching:Z

.field private m_type:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;


# direct methods
.method public static synthetic $r8$lambda$ZAUDrIah0UQiJJIZWdXiMTCfIxs(Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$iXLU7LsE_DNqvDiijUcLxqB5T5A(Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->lambda$destroy$1()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/draw2/unit/DrUnUnitContext;)V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    .line 61
    sget-object p1, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->NONE:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_type:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    .line 64
    new-instance p1, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;)V

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    .line 83
    new-instance p1, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    .line 84
    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->NONE:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setType(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;)V

    .line 85
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    sget-object v0, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;->FINGER:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setDevice(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Device;)V

    .line 86
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->generateExternalFingerNumber()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setUid(I)V

    .line 87
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setOverlay(Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;)V

    .line 90
    new-instance p1, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;

    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-direct {p1, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_reducibleDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;

    .line 91
    new-instance p1, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;

    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-direct {p1, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_calligraphicDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;

    .line 92
    new-instance p1, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;

    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-direct {p1, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;-><init>(Lcom/metamoji/un/draw2/unit/DrUnUnitContext;)V

    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_fountainDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;

    .line 93
    new-instance p1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;

    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-direct {p1, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_eraseInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;

    .line 94
    new-instance p1, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;

    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-direct {p1, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_shapeDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;

    .line 103
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_eraseInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->setDelayCompletion(Z)V

    .line 107
    new-instance p1, Lcom/metamoji/un/draw2/module/mode/DrMode;

    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-direct {p1, v0}, Lcom/metamoji/un/draw2/module/mode/DrMode;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_penMode:Lcom/metamoji/un/draw2/module/mode/DrMode;

    .line 110
    new-instance p1, Lcom/metamoji/un/draw2/module/mode/DrMode;

    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-direct {p1, v0}, Lcom/metamoji/un/draw2/module/mode/DrMode;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_eraserMode:Lcom/metamoji/un/draw2/module/mode/DrMode;

    .line 111
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_eraseInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;

    sget-object v2, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->NORMAL_TOUCH:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/DrMode;->setInteractionForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;Lcom/metamoji/un/draw2/module/mode/DrMode$Process;)V

    .line 114
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->zoom()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->setExternalDisplayZoom(F)V

    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_recommendsClearOverlay:Z

    .line 118
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touching:Z

    .line 119
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_notifyingTouch:Z

    .line 120
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_ignoreTouch:Z

    .line 121
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    return-void
.end method

.method private synthetic lambda$destroy$1()V
    .locals 3

    const/4 v0, 0x0

    .line 746
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerCount()I

    move-result v1

    .line 749
    iget-object v2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    if-ge v0, v1, :cond_0

    .line 747
    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerAtIndex(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;->destroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->removeAllLayers()V

    .line 750
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->destroy()V

    const/4 v0, 0x0

    .line 751
    iput-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 66
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    .line 67
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->generateExternalOverlayId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->setUid(I)V

    .line 70
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->strokeLayerId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->setUid(I)V

    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->setAutoVisible(Z)V

    .line 73
    iget-object v2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->addLayer(Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;)V

    .line 76
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;-><init>()V

    .line 77
    iget-object v2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->eraserLayerId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->setUid(I)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->setAutoVisible(Z)V

    .line 79
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->addLayer(Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;)V

    return-void
.end method


# virtual methods
.method public clearOverlay()V
    .locals 2

    .line 696
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 697
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 700
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touching:Z

    if-eqz v0, :cond_1

    return-void

    .line 713
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->clearAllLayers()V

    .line 716
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_recommendsClearOverlay:Z

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 725
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->setExternalDisplayZoom(F)V

    .line 733
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touching:Z

    if-eqz v0, :cond_1

    .line 734
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->touchCanceled()V

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_penMode:Lcom/metamoji/un/draw2/module/mode/DrMode;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 737
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/mode/DrMode;->destroy()V

    .line 738
    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_penMode:Lcom/metamoji/un/draw2/module/mode/DrMode;

    .line 740
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_eraserMode:Lcom/metamoji/un/draw2/module/mode/DrMode;

    if-eqz v0, :cond_3

    .line 741
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/mode/DrMode;->destroy()V

    .line 742
    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_eraserMode:Lcom/metamoji/un/draw2/module/mode/DrMode;

    .line 744
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    if-eqz v0, :cond_4

    .line 745
    new-instance v0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;)V

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    .line 754
    :cond_4
    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_reducibleDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;

    .line 755
    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_calligraphicDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;

    .line 756
    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_fountainDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;

    .line 757
    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_eraseInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;

    .line 758
    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_shapeDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;

    .line 760
    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    .line 761
    iput-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    const/4 v0, 0x1

    .line 762
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 129
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 134
    throw v0
.end method

.method public overlay()Lcom/metamoji/df/sprite/Stage;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    return-object v0
.end method

.method public overlayAngleInRadians()F
    .locals 2

    .line 195
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 196
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->angleInRadians()F

    move-result v0

    return v0
.end method

.method public overlayBounds()Lcom/metamoji/cm/RectEx;
    .locals 2

    .line 184
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 185
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->displayBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method public overlayTranslate()Landroid/graphics/PointF;
    .locals 3

    .line 217
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 218
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 219
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    return-object v0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->displayBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 222
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget v0, v0, Lcom/metamoji/cm/RectEx;->y:F

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method public overlayZoom()F
    .locals 2

    .line 206
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 207
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->zoom()F

    move-result v0

    return v0
.end method

.method public recommendsClearOverlay()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_recommendsClearOverlay:Z

    return v0
.end method

.method public setType(Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;)V
    .locals 4

    .line 149
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 150
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touching:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 154
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 157
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$1;->$SwitchMap$com$metamoji$un$draw2$unit$proxy$DrUnExternalInteractionType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    .line 163
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 166
    :cond_2
    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_type:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    return-void
.end method

.method public touchBeganAtPoint(Landroid/graphics/PointF;)V
    .locals 1

    .line 307
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->touchBeganAtPoint(Landroid/graphics/PointF;Ljava/util/Calendar;)V

    return-void
.end method

.method public touchBeganAtPoint(Landroid/graphics/PointF;Ljava/util/Calendar;)V
    .locals 7

    .line 310
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 311
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 314
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touching:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 315
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 318
    :cond_1
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touching:Z

    .line 321
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_notifyingTouch:Z

    const/4 v4, 0x2

    if-nez v0, :cond_2

    .line 322
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->editorWindowController()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 324
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->userDrawingStart()V

    .line 326
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_notifyingTouch:Z

    goto :goto_0

    .line 329
    :cond_2
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 333
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    sget-object v5, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->BEGAN:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {v0, v5}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setType(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;)V

    .line 334
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setPoint(Landroid/graphics/PointF;)V

    .line 335
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setStartPoint(Landroid/graphics/PointF;)V

    .line 336
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setTimeOffset(J)V

    .line 337
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {v0, p2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setStartDateTime(Ljava/util/Calendar;)V

    .line 338
    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {p2, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setLongPressed(Z)V

    .line 339
    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {p2, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setTargetSelectionId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 342
    sget-object p2, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$1;->$SwitchMap$com$metamoji$un$draw2$unit$proxy$DrUnExternalInteractionType:[I

    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_type:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x3

    if-eq p2, v4, :cond_5

    if-eq p2, v0, :cond_4

    goto/16 :goto_5

    .line 500
    :cond_4
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->currentEraserStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object p1

    .line 503
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result p2

    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->density()F

    move-result v0

    mul-float/2addr p2, v0

    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->zoom()F

    move-result v0

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setLineWidth(F)V

    .line 506
    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {p2, v0, p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->setEraserStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 509
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_eraserMode:Lcom/metamoji/un/draw2/module/mode/DrMode;

    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/mode/DrMode;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    goto/16 :goto_5

    .line 345
    :cond_5
    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->checkDrawabilityAtPoint(Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 346
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_ignoreTouch:Z

    goto/16 :goto_5

    .line 351
    :cond_6
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->currentPenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object p1

    .line 354
    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->markerModeEnabled()Z

    move-result p2

    .line 358
    sget-object v5, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->penType()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v3, :cond_b

    if-eq v5, v4, :cond_8

    if-eq v5, v0, :cond_7

    goto/16 :goto_4

    .line 423
    :cond_7
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_fountainDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;

    .line 426
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->setDelayCompletion(Z)V

    .line 427
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_fountainDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->setDoNotClearOverlay(Z)V

    .line 456
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_fountainDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;

    invoke-virtual {v0, p2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->setMarkerModeEnabled(Z)V

    goto/16 :goto_4

    .line 393
    :cond_8
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_calligraphicDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;

    .line 396
    move-object v5, p1

    check-cast v5, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    .line 397
    sget-object v6, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStCalligraphicInkType:[I

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->inkType()Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicInkType;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v3, :cond_a

    if-eq v5, v4, :cond_9

    if-eq v5, v0, :cond_9

    goto :goto_1

    .line 409
    :cond_9
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_calligraphicDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->setDelayCompletion(Z)V

    .line 410
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_calligraphicDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->setDoNotClearOverlay(Z)V

    goto :goto_1

    .line 400
    :cond_a
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_calligraphicDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->setDelayCompletion(Z)V

    .line 401
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_calligraphicDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->setDoNotClearOverlay(Z)V

    .line 418
    :goto_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_calligraphicDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;

    invoke-virtual {v0, p2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->setMarkerModeEnabled(Z)V

    goto :goto_4

    .line 360
    :cond_b
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->shapeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 361
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_shapeDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;

    .line 364
    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->setDelayCompletion(Z)V

    .line 365
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_shapeDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->setDoNotClearOverlay(Z)V

    .line 366
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_recommendsClearOverlay:Z

    .line 369
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_shapeDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;

    invoke-virtual {v1, p2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->setMarkerModeEnabled(Z)V

    :goto_2
    move-object v1, v0

    goto :goto_3

    .line 371
    :cond_c
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_reducibleDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;

    xor-int/lit8 v1, p2, 0x1

    .line 374
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->setDelayCompletion(Z)V

    .line 375
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_reducibleDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->setDoNotClearOverlay(Z)V

    .line 376
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_recommendsClearOverlay:Z

    if-nez v1, :cond_d

    .line 377
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_recommendsClearOverlay:Z

    .line 381
    :cond_d
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_reducibleDrawInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;

    invoke-virtual {v1, p2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->setMarkerModeEnabled(Z)V

    goto :goto_2

    .line 385
    :goto_3
    move-object p2, p1

    check-cast p2, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 386
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineDash()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 387
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->density()F

    move-result v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->zoom()F

    move-result v2

    div-float/2addr v0, v2

    invoke-virtual {p2, v0, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->updateLineDashWithScale(FZ)V

    .line 488
    :cond_e
    :goto_4
    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_penMode:Lcom/metamoji/un/draw2/module/mode/DrMode;

    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    sget-object v2, Lcom/metamoji/un/draw2/module/mode/DrMode$Process;->NORMAL_TOUCH:Lcom/metamoji/un/draw2/module/mode/DrMode$Process;

    invoke-virtual {p2, v0, v1, v2}, Lcom/metamoji/un/draw2/module/mode/DrMode;->setInteractionForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;Lcom/metamoji/un/draw2/module/mode/DrMode$Process;)V

    .line 491
    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {p2, v0, p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->setStrokeStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 494
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_penMode:Lcom/metamoji/un/draw2/module/mode/DrMode;

    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/mode/DrMode;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 522
    :goto_5
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_recommendsClearOverlay:Z

    return-void
.end method

.method public touchCanceled()V
    .locals 4

    .line 634
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 635
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 638
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touching:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 639
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 642
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->startDateTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 643
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->touchCanceled(J)V

    return-void
.end method

.method public touchCanceled(J)V
    .locals 3

    .line 646
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 647
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 650
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touching:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 651
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->CANCELED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setType(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;)V

    .line 657
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setTimeOffset(J)V

    .line 660
    sget-object p1, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$1;->$SwitchMap$com$metamoji$un$draw2$unit$proxy$DrUnExternalInteractionType:[I

    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_type:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 669
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_eraserMode:Lcom/metamoji/un/draw2/module/mode/DrMode;

    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/mode/DrMode;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    goto :goto_0

    .line 662
    :cond_3
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_ignoreTouch:Z

    if-eqz p1, :cond_4

    .line 663
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_ignoreTouch:Z

    goto :goto_0

    .line 666
    :cond_4
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_penMode:Lcom/metamoji/un/draw2/module/mode/DrMode;

    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/mode/DrMode;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 676
    :goto_0
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_notifyingTouch:Z

    if-eqz p1, :cond_6

    .line 677
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->editorWindowController()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 679
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->userDrawingEnd()V

    .line 682
    :cond_5
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_notifyingTouch:Z

    .line 686
    :cond_6
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touching:Z

    .line 689
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_recommendsClearOverlay:Z

    return-void
.end method

.method public touchEndedAtPoint(Landroid/graphics/PointF;)V
    .locals 4

    .line 571
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 572
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 575
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touching:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 576
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 579
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->startDateTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 580
    invoke-virtual {p0, p1, v0, v1}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->touchEndedAtPoint(Landroid/graphics/PointF;J)V

    return-void
.end method

.method public touchEndedAtPoint(Landroid/graphics/PointF;J)V
    .locals 4

    .line 583
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 584
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 587
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touching:Z

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 588
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ENDED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setType(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;)V

    .line 594
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setPoint(Landroid/graphics/PointF;)V

    .line 595
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {v0, p2, p3}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setTimeOffset(J)V

    .line 598
    sget-object p2, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$1;->$SwitchMap$com$metamoji$un$draw2$unit$proxy$DrUnExternalInteractionType:[I

    iget-object p3, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_type:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_3

    const/4 p3, 0x3

    if-eq p2, p3, :cond_2

    goto :goto_0

    .line 607
    :cond_2
    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_eraserMode:Lcom/metamoji/un/draw2/module/mode/DrMode;

    iget-object p3, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {p2, p3}, Lcom/metamoji/un/draw2/module/mode/DrMode;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    goto :goto_0

    .line 600
    :cond_3
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_ignoreTouch:Z

    if-eqz p2, :cond_4

    .line 601
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_ignoreTouch:Z

    goto :goto_0

    .line 604
    :cond_4
    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_penMode:Lcom/metamoji/un/draw2/module/mode/DrMode;

    iget-object p3, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {p2, p3}, Lcom/metamoji/un/draw2/module/mode/DrMode;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 614
    :goto_0
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_notifyingTouch:Z

    if-eqz p2, :cond_6

    .line 615
    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->editorWindowController()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 617
    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->userDrawingEnd()V

    .line 620
    :cond_5
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_notifyingTouch:Z

    .line 624
    :cond_6
    iget-boolean p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_recommendsClearOverlay:Z

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->containsPoint(Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 625
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_recommendsClearOverlay:Z

    .line 629
    :cond_7
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touching:Z

    return-void
.end method

.method public touchMovedAtPoint(Landroid/graphics/PointF;)V
    .locals 4

    .line 527
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 528
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 531
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touching:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 532
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 535
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->startDateTime()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 536
    invoke-virtual {p0, p1, v0, v1}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->touchMovedAtPoint(Landroid/graphics/PointF;J)V

    return-void
.end method

.method public touchMovedAtPoint(Landroid/graphics/PointF;J)V
    .locals 2

    .line 539
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 540
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 543
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touching:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 544
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    sget-object v1, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->MOVED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setType(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;)V

    .line 550
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setPoint(Landroid/graphics/PointF;)V

    .line 551
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setTimeOffset(J)V

    .line 554
    sget-object p1, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy$1;->$SwitchMap$com$metamoji$un$draw2$unit$proxy$DrUnExternalInteractionType:[I

    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_type:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 562
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_eraserMode:Lcom/metamoji/un/draw2/module/mode/DrMode;

    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/mode/DrMode;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 556
    :cond_3
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_ignoreTouch:Z

    if-eqz p1, :cond_4

    :goto_0
    return-void

    .line 559
    :cond_4
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_penMode:Lcom/metamoji/un/draw2/module/mode/DrMode;

    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/mode/DrMode;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void
.end method

.method public type()Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_type:Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionType;

    return-object v0
.end method

.method public updateOverlayCoordinatesWithGlobalBounds(Landroid/graphics/RectF;F)V
    .locals 4

    .line 271
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 272
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 277
    :cond_0
    new-instance v0, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {v0}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    .line 278
    iget-object v2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->checkLocalValueOfGlobalBounds(Landroid/graphics/RectF;FLcom/metamoji/df/controller/GeometricProps;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 284
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 287
    :cond_1
    new-instance p1, Lcom/metamoji/cm/RectEx;

    iget-object p2, v0, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    iget-object v1, v0, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    iget-object v3, v0, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->height:F

    invoke-direct {p1, p2, v1, v2, v3}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    .line 291
    iget-object p2, v0, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 292
    iget-object v0, v0, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 295
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v1, p1, p2, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->updateCoordinates(Lcom/metamoji/cm/RectEx;FF)V

    .line 298
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->zoom()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->setExternalDisplayZoom(F)V

    return-void
.end method

.method public updateOverlayCoordinatesWithZoom(FLandroid/graphics/PointF;)V
    .locals 2

    .line 244
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 245
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 248
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_touching:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 249
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    const/4 p1, 0x2

    .line 253
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->updateCoordinatesWithZoom(FLandroid/graphics/PointF;)V

    .line 259
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/proxy/DrUnExternalInteractionProxy;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->zoom()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->setExternalDisplayZoom(F)V

    return-void
.end method
