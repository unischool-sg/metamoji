.class public Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;
.super Ljava/lang/Object;
.source "DrShapeDrawInteraction.java"

# interfaces
.implements Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;
.implements Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;


# instance fields
.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

.field private m_delayCompletion:Z

.field private m_delayingDestruction:Z

.field private m_doNotClearOverlay:Z

.field private m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

.field private m_elementMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Number;",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">;"
        }
    .end annotation
.end field

.field private m_idCounter:I

.field private m_ignoreTouch:Z

.field private m_insertOrder:I

.field private m_isActive:Z

.field private m_markerModeEnabled:Z

.field private m_markingPointMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Number;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private m_moved:Z

.field private m_orderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

.field private m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

.field private m_shapeRecognizer:Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

.field private m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 74
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    .line 75
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->simpleStrokeSmoothness:I

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->setSmoothness(I)V

    .line 76
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->middlePointSmootherInferenceRatio1:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->setInferenceRatio1(F)V

    .line 77
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v0, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->middlePointSmootherInferenceRatio2:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->setInferenceRatio2(F)V

    .line 78
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    .line 79
    new-instance p1, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_shapeRecognizer:Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

    .line 80
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_elementMap:Ljava/util/HashMap;

    .line 81
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_orderMap:Ljava/util/HashMap;

    .line 82
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_markingPointMap:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_ignoreTouch:Z

    .line 84
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_delayingDestruction:Z

    const/4 v0, -0x1

    .line 85
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->setInsertOrder(I)V

    const/4 v0, 0x1

    .line 86
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->setDelayCompletion(Z)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->setDoNotClearOverlay(Z)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->setMarkerModeEnabled(Z)V

    return-void
.end method

.method private addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->generateInformation()Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->setInformation(Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;)V

    .line 551
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;-><init>()V

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;

    const/4 v1, 0x0

    .line 552
    invoke-virtual {v0, p1, p2, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;ILjava/util/List;)V

    .line 555
    new-instance p1, Lcom/metamoji/un/draw2/module/command/DrCommand;

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-direct {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    .line 556
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 557
    sget-object p2, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->PERMANENT:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationType(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;)V

    .line 558
    sget-object p2, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->EVERYONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationTarget(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;)V

    .line 561
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object p2

    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->REGISTER:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->executeCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    return-void
.end method

.method private beginTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 5

    .line 283
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->checkDrawabilityAtPoint(Landroid/graphics/PointF;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 284
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_ignoreTouch:Z

    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getStrokeStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 293
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillType()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    move-result-object v0

    sget-object v2, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    .line 296
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 297
    sget-object v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;

    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillType(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle$FillType;)V

    .line 301
    :goto_0
    new-instance v0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    .line 302
    invoke-virtual {v0, p0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->setOwner(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;)V

    .line 303
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_idCounter:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_idCounter:I

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->setUid(I)V

    .line 304
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->setStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 307
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->strokeLayerId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    .line 308
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->addDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 311
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->beginAtPoint(Landroid/graphics/PointF;)I

    .line 314
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    .line 317
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v2, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->setOptimizeForAcuteAngle(Z)V

    .line 318
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->beginConstructionAtPoint(Landroid/graphics/PointF;)V

    .line 321
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_shapeRecognizer:Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->setCoordinateZoom(F)V

    .line 324
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_shapeRecognizer:Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastStartPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->beginAtPoint(Landroid/graphics/PointF;)V

    .line 327
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->begin()V

    .line 328
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->moveToPoint(Landroid/graphics/PointF;)V

    .line 331
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_moved:Z

    return-void
.end method

.method private cancel()V
    .locals 3

    .line 526
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 527
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->cancel()V

    .line 528
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 531
    :cond_0
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    if-eqz v0, :cond_2

    .line 534
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->clear()V

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    if-eqz v0, :cond_3

    .line 537
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->clearConstruction()V

    .line 539
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_shapeRecognizer:Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

    if-eqz v0, :cond_4

    .line 540
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->clearPoints()V

    .line 542
    :cond_4
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-void
.end method

.method private cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 0

    .line 517
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_ignoreTouch:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 518
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_ignoreTouch:Z

    return-void

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->cancel()V

    return-void
.end method

.method private createElementFromRecognitionResult(Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;)Lcom/metamoji/un/draw2/module/element/DrElement;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 567
    sget-object v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$shape$DrShShapeType:[I

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->shapeType()Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x3

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v2, :pswitch_data_0

    const/16 v1, 0xc

    .line 937
    invoke-static {v1, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v11

    .line 879
    :pswitch_0
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 880
    new-array v7, v7, [Z

    .line 881
    invoke-virtual {v1, v2, v4, v7}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->checkArrow(Landroid/graphics/PointF;Landroid/graphics/PointF;[Z)Z

    move-result v8

    if-nez v8, :cond_0

    const/16 v1, 0xb

    .line 882
    invoke-static {v1, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v11

    .line 885
    :cond_0
    aget-boolean v8, v7, v9

    .line 886
    aget-boolean v7, v7, v10

    .line 888
    invoke-static {v2, v4, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 889
    sget-object v2, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->LINE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->setShapeType(Lcom/metamoji/un/draw2/library/shape/DrShShapeType;)V

    .line 890
    invoke-direct/range {p0 .. p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->createElementFromRecognitionResult(Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v1

    return-object v1

    .line 894
    :cond_1
    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    if-eqz v8, :cond_5

    if-eqz v7, :cond_3

    .line 900
    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->HAT:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    iget-object v7, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v7

    invoke-static {v6, v7}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getHeadTipLengthForHeadType(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)F

    move-result v6

    mul-float/2addr v6, v5

    cmpl-float v1, v1, v6

    if-lez v1, :cond_2

    .line 901
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->HAT:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    iget-object v5, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v5

    invoke-static {v2, v4, v1, v5}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v1

    .line 902
    sget-object v5, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->HAT:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    iget-object v6, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v6

    invoke-static {v4, v2, v5, v6}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v2

    move-object v4, v2

    move-object v2, v1

    .line 904
    :cond_2
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->BOTH:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    goto :goto_0

    .line 906
    :cond_3
    sget-object v5, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->HAT:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    iget-object v6, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v6

    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getHeadTipLengthForHeadType(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)F

    move-result v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_4

    .line 907
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->HAT:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    iget-object v5, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v5

    invoke-static {v2, v4, v1, v5}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v2

    .line 909
    :cond_4
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->START:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    goto :goto_0

    .line 912
    :cond_5
    sget-object v5, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->HAT:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    iget-object v6, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v6

    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->getHeadTipLengthForHeadType(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)F

    move-result v5

    cmpl-float v1, v1, v5

    if-lez v1, :cond_6

    .line 913
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->HAT:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    iget-object v5, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v5

    invoke-static {v4, v2, v1, v5}, Lcom/metamoji/un/draw2/library/utility/arrow/DrUtArrowUtility;->endPointForHeadTip(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;F)Landroid/graphics/PointF;

    move-result-object v4

    .line 915
    :cond_6
    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;->END:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;

    :goto_0
    move-object v5, v4

    move-object v4, v2

    .line 921
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->newArrowPenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v8

    .line 922
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v2, v8, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->copyToPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;F)Z

    .line 923
    sget-object v2, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;->HAT:Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;

    invoke-virtual {v8, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadType(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadType;)V

    .line 924
    invoke-virtual {v8, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->setHeadPosition(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle$DrStArrowHeadPosition;)V

    .line 925
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 930
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    iget-object v10, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 925
    invoke-static/range {v4 .. v11}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->newLineArrowElementWithStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;ZZLcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;

    move-result-object v1

    return-object v1

    .line 855
    :pswitch_1
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->getPolygonPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    if-nez v1, :cond_7

    const/16 v1, 0xa

    .line 857
    invoke-static {v1, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v11

    .line 862
    :cond_7
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 863
    invoke-static {v9, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v10, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 864
    new-array v3, v10, [Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    aput-object v2, v3, v9

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 865
    :goto_1
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v3

    if-ge v7, v3, :cond_8

    .line 866
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v3

    .line 867
    invoke-static {v7, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;)V

    .line 868
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 870
    :cond_8
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 872
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    iget-object v4, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 870
    invoke-static {v2, v1, v3, v4, v11}, Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;->newSimpleShapeElementWithSegments(Ljava/util/List;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;

    move-result-object v1

    return-object v1

    .line 819
    :pswitch_2
    new-instance v2, Lcom/metamoji/cm/RectEx;

    invoke-direct {v2}, Lcom/metamoji/cm/RectEx;-><init>()V

    .line 820
    new-array v3, v10, [F

    aput v8, v3, v9

    .line 821
    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->checkRectangleBaseRect(Lcom/metamoji/cm/RectEx;[F)Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x9

    .line 822
    invoke-static {v1, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v11

    .line 825
    :cond_9
    aget v1, v3, v9

    .line 828
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result v1

    .line 830
    invoke-static {v1, v8, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v3

    if-nez v3, :cond_a

    .line 831
    new-instance v11, Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-direct {v11}, Lcom/metamoji/un/draw2/module/element/DrEditContext;-><init>()V

    .line 832
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v3

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v11, v1, v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->setRotateContextWithAngleInDegrees(FLandroid/graphics/PointF;)V

    :cond_a
    move-object/from16 v18, v11

    .line 834
    sget-object v3, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_ROUND:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    sget-object v4, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_ROUND:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    sget-object v5, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_ROUND:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    sget-object v6, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;->CONVEX_ROUND:Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;

    sget-object v8, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeZero:Lcom/metamoji/cm/SizeF;

    sget-object v9, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeZero:Lcom/metamoji/cm/SizeF;

    iget-object v15, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget-object v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 848
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v16

    iget-object v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    const/16 v7, 0xf

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v17, v1

    .line 834
    invoke-static/range {v2 .. v18}, Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;->newRectangleElementWithBaseBounds(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement$DrRectangleCornerType;ILcom/metamoji/cm/SizeF;Lcom/metamoji/cm/SizeF;ZZZZZLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/shape/DrRectangleElement;

    move-result-object v1

    return-object v1

    .line 802
    :pswitch_3
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 803
    invoke-virtual {v1, v2, v3, v4}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->checkTrianglePoint1(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0x8

    .line 804
    invoke-static {v1, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v11

    .line 809
    :cond_b
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget-object v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 813
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v6

    iget-object v7, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 809
    invoke-static/range {v2 .. v7}, Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;->newTriangleElementWithPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/element/shape/DrTriangleElement;

    move-result-object v1

    return-object v1

    .line 730
    :pswitch_4
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 731
    new-array v3, v4, [F

    fill-array-data v3, :array_0

    .line 732
    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->checkEllipseCenter(Landroid/graphics/PointF;[F)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x6

    .line 733
    invoke-static {v1, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v11

    .line 736
    :cond_c
    aget v1, v3, v9

    aget v4, v3, v10

    aget v3, v3, v7

    .line 739
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result v3

    .line 741
    invoke-static {v3, v8, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v6

    if-nez v6, :cond_d

    .line 742
    new-instance v11, Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-direct {v11}, Lcom/metamoji/un/draw2/module/element/DrEditContext;-><init>()V

    .line 743
    invoke-virtual {v11, v3, v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->setRotateContextWithAngleInDegrees(FLandroid/graphics/PointF;)V

    :cond_d
    move-object/from16 v25, v11

    .line 745
    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    mul-float/2addr v1, v5

    mul-float/2addr v4, v5

    invoke-static {v3, v2, v1, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v12

    iget-object v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget-object v2, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 756
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v23

    iget-object v2, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    const/high16 v13, -0x3d4c0000    # -90.0f

    const/high16 v14, 0x43870000    # 270.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v1

    move-object/from16 v24, v2

    .line 745
    invoke-static/range {v12 .. v25}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->newDiskShapeElementWithBaseBounds(Lcom/metamoji/cm/RectEx;FFFFZZZZZLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;

    move-result-object v1

    return-object v1

    :pswitch_5
    return-object v11

    .line 678
    :pswitch_6
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 679
    new-array v3, v10, [F

    aput v8, v3, v9

    .line 680
    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->checkCircleCenter(Landroid/graphics/PointF;[F)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x4

    .line 681
    invoke-static {v1, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v11

    .line 684
    :cond_e
    aget v1, v3, v9

    .line 687
    iget v3, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    mul-float/2addr v1, v5

    invoke-static {v3, v2, v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v4

    iget-object v14, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget-object v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 690
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v15

    iget-object v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    const/16 v17, 0x0

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/high16 v6, 0x43870000    # 270.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v1

    .line 687
    invoke-static/range {v4 .. v17}, Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;->newDiskShapeElementWithBaseBounds(Lcom/metamoji/cm/RectEx;FFFFZZZZZLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/shape/DrDiskShapeElement;

    move-result-object v1

    return-object v1

    .line 654
    :pswitch_7
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->getMultiCurvePoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    if-nez v1, :cond_f

    .line 656
    invoke-static {v4, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v11

    .line 661
    :cond_f
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v2

    .line 662
    invoke-static {v9, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v10, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    invoke-static {v7, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v2, v3, v5, v6}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 663
    new-array v3, v10, [Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    aput-object v2, v3, v9

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_2
    add-int/lit8 v3, v4, 0x1

    .line 664
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v5

    if-ge v3, v5, :cond_10

    .line 665
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v5

    .line 666
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 667
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 669
    :cond_10
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 671
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    iget-object v4, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 669
    invoke-static {v2, v1, v3, v4, v11}, Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;->newSimpleShapeElementWithSegments(Ljava/util/List;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;

    move-result-object v1

    return-object v1

    .line 636
    :pswitch_8
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 637
    invoke-virtual {v1, v2, v3, v4}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->checkCurveStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 638
    invoke-static {v7, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v11

    .line 643
    :cond_11
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    .line 644
    invoke-virtual {v1, v2, v3, v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 645
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 647
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    iget-object v4, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 645
    invoke-static {v1, v2, v3, v4, v11}, Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;->newSimpleShapeElementWithSegments(Ljava/util/List;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;

    move-result-object v1

    return-object v1

    .line 600
    :pswitch_9
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->getMultiLinePoints()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    if-nez v2, :cond_12

    .line 602
    invoke-static {v10, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v11

    .line 607
    :cond_12
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->newArrowPenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v4

    .line 608
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v1, v4, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->copyToPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;F)Z

    .line 609
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 612
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    iget-object v6, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 609
    invoke-static/range {v2 .. v7}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->newMultiLineArrowElementWithPoints(Lcom/metamoji/cm/PointArray;ZLcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;

    move-result-object v1

    return-object v1

    .line 569
    :pswitch_a
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    .line 570
    invoke-virtual {v1, v2, v4}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->checkLineStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 571
    invoke-static {v9, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v11

    .line 574
    :cond_13
    invoke-static {v2, v4, v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 576
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->newSegmentWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/segment/DrSgSegment;

    move-result-object v1

    .line 577
    invoke-virtual {v1, v2, v4}, Lcom/metamoji/un/draw2/library/segment/DrSgSegment;->setLine(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 578
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 580
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    iget-object v4, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 578
    invoke-static {v1, v2, v3, v4, v11}, Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;->newSimpleShapeElementWithSegments(Ljava/util/List;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/shape/DrSimpleShapeElement;

    move-result-object v1

    return-object v1

    .line 585
    :cond_14
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;->newArrowPenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v6

    .line 586
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v1, v6, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->copyToPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;F)Z

    .line 587
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 592
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v7

    iget-object v8, v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    const/4 v9, 0x0

    move-object v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 587
    invoke-static/range {v2 .. v9}, Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;->newLineArrowElementWithStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;ZZLcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/arrow/DrLineArrowElement;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private endTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 9

    .line 386
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_ignoreTouch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 387
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_ignoreTouch:Z

    return-void

    .line 392
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_moved:Z

    if-nez v0, :cond_1

    .line 393
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->cancel()V

    return-void

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    .line 401
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->endAtPoint(Landroid/graphics/PointF;)I

    move-result v2

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v2, :cond_6

    add-int/lit8 v5, v0, 0x1

    .line 404
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v6

    const/4 v7, 0x2

    add-int/2addr v0, v7

    .line 405
    iget-object v8, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    .line 408
    iget-object v8, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v8, v5, v6}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 411
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->startPointMoved()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 412
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastStartPoint()Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->moveToPoint(Landroid/graphics/PointF;)V

    .line 414
    :cond_2
    sget-object v5, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$path$DrUtPathUtility$DrUtAddedPathType:[I

    iget-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addedPathType()Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility$DrUtAddedPathType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    if-eq v5, v4, :cond_5

    if-eq v5, v7, :cond_4

    const/4 v4, 0x3

    if-eq v5, v4, :cond_3

    goto :goto_1

    .line 425
    :cond_3
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastControlPoint()Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    .line 426
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    .line 427
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_shapeRecognizer:Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastControlPoint()Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->addLineToPoint(Landroid/graphics/PointF;)V

    .line 428
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_shapeRecognizer:Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->addLineToPoint(Landroid/graphics/PointF;)V

    goto :goto_1

    .line 421
    :cond_4
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    .line 422
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_shapeRecognizer:Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->addLineToPoint(Landroid/graphics/PointF;)V

    goto :goto_1

    .line 416
    :cond_5
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v5

    iget-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastControlPoint()Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 417
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_shapeRecognizer:Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v5

    iget-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    .line 418
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastControlPoint()Landroid/graphics/PointF;

    move-result-object v6

    .line 417
    invoke-virtual {v4, v5, v6}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_0

    .line 436
    :cond_6
    new-instance v0, Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;-><init>()V

    .line 439
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_shapeRecognizer:Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->recognizeWithOption(Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;)Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_8

    .line 441
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 442
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->clear()V

    .line 443
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->clearConstruction()V

    .line 444
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_shapeRecognizer:Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->clearPoints()V

    .line 445
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->cancel()V

    .line 446
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 447
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 449
    :cond_7
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    .line 450
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-void

    .line 455
    :cond_8
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->createElementFromRecognitionResult(Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v0

    if-nez v0, :cond_a

    .line 457
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 458
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->clear()V

    .line 459
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->clearConstruction()V

    .line 460
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_shapeRecognizer:Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->clearPoints()V

    .line 461
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->cancel()V

    .line 462
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 463
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 465
    :cond_9
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    .line 466
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-void

    .line 471
    :cond_a
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->containsPoint(Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 474
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->delayCompletion()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 475
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->uid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 476
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_elementMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 477
    :try_start_0
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 479
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->insertOrder()I

    move-result v0

    if-ltz v0, :cond_b

    .line 480
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_orderMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 481
    :try_start_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_orderMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->insertOrder()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 484
    :cond_b
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->markerModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 485
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_markingPointMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 486
    :try_start_2
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_markingPointMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->startPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->copy(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v4, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
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

    .line 478
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    .line 491
    :cond_c
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->insertOrder()I

    move-result v3

    if-gez v3, :cond_d

    .line 492
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->markerModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 493
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->startPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getMarkingOrderAtPoint(Landroid/graphics/PointF;)I

    move-result v3

    .line 495
    :cond_d
    invoke-direct {p0, v0, v3}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    .line 502
    :cond_e
    :goto_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    if-eqz v1, :cond_f

    .line 500
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->end()V

    goto :goto_3

    .line 502
    :cond_f
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->cancel()V

    .line 503
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 504
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 509
    :cond_10
    :goto_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->clear()V

    .line 510
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->clearConstruction()V

    .line 511
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_shapeRecognizer:Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->clearPoints()V

    .line 512
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    .line 513
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-void
.end method

.method private moveTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 4

    .line 335
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_ignoreTouch:Z

    if-eqz v0, :cond_0

    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    .line 343
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->moveAtPoint(Landroid/graphics/PointF;)I

    add-int/lit8 p1, v0, 0x1

    .line 346
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    .line 350
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 353
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->startPointMoved()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 354
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastStartPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->moveToPoint(Landroid/graphics/PointF;)V

    .line 356
    :cond_1
    sget-object p1, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$utility$path$DrUtPathUtility$DrUtAddedPathType:[I

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

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

    .line 366
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastControlPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    .line 367
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    .line 368
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_shapeRecognizer:Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastControlPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->addLineToPoint(Landroid/graphics/PointF;)V

    .line 369
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_shapeRecognizer:Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->addLineToPoint(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 362
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    .line 363
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_shapeRecognizer:Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->addLineToPoint(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 358
    :cond_4
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastControlPoint()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 359
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_shapeRecognizer:Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastEndPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->lastControlPoint()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 376
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->inferentialPoints()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p1

    if-ne p1, v0, :cond_5

    .line 377
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->inferentialPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    .line 378
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->inferentialPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 377
    invoke-virtual {p1, v0, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addTemporaryQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 382
    :cond_5
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_moved:Z

    return-void
.end method


# virtual methods
.method public delayCompletion()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_delayCompletion:Z

    return v0
.end method

.method public destroy()V
    .locals 3

    .line 182
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_delayingDestruction:Z

    if-eqz v0, :cond_0

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_elementMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 186
    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    .line 189
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_delayingDestruction:Z

    .line 190
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1, p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->stockObject(Ljava/lang/Object;)V

    .line 191
    monitor-exit v0

    return-void

    .line 193
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 195
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->cancel()V

    .line 196
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_orderMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 197
    monitor-enter v0

    .line 198
    :try_start_1
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_orderMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 199
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_orderMap:Ljava/util/HashMap;

    .line 200
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 202
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_markingPointMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 203
    monitor-enter v0

    .line 204
    :try_start_2
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_markingPointMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 205
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_markingPointMap:Ljava/util/HashMap;

    .line 206
    monitor-exit v0

    goto :goto_2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 208
    :cond_4
    :goto_2
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 209
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    .line 210
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_pathUtility:Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;

    .line 211
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_shapeRecognizer:Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;

    return-void
.end method

.method public doNotClearOverlay()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_doNotClearOverlay:Z

    return v0
.end method

.method public handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 154
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 162
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

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

    .line 173
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 170
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->endTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 167
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->moveTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 164
    :cond_4
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->beginTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void
.end method

.method public insertOrder()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_insertOrder:I

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_isActive:Z

    return v0
.end method

.method public isDrawing()Z
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_elementMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 141
    :cond_0
    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 143
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public markerModeEnabled()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_markerModeEnabled:Z

    return v0
.end method

.method public receiveCompletionWithDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)V
    .locals 6

    .line 227
    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->uid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_elementMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 232
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 234
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 238
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_orderMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 239
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_orderMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 241
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 243
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gez v1, :cond_2

    .line 247
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_markingPointMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 248
    :try_start_2
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_markingPointMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    .line 250
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getMarkingOrderAtPoint(Landroid/graphics/PointF;)I

    move-result v0

    move v1, v0

    .line 252
    :cond_1
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    .line 257
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->ignoreInteractionsCompletion()Z

    move-result v0

    if-nez v0, :cond_3

    .line 258
    invoke-direct {p0, v2, v1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    goto :goto_2

    .line 260
    :cond_3
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->destroy()V

    .line 265
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->doNotClearOverlay()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 266
    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 270
    :cond_5
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_delayingDestruction:Z

    if-eqz p1, :cond_6

    if-nez v3, :cond_6

    const/4 p1, 0x0

    .line 271
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_delayingDestruction:Z

    .line 272
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->unstockObject(Ljava/lang/Object;)V

    .line 273
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->destroy()V

    :cond_6
    return-void

    :catchall_1
    move-exception p1

    .line 243
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 234
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public setDelayCompletion(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_delayCompletion:Z

    return-void
.end method

.method public setDoNotClearOverlay(Z)V
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_doNotClearOverlay:Z

    return-void
.end method

.method public setInsertOrder(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_insertOrder:I

    return-void
.end method

.method public setIsActive(Z)V
    .locals 0

    .line 219
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_isActive:Z

    return-void
.end method

.method public setMarkerModeEnabled(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrShapeDrawInteraction;->m_markerModeEnabled:Z

    return-void
.end method

.method public type()Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;
    .locals 1

    .line 148
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->SHAPE_DRAW:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    return-object v0
.end method
