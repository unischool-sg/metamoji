.class public Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;
.super Ljava/lang/Object;
.source "DrDirectMoveInteraction.java"

# interfaces
.implements Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;


# instance fields
.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

.field private m_editInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;

.field private m_ignoreSingletonStroke:Z

.field private m_isActive:Z

.field private m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

.field private m_selectionOrigin:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_ignoreSingletonStroke:Z

    .line 40
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 41
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->setIgnoreSingletonStroke(Z)V

    return-void
.end method

.method private beginTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 12

    .line 105
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_editInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_editInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->destroy()V

    .line 108
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_editInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;

    .line 110
    :cond_0
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 113
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionsForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 114
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_c

    .line 119
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v4

    iget v4, v4, Lcom/metamoji/un/draw2/module/DrModuleSettings;->hitTestMargin:F

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v5

    div-float/2addr v4, v5

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v2

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 122
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->displayBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v7

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectContainsPoint(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameMap()Ljava/util/HashMap;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameMap()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 128
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameMap()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/cm/RectEx;

    neg-float v9, v4

    .line 129
    invoke-static {v8, v9, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object v8

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectContainsPoint(Lcom/metamoji/cm/RectEx;Landroid/graphics/PointF;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v5, v1

    :cond_5
    if-eqz v5, :cond_6

    .line 136
    iput-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    goto :goto_4

    :cond_6
    move v7, v2

    .line 141
    :goto_2
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 142
    invoke-virtual {v6, v7}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElementAtOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v8

    .line 144
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v9

    sget-object v10, Lcom/metamoji/un/draw2/module/element/DrElementType;->SHAPE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v9, v10, :cond_7

    .line 145
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v9

    move-object v10, v8

    check-cast v10, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object v10

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->angleInRadians()F

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkInnerPointWithAngleInRadians(Landroid/graphics/PointF;Lcom/metamoji/cm/RectEx;F)Z

    move-result v9

    if-nez v9, :cond_8

    .line 146
    :cond_7
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/metamoji/un/draw2/module/element/DrElement;->distanceToPoint(Landroid/graphics/PointF;)F

    move-result v8

    cmpg-float v8, v8, v4

    if-gtz v8, :cond_9

    :cond_8
    move v5, v1

    goto :goto_3

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    if-eqz v5, :cond_2

    .line 152
    iput-object v6, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    :cond_b
    :goto_4
    move v2, v5

    :cond_c
    if-nez v2, :cond_e

    if-eqz v3, :cond_d

    .line 162
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->deselectForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 166
    :cond_d
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->selectForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    if-nez v0, :cond_e

    return-void

    .line 173
    :cond_e
    new-instance v0, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/cm/RectEx;->y:F

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_selectionOrigin:Landroid/graphics/PointF;

    .line 176
    new-instance v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-direct {v0, v2}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_editInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;

    .line 177
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 180
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setPaintGroupFramesWhenTranslateEdit(Z)V

    return-void
.end method

.method private cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_editInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 236
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_editInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->destroy()V

    const/4 p1, 0x0

    .line 237
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_editInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;

    .line 240
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setPaintGroupFramesWhenTranslateEdit(Z)V

    .line 243
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    return-void
.end method

.method private deselectForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 3

    .line 316
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;-><init>()V

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;

    .line 317
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->removeSelectionsForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 320
    new-instance v1, Lcom/metamoji/un/draw2/module/command/DrCommand;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-direct {v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommand;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    .line 321
    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 322
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    sget-object v2, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->NORMAL:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->executeCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setTargetSelectionId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void
.end method

.method private endTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_editInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 199
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_editInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->destroy()V

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_editInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;

    .line 203
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->longPressed()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/cm/RectEx;->x:F

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/cm/RectEx;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_selectionOrigin:Landroid/graphics/PointF;

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->deselectForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setPaintGroupFramesWhenTranslateEdit(Z)V

    .line 211
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    return-void
.end method

.method private longPressTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 7

    .line 215
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_editInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;

    if-nez v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->effectLayerId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->overlayPointFromCanvasPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 223
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object p1

    iget v3, p1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->longPressEffectCircleRadius:F

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 224
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->defaultLongPressEffectStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v4

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 225
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object p1

    iget-wide v5, p1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->longPressEffectDuration:D

    .line 222
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->shrinkCircle(Landroid/graphics/PointF;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;D)V

    :cond_1
    :goto_0
    return-void
.end method

.method private moveTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_editInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void
.end method

.method private selectForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/module/selection/DrSelection;
    .locals 9

    .line 248
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 251
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->ignoreOthersElementsInSelectionsAndEditsAndFocuses()Z

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 248
    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/un/draw2/module/DrModuleContext;->hitTestAtPoint(Landroid/graphics/PointF;Ljava/util/Set;ZZZZZZ)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 256
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getSortedElementsByAscending(ZLjava/util/Set;)Ljava/util/List;

    move-result-object v0

    .line 265
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 267
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->ignoreSingletonStroke()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v5

    sget-object v6, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v5, v6, :cond_2

    .line 268
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object v5

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    invoke-virtual {v5, v6, v3, v4}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;ZZ)Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 269
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 275
    :cond_2
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_4

    return-object v1

    .line 287
    :cond_4
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;-><init>()V

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v5}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;

    .line 288
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->setOverlay(Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;)V

    .line 289
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->setTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 290
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->setTouchPosition(Landroid/graphics/PointF;)V

    .line 291
    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->setRestrictSelectionToTranslation(Z)V

    .line 292
    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->selectElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 295
    new-instance v2, Lcom/metamoji/un/draw2/module/command/DrCommand;

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-direct {v2, v5}, Lcom/metamoji/un/draw2/module/command/DrCommand;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    .line 296
    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 297
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    sget-object v5, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->NORMAL:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {v0, v2, v5}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->executeCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    .line 300
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionsForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 301
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 305
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 306
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v0

    if-nez v0, :cond_6

    .line 307
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_6
    return-object p1

    .line 302
    :cond_7
    :goto_2
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_8
    :goto_3
    return-object v1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 87
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_editInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;->destroy()V

    .line 89
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_editInteraction:Lcom/metamoji/un/draw2/module/mode/interaction/DrEditInteraction;

    .line 91
    :cond_0
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_selection:Lcom/metamoji/un/draw2/module/selection/DrSelection;

    return-void
.end method

.method public handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 58
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->disableInteractions()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->type()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    :goto_0
    return-void

    .line 78
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 75
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->longPressTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 72
    :cond_4
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->endTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 69
    :cond_5
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->moveTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 66
    :cond_6
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->beginTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void
.end method

.method public ignoreSingletonStroke()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_ignoreSingletonStroke:Z

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_isActive:Z

    return v0
.end method

.method public setIgnoreSingletonStroke(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_ignoreSingletonStroke:Z

    return-void
.end method

.method public setIsActive(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrDirectMoveInteraction;->m_isActive:Z

    return-void
.end method

.method public type()Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;
    .locals 1

    .line 54
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->DIRECT_MOVE:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    return-object v0
.end method
