.class public Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;
.super Ljava/lang/Object;
.source "DrCalligraphicDrawInteraction.java"

# interfaces
.implements Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;
.implements Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;


# instance fields
.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

.field private m_delayCompletion:Z

.field private m_delayingDestruction:Z

.field private m_doNotClearOverlay:Z

.field private m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

.field private m_elementMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;",
            ">;"
        }
    .end annotation
.end field

.field private m_idCounter:I

.field private m_ignoreTouch:Z

.field private m_insertOrder:I

.field private m_isActive:Z

.field private m_markerModeEnabled:Z

.field private m_markingPointMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private m_orderMap:Landroid/util/SparseIntArray;

.field private m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

.field private m_points:Lcom/metamoji/cm/PointArray;

.field private m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 51
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    .line 52
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->calligraphicStrokeSmoothness:I

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->setSmoothness(I)V

    .line 53
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    .line 54
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    .line 55
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_ignoreTouch:Z

    .line 57
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_delayingDestruction:Z

    const/4 v0, -0x1

    .line 58
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->setInsertOrder(I)V

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->setDelayCompletion(Z)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->setDoNotClearOverlay(Z)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->setMarkerModeEnabled(Z)V

    return-void
.end method

.method private addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->generateInformation()Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->setInformation(Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;)V

    .line 438
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;-><init>()V

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;

    const/4 v1, 0x0

    .line 439
    invoke-virtual {v0, p1, p2, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;ILjava/util/List;)V

    .line 442
    new-instance p1, Lcom/metamoji/un/draw2/module/command/DrCommand;

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-direct {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    .line 443
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 444
    sget-object p2, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->PERMANENT:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationType(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;)V

    .line 445
    sget-object p2, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->EVERYONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationTarget(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;)V

    .line 448
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object p2

    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->REGISTER:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->executeCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    return-void
.end method

.method private beginTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->checkDrawabilityAtPoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 254
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_ignoreTouch:Z

    return-void

    .line 259
    :cond_0
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    .line 262
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getStrokeStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    .line 265
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    .line 266
    invoke-virtual {v0, p0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->setOwner(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;)V

    .line 267
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    iget v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_idCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_idCounter:I

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->setUid(I)V

    .line 268
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->setStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;)V

    .line 269
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->setZoom(F)V

    .line 270
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->reducerDelta:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->zoom()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->setDelta(F)V

    .line 271
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->calligrapherInferenceRatio:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->setInferenceRatio(F)V

    .line 274
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->strokeLayerId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    .line 275
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->addDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 278
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->beginAtPoint(Landroid/graphics/PointF;)I

    .line 281
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    .line 284
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 287
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->begin()V

    .line 288
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->addPoint(Landroid/graphics/PointF;Z)V

    return-void
.end method

.method private cancel()V
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->cancel()V

    .line 421
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 424
    :cond_0
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    if-eqz v0, :cond_2

    .line 427
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->clear()V

    .line 429
    :cond_2
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    .line 430
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    return-void
.end method

.method private cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 0

    .line 411
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_ignoreTouch:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 412
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_ignoreTouch:Z

    return-void

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->cancel()V

    return-void
.end method

.method private endTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 8

    .line 317
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_ignoreTouch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 318
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_ignoreTouch:Z

    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    .line 326
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->endAtPoint(Landroid/graphics/PointF;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 330
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 331
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 334
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 335
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 338
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    invoke-virtual {v4, v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->addPoint(Landroid/graphics/PointF;Z)V

    .line 339
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->addPoint(Landroid/graphics/PointF;Z)V

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_3

    .line 344
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    .line 347
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v0, v0, 0x2

    .line 354
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    if-lt v4, v2, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_1
    invoke-virtual {v6, v5, v7}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->addPoint(Landroid/graphics/PointF;Z)V

    goto :goto_0

    .line 359
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->newCalligraphicStrokeElementWithFamily(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 361
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->delta()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->setReducerDelta(F)V

    .line 362
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->zoom()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->setReducerZoom(F)V

    .line 363
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->setPoints(Lcom/metamoji/cm/PointArray;)V

    .line 366
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->containsPoint(Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 369
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->delayCompletion()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 370
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->uid()I

    move-result v3

    .line 371
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 372
    :try_start_0
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 373
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 374
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->insertOrder()I

    move-result v0

    if-ltz v0, :cond_4

    .line 375
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 376
    :try_start_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->insertOrder()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 377
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 379
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->markerModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 380
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 381
    :try_start_2
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->startPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v4, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 373
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    .line 386
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->insertOrder()I

    move-result v3

    if-gez v3, :cond_6

    .line 387
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->markerModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 388
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->startPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getMarkingOrderAtPoint(Landroid/graphics/PointF;)I

    move-result v3

    .line 390
    :cond_6
    invoke-direct {p0, v0, v3}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    .line 397
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    if-eqz v1, :cond_8

    .line 395
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->end()V

    goto :goto_4

    .line 397
    :cond_8
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->cancel()V

    .line 398
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 399
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 404
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->clear()V

    .line 405
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    .line 406
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    .line 407
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    return-void
.end method

.method private moveTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 3

    .line 292
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_ignoreTouch:Z

    if-eqz v0, :cond_0

    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    .line 300
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->moveAtPoint(Landroid/graphics/PointF;)I

    add-int/lit8 p1, v0, 0x1

    .line 303
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    .line 307
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 310
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->addPoint(Landroid/graphics/PointF;Z)V

    .line 313
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;

    invoke-virtual {p1, v0, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvCalligraphicStrokeDrawer;->addTemporaryQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method


# virtual methods
.method public delayCompletion()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_delayCompletion:Z

    return v0
.end method

.method public destroy()V
    .locals 5

    .line 150
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_delayingDestruction:Z

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    .line 154
    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    .line 157
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_delayingDestruction:Z

    .line 158
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1, p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->stockObject(Ljava/lang/Object;)V

    .line 159
    monitor-exit v0

    return-void

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 168
    :goto_0
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    if-ge v2, v1, :cond_3

    .line 162
    :try_start_1
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 163
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 164
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    .line 166
    :cond_2
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->destroy()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_3
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 169
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 171
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->cancel()V

    .line 172
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 173
    monitor-enter v0

    .line 174
    :try_start_2
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 175
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    .line 176
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 178
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_6

    .line 179
    monitor-enter v0

    .line 180
    :try_start_3
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 181
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    .line 182
    monitor-exit v0

    goto :goto_3

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 184
    :cond_6
    :goto_3
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 185
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    return-void
.end method

.method public doNotClearOverlay()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_doNotClearOverlay:Z

    return v0
.end method

.method public handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 127
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 130
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->type()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return-void

    .line 141
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 138
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->endTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 135
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->moveTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 132
    :cond_4
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->beginTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void
.end method

.method public insertOrder()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_insertOrder:I

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_isActive:Z

    return v0
.end method

.method public isDrawing()Z
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 114
    :cond_0
    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 116
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public markerModeEnabled()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_markerModeEnabled:Z

    return v0
.end method

.method public receiveCompletionWithDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)V
    .locals 6

    .line 201
    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->uid()I

    move-result v0

    .line 204
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 206
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 207
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 208
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 212
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    monitor-enter v4

    .line 213
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v1, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 214
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gez v1, :cond_1

    .line 218
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 219
    :try_start_2
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 221
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getMarkingOrderAtPoint(Landroid/graphics/PointF;)I

    move-result v0

    move v1, v0

    .line 223
    :cond_0
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 228
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->ignoreInteractionsCompletion()Z

    move-result v0

    if-nez v0, :cond_2

    .line 229
    invoke-direct {p0, v2, v1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    goto :goto_1

    .line 231
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->destroy()V

    .line 236
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->doNotClearOverlay()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 237
    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 241
    :cond_4
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_delayingDestruction:Z

    if-eqz p1, :cond_5

    if-nez v3, :cond_5

    const/4 p1, 0x0

    .line 242
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_delayingDestruction:Z

    .line 243
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->unstockObject(Ljava/lang/Object;)V

    .line 244
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->destroy()V

    :cond_5
    return-void

    :catchall_1
    move-exception p1

    .line 214
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 208
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public setDelayCompletion(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_delayCompletion:Z

    return-void
.end method

.method public setDoNotClearOverlay(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_doNotClearOverlay:Z

    return-void
.end method

.method public setInsertOrder(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_insertOrder:I

    return-void
.end method

.method public setIsActive(Z)V
    .locals 0

    .line 193
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_isActive:Z

    return-void
.end method

.method public setMarkerModeEnabled(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrCalligraphicDrawInteraction;->m_markerModeEnabled:Z

    return-void
.end method

.method public type()Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;
    .locals 1

    .line 121
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->CALLIGRAPHIC_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    return-object v0
.end method
