.class public Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;
.super Ljava/lang/Object;
.source "DrSimpleDrawInteraction.java"

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

.field private m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

.field private m_strokeElement:Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 52
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    .line 53
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->simpleStrokeSmoothness:I

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->setSmoothness(I)V

    .line 54
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->middlePointSmootherInferenceRatio1:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->setInferenceRatio1(F)V

    .line 55
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->middlePointSmootherInferenceRatio2:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->setInferenceRatio2(F)V

    .line 56
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    .line 57
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    .line 58
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    .line 59
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_ignoreTouch:Z

    .line 61
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_delayingDestruction:Z

    const/4 v0, -0x1

    .line 62
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->setInsertOrder(I)V

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->setDelayCompletion(Z)V

    .line 64
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->setDoNotClearOverlay(Z)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->setMarkerModeEnabled(Z)V

    return-void
.end method

.method private addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->generateInformation()Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->setInformation(Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;)V

    .line 471
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;-><init>()V

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;

    const/4 v1, 0x0

    .line 472
    invoke-virtual {v0, p1, p2, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;ILjava/util/List;)V

    .line 475
    new-instance p1, Lcom/metamoji/un/draw2/module/command/DrCommand;

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-direct {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    .line 476
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 477
    sget-object p2, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->PERMANENT:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationType(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;)V

    .line 478
    sget-object p2, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->EVERYONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationTarget(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;)V

    .line 481
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object p2

    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->REGISTER:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->executeCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    return-void
.end method

.method private beginTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 4

    .line 260
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->checkDrawabilityAtPoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 261
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_ignoreTouch:Z

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getStrokeStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 269
    new-instance v1, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    .line 270
    invoke-virtual {v1, p0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->setOwner(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;)V

    .line 271
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_idCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_idCounter:I

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->setUid(I)V

    .line 272
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->setStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 275
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->strokeLayerId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    .line 276
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->addDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 279
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->newSimpleStrokeElementWithFamily(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_strokeElement:Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;

    .line 282
    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 285
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->beginAtPoint(Landroid/graphics/PointF;)I

    .line 288
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    .line 291
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_strokeElement:Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->setBezierPoints(Lcom/metamoji/cm/PointArray;)V

    .line 292
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_strokeElement:Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->bezierPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->setBezierPath(Landroid/graphics/Path;)V

    .line 293
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_strokeElement:Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->pathRects()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->setPathRects(Ljava/lang/Object;)V

    .line 294
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->setOptimizeForAcuteAngle(Z)V

    .line 295
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->beginConstructionAtPoint(Landroid/graphics/PointF;)V

    .line 298
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->begin()V

    .line 299
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->moveToPoint(Landroid/graphics/PointF;)V

    return-void
.end method

.method private cancel()V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_strokeElement:Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 444
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_strokeElement:Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_strokeElement:Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->destroy()V

    .line 448
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_strokeElement:Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    if-eqz v0, :cond_3

    .line 451
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->cancel()V

    .line 452
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 455
    :cond_2
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    .line 457
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    if-eqz v0, :cond_4

    .line 458
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->clear()V

    .line 460
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    if-eqz v0, :cond_5

    .line 461
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->clearConstruction()V

    :cond_5
    return-void
.end method

.method private cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 0

    .line 434
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_ignoreTouch:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 435
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_ignoreTouch:Z

    return-void

    .line 438
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->cancel()V

    return-void
.end method

.method private endTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 7

    .line 347
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_ignoreTouch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 348
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_ignoreTouch:Z

    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    .line 356
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->endAtPoint(Landroid/graphics/PointF;)I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_5

    add-int/lit8 v3, v0, 0x1

    .line 359
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    const/4 v5, 0x2

    add-int/2addr v0, v5

    .line 360
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    .line 363
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v6, v3, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 366
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->startPointMoved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastStartPoint()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->moveToPoint(Landroid/graphics/PointF;)V

    .line 369
    :cond_1
    sget-object v3, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$path$DrUtPathUtility$DrUtAddedPathType:[I

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

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

    .line 377
    :cond_2
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastControlPoint()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    .line 378
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    goto :goto_1

    .line 374
    :cond_3
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    goto :goto_1

    .line 371
    :cond_4
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastControlPoint()Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 386
    :cond_5
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_strokeElement:Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;->updatePoints(Lcom/metamoji/cm/PointArray;)V

    .line 389
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->containsPoint(Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 392
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->delayCompletion()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 393
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->uid()I

    move-result v1

    .line 394
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 395
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_strokeElement:Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 396
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 397
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->insertOrder()I

    move-result v2

    if-ltz v2, :cond_6

    .line 398
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    monitor-enter v2

    .line 399
    :try_start_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->insertOrder()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 400
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 402
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->markerModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 403
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 404
    :try_start_2
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->startPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 405
    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 396
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    .line 409
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->insertOrder()I

    move-result v1

    if-gez v1, :cond_8

    .line 410
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->markerModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 411
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->startPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getMarkingOrderAtPoint(Landroid/graphics/PointF;)I

    move-result v1

    .line 413
    :cond_8
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_strokeElement:Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;

    invoke-direct {p0, p1, v1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    .line 420
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    if-eqz v0, :cond_a

    .line 418
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->end()V

    goto :goto_3

    .line 420
    :cond_a
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->cancel()V

    .line 421
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 422
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 427
    :cond_b
    :goto_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->clear()V

    .line 428
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->clearConstruction()V

    const/4 p1, 0x0

    .line 429
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    .line 430
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_strokeElement:Lcom/metamoji/un/draw2/module/element/stroke/DrSimpleStrokeElement;

    return-void
.end method

.method private moveTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 4

    .line 303
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_ignoreTouch:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    .line 311
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->moveAtPoint(Landroid/graphics/PointF;)I

    add-int/lit8 p1, v0, 0x1

    .line 314
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    .line 318
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 321
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->startPointMoved()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 322
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastStartPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->moveToPoint(Landroid/graphics/PointF;)V

    .line 324
    :cond_1
    sget-object p1, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$path$DrUtPathUtility$DrUtAddedPathType:[I

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

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
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastControlPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    .line 333
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 329
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 326
    :cond_4
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastControlPoint()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 340
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->inferentialPoints()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 341
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->inferentialPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

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

    .line 87
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_delayCompletion:Z

    return v0
.end method

.method public destroy()V
    .locals 5

    .line 154
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_delayingDestruction:Z

    if-eqz v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    .line 158
    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    .line 161
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_delayingDestruction:Z

    .line 162
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1, p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->stockObject(Ljava/lang/Object;)V

    .line 163
    monitor-exit v0

    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 172
    :goto_0
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    if-ge v2, v1, :cond_3

    .line 166
    :try_start_1
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 167
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 168
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    .line 170
    :cond_2
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->destroy()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_3
    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 173
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 175
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->cancel()V

    .line 176
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 177
    monitor-enter v0

    .line 178
    :try_start_2
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 179
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    .line 180
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 182
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_6

    .line 183
    monitor-enter v0

    .line 184
    :try_start_3
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 185
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    .line 186
    monitor-exit v0

    goto :goto_3

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 188
    :cond_6
    :goto_3
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 189
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    .line 190
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    return-void
.end method

.method public doNotClearOverlay()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_doNotClearOverlay:Z

    return v0
.end method

.method public handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 131
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 134
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

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

    .line 145
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 142
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->endTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 139
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->moveTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 136
    :cond_4
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->beginTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void
.end method

.method public insertOrder()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_insertOrder:I

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_isActive:Z

    return v0
.end method

.method public isDrawing()Z
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 118
    :cond_0
    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public markerModeEnabled()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_markerModeEnabled:Z

    return v0
.end method

.method public receiveCompletionWithDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)V
    .locals 6

    .line 206
    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->uid()I

    move-result v0

    .line 209
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    .line 211
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 212
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_elementMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 213
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 217
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    monitor-enter v4

    .line 218
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_orderMap:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v1, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 219
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gez v1, :cond_1

    .line 223
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    monitor-enter v4

    .line 224
    :try_start_2
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_markingPointMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getMarkingOrderAtPoint(Landroid/graphics/PointF;)I

    move-result v0

    move v1, v0

    .line 228
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

    .line 232
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    if-eqz v0, :cond_3

    .line 233
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->ignoreInteractionsCompletion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->destroy()V

    goto :goto_1

    .line 236
    :cond_2
    invoke-direct {p0, v2, v1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    .line 241
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->doNotClearOverlay()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 242
    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 246
    :cond_4
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_delayingDestruction:Z

    if-eqz p1, :cond_5

    if-nez v3, :cond_5

    const/4 p1, 0x0

    .line 247
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_delayingDestruction:Z

    .line 248
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->unstockObject(Ljava/lang/Object;)V

    .line 249
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->destroy()V

    :cond_5
    return-void

    :catchall_1
    move-exception p1

    .line 219
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 213
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public setDelayCompletion(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_delayCompletion:Z

    return-void
.end method

.method public setDoNotClearOverlay(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_doNotClearOverlay:Z

    return-void
.end method

.method public setInsertOrder(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_insertOrder:I

    return-void
.end method

.method public setIsActive(Z)V
    .locals 0

    .line 198
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_isActive:Z

    return-void
.end method

.method public setMarkerModeEnabled(Z)V
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrSimpleDrawInteraction;->m_markerModeEnabled:Z

    return-void
.end method

.method public type()Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;
    .locals 1

    .line 125
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->SIMPLE_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    return-object v0
.end method
