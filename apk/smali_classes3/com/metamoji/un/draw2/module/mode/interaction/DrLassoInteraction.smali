.class public Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;
.super Ljava/lang/Object;
.source "DrLassoInteraction.java"

# interfaces
.implements Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;
.implements Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;
.implements Lcom/metamoji/un/draw2/library/mesh/DrMsSearchOwner;


# instance fields
.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

.field private m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

.field private m_elementMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">;"
        }
    .end annotation
.end field

.field private m_fillAlpha:F

.field private m_hitTestMargin:F

.field private m_ignoreOthersElements:Z

.field private m_inclusionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">;"
        }
    .end annotation
.end field

.field private m_inclusionOnly:Z

.field private m_isActive:Z

.field private m_moved:Z

.field private m_movementThreshold:F

.field private m_path:Landroid/graphics/Path;

.field private final m_prevPoint:Landroid/graphics/PointF;

.field private m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

.field private m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

.field private final m_startPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_prevPoint:Landroid/graphics/PointF;

    .line 63
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_startPoint:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_inclusionOnly:Z

    .line 69
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 70
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    .line 71
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->lassoSmoothness:I

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->setSmoothness(I)V

    .line 72
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_elementMap:Ljava/util/HashMap;

    .line 73
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_inclusionMap:Ljava/util/HashMap;

    .line 74
    new-instance p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    .line 75
    iput-object p0, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->owner:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchOwner;

    .line 76
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->setInclusionOnly(Z)V

    return-void
.end method

.method private beginTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getLassoStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 240
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v1

    .line 243
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/un/draw2/module/DrModuleSettings;->hitTestMargin:F

    div-float/2addr v2, v1

    iput v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_hitTestMargin:F

    .line 244
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iput v2, v3, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->hitTestMargin:F

    .line 247
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/un/draw2/module/DrModuleSettings;->lassoMovementThreshold:F

    div-float/2addr v2, v1

    iput v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_movementThreshold:F

    .line 250
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->ignoreOthersElementsInSelectionsAndEditsAndFocuses()Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_ignoreOthersElements:Z

    .line 253
    new-instance v1, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    .line 254
    invoke-virtual {v1, p0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->setOwner(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerOwner;)V

    .line 255
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->setStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 258
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->lassoLayerId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    .line 259
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->addDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 262
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->style()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->fillAlpha()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_fillAlpha:F

    .line 263
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->style()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillAlpha(F)V

    .line 266
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_path:Landroid/graphics/Path;

    .line 269
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->beginAtPoint(Landroid/graphics/PointF;)I

    .line 272
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 275
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->begin()V

    .line 276
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->moveToPoint(Landroid/graphics/PointF;)V

    .line 279
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_path:Landroid/graphics/Path;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 282
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_moved:Z

    .line 285
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_prevPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 288
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_startPoint:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method private cancel()V
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->cancel()V

    .line 493
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->layer()Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawerLayer;->removeDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)Z

    .line 496
    :cond_0
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_elementMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 499
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_inclusionMap:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 502
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 504
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    if-eqz v0, :cond_4

    .line 505
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->clear()V

    .line 507
    :cond_4
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_path:Landroid/graphics/Path;

    return-void
.end method

.method private cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 0

    .line 487
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->cancel()V

    return-void
.end method

.method private endTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 13

    .line 320
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_moved:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 325
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 326
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    .line 329
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->endAtPoint(Landroid/graphics/PointF;)I

    move-result v4

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_0

    add-int/lit8 v6, v2, 0x1

    .line 332
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v7

    add-int/lit8 v2, v2, 0x2

    .line 333
    iget-object v8, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v6

    .line 336
    invoke-direct {p0, v3, v7, v6}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->searchAndDrawWithStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    add-int/lit8 v5, v5, 0x2

    move-object v3, v6

    goto :goto_0

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 348
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_startPoint:Landroid/graphics/PointF;

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 349
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    sget-object v4, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->HIT_TEST_WITH_SEGMENT:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    iput-object v4, v2, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->type:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    .line 350
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iput-object v3, v2, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    .line 352
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_startPoint:Landroid/graphics/PointF;

    iput-object v3, v2, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point2:Landroid/graphics/PointF;

    .line 353
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->searchWithContext(Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;)V

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    sget-object v3, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->HIT_TEST_WITH_AREA:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    iput-object v3, v2, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->type:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    .line 358
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_path:Landroid/graphics/Path;

    iput-object v3, v2, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->area:Landroid/graphics/Path;

    .line 359
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->searchWithContext(Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;)V

    goto :goto_1

    .line 362
    :cond_2
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    sget-object v3, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->HIT_TEST_WITH_POINT:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    iput-object v3, v2, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->type:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    .line 363
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v3

    iput-object v3, v2, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    .line 364
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->searchWithContext(Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;)V

    .line 368
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->inclusionOnly()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 370
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 373
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 376
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object v5

    .line 377
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 379
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    invoke-virtual {v5, v8, v3, v3}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;ZZ)Ljava/util/HashSet;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 382
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    if-nez v9, :cond_4

    goto :goto_6

    .line 388
    :cond_4
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 390
    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    .line 395
    :cond_5
    invoke-virtual {v5, v8}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMembersOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;

    move-result-object v9

    .line 401
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 402
    iget-object v12, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_6

    move v10, v1

    goto :goto_4

    :cond_7
    move v10, v3

    :goto_4
    if-eqz v10, :cond_8

    .line 410
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 411
    iget-object v11, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/un/draw2/module/element/DrElement;

    invoke-virtual {v2, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 416
    :cond_8
    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 383
    :cond_9
    :goto_6
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 421
    :cond_a
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_inclusionMap:Ljava/util/HashMap;

    .line 425
    :cond_b
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->inclusionOnly()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_inclusionMap:Ljava/util/HashMap;

    goto :goto_7

    :cond_c
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_elementMap:Ljava/util/HashMap;

    .line 428
    :goto_7
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_10

    .line 430
    new-instance v4, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;

    invoke-direct {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;-><init>()V

    iget-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v4, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;

    .line 431
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->setOverlay(Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;)V

    .line 432
    invoke-virtual {v4, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->setTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 435
    iget-boolean v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_moved:Z

    if-eqz v6, :cond_d

    .line 436
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 437
    invoke-virtual {v4, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->selectElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    goto :goto_8

    .line 441
    :cond_d
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getSortedElementIdsByAscending(ZLjava/util/Set;)Ljava/util/List;

    move-result-object v6

    .line 442
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_e

    .line 443
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrElement;

    invoke-virtual {v4, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->selectElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    goto :goto_9

    .line 445
    :cond_e
    invoke-static {v1, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 449
    :goto_9
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->setTouchPosition(Landroid/graphics/PointF;)V

    .line 453
    :cond_f
    new-instance v1, Lcom/metamoji/un/draw2/module/command/DrCommand;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-direct {v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommand;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    .line 454
    invoke-virtual {v1, v4}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 457
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->NORMAL:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->executeCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    goto :goto_a

    :cond_10
    move v0, v1

    :goto_a
    if-eqz v0, :cond_11

    .line 465
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->style()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_fillAlpha:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setFillAlpha(F)V

    .line 466
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->close()V

    .line 467
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->end()V

    .line 468
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->repaint()V

    .line 471
    new-instance v0, Lcom/metamoji/un/draw2/module/selection/DrLasso;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_path:Landroid/graphics/Path;

    invoke-direct {v0, v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrLasso;-><init>(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;Landroid/graphics/Path;)V

    .line 472
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->keepLassoForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Lcom/metamoji/un/draw2/module/selection/DrLasso;)V

    .line 475
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 476
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 477
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->clear()V

    .line 478
    iput-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    .line 479
    iput-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_path:Landroid/graphics/Path;

    return-void

    .line 482
    :cond_11
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->cancel()V

    return-void
.end method

.method private moveTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 4

    .line 293
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_prevPoint:Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDistanceBetweenPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    iget v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_movementThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 299
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    .line 302
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->moveAtPoint(Landroid/graphics/PointF;)I

    add-int/lit8 v2, v0, 0x1

    .line 305
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    .line 306
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 309
    invoke-direct {p0, v1, v0, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->searchAndDrawWithStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_moved:Z

    .line 315
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_prevPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method private searchAndDrawWithStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 4

    .line 512
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    sget-object v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->HIT_TEST_WITH_SEGMENT:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    iput-object v1, v0, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->type:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    .line 515
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iput-object p1, v0, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    .line 522
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iput-object p3, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point2:Landroid/graphics/PointF;

    .line 523
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->searchWithContext(Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;)V

    goto :goto_1

    .line 526
    :cond_1
    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iput-object p1, v0, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    .line 529
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iput-object p3, p1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point2:Landroid/graphics/PointF;

    .line 530
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->searchWithContext(Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;)V

    goto :goto_1

    .line 532
    :cond_2
    invoke-static {p1, p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointEqualToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iput-object p1, v0, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    .line 535
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {p1, p2, p3, v1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getPointOnQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point2:Landroid/graphics/PointF;

    .line 539
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->searchWithContext(Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;)V

    goto :goto_1

    .line 542
    :cond_3
    invoke-static {p1, p2, p3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getApproximateSegmentsOfQuadCurve(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 545
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    const/4 v1, 0x1

    .line 547
    :goto_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 548
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 549
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iput-object v0, v3, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    .line 550
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iput-object v2, v0, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point2:Landroid/graphics/PointF;

    .line 551
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->searchWithContext(Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;)V

    add-int/lit8 v1, v1, 0x1

    move-object v0, v2

    goto :goto_0

    .line 559
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_drawer:Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;

    invoke-virtual {p1, p3, p2}, Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvSimpleStrokeDrawer;->addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 562
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_path:Landroid/graphics/Path;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0, p2, v1, p3}, Landroid/graphics/Path;->quadTo(FFFF)V

    return-void
.end method


# virtual methods
.method public checkExclusionWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public destroy()V
    .locals 2

    .line 125
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->cancel()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 127
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_smoother:Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    .line 128
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    if-eqz v1, :cond_0

    .line 129
    iput-object v0, v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->owner:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchOwner;

    .line 130
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    :cond_0
    return-void
.end method

.method public handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 102
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 105
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

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

    .line 116
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 113
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->endTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 110
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->moveTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 107
    :cond_4
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->beginTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void
.end method

.method public inclusionOnly()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_inclusionOnly:Z

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_isActive:Z

    return v0
.end method

.method public receiveCompletionWithDrawer(Lcom/metamoji/un/draw2/library/overlay/drawer/DrOvDrawer;)V
    .locals 0

    return-void
.end method

.method public receiveHitReportWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;I)V
    .locals 9

    .line 160
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 162
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 167
    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_ignoreOthersElements:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1, p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->checkOwnElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 172
    :cond_1
    sget-object v1, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$mesh$DrMsSearchContext$DrMsSearchType:[I

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iget-object v2, v2, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->type:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    const/4 v4, 0x2

    if-eq v1, v4, :cond_7

    const/4 p3, 0x3

    if-eq v1, p3, :cond_2

    .line 227
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_2
    move p3, v0

    move v1, v3

    .line 201
    :goto_0
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->samplePointCount()I

    move-result v4

    if-ge p3, v4, :cond_6

    .line 202
    invoke-virtual {p2, p3}, Lcom/metamoji/un/draw2/module/element/DrElement;->samplePointAtIndex(I)Landroid/graphics/PointF;

    move-result-object v4

    .line 203
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_path:Landroid/graphics/Path;

    invoke-static {v5, v2, v4, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPathContainsPoint(Landroid/graphics/Path;Landroid/graphics/Matrix;Landroid/graphics/PointF;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 204
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->inclusionOnly()Z

    move-result v4

    if-nez v4, :cond_5

    move v0, v3

    goto :goto_1

    .line 210
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->inclusionOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :cond_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_1
    if-eqz v0, :cond_b

    .line 218
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->inclusionOnly()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 222
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_inclusionMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 194
    :cond_7
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iget-object v0, v0, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iget-object v1, v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point2:Landroid/graphics/PointF;

    invoke-virtual {p2, v0, v1, p3}, Lcom/metamoji/un/draw2/module/element/DrElement;->distanceToSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;I)F

    move-result p3

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-nez p3, :cond_b

    .line 195
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 175
    :cond_8
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iget-object v0, v0, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    invoke-virtual {p2, v0, p3}, Lcom/metamoji/un/draw2/module/element/DrElement;->distanceToPoint(Landroid/graphics/PointF;I)F

    move-result p3

    iget v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_hitTestMargin:F

    cmpg-float p3, p3, v0

    if-gtz p3, :cond_b

    .line 177
    sget-object p3, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v0

    aget p3, p3, v0

    if-eq p3, v3, :cond_9

    :goto_2
    move-object v8, v2

    goto :goto_3

    .line 179
    :cond_9
    move-object p3, p2

    check-cast p3, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->unit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v2

    goto :goto_2

    :goto_3
    if-eqz v8, :cond_a

    .line 187
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_searchContext:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    iget-object v3, p3, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    iget-object p3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    invoke-static/range {v3 .. v8}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->doesNotConcernAboutHitTestPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;ZZZLcom/metamoji/nt/NtUnitController;)Z

    move-result p3

    if-nez p3, :cond_b

    .line 188
    :cond_a
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_elementMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_4
    return-void
.end method

.method public setInclusionOnly(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_inclusionOnly:Z

    return-void
.end method

.method public setIsActive(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLassoInteraction;->m_isActive:Z

    return-void
.end method

.method public type()Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;
    .locals 1

    .line 96
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->LASSO:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    return-object v0
.end method
