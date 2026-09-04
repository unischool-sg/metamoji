.class public Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;
.super Ljava/lang/Object;
.source "DrFountainDrawInteraction.java"

# interfaces
.implements Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;
.implements Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;


# instance fields
.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

.field private m_delayCompletion:Z

.field private m_delayingDestruction:Z

.field private m_doNotClearOverlay:Z

.field private m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

.field private m_elementMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;",
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

.field private m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

.field private m_points:Lcom/metamoji/cm/PointArray;

.field private m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/draw2/unit/DrUnUnitContext;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 50
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    .line 51
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->fountainStrokeSmoothness:I

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->setSmoothness(I)V

    .line 52
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    .line 53
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    .line 54
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_ignoreTouch:Z

    .line 56
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_delayingDestruction:Z

    const/4 v0, -0x1

    .line 57
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->setInsertOrder(I)V

    const/4 v0, 0x1

    .line 58
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->setDelayCompletion(Z)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->setDoNotClearOverlay(Z)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->setMarkerModeEnabled(Z)V

    return-void
.end method

.method private addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->generateInformation()Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->setInformation(Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;)V

    .line 450
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;-><init>()V

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;

    const/4 v1, 0x0

    .line 451
    invoke-virtual {v0, p1, p2, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;ILjava/util/List;)V

    .line 454
    new-instance p1, Lcom/metamoji/un/draw2/module/command/DrCommand;

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-direct {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    .line 455
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 456
    sget-object p2, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->PERMANENT:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationType(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;)V

    .line 457
    sget-object p2, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->EVERYONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationTarget(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;)V

    .line 460
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object p2

    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->REGISTER:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->executeCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    return-void
.end method

.method private beginTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->checkDrawabilityAtPoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 254
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_ignoreTouch:Z

    return-void

    .line 259
    :cond_0
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    .line 262
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getStrokeStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 265
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    .line 266
    invoke-virtual {v0, p0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->setOwner(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;)V

    .line 267
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    iget v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_idCounter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_idCounter:I

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->setUid(I)V

    .line 268
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->setStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;)V

    .line 269
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->setZoom(F)V

    .line 270
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->reducerRealtimeDelta:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->zoom()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->setDelta(F)V

    .line 271
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->fountainerSCDistance:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->setScDist(F)V

    .line 272
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->fountainerWCDistance:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->setWcDist(F)V

    .line 277
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->setTimes(Ljava/util/List;)V

    .line 280
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->strokeLayerId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    .line 281
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->addDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 284
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->beginAtPoint(Landroid/graphics/PointF;)I

    .line 287
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    .line 290
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 293
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->begin()V

    .line 294
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->addPoint(Landroid/graphics/PointF;JZ)V

    return-void
.end method

.method private cancel()V
    .locals 3

    .line 430
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->cancel()V

    .line 432
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 435
    :cond_0
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    if-eqz v0, :cond_2

    .line 438
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->clear()V

    .line 440
    :cond_2
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 441
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    return-void
.end method

.method private cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 0

    .line 422
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_ignoreTouch:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 423
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_ignoreTouch:Z

    return-void

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->cancel()V

    return-void
.end method

.method private endTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 10

    .line 323
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_ignoreTouch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 324
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_ignoreTouch:Z

    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    .line 332
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->endAtPoint(Landroid/graphics/PointF;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 336
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 337
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 340
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 341
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 344
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->timeOffset()J

    move-result-wide v5

    invoke-virtual {v4, v0, v5, v6, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->addPoint(Landroid/graphics/PointF;JZ)V

    .line 345
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->timeOffset()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->addPoint(Landroid/graphics/PointF;JZ)V

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_3

    .line 350
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    .line 353
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v0, v0, 0x2

    .line 360
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->timeOffset()J

    move-result-wide v7

    if-lt v4, v2, :cond_2

    move v9, v3

    goto :goto_1

    :cond_2
    move v9, v1

    :goto_1
    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->addPoint(Landroid/graphics/PointF;JZ)V

    goto :goto_0

    .line 365
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->newFountainStrokeElementWithFamily(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;

    move-result-object v0

    .line 368
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 369
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->delta()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->setReducerDelta(F)V

    .line 370
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->zoom()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->setReducerZoom(F)V

    .line 371
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->fountainerSCDistance:F

    float-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->setSCDist(D)V

    .line 372
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->fountainerWCDistance:F

    float-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->setWCDist(D)V

    .line 373
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->times()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->setTimes(Ljava/util/List;)V

    .line 374
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->setPoints(Lcom/metamoji/cm/PointArray;)V

    .line 377
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->containsPoint(Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 380
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->delayCompletion()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 381
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->uid()I

    move-result v3

    .line 382
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 383
    :try_start_0
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 384
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 385
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->insertOrder()I

    move-result v0

    if-ltz v0, :cond_4

    .line 386
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    monitor-enter v0

    .line 387
    :try_start_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->insertOrder()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 388
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 390
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->markerModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 391
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 392
    :try_start_2
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->startPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v4, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 393
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

    .line 384
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    .line 397
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->insertOrder()I

    move-result v3

    if-gez v3, :cond_6

    .line 398
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->markerModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 399
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->startPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getMarkingOrderAtPoint(Landroid/graphics/PointF;)I

    move-result v3

    .line 401
    :cond_6
    invoke-direct {p0, v0, v3}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    .line 408
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    if-eqz v1, :cond_8

    .line 406
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->end()V

    goto :goto_4

    .line 408
    :cond_8
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->cancel()V

    .line 409
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 410
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 415
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->clear()V

    .line 416
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    .line 417
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    .line 418
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    return-void
.end method

.method private moveTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 4

    .line 298
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_ignoreTouch:Z

    if-eqz v0, :cond_0

    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    .line 306
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->moveAtPoint(Landroid/graphics/PointF;)I

    add-int/lit8 v1, v0, 0x1

    .line 309
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    .line 310
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_points:Lcom/metamoji/cm/PointArray;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 316
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->timeOffset()J

    move-result-wide v2

    const/4 p1, 0x0

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvFountainStrokeDrawer;->addPoint(Landroid/graphics/PointF;JZ)V

    return-void
.end method


# virtual methods
.method public delayCompletion()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_delayCompletion:Z

    return v0
.end method

.method public destroy()V
    .locals 5

    .line 150
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_delayingDestruction:Z

    if-eqz v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    .line 154
    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    .line 157
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_delayingDestruction:Z

    .line 158
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1, p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->stockObject(Ljava/lang/Object;)V

    .line 159
    monitor-exit v0

    return-void

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 168
    :goto_0
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

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
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->cancel()V

    .line 172
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 173
    monitor-enter v0

    .line 174
    :try_start_2
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 175
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

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
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_6

    .line 179
    monitor-enter v0

    .line 180
    :try_start_3
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 181
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

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
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 185
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    return-void
.end method

.method public doNotClearOverlay()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_doNotClearOverlay:Z

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
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

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
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 138
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->endTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 135
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->moveTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 132
    :cond_4
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->beginTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void
.end method

.method public insertOrder()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_insertOrder:I

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_isActive:Z

    return v0
.end method

.method public isDrawing()Z
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 110
    :cond_0
    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 112
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public markerModeEnabled()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_markerModeEnabled:Z

    return v0
.end method

.method public receiveCompletionWithDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)V
    .locals 6

    .line 202
    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->uid()I

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 207
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 208
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 213
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    monitor-enter v4

    .line 214
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v1, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 215
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gez v1, :cond_1

    .line 219
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 220
    :try_start_2
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 222
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getMarkingOrderAtPoint(Landroid/graphics/PointF;)I

    move-result v0

    move v1, v0

    .line 224
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

    .line 229
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->ignoreInteractionsCompletion()Z

    move-result v0

    if-nez v0, :cond_2

    .line 230
    invoke-direct {p0, v2, v1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    goto :goto_1

    .line 232
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->destroy()V

    .line 237
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->doNotClearOverlay()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 238
    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 242
    :cond_4
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_delayingDestruction:Z

    if-eqz p1, :cond_5

    if-nez v3, :cond_5

    const/4 p1, 0x0

    .line 243
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_delayingDestruction:Z

    .line 244
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->unstockObject(Ljava/lang/Object;)V

    .line 245
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->destroy()V

    :cond_5
    return-void

    :catchall_1
    move-exception p1

    .line 215
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 209
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public setDelayCompletion(Z)V
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_delayCompletion:Z

    return-void
.end method

.method public setDoNotClearOverlay(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_doNotClearOverlay:Z

    return-void
.end method

.method public setInsertOrder(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_insertOrder:I

    return-void
.end method

.method public setIsActive(Z)V
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_isActive:Z

    return-void
.end method

.method public setMarkerModeEnabled(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrFountainDrawInteraction;->m_markerModeEnabled:Z

    return-void
.end method

.method public type()Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;
    .locals 1

    .line 119
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->FOUNTAIN_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    return-object v0
.end method
