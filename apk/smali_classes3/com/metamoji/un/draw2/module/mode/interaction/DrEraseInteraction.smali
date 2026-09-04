.class public Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;
.super Ljava/lang/Object;
.source "DrEraseInteraction.java"

# interfaces
.implements Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;
.implements Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;
.implements Lcom/metamoji/un/draw2/library/mesh/DrMsSearchOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;
    }
.end annotation


# instance fields
.field private m_active:Z

.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

.field private m_delayCompletion:Z

.field private m_delayingDestruction:Z

.field private m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

.field private m_eraseContext:Lcom/metamoji/un/draw2/module/element/DrEraseContext;

.field private m_eraseContextMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/un/draw2/module/element/DrEraseContext;",
            ">;"
        }
    .end annotation
.end field

.field private m_eraseTargetsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_eraserWidth:F

.field private m_fineness:F

.field private m_idCounter:I

.field private m_ignoreOthersElements:Z

.field private m_moved:Z

.field private m_movementThreshold:F

.field private final m_prevPoint:Landroid/graphics/PointF;

.field private m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

.field private m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_prevPoint:Landroid/graphics/PointF;

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_delayCompletion:Z

    .line 91
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 92
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    .line 93
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->eraserSmoothness:I

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->setSmoothness(I)V

    .line 94
    new-instance p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    .line 95
    iput-object p0, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->owner:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchOwner;

    .line 96
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContextMap:Landroid/util/SparseArray;

    .line 97
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseTargetsMap:Landroid/util/SparseArray;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 98
    iput p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_fineness:F

    const/4 p1, 0x0

    .line 99
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_delayingDestruction:Z

    .line 100
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->setDelayCompletion(Z)V

    return-void
.end method

.method private beginTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getEraserStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 281
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->lineWidth()F

    move-result v1

    iput v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraserWidth:F

    .line 284
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iput v1, v2, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->hitTestMargin:F

    .line 287
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->eraserMovementThreshold:F

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v2

    iget v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_fineness:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_movementThreshold:F

    .line 290
    new-instance v1, Lcom/metamoji/un/draw2/module/element/DrEraseContext;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContext:Lcom/metamoji/un/draw2/module/element/DrEraseContext;

    .line 293
    new-instance v1, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    .line 294
    invoke-virtual {v1, p0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->setOwner(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;)V

    .line 295
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_idCounter:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_idCounter:I

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->setUid(I)V

    .line 296
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->setStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 299
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->eraserLayerId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    .line 300
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->addDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 303
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->beginAtPoint(Landroid/graphics/PointF;)I

    .line 306
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 309
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->begin()V

    .line 310
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->moveToPoint(Landroid/graphics/PointF;)V

    .line 313
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_moved:Z

    .line 316
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_prevPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method private cancel()V
    .locals 3

    .line 419
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->cancel()V

    .line 421
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 424
    :cond_0
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    if-eqz v0, :cond_2

    .line 427
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->clear()V

    .line 429
    :cond_2
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContext:Lcom/metamoji/un/draw2/module/element/DrEraseContext;

    return-void
.end method

.method private cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 0

    .line 415
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->cancel()V

    return-void
.end method

.method private createEraseTargetsFromContext(Lcom/metamoji/un/draw2/module/element/DrEraseContext;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/module/element/DrEraseContext;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;",
            ">;"
        }
    .end annotation

    .line 553
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->getStrokes()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 554
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 559
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 560
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v1

    .line 561
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 562
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    .line 564
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 567
    :cond_2
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_ignoreOthersElements:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->checkOwnElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 568
    :cond_3
    new-instance v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;-><init>(Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction-IA;)V

    .line 569
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    iput-object v4, v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 570
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;->startIndex:D

    .line 571
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v4

    iput-wide v4, v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;->endIndex:D

    .line 572
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    iput-object v4, v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 573
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v4

    iput-object v4, v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;->penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 574
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->transform()Landroid/graphics/Matrix;

    move-result-object v4

    iput-object v4, v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;->transform:Landroid/graphics/Matrix;

    .line 575
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->angleInDegrees()F

    move-result v4

    iput v4, v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;->angleInDegrees:F

    .line 576
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->contentScale()F

    move-result v3

    iput v3, v2, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;->contentScale:F

    .line 577
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0

    .line 555
    :cond_5
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private endTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 7

    .line 348
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_moved:Z

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 351
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    .line 354
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->endAtPoint(Landroid/graphics/PointF;)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    add-int/lit8 v4, v0, 0x1

    .line 357
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    add-int/lit8 v0, v0, 0x2

    .line 358
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    .line 361
    invoke-direct {p0, v1, v5, v4}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->searchAndDraw(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    add-int/lit8 v3, v3, 0x2

    move-object v1, v4

    goto :goto_0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    sget-object v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->HIT_TEST_WITH_POINT:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    iput-object v1, v0, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->type:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    .line 368
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    .line 369
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->searchWithContext(Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;)V

    .line 372
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addLineToPoint(Landroid/graphics/PointF;)V

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContext:Lcom/metamoji/un/draw2/module/element/DrEraseContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->hasEraseIntervals()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 378
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->ignoreOthersElementsInSelectionsAndEditsAndFocuses()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_ignoreOthersElements:Z

    .line 381
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->containsPoint(Landroid/graphics/PointF;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 384
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->delayCompletion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContextMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->uid()I

    move-result v1

    .line 387
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContextMap:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContext:Lcom/metamoji/un/draw2/module/element/DrEraseContext;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 388
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseTargetsMap:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContext:Lcom/metamoji/un/draw2/module/element/DrEraseContext;

    invoke-direct {p0, v3}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->createEraseTargetsFromContext(Lcom/metamoji/un/draw2/module/element/DrEraseContext;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 389
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContext:Lcom/metamoji/un/draw2/module/element/DrEraseContext;

    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->eraseWithContext(Lcom/metamoji/un/draw2/module/element/DrEraseContext;)V

    .line 398
    :goto_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    if-eqz p1, :cond_3

    .line 396
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->end()V

    goto :goto_2

    .line 398
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->cancel()V

    .line 399
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 400
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 405
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->clear()V

    const/4 p1, 0x0

    .line 406
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    .line 407
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContext:Lcom/metamoji/un/draw2/module/element/DrEraseContext;

    return-void

    .line 410
    :cond_5
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->cancel()V

    return-void
.end method

.method private eraseWithContext(Lcom/metamoji/un/draw2/module/element/DrEraseContext;)V
    .locals 8

    .line 481
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->getStrokes()Ljava/util/Set;

    move-result-object v0

    .line 482
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 487
    :cond_0
    new-instance v1, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;-><init>()V

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;

    .line 488
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v2

    .line 490
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 491
    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    if-nez v6, :cond_2

    .line 493
    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 496
    :cond_2
    iget-boolean v7, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_ignoreOthersElements:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v7, v6}, Lcom/metamoji/un/draw2/module/DrModuleContext;->checkOwnElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 497
    :cond_3
    invoke-virtual {p1, v5}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->getEraseIntervalsOfStroke(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->eraseElement(Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;Ljava/util/List;)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    .line 502
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->destroy()V

    return-void

    .line 507
    :cond_5
    new-instance p1, Lcom/metamoji/un/draw2/module/command/DrCommand;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-direct {p1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    .line 508
    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 509
    sget-object v0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->PERMANENT:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationType(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;)V

    .line 510
    sget-object v0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->EVERYONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationTarget(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;)V

    .line 513
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->REGISTER:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {v0, p1, v1}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->executeCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    return-void
.end method

.method private eraseWithContext(Lcom/metamoji/un/draw2/module/element/DrEraseContext;Ljava/util/ArrayList;Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/module/element/DrEraseContext;",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;",
            ">;",
            "Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 517
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 527
    :cond_0
    new-instance p3, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;

    invoke-direct {p3}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;-><init>()V

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p3, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;

    .line 528
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;

    .line 529
    iget-object v1, p3, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    iget-wide v2, p3, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;->startIndex:D

    iget-wide v4, p3, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;->endIndex:D

    iget-object v6, p3, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    iget-object v7, p3, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;->penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    iget-object v8, p3, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;->transform:Landroid/graphics/Matrix;

    iget v9, p3, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;->angleInDegrees:F

    iget v10, p3, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;->contentScale:F

    iget-object p3, p3, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$DrEraseTarget;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 537
    invoke-virtual {p1, p3}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->getEraseIntervalsOfStroke(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v11

    .line 529
    invoke-virtual/range {v0 .. v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->eraseElementWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;Landroid/graphics/Matrix;FFLjava/util/List;)V

    goto :goto_0

    .line 541
    :cond_1
    new-instance p1, Lcom/metamoji/un/draw2/module/command/DrCommand;

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-direct {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    .line 542
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 543
    sget-object p2, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->PERMANENT:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationType(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;)V

    .line 544
    sget-object p2, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->EVERYONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationTarget(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;)V

    .line 547
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object p2

    sget-object p3, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->REGISTER:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {p2, p1, p3}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->executeCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    return-void

    .line 522
    :cond_2
    :goto_1
    invoke-interface {p3}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->cancel()V

    return-void
.end method

.method private moveTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 4

    .line 321
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_prevPoint:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_movementThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 327
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    .line 330
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->moveAtPoint(Landroid/graphics/PointF;)I

    add-int/lit8 v2, v0, 0x1

    .line 333
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 334
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 337
    invoke-direct {p0, v1, v0, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->searchAndDraw(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_moved:Z

    .line 343
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_prevPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method private searchAndDraw(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 4

    .line 434
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    sget-object v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->HIT_TEST_WITH_SEGMENT:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    iput-object v1, v0, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->type:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    .line 437
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iput-object p1, v0, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    .line 444
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iput-object p3, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point2:Landroid/graphics/PointF;

    .line 445
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->searchWithContext(Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;)V

    goto :goto_1

    .line 448
    :cond_1
    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iput-object p1, v0, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    .line 451
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iput-object p3, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point2:Landroid/graphics/PointF;

    .line 452
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->searchWithContext(Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;)V

    goto :goto_1

    .line 454
    :cond_2
    invoke-static {p1, p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 456
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iput-object p1, v0, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    .line 457
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {p1, p2, p3, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointOnQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point2:Landroid/graphics/PointF;

    .line 458
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->searchWithContext(Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;)V

    goto :goto_1

    .line 461
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getApproximateSegmentsOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 462
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    const/4 v1, 0x1

    .line 464
    :goto_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 465
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 466
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iput-object v0, v3, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    .line 467
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iput-object v2, v0, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point2:Landroid/graphics/PointF;

    .line 468
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->searchWithContext(Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;)V

    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    .line 476
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1, p3, p2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void
.end method


# virtual methods
.method public checkExclusionWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 233
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 236
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isErasable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object p1

    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method public delayCompletion()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_delayCompletion:Z

    return v0
.end method

.method public destroy()V
    .locals 2

    .line 161
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_delayingDestruction:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContextMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContextMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    .line 167
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_delayingDestruction:Z

    .line 168
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1, p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->stockObject(Ljava/lang/Object;)V

    .line 169
    monitor-exit v0

    return-void

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContextMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 172
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseTargetsMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 173
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->cancel()V

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 176
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    .line 177
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    if-eqz v1, :cond_2

    .line 178
    iput-object v0, v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->owner:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchOwner;

    .line 179
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 173
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public fineness()F
    .locals 1

    .line 111
    iget v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_fineness:F

    return v0
.end method

.method public handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 138
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 141
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

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

    .line 152
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 149
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->endTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 146
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->moveTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 143
    :cond_4
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->beginTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_active:Z

    return v0
.end method

.method public receiveCompletionWithDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)V
    .locals 5

    .line 196
    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->uid()I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContextMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContextMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrEraseContext;

    .line 202
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseTargetsMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 203
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContextMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 204
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseTargetsMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 205
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContextMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 206
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 209
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->ignoreInteractionsCompletion()Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    invoke-direct {p0, v2, v3, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->eraseWithContext(Lcom/metamoji/un/draw2/module/element/DrEraseContext;Ljava/util/ArrayList;Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)V

    .line 214
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 215
    invoke-interface {p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 219
    :cond_1
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_delayingDestruction:Z

    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    const/4 p1, 0x0

    .line 220
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_delayingDestruction:Z

    .line 221
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->unstockObject(Ljava/lang/Object;)V

    .line 222
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->destroy()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 206
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public receiveHitReportWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;I)V
    .locals 6

    .line 241
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    .line 243
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContext:Lcom/metamoji/un/draw2/module/element/DrEraseContext;

    if-nez p1, :cond_1

    goto :goto_0

    .line 252
    :cond_1
    sget-object p1, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$mesh$DrMsSearchContext$DrMsSearchType:[I

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iget-object v2, v2, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->type:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->ordinal()I

    move-result v2

    aget p1, p1, v2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    .line 268
    invoke-static {v1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 261
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iget-object v1, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iget-object v2, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    iget v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraserWidth:F

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContext:Lcom/metamoji/un/draw2/module/element/DrEraseContext;

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->checkEraseIntervalsBySegmentWithPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/DrEraseContext;I)V

    return-void

    :cond_3
    move v5, p3

    .line 254
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iget-object v1, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iget-object v2, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point2:Landroid/graphics/PointF;

    iget v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraserWidth:F

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_eraseContext:Lcom/metamoji/un/draw2/module/element/DrEraseContext;

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->checkEraseIntervalsBySegmentWithPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/DrEraseContext;I)V

    return-void

    .line 247
    :cond_4
    :goto_0
    invoke-static {v1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public setDelayCompletion(Z)V
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_delayCompletion:Z

    return-void
.end method

.method public setFineness(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 114
    iput p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_fineness:F

    return-void

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 116
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public setIsActive(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEraseInteraction;->m_active:Z

    return-void
.end method

.method public type()Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;
    .locals 1

    .line 132
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->ERASE:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    return-object v0
.end method
