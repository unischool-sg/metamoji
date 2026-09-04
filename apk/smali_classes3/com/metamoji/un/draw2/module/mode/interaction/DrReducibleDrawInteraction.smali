.class public Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;
.super Ljava/lang/Object;
.source "DrReducibleDrawInteraction.java"

# interfaces
.implements Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;
.implements Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;


# instance fields
.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

.field private m_delayCompletion:Z

.field private m_delayingDestruction:Z

.field private m_doNotClearOverlay:Z

.field private m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

.field private m_elementMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;",
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

.field private m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

.field private m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

.field private m_points:Lcom/metamoji/cm/PointArray;

.field private m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 54
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    .line 55
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->simpleStrokeSmoothness:I

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->setSmoothness(I)V

    .line 56
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->middlePointSmootherInferenceRatio1:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->setInferenceRatio1(F)V

    .line 57
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->middlePointSmootherInferenceRatio2:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->setInferenceRatio2(F)V

    .line 58
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    .line 59
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    .line 60
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    .line 61
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_ignoreTouch:Z

    .line 63
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_delayingDestruction:Z

    const/4 v0, -0x1

    .line 64
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->setInsertOrder(I)V

    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->setDelayCompletion(Z)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->setDoNotClearOverlay(Z)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->setMarkerModeEnabled(Z)V

    return-void
.end method

.method private addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->generateInformation()Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->setInformation(Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;)V

    .line 472
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;-><init>()V

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;

    const/4 v1, 0x0

    .line 473
    invoke-virtual {v0, p1, p2, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;ILjava/util/List;)V

    .line 476
    new-instance p1, Lcom/metamoji/un/draw2/module/command/DrCommand;

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-direct {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    .line 477
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 478
    sget-object p2, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->PERMANENT:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationType(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;)V

    .line 479
    sget-object p2, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->EVERYONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationTarget(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;)V

    .line 482
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object p2

    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->REGISTER:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->executeCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    return-void
.end method

.method private beginTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 4

    .line 260
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->checkDrawabilityAtPoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 261
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_ignoreTouch:Z

    return-void

    .line 266
    :cond_0
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    .line 269
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getStrokeStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 272
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    .line 273
    invoke-virtual {v0, p0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->setOwner(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;)V

    .line 274
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_idCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_idCounter:I

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->setUid(I)V

    .line 275
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->setStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 278
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->strokeLayerId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    .line 279
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->addDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 282
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->beginAtPoint(Landroid/graphics/PointF;)I

    .line 285
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    .line 288
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->setOptimizeForAcuteAngle(Z)V

    .line 289
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->beginConstructionAtPoint(Landroid/graphics/PointF;)V

    .line 292
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastStartPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 295
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->begin()V

    .line 296
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->moveToPoint(Landroid/graphics/PointF;)V

    return-void
.end method

.method private cancel()V
    .locals 3

    .line 450
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->cancel()V

    .line 452
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 455
    :cond_0
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    if-eqz v0, :cond_2

    .line 458
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->clear()V

    .line 460
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    if-eqz v0, :cond_3

    .line 461
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->clearConstruction()V

    .line 463
    :cond_3
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 464
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    return-void
.end method

.method private cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 0

    .line 442
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_ignoreTouch:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 443
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_ignoreTouch:Z

    return-void

    .line 446
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->cancel()V

    return-void
.end method

.method private endTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 7

    .line 347
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_ignoreTouch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 348
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_ignoreTouch:Z

    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    .line 356
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->endAtPoint(Landroid/graphics/PointF;)I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_5

    add-int/lit8 v3, v0, 0x1

    .line 359
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    const/4 v5, 0x2

    add-int/2addr v0, v5

    .line 360
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    .line 363
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v6, v3, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 366
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 369
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->startPointMoved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 370
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastStartPoint()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->moveToPoint(Landroid/graphics/PointF;)V

    .line 372
    :cond_1
    sget-object v3, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$path$DrUtPathUtility$DrUtAddedPathType:[I

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addedPathType()Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    if-eq v3, v5, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 380
    :cond_2
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastControlPoint()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    .line 381
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    goto :goto_1

    .line 377
    :cond_3
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    goto :goto_1

    .line 374
    :cond_4
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastControlPoint()Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    .line 389
    :cond_5
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->newReducedStrokeElementWithFamily(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 391
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->setReducerZoom(F)V

    .line 392
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->reducerDelta:F

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->reducerZoom()F

    move-result v3

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->setReducerDelta(F)V

    .line 393
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->setPoints(Lcom/metamoji/cm/PointArray;)V

    .line 396
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->containsPoint(Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 399
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->delayCompletion()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 400
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->uid()I

    move-result v3

    .line 401
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 402
    :try_start_0
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 403
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 404
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->insertOrder()I

    move-result v0

    if-ltz v0, :cond_6

    .line 405
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 406
    :try_start_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->insertOrder()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 407
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 409
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->markerModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 410
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 411
    :try_start_2
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->startPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v4, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 412
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 403
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    .line 416
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->insertOrder()I

    move-result v3

    if-gez v3, :cond_8

    .line 417
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->markerModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 418
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->startPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getMarkingOrderAtPoint(Landroid/graphics/PointF;)I

    move-result v3

    .line 420
    :cond_8
    invoke-direct {p0, v0, v3}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    .line 427
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    if-eqz v1, :cond_a

    .line 425
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->end()V

    goto :goto_3

    .line 427
    :cond_a
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->cancel()V

    .line 428
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 429
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 434
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->clear()V

    .line 435
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->clearConstruction()V

    .line 436
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    .line 437
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 438
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    return-void
.end method

.method private moveTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 4

    .line 300
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_ignoreTouch:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    .line 308
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->moveAtPoint(Landroid/graphics/PointF;)I

    add-int/lit8 p1, v0, 0x1

    .line 311
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    .line 315
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 318
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 321
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->startPointMoved()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 322
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastStartPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->moveToPoint(Landroid/graphics/PointF;)V

    .line 324
    :cond_1
    sget-object p1, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$path$DrUtPathUtility$DrUtAddedPathType:[I

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addedPathType()Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    goto :goto_0

    .line 332
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastControlPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    .line 333
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 329
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 326
    :cond_4
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastControlPoint()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 340
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->inferentialPoints()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 341
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->inferentialPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    .line 342
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->inferentialPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    .line 341
    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addTemporaryQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public delayCompletion()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_delayCompletion:Z

    return v0
.end method

.method public destroy()V
    .locals 5

    .line 156
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_delayingDestruction:Z

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    .line 160
    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    .line 163
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_delayingDestruction:Z

    .line 164
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1, p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->stockObject(Ljava/lang/Object;)V

    .line 165
    monitor-exit v0

    return-void

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 174
    :goto_0
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    if-ge v2, v1, :cond_3

    .line 168
    :try_start_1
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 169
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 170
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    .line 172
    :cond_2
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->destroy()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_3
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 175
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 177
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->cancel()V

    .line 178
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 179
    monitor-enter v0

    .line 180
    :try_start_2
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 181
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    .line 182
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 184
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_6

    .line 185
    monitor-enter v0

    .line 186
    :try_start_3
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 187
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    .line 188
    monitor-exit v0

    goto :goto_3

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 190
    :cond_6
    :goto_3
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 191
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    .line 192
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    return-void
.end method

.method public doNotClearOverlay()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_doNotClearOverlay:Z

    return v0
.end method

.method public handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 133
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 136
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

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

    .line 147
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 144
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->endTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 141
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->moveTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 138
    :cond_4
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->beginTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void
.end method

.method public insertOrder()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_insertOrder:I

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_isActive:Z

    return v0
.end method

.method public isDrawing()Z
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 120
    :cond_0
    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public markerModeEnabled()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_markerModeEnabled:Z

    return v0
.end method

.method public receiveCompletionWithDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)V
    .locals 6

    .line 208
    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->uid()I

    move-result v0

    .line 211
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 213
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 214
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 215
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 219
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    monitor-enter v4

    .line 220
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v1, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 221
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gez v1, :cond_1

    .line 225
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 226
    :try_start_2
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 228
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getMarkingOrderAtPoint(Landroid/graphics/PointF;)I

    move-result v0

    move v1, v0

    .line 230
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

    .line 235
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->ignoreInteractionsCompletion()Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    invoke-direct {p0, v2, v1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    goto :goto_1

    .line 238
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->destroy()V

    .line 243
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->doNotClearOverlay()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 244
    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 248
    :cond_4
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_delayingDestruction:Z

    if-eqz p1, :cond_5

    if-nez v3, :cond_5

    const/4 p1, 0x0

    .line 249
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_delayingDestruction:Z

    .line 250
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->unstockObject(Ljava/lang/Object;)V

    .line 251
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->destroy()V

    :cond_5
    return-void

    :catchall_1
    move-exception p1

    .line 221
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 215
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public setDelayCompletion(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_delayCompletion:Z

    return-void
.end method

.method public setDoNotClearOverlay(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_doNotClearOverlay:Z

    return-void
.end method

.method public setInsertOrder(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_insertOrder:I

    return-void
.end method

.method public setIsActive(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_isActive:Z

    return-void
.end method

.method public setMarkerModeEnabled(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrReducibleDrawInteraction;->m_markerModeEnabled:Z

    return-void
.end method

.method public type()Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;
    .locals 1

    .line 127
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->REDUCIBLE_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    return-object v0
.end method
