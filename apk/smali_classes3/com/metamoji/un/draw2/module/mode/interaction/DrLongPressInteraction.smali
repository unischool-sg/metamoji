.class public Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;
.super Ljava/lang/Object;
.source "DrLongPressInteraction.java"

# interfaces
.implements Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction;
.implements Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;


# instance fields
.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

.field private m_hideRubberBandHandlesOfNewSelection:Z

.field private m_isActive:Z


# direct methods
.method public constructor <init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_hideRubberBandHandlesOfNewSelection:Z

    .line 38
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    return-void
.end method

.method private longPressTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 7

    .line 112
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->effectLayerId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->overlayPointFromCanvasPoint(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 115
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget v3, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->longPressEffectCircleRadius:F

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 116
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->defaultLongPressEffectStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v4

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 117
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    iget-wide v5, v0, Lcom/metamoji/un/draw2/module/DrModuleSettings;->longPressEffectDuration:D

    .line 114
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/un/draw2/library/overlay/effect/DrOvEffectLayer;->shrinkCircle(Landroid/graphics/PointF;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;D)V

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->performHapticFeedback(I)Z

    .line 123
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionsForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 132
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 133
    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->selectNewByTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 137
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->rubberBandLayerId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 139
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 140
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->selectNewByTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void

    .line 145
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 146
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 147
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setOwner(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;)V

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    .line 149
    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_5
    sget-object v2, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->BEGAN:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setType(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;)V

    .line 155
    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v2

    .line 156
    sget-object v4, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->LONG_PRESSED:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    invoke-virtual {p1, v4}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setType(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;)V

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 160
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 161
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setOwner(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandOwner;)V

    goto :goto_1

    .line 166
    :cond_7
    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->cancelTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    if-nez v2, :cond_8

    .line 171
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;-><init>()V

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;

    .line 172
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDeselectDirection;->removeSelectionsForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 175
    new-instance v1, Lcom/metamoji/un/draw2/module/command/DrCommand;

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-direct {v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommand;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    .line 176
    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 177
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    sget-object v2, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->NORMAL:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->executeCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->selectNewByTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    :cond_8
    return-void

    .line 127
    :cond_9
    :goto_2
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->selectNewByTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void
.end method

.method private selectNewByTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 9

    .line 186
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 188
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->nonLimitationSelectEnabled()Z

    move-result v3

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 189
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->ignoreOthersElementsInSelectionsAndEditsAndFocuses()Z

    move-result v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 186
    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/un/draw2/module/DrModuleContext;->hitTestAtPoint(Landroid/graphics/PointF;Ljava/util/Set;ZZZZZZ)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 194
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getSortedElementsByAscending(ZLjava/util/Set;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 200
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 206
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 207
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_3
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_4

    goto/16 :goto_2

    .line 219
    :cond_4
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;-><init>()V

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;

    .line 220
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->setOverlay(Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;)V

    .line 221
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->setTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 222
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->point()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->setTouchPosition(Landroid/graphics/PointF;)V

    .line 223
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->selectElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 226
    new-instance v1, Lcom/metamoji/un/draw2/module/command/DrCommand;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-direct {v1, v4}, Lcom/metamoji/un/draw2/module/command/DrCommand;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    .line 227
    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 228
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    sget-object v4, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->NORMAL:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {v0, v1, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->executeCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    .line 231
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->hideRubberBandHandlesOfNewSelection()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 233
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionsForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 234
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 238
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 241
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 242
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setHandleVisibility(Z)V

    .line 243
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setExtraHandleVisibility(Z)V

    return-void

    .line 245
    :cond_6
    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 235
    :cond_7
    :goto_1
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public checkPermissionToTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    return-void
.end method

.method public getPermittedPointForExtraHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    return-object p2
.end method

.method public handleTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$DrOvTouch$Type:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->type()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    .line 70
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->longPressTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void
.end method

.method public hideRubberBandHandlesOfNewSelection()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_hideRubberBandHandlesOfNewSelection:Z

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_isActive:Z

    return v0
.end method

.method public receiveAction(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandAction;)V
    .locals 0

    return-void
.end method

.method public setHideRubberBandHandlesOfNewSelection(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_hideRubberBandHandlesOfNewSelection:Z

    return-void
.end method

.method public setIsActive(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/mode/interaction/DrLongPressInteraction;->m_isActive:Z

    return-void
.end method

.method public type()Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;
    .locals 1

    .line 59
    sget-object v0, Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;->LONG_PRESS:Lcom/metamoji/un/draw2/module/mode/interaction/DrInteraction$Type;

    return-object v0
.end method
