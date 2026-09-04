.class public abstract Lcom/metamoji/un/draw2/module/DrModuleContext;
.super Ljava/lang/Object;
.source "DrModuleContext.java"


# instance fields
.field private m_acceptableVersion:I

.field private m_canvas:Lcom/metamoji/df/sprite/Sprite;

.field private m_collaborationManager:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;

.field private m_commandManager:Lcom/metamoji/un/draw2/module/command/DrCommandManager;

.field private m_contentAngleInDegrees:F

.field private m_contentBounds:Lcom/metamoji/cm/RectEx;

.field private m_contentScale:F

.field private m_deactivateLinkageAtEditNotificationFromUnit:Z

.field private m_defaultGroupFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

.field private m_defaultLongPressEffectStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

.field private m_defaultMaskStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

.field private m_defaultRubberBandFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

.field private m_defaultShapeFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

.field private m_defaultUnitFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

.field private m_deupdateTargetLinkageFollowerIdsAtCommandExecution:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_directionVersion:I

.field private m_disableInteractions:Z

.field private m_disableLinkageUpdateAtCommandExecution:Z

.field private m_disableLinkageUpdateForLinkageTargetAtCommandExecution:Z

.field private m_disableUndoRegistrationForUnit:Z

.field private m_editContextOfInteraction:Lcom/metamoji/un/draw2/module/element/DrEditContext;

.field private m_editWithVariationAlways:Z

.field private m_effectLayerId:I

.field private m_elementManager:Lcom/metamoji/un/draw2/module/element/DrElementManager;

.field private m_eraserLayerId:I

.field private m_eraserStyleMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;",
            ">;"
        }
    .end annotation
.end field

.field private m_groupFrameStyleMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;",
            ">;"
        }
    .end annotation
.end field

.field private m_groupManager:Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

.field private m_highlightImageLayerId:I

.field private m_highlightLayerId:I

.field private m_idPrefix:J

.field private m_ignoreInteractionsCompletion:Z

.field private m_informationLayerId:I

.field private m_intervalManager:Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

.field private m_isAppUndoingOrRedoing:Z

.field private m_isCollaboratingIndirectly:Z

.field private m_lassoLayerId:I

.field private m_lassoMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/module/selection/DrLasso;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_lassoStyleMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;",
            ">;"
        }
    .end annotation
.end field

.field private m_linkageManager:Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

.field private m_maskLayerId:I

.field private m_meshManager:Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_readOnly:Z

.field private m_revision:I

.field private m_rubberBandLayerId:I

.field private m_rubberBandStyleMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;",
            ">;"
        }
    .end annotation
.end field

.field private m_selectionManager:Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

.field private m_settings:Lcom/metamoji/un/draw2/module/DrModuleSettings;

.field private m_startCount:J

.field private m_stockUnitElementVariationWhenReceiveNotificationFromUnit:Z

.field private m_stockedUnitElementVariationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;",
            ">;"
        }
    .end annotation
.end field

.field private m_stocks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_strokeLayerId:I

.field private m_strokeStyleMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;",
            ">;"
        }
    .end annotation
.end field

.field private m_styleManager:Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

.field private m_temporaryModel:Lcom/metamoji/df/model/IModel;

.field private m_undoManager:Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

.field private m_unitFrameStyleMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;",
            ">;"
        }
    .end annotation
.end field

.field private m_version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 79
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_idPrefix:J

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_contentBounds:Lcom/metamoji/cm/RectEx;

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_contentAngleInDegrees:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    iput v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_contentScale:F

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_strokeStyleMap:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoStyleMap:Landroid/util/SparseArray;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_rubberBandStyleMap:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_groupFrameStyleMap:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_unitFrameStyleMap:Landroid/util/SparseArray;

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_eraserStyleMap:Landroid/util/SparseArray;

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_stocks:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setNotifyUnitEnabled(Z)V

    const/4 v0, 0x0

    .line 939
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_disableInteractions:Z

    .line 946
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_ignoreInteractionsCompletion:Z

    return-void
.end method


# virtual methods
.method public acceptableVersion()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_acceptableVersion:I

    return v0
.end method

.method public abstract areaBounds()Lcom/metamoji/cm/RectEx;
.end method

.method public abstract cancelInitialization()Z
.end method

.method public canvas()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_canvas:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public abstract canvasQueueing()Z
.end method

.method public abstract checkDrawabilityAtPoint(Landroid/graphics/PointF;)Z
.end method

.method public abstract checkNewTypeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z
.end method

.method public abstract checkOwnElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z
.end method

.method public abstract classifyGroupFramesAndStylesForGroupFrameMap(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/cm/RectEx;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/cm/RectEx;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;",
            ">;)V"
        }
    .end annotation
.end method

.method public clearAllLassoes()V
    .locals 5

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 672
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 674
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 679
    :goto_0
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    if-ge v3, v2, :cond_0

    .line 675
    :try_start_1
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 676
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 677
    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 679
    :cond_0
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 680
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    .line 685
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/selection/DrLasso;

    .line 686
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrLasso;->destroy()V

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 680
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public clearLassoesForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 648
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 653
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result p1

    .line 654
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 656
    monitor-exit v0

    return-void

    .line 658
    :cond_1
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 659
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 664
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/selection/DrLasso;

    .line 665
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/selection/DrLasso;->destroy()V

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 659
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public collaborationManager()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_collaborationManager:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;

    return-object v0
.end method

.method public commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_commandManager:Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    return-object v0
.end method

.method public contentAngleInDegrees()F
    .locals 1

    .line 203
    iget v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_contentAngleInDegrees:F

    return v0
.end method

.method public contentAngleInRadians()F
    .locals 1

    .line 206
    iget v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_contentAngleInDegrees:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->radianFromDegree(F)F

    move-result v0

    return v0
.end method

.method public contentBounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_contentBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public contentScale()F
    .locals 1

    .line 218
    iget v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_contentScale:F

    return v0
.end method

.method public createEditDirectionForSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;Lcom/metamoji/un/draw2/module/element/DrEditContext;Ljava/util/Set;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/module/selection/DrSelection;",
            "Lcom/metamoji/un/draw2/module/element/DrEditContext;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)",
            "Lcom/metamoji/un/draw2/module/command/direction/DrDirection;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_0

    .line 1316
    invoke-static {v4, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v5

    :cond_0
    const/4 v6, 0x1

    if-eqz v2, :cond_26

    .line 1319
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v7

    sget-object v8, Lcom/metamoji/un/draw2/module/element/DrEditType;->NONE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    if-ne v7, v8, :cond_1

    goto/16 :goto_d

    .line 1325
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElements()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_25

    .line 1326
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_c

    .line 1331
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v8

    sget-object v9, Lcom/metamoji/un/draw2/module/element/DrEditType;->EDIT_EXTRA_HANDLE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-ne v8, v9, :cond_b

    .line 1333
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->extraHandle()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1335
    invoke-static {v12, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v5

    .line 1338
    :cond_3
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->owner()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1340
    invoke-static {v11, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v5

    .line 1343
    :cond_4
    instance-of v4, v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    if-nez v4, :cond_5

    .line 1344
    invoke-static {v10, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v5

    .line 1349
    :cond_5
    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v3, :cond_6

    .line 1350
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_6

    move-object v4, v2

    check-cast v4, Lcom/metamoji/un/draw2/module/element/DrElement;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    .line 1355
    :cond_6
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editWithVariationAlways()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->editWithHandleVariationAlways()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0

    .line 1369
    :cond_7
    new-instance v3, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;

    invoke-direct {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;-><init>()V

    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;

    .line 1370
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object v4

    invoke-interface {v2, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getIndexOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)I

    move-result v1

    invoke-virtual {v3, v4, v2, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->setExtraHandleCenterPoint(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;I)V

    return-object v3

    .line 1357
    :cond_8
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getVariationOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Landroid/graphics/PointF;)Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_9

    const/4 v1, 0x5

    .line 1359
    invoke-static {v1, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v5

    .line 1364
    :cond_9
    new-instance v4, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;

    invoke-direct {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;-><init>()V

    invoke-virtual {v4, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;

    .line 1365
    invoke-interface {v2, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getIndexOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)I

    move-result v1

    invoke-virtual {v4, v3, v2, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->setExtraHandleVariation(Ljava/util/Map;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;I)V

    return-object v4

    :cond_a
    :goto_1
    return-object v5

    .line 1378
    :cond_b
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editWithVariationAlways()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1380
    new-instance v8, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;

    invoke-direct {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;-><init>()V

    invoke-virtual {v8, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;

    .line 1381
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/un/draw2/module/element/DrElement;

    if-eqz v3, :cond_c

    .line 1382
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v9

    if-lez v9, :cond_c

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_2

    .line 1387
    :cond_c
    invoke-virtual {v1, v8}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getVariationSnapShotOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v9

    if-nez v9, :cond_f

    const/4 v9, 0x6

    .line 1389
    invoke-static {v9, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1390
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->createVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v9

    if-nez v9, :cond_f

    const/4 v9, 0x7

    .line 1392
    invoke-static {v9, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1393
    sget-object v9, Lcom/metamoji/un/draw2/module/DrModuleContext$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v6, :cond_e

    if-eq v9, v12, :cond_d

    const/16 v8, 0x8

    .line 1401
    invoke-static {v8, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    .line 1398
    :cond_d
    new-instance v9, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initRectTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v9

    goto :goto_3

    .line 1395
    :cond_e
    new-instance v9, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v9

    .line 1408
    :cond_f
    :goto_3
    sget-object v10, Lcom/metamoji/un/draw2/module/DrModuleContext$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v6, :cond_11

    if-eq v10, v12, :cond_10

    const/16 v8, 0x9

    .line 1449
    invoke-static {v8, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    .line 1433
    :cond_10
    move-object v14, v8

    check-cast v14, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 1434
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v8

    invoke-virtual {v2, v4, v8}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->updateVariationForRectInDegrees(Lcom/metamoji/cm/RectEx;F)V

    .line 1436
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateX()F

    move-result v4

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateX()F

    move-result v8

    add-float v15, v4, v8

    .line 1437
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateY()F

    move-result v4

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectTranslateY()F

    move-result v8

    add-float v16, v4, v8

    .line 1438
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleWidth()F

    move-result v4

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleWidth()F

    move-result v8

    mul-float v17, v4, v8

    .line 1439
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleHeight()F

    move-result v4

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectScaleHeight()F

    move-result v8

    mul-float v18, v4, v8

    .line 1440
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingX()Z

    move-result v4

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingX()Z

    move-result v8

    xor-int v19, v4, v8

    .line 1441
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingY()Z

    move-result v4

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->rectIsReversingY()Z

    move-result v8

    xor-int v20, v4, v8

    .line 1442
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->angleInDegrees()F

    move-result v4

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result v8

    add-float/2addr v4, v8

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result v21

    .line 1443
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->contentScale()F

    move-result v4

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result v8

    mul-float v22, v4, v8

    .line 1435
    invoke-virtual/range {v13 .. v22}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setVariationToRectBaseElement(Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;FFFFZZFF)V

    :goto_4
    move v4, v6

    goto/16 :goto_2

    .line 1410
    :cond_11
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->transform()Landroid/graphics/Matrix;

    move-result-object v4

    .line 1411
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v10

    sget-object v11, Lcom/metamoji/un/draw2/module/element/DrEditType;->RESIZE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    if-ne v10, v11, :cond_15

    .line 1413
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->isResizingX()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1414
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->resizeX()F

    move-result v10

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/metamoji/un/draw2/module/element/DrElement;->getBoundsResizeVariationWithResizeX(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v10

    goto :goto_5

    .line 1415
    :cond_12
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->isResizingY()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1416
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->resizeY()F

    move-result v10

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/metamoji/un/draw2/module/element/DrElement;->getBoundsResizeVariationWithResizeY(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v10

    goto :goto_5

    .line 1417
    :cond_13
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->isResizingXY()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 1418
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->resizeX()F

    move-result v10

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/metamoji/un/draw2/module/element/DrElement;->getBoundsResizeVariationWithResize(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v10

    goto :goto_5

    :cond_14
    move-object v10, v5

    :goto_5
    if-eqz v10, :cond_15

    .line 1421
    invoke-virtual {v10}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object v4

    .line 1424
    :cond_15
    check-cast v8, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    .line 1425
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v4

    .line 1426
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->angleInDegrees()F

    move-result v10

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result v11

    add-float/2addr v10, v11

    invoke-static {v10}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result v10

    .line 1427
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->contentScale()F

    move-result v9

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->contentScale()F

    move-result v11

    mul-float/2addr v9, v11

    .line 1424
    invoke-virtual {v13, v8, v4, v10, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setVariationToPointsBaseElement(Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;Landroid/graphics/Matrix;FF)V

    goto :goto_4

    .line 1456
    :cond_16
    sget-object v1, Lcom/metamoji/un/draw2/module/DrModuleContext$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v8

    aget v1, v1, v8

    if-eq v1, v6, :cond_21

    if-eq v1, v12, :cond_1b

    if-eq v1, v11, :cond_19

    if-eq v1, v10, :cond_17

    const/16 v1, 0xa

    .line 1531
    invoke-static {v1, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move-object v13, v5

    goto/16 :goto_b

    .line 1516
    :cond_17
    new-instance v1, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;-><init>()V

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;

    .line 1517
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInDegrees()F

    move-result v1

    invoke-virtual {v13, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->setAngleInDegrees(F)V

    .line 1518
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->setFixedPoint(Landroid/graphics/PointF;)V

    .line 1519
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    if-eqz v3, :cond_18

    .line 1520
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_18

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    goto :goto_6

    .line 1523
    :cond_18
    invoke-virtual {v13, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->rotateElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    move v4, v6

    goto :goto_6

    .line 1501
    :cond_19
    new-instance v1, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;-><init>()V

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;

    .line 1502
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->scale()F

    move-result v1

    invoke-virtual {v13, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->setScale(F)V

    .line 1503
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->setFixedPoint(Landroid/graphics/PointF;)V

    .line 1504
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    if-eqz v3, :cond_1a

    .line 1505
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_1a

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    goto :goto_7

    .line 1508
    :cond_1a
    invoke-virtual {v13, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->scaleElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    move v4, v6

    goto :goto_7

    .line 1473
    :cond_1b
    new-instance v1, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;-><init>()V

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;

    .line 1474
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->resizeX()F

    move-result v1

    invoke-virtual {v13, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->setResizeX(F)V

    .line 1475
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->resizeY()F

    move-result v1

    invoke-virtual {v13, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->setResizeY(F)V

    .line 1476
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->setFixedPoint(Landroid/graphics/PointF;)V

    .line 1477
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/module/element/DrElement;

    if-eqz v3, :cond_1c

    .line 1478
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_1c

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    goto :goto_8

    .line 1481
    :cond_1c
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v4

    sget-object v8, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->POINTS:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    if-ne v4, v8, :cond_20

    .line 1482
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->isResizingX()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1483
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->resizeX()F

    move-result v4

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->getBoundsResizeVariationWithResizeX(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v4

    invoke-virtual {v13, v7, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->individualResizeElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V

    goto :goto_9

    .line 1484
    :cond_1d
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->isResizingY()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1485
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->resizeY()F

    move-result v4

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->getBoundsResizeVariationWithResizeY(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v4

    invoke-virtual {v13, v7, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->individualResizeElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V

    goto :goto_9

    .line 1486
    :cond_1e
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->isResizingXY()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1487
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->resizeX()F

    move-result v4

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->getBoundsResizeVariationWithResize(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v4

    invoke-virtual {v13, v7, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->individualResizeElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V

    goto :goto_9

    .line 1489
    :cond_1f
    invoke-virtual {v13, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->resizeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    goto :goto_9

    .line 1492
    :cond_20
    invoke-virtual {v13, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->resizeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    :goto_9
    move v4, v6

    goto :goto_8

    .line 1458
    :cond_21
    new-instance v1, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;-><init>()V

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;

    .line 1459
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->translateX()F

    move-result v1

    invoke-virtual {v13, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->setTranslateX(F)V

    .line 1460
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->translateY()F

    move-result v1

    invoke-virtual {v13, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->setTranslateY(F)V

    .line 1461
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    if-eqz v3, :cond_22

    .line 1462
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_22

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    goto :goto_a

    .line 1465
    :cond_22
    invoke-virtual {v13, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->translateElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    move v4, v6

    goto :goto_a

    :cond_23
    :goto_b
    if-eqz v4, :cond_24

    return-object v13

    :cond_24
    if-eqz v13, :cond_25

    .line 1541
    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->destroy()V

    :cond_25
    :goto_c
    return-object v5

    .line 1320
    :cond_26
    :goto_d
    invoke-static {v6, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v5
.end method

.method public abstract createUnitByModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/NtUnitController;
.end method

.method public deactivateLinkageAtEditNotificationFromUnit()Z
    .locals 1

    .line 1662
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_deactivateLinkageAtEditNotificationFromUnit:Z

    return v0
.end method

.method public abstract defaultArrowPenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;
.end method

.method public abstract defaultCalligraphicPenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;
.end method

.method public abstract defaultFountainPenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;
.end method

.method public defaultGroupFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_defaultGroupFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-object v0
.end method

.method public defaultLongPressEffectStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_defaultLongPressEffectStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-object v0
.end method

.method public defaultMaskStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_defaultMaskStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-object v0
.end method

.method public defaultRubberBandFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_defaultRubberBandFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-object v0
.end method

.method public defaultShapeFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_defaultShapeFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-object v0
.end method

.method public abstract defaultSimplePenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
.end method

.method public defaultUnitFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_defaultUnitFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-object v0
.end method

.method public abstract delayNotifyUnit()Z
.end method

.method public destroy()V
    .locals 3

    .line 1712
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_strokeStyleMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1713
    monitor-enter v0

    .line 1714
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_strokeStyleMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1715
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_strokeStyleMap:Landroid/util/SparseArray;

    .line 1716
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1718
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoStyleMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 1719
    monitor-enter v0

    .line 1720
    :try_start_1
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoStyleMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1721
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoStyleMap:Landroid/util/SparseArray;

    .line 1722
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 1724
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_rubberBandStyleMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 1725
    monitor-enter v0

    .line 1726
    :try_start_2
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_rubberBandStyleMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1727
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_rubberBandStyleMap:Landroid/util/SparseArray;

    .line 1728
    monitor-exit v0

    goto :goto_2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 1730
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_groupFrameStyleMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 1731
    monitor-enter v0

    .line 1732
    :try_start_3
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_groupFrameStyleMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1733
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_groupFrameStyleMap:Landroid/util/SparseArray;

    .line 1734
    monitor-exit v0

    goto :goto_3

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    .line 1736
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_unitFrameStyleMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    .line 1737
    monitor-enter v0

    .line 1738
    :try_start_4
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_unitFrameStyleMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1739
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_unitFrameStyleMap:Landroid/util/SparseArray;

    .line 1740
    monitor-exit v0

    goto :goto_4

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v1

    .line 1742
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_eraserStyleMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 1743
    monitor-enter v0

    .line 1744
    :try_start_5
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_eraserStyleMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1745
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_eraserStyleMap:Landroid/util/SparseArray;

    .line 1746
    monitor-exit v0

    goto :goto_5

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v1

    .line 1748
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_6

    .line 1749
    monitor-enter v0

    .line 1750
    :try_start_6
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 1751
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    .line 1752
    monitor-exit v0

    goto :goto_6

    :catchall_6
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v1

    .line 1754
    :cond_6
    :goto_6
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_stocks:Ljava/util/HashSet;

    if-eqz v0, :cond_7

    .line 1755
    monitor-enter v0

    .line 1756
    :try_start_7
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_stocks:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 1757
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_stocks:Ljava/util/HashSet;

    .line 1758
    monitor-exit v0

    goto :goto_7

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v1

    .line 1761
    :cond_7
    :goto_7
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleSettings;->destroy()V

    .line 1762
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setModel(Lcom/metamoji/df/model/IModel;)V

    .line 1763
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setCanvas(Lcom/metamoji/df/sprite/Sprite;)V

    .line 1764
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setTemporaryModel(Lcom/metamoji/df/model/IModel;)V

    .line 1765
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setSettings(Lcom/metamoji/un/draw2/module/DrModuleSettings;)V

    .line 1766
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setCollaborationManager(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;)V

    .line 1767
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setUndoManager(Lcom/metamoji/un/draw2/module/undo/DrUndoManager;)V

    .line 1768
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setCommandManager(Lcom/metamoji/un/draw2/module/command/DrCommandManager;)V

    .line 1769
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setElementManager(Lcom/metamoji/un/draw2/module/element/DrElementManager;)V

    .line 1770
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setGroupManager(Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;)V

    .line 1771
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setMeshManager(Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;)V

    .line 1772
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setSelectionManager(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;)V

    .line 1773
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setIntervalManager(Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;)V

    .line 1774
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setStyleManager(Lcom/metamoji/un/draw2/library/style/DrStStyleManager;)V

    .line 1775
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setLinkageManager(Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;)V

    .line 1776
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setEditContextOfInteraction(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    .line 1777
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDefaultRubberBandFrameStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 1778
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDefaultGroupFrameStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 1779
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDefaultUnitFrameStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 1780
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setStockedUnitElementVariationMap(Ljava/util/Map;)V

    .line 1781
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDeupdateTargetLinkageFollowerIdsAtCommandExecution(Ljava/util/Set;)V

    return-void
.end method

.method public abstract destroyUnit(Lcom/metamoji/nt/NtUnitController;)V
.end method

.method public deupdateTargetLinkageFollowerIdsAtCommandExecution()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 1655
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_deupdateTargetLinkageFollowerIdsAtCommandExecution:Ljava/util/Set;

    return-object v0
.end method

.method public directFocusToLinkageStrongFollowerUnitEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public directionVersion()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_directionVersion:I

    return v0
.end method

.method public disableInteractions()Z
    .locals 1

    .line 940
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_disableInteractions:Z

    return v0
.end method

.method public disableLinkageUpdateAtCommandExecution()Z
    .locals 1

    .line 1641
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_disableLinkageUpdateAtCommandExecution:Z

    return v0
.end method

.method public disableLinkageUpdateForLinkageTargetAtCommandExecution()Z
    .locals 1

    .line 1648
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_disableLinkageUpdateForLinkageTargetAtCommandExecution:Z

    return v0
.end method

.method public disableUndoRegistrationForUnit()Z
    .locals 1

    .line 933
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_disableUndoRegistrationForUnit:Z

    return v0
.end method

.method public abstract displayAngleInDegrees()F
.end method

.method public abstract displayAngleInRadians()F
.end method

.method public abstract displayBounds()Lcom/metamoji/cm/RectEx;
.end method

.method public abstract displayLeftBottom()Landroid/graphics/PointF;
.end method

.method public abstract displayLeftTop()Landroid/graphics/PointF;
.end method

.method public abstract displayRightBottom()Landroid/graphics/PointF;
.end method

.method public abstract displayRightTop()Landroid/graphics/PointF;
.end method

.method public abstract displayTotalBounds()Lcom/metamoji/cm/RectEx;
.end method

.method public abstract displayZoom()F
.end method

.method public editContextOfInteraction()Lcom/metamoji/un/draw2/module/element/DrEditContext;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_editContextOfInteraction:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    return-object v0
.end method

.method public editWithVariationAlways()Z
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_editWithVariationAlways:Z

    return v0
.end method

.method public effectLayerId()I
    .locals 1

    .line 316
    iget v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_effectLayerId:I

    return v0
.end method

.method public elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_elementManager:Lcom/metamoji/un/draw2/module/element/DrElementManager;

    return-object v0
.end method

.method public eraserLayerId()I
    .locals 1

    .line 300
    iget v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_eraserLayerId:I

    return v0
.end method

.method public executeIdentityCommandForElementsWithIds(Ljava/util/Set;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;",
            "Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;",
            "Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;",
            ")V"
        }
    .end annotation

    .line 1600
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editWithVariationAlways()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1601
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1604
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->NONE:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    const/4 v3, 0x1

    if-ne p2, v0, :cond_1

    .line 1605
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_7

    .line 1608
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 1613
    :cond_2
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;-><init>()V

    invoke-virtual {v0, p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;

    .line 1615
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1616
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 1620
    :cond_4
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setIdentityVariationForElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v2, v3

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 1627
    new-instance p1, Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-direct {p1, p0}, Lcom/metamoji/un/draw2/module/command/DrCommand;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    .line 1628
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 1629
    invoke-virtual {p1, p3}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationType(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;)V

    .line 1630
    invoke-virtual {p1, p4}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationTarget(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;)V

    .line 1631
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->executeCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    return-void

    .line 1633
    :cond_6
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->destroy()V

    :cond_7
    :goto_1
    return-void
.end method

.method public focusableUnitHitTestAtPoint(Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/selection/DrSelection;ZZZZZZ)Lcom/metamoji/nt/NtUnitController;
    .locals 21

    move-object/from16 v0, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    .line 1110
    new-instance v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;-><init>()V

    const/4 v8, 0x0

    .line 1111
    iput-object v8, v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->owner:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchOwner;

    .line 1112
    sget-object v2, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->HIT_TEST_WITH_POINT:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    iput-object v2, v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->type:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    .line 1113
    iput-object v0, v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    .line 1114
    iput v6, v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->hitTestMargin:F

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->directSearchWithContext(Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;)Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_23

    .line 1118
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_10

    :cond_0
    if-eqz v7, :cond_2

    .line 1124
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->directFocusToLinkageStrongFollowerUnitEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1125
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getLinkageStrongFollowerElementIds()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1126
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v10, v1

    goto :goto_1

    :cond_2
    :goto_0
    move-object v10, v8

    :goto_1
    if-eqz v10, :cond_3

    .line 1132
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v11, v1

    goto :goto_2

    :cond_3
    move-object v11, v8

    .line 1135
    :goto_2
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1136
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1137
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v15

    if-nez v15, :cond_5

    .line 1139
    invoke-static {v14}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 1145
    :cond_5
    sget-object v1, Lcom/metamoji/un/draw2/module/DrModuleContext$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_6

    move-object v5, v8

    goto :goto_4

    .line 1147
    :cond_6
    move-object v1, v15

    check-cast v1, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->unit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    move-object v5, v1

    :goto_4
    const/4 v1, 0x0

    if-eqz v7, :cond_9

    .line 1158
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElementWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v3

    if-eq v3, v7, :cond_9

    if-eqz v10, :cond_4

    .line 1159
    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    if-nez p4, :cond_8

    .line 1164
    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v3, v4, :cond_4

    move-object v3, v15

    check-cast v3, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_8
    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/element/DrElement;->noFocusing()Z

    move-result v3

    if-nez v3, :cond_4

    move/from16 v16, v2

    goto :goto_5

    :cond_9
    move/from16 v16, v1

    :goto_5
    move-object/from16 v2, p0

    if-eqz p5, :cond_a

    .line 1173
    invoke-virtual {v2, v15}, Lcom/metamoji/un/draw2/module/DrModuleContext;->checkOwnElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result v3

    if-nez v3, :cond_a

    if-eqz v5, :cond_4

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->ignoreFocusRestrictionsByOthers(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_3

    .line 1178
    :cond_a
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    if-eqz v3, :cond_14

    .line 1179
    array-length v4, v3

    if-nez v4, :cond_b

    goto/16 :goto_9

    .line 1185
    :cond_b
    array-length v4, v3

    :goto_6
    if-ge v1, v4, :cond_15

    aget v8, v3, v1

    if-ltz v8, :cond_12

    move/from16 v18, v1

    .line 1186
    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/element/DrElement;->coverCount()I

    move-result v1

    if-lt v8, v1, :cond_c

    move/from16 v20, v18

    move/from16 v19, v4

    move-object/from16 v18, v3

    goto/16 :goto_7

    .line 1190
    :cond_c
    invoke-virtual {v15, v0, v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->distanceToPoint(Landroid/graphics/PointF;I)F

    move-result v8

    cmpl-float v1, v8, v6

    if-lez v1, :cond_d

    move/from16 v19, v4

    move/from16 v20, v18

    move-object/from16 v18, v3

    goto :goto_8

    :cond_d
    if-eqz p6, :cond_e

    if-eqz v5, :cond_e

    .line 1196
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    move/from16 v2, p7

    move/from16 v19, v4

    move/from16 v20, v18

    move/from16 v4, p9

    move-object/from16 v18, v3

    move/from16 v3, p8

    .line 1195
    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->doesNotConcernAboutHitTestPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;ZZZLcom/metamoji/nt/NtUnitController;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_8

    :cond_e
    move/from16 v19, v4

    move/from16 v20, v18

    move-object/from16 v18, v3

    :cond_f
    if-nez v16, :cond_10

    .line 1204
    invoke-virtual {v12, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 1206
    invoke-static {v8, v0, v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1208
    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1209
    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-virtual {v11, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_11
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1212
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_8

    :cond_12
    move/from16 v20, v1

    move-object/from16 v18, v3

    move/from16 v19, v4

    .line 1187
    :goto_7
    invoke-static {v14}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(Ljava/lang/String;)V

    :cond_13
    :goto_8
    add-int/lit8 v1, v20, 0x1

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    move-object/from16 v3, v18

    move/from16 v4, v19

    const/4 v8, 0x0

    goto/16 :goto_6

    .line 1180
    :cond_14
    :goto_9
    invoke-static {v14}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(Ljava/lang/String;)V

    :cond_15
    :goto_a
    move-object/from16 v0, p1

    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_16
    if-eqz v11, :cond_17

    .line 1219
    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_17

    const/4 v11, 0x0

    .line 1224
    :cond_17
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_18

    if-nez v11, :cond_18

    const/16 v17, 0x0

    return-object v17

    :cond_18
    if-eqz v7, :cond_19

    .line 1230
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_b

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->lastElementOrder()I

    move-result v0

    :goto_b
    const/4 v1, 0x0

    :goto_c
    if-ltz v0, :cond_22

    if-eqz v7, :cond_1a

    .line 1231
    invoke-virtual {v7, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElementAtOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    goto :goto_d

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementByOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    :goto_d
    if-eqz v11, :cond_1b

    .line 1235
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/nt/NtUnitController;

    if-eqz v4, :cond_1b

    move-object v1, v4

    const/4 v11, 0x0

    .line 1245
    :cond_1b
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_f

    .line 1250
    :cond_1c
    sget-object v4, Lcom/metamoji/un/draw2/module/DrModuleContext$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_1d

    goto :goto_e

    :cond_1d
    if-nez p4, :cond_1e

    .line 1258
    move-object v4, v3

    check-cast v4, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_1e
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->noFocusing()Z

    move-result v4

    if-eqz v4, :cond_20

    :cond_1f
    :goto_e
    return-object v1

    .line 1263
    :cond_20
    sget-object v4, Lcom/metamoji/un/draw2/module/DrModuleContext$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v2, :cond_21

    :goto_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 1265
    :cond_21
    check-cast v3, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->unit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    return-object v0

    :cond_22
    return-object v1

    :cond_23
    :goto_10
    move-object/from16 v17, v8

    return-object v17
.end method

.method public generateInformation()Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 999
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1
.end method

.method public getEraserStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 534
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_eraserStyleMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_eraserStyleMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 539
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getFunctionTypeOfRubberBandHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 909
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 910
    sget-object p1, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->NONE:Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    return-object p1

    .line 912
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->position()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/DrModuleSettings;->getRubberBandHandleFunctionTypeForPosition(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    move-result-object p1

    return-object p1
.end method

.method public abstract getHighlightBaseColorForElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Ljava/lang/Integer;
.end method

.method public getLassoStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 514
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoStyleMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoStyleMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 519
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getLassoesForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/module/selection/DrLasso;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 608
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 612
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 613
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getMarkingOrderAtPoint(Landroid/graphics/PointF;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getRubberBandFrameStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 524
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_rubberBandStyleMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_rubberBandStyleMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 529
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getStrokeStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 504
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_strokeStyleMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_strokeStyleMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 509
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract groupEditEnabled()Z
.end method

.method public groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_groupManager:Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    return-object v0
.end method

.method public highlightImageLayerId()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_highlightImageLayerId:I

    return v0
.end method

.method public highlightLayerId()I
    .locals 1

    .line 308
    iget v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_highlightLayerId:I

    return v0
.end method

.method public hitTestAtPoint(Landroid/graphics/PointF;Ljava/util/Set;ZZZZZZ)Ljava/util/Set;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/module/element/DrElementType;",
            ">;ZZZZZZ)",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    .line 1017
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->hitTestMargin:F

    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v2

    div-float v7, v1, v2

    .line 1020
    new-instance v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;-><init>()V

    const/4 v8, 0x0

    .line 1021
    iput-object v8, v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->owner:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchOwner;

    .line 1022
    sget-object v2, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;->HIT_TEST_WITH_POINT:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    iput-object v2, v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->type:Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext$DrMsSearchType;

    .line 1023
    iput-object v0, v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->point1:Landroid/graphics/PointF;

    .line 1024
    iput v7, v1, Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;->hitTestMargin:F

    .line 1027
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;->directSearchWithContext(Lcom/metamoji/un/draw2/library/mesh/DrMsSearchContext;)Ljava/util/Map;

    move-result-object v1

    .line 1030
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    if-eqz v1, :cond_b

    .line 1031
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 1033
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1034
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1037
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v12

    const/4 v2, 0x0

    if-nez v12, :cond_0

    .line 1039
    invoke-static {v11}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    .line 1045
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v13, p0

    if-eqz p4, :cond_2

    .line 1051
    invoke-virtual {v13, v12}, Lcom/metamoji/un/draw2/module/DrModuleContext;->checkOwnElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1056
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [I

    const/4 v15, 0x1

    if-eqz v14, :cond_9

    .line 1057
    array-length v1, v14

    if-nez v1, :cond_3

    goto/16 :goto_5

    .line 1063
    :cond_3
    array-length v1, v14

    :goto_1
    if-ge v2, v1, :cond_a

    aget v3, v14, v2

    if-ltz v3, :cond_8

    .line 1064
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/DrElement;->coverCount()I

    move-result v4

    if-lt v3, v4, :cond_4

    goto :goto_3

    .line 1068
    :cond_4
    invoke-virtual {v12, v0, v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->distanceToPoint(Landroid/graphics/PointF;I)F

    move-result v3

    cmpg-float v3, v3, v7

    if-gtz v3, :cond_7

    if-eqz p5, :cond_6

    .line 1071
    sget-object v3, Lcom/metamoji/un/draw2/module/DrModuleContext$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v15, :cond_5

    move-object v5, v8

    goto :goto_2

    .line 1073
    :cond_5
    move-object v3, v12

    check-cast v3, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->unit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v3

    move-object v5, v3

    :goto_2
    if-eqz v5, :cond_6

    move v3, v1

    .line 1081
    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvas()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    move/from16 v4, p8

    move/from16 v17, v2

    move/from16 v16, v3

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->doesNotConcernAboutHitTestPoint(Landroid/graphics/PointF;Lcom/metamoji/df/sprite/Sprite;ZZZLcom/metamoji/nt/NtUnitController;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    .line 1085
    :cond_6
    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_4

    :cond_8
    :goto_3
    move/from16 v16, v1

    move/from16 v17, v2

    const/4 v0, 0x2

    .line 1065
    invoke-static {v11}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_4
    add-int/lit8 v2, v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    goto :goto_1

    .line 1058
    :cond_9
    :goto_5
    invoke-static {v11}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_a
    :goto_6
    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_b
    move-object/from16 v13, p0

    return-object v9
.end method

.method public idPrefix()J
    .locals 2

    .line 164
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_idPrefix:J

    return-wide v0
.end method

.method public ignoreInteractionsCompletion()Z
    .locals 1

    .line 947
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_ignoreInteractionsCompletion:Z

    return v0
.end method

.method public abstract ignoreOthersElementsInSelectionsAndEditsAndFocuses()Z
.end method

.method public informationLayerId()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_informationLayerId:I

    return v0
.end method

.method public intervalManager()Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_intervalManager:Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

    return-object v0
.end method

.method public isAppUndoingOrRedoing()Z
    .locals 1

    .line 371
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_isAppUndoingOrRedoing:Z

    return v0
.end method

.method public isCollaborating()Z
    .locals 1

    .line 409
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->collaborationManager()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaboratingIndirectly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isCollaboratingIndirectly()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_isCollaboratingIndirectly:Z

    return v0
.end method

.method public keepLassoForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Lcom/metamoji/un/draw2/module/selection/DrLasso;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 588
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    .line 592
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 596
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result p1

    .line 597
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2

    .line 599
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 600
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 602
    :cond_2
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public lassoLayerId()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoLayerId:I

    return v0
.end method

.method public linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_linkageManager:Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    return-object v0
.end method

.method public maskLayerId()I
    .locals 1

    .line 320
    iget v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_maskLayerId:I

    return v0
.end method

.method public meshManager()Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_meshManager:Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    return-object v0
.end method

.method public model()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public abstract nonLimitationSelectEnabled()Z
.end method

.method public abstract notifyLinkageManagerIsEmpty()V
.end method

.method public abstract notifyLinkageManagerIsNotEmpty()V
.end method

.method public abstract notifyNewTypeElementDoesNotExists()V
.end method

.method public abstract notifyNewTypeElementExists()V
.end method

.method public abstract notifyUnit(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/cm/RectEx;FF)V
.end method

.method public abstract notifyUnitEnabled()Z
.end method

.method public abstract rasterizeHighDrawingCostStrokesEnabled()Z
.end method

.method public readOnly()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_readOnly:Z

    return v0
.end method

.method public abstract registerUnit(Lcom/metamoji/nt/NtUnitController;)V
.end method

.method public releaseAllLassoes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/module/selection/DrLasso;",
            ">;"
        }
    .end annotation

    .line 633
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 634
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 636
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 641
    :goto_0
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    if-ge v3, v2, :cond_0

    .line 637
    :try_start_1
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 638
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 639
    invoke-interface {v4}, Ljava/util/List;->clear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 641
    :cond_0
    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 642
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 643
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public releaseLassoesForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/module/selection/DrLasso;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 618
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 621
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 622
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result p1

    .line 623
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    .line 625
    monitor-exit v1

    return-object v0

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 628
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p1

    .line 629
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public resetIdPrefix(J)V
    .locals 1

    .line 172
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_idPrefix:J

    .line 173
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->resetIdPrefix(J)V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->resetIdPrefix(J)V

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 180
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->resetIdPrefix(J)V

    .line 182
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 183
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->resetIdPrefix(J)V

    :cond_3
    return-void
.end method

.method public revision()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_revision:I

    return v0
.end method

.method public rubberBandLayerId()I
    .locals 1

    .line 304
    iget v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_rubberBandLayerId:I

    return v0
.end method

.method public abstract rubberBandStepRotationEnabled()Z
.end method

.method public selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_selectionManager:Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    return-object v0
.end method

.method public setAcceptableVersion(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_acceptableVersion:I

    return-void
.end method

.method public setCanvas(Lcom/metamoji/df/sprite/Sprite;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_canvas:Lcom/metamoji/df/sprite/Sprite;

    return-void
.end method

.method public abstract setCanvasQueueing(Z)V
.end method

.method public setCollaborationManager(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_collaborationManager:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;

    return-void
.end method

.method public setCommandManager(Lcom/metamoji/un/draw2/module/command/DrCommandManager;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_commandManager:Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    return-void
.end method

.method public setContentAngleInDegrees(F)V
    .locals 0

    .line 204
    iput p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_contentAngleInDegrees:F

    return-void
.end method

.method public setContentAngleInRadians(F)V
    .locals 0

    .line 209
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_contentAngleInDegrees:F

    return-void
.end method

.method public setContentBounds(Lcom/metamoji/cm/RectEx;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 195
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0, p1}, Lcom/metamoji/cm/RectEx;-><init>(Lcom/metamoji/cm/RectEx;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_contentBounds:Lcom/metamoji/cm/RectEx;

    return-void
.end method

.method public setContentScale(F)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_contentScale:F

    return-void
.end method

.method public setDeactivateLinkageAtEditNotificationFromUnit(Z)V
    .locals 0

    .line 1663
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_deactivateLinkageAtEditNotificationFromUnit:Z

    return-void
.end method

.method public setDefaultGroupFrameStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_defaultGroupFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-void
.end method

.method public setDefaultLongPressEffectStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_defaultLongPressEffectStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-void
.end method

.method public setDefaultMaskStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V
    .locals 0

    .line 576
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_defaultMaskStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-void
.end method

.method public setDefaultRubberBandFrameStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_defaultRubberBandFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-void
.end method

.method public setDefaultShapeFrameStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_defaultShapeFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-void
.end method

.method public setDefaultUnitFrameStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_defaultUnitFrameStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-void
.end method

.method public abstract setDelayNotifyUnit(Z)V
.end method

.method public setDeupdateTargetLinkageFollowerIdsAtCommandExecution(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 1656
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_deupdateTargetLinkageFollowerIdsAtCommandExecution:Ljava/util/Set;

    return-void
.end method

.method public setDirectionVersion(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_directionVersion:I

    return-void
.end method

.method public setDisableInteractions(Z)V
    .locals 0

    .line 941
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_disableInteractions:Z

    return-void
.end method

.method public setDisableLinkageUpdateAtCommandExecution(Z)V
    .locals 0

    .line 1642
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_disableLinkageUpdateAtCommandExecution:Z

    return-void
.end method

.method public setDisableLinkageUpdateForLinkageTargetAtCommandExecution(Z)V
    .locals 0

    .line 1649
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_disableLinkageUpdateForLinkageTargetAtCommandExecution:Z

    return-void
.end method

.method public setDisableUndoRegistrationForUnit(Z)V
    .locals 0

    .line 934
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_disableUndoRegistrationForUnit:Z

    return-void
.end method

.method public setEditContextOfInteraction(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_editContextOfInteraction:Lcom/metamoji/un/draw2/module/element/DrEditContext;

    return-void
.end method

.method public setEditWithVariationAlways(Z)V
    .locals 0

    .line 425
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_editWithVariationAlways:Z

    return-void
.end method

.method public setEffectLayerId(I)V
    .locals 0

    .line 317
    iput p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_effectLayerId:I

    return-void
.end method

.method public setElementManager(Lcom/metamoji/un/draw2/module/element/DrElementManager;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_elementManager:Lcom/metamoji/un/draw2/module/element/DrElementManager;

    return-void
.end method

.method public setEraserLayerId(I)V
    .locals 0

    .line 301
    iput p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_eraserLayerId:I

    return-void
.end method

.method public setEraserStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 486
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    .line 490
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_eraserStyleMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 494
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_eraserStyleMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result p1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 495
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setGroupManager(Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_groupManager:Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    return-void
.end method

.method public setHighlightImageLayerId(I)V
    .locals 0

    .line 313
    iput p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_highlightImageLayerId:I

    return-void
.end method

.method public setHighlightLayerId(I)V
    .locals 0

    .line 309
    iput p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_highlightLayerId:I

    return-void
.end method

.method public setIdPrefix(J)V
    .locals 0

    .line 165
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_idPrefix:J

    return-void
.end method

.method public setIdentityVariationForElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1554
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    const/4 v10, 0x1

    if-nez p2, :cond_1

    .line 1558
    invoke-static {v10, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 1562
    :cond_1
    sget-object v2, Lcom/metamoji/un/draw2/module/DrModuleContext$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v10, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 1587
    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 1573
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 1575
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateX()F

    move-result v2

    .line 1576
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateY()F

    move-result v3

    .line 1577
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleWidth()F

    move-result v4

    .line 1578
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleHeight()F

    move-result v5

    .line 1579
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingX()Z

    move-result v6

    .line 1580
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingY()Z

    move-result v7

    .line 1581
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v8

    .line 1582
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->contentScale()F

    move-result v9

    move-object v0, p2

    .line 1574
    invoke-virtual/range {v0 .. v9}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setVariationToRectBaseElement(Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;FFFFZZFF)V

    return v10

    .line 1564
    :cond_3
    move-object v1, p1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    .line 1566
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    .line 1567
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->angleInDegrees()F

    move-result v3

    .line 1568
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->contentScale()F

    move-result v4

    .line 1565
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setVariationToPointsBaseElement(Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;Landroid/graphics/Matrix;FF)V

    return v10
.end method

.method public setIgnoreInteractionsCompletion(Z)V
    .locals 0

    .line 948
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_ignoreInteractionsCompletion:Z

    return-void
.end method

.method public setInformationLayerId(I)V
    .locals 0

    .line 325
    iput p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_informationLayerId:I

    return-void
.end method

.method public setIntervalManager(Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_intervalManager:Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

    return-void
.end method

.method public setIsAppUndoingOrRedoing(Z)V
    .locals 0

    .line 372
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_isAppUndoingOrRedoing:Z

    return-void
.end method

.method public setIsCollaboratingIndirectly(Z)V
    .locals 0

    .line 418
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_isCollaboratingIndirectly:Z

    return-void
.end method

.method public setLassoLayerId(I)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoLayerId:I

    return-void
.end method

.method public setLassoStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 458
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    .line 462
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoStyleMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_lassoStyleMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result p1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLinkageManager(Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_linkageManager:Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    return-void
.end method

.method public setMaskLayerId(I)V
    .locals 0

    .line 321
    iput p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_maskLayerId:I

    return-void
.end method

.method public setMeshManager(Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_meshManager:Lcom/metamoji/un/draw2/library/mesh/DrMsMeshManager;

    return-void
.end method

.method public setModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_model:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method public abstract setNotifyUnitEnabled(Z)V
.end method

.method public setReadOnly(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_readOnly:Z

    return-void
.end method

.method public setRevision(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_revision:I

    return-void
.end method

.method public setRubberBandFrameStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 472
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    .line 476
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_rubberBandStyleMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 480
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_rubberBandStyleMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result p1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRubberBandHandleSettingsForRubberBand(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;ZZZZZ)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 761
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->rubberBandStepRotationEnabled()Z

    move-result v2

    .line 769
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleSettings;->getAllRubberBandHandlePositions()Ljava/util/Set;

    move-result-object v3

    .line 770
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;

    .line 772
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/metamoji/un/draw2/module/DrModuleSettings;->getRubberBandHandleImageForPosition(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v4, 0x1

    .line 774
    invoke-static {v4, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 779
    :cond_1
    new-instance v6, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    invoke-direct {v6, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;-><init>(Landroid/graphics/Bitmap;)V

    .line 782
    sget-object v5, Lcom/metamoji/un/draw2/module/DrModuleContext$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandHandle$FunctionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/metamoji/un/draw2/module/DrModuleSettings;->getRubberBandHandleFunctionTypeForPosition(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p6, :cond_2

    if-nez v2, :cond_3

    .line 815
    :cond_2
    invoke-virtual {v6, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 816
    invoke-virtual {v6, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    goto :goto_1

    :pswitch_1
    if-nez p6, :cond_3

    .line 809
    invoke-virtual {v6, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 810
    invoke-virtual {v6, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    goto :goto_1

    :pswitch_2
    if-nez p5, :cond_3

    .line 803
    invoke-virtual {v6, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 804
    invoke-virtual {v6, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    goto :goto_1

    :pswitch_3
    if-nez p4, :cond_3

    .line 797
    invoke-virtual {v6, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 798
    invoke-virtual {v6, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    goto :goto_1

    :pswitch_4
    if-nez p3, :cond_3

    .line 791
    invoke-virtual {v6, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 792
    invoke-virtual {v6, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    goto :goto_1

    :pswitch_5
    if-nez p2, :cond_3

    .line 785
    invoke-virtual {v6, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 786
    invoke-virtual {v6, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    .line 824
    :cond_3
    :goto_1
    invoke-virtual {p1, v6, v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;)V

    goto :goto_0

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setRubberBandLayerId(I)V
    .locals 0

    .line 305
    iput p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_rubberBandLayerId:I

    return-void
.end method

.method public setSelectionManager(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_selectionManager:Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    return-void
.end method

.method public setSettings(Lcom/metamoji/un/draw2/module/DrModuleSettings;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_settings:Lcom/metamoji/un/draw2/module/DrModuleSettings;

    return-void
.end method

.method public setStartCount(J)V
    .locals 0

    .line 123
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_startCount:J

    return-void
.end method

.method public setStockUnitElementVariationWhenReceiveNotificationFromUnit(Z)V
    .locals 0

    .line 975
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_stockUnitElementVariationWhenReceiveNotificationFromUnit:Z

    return-void
.end method

.method public setStockedUnitElementVariationMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;",
            ">;)V"
        }
    .end annotation

    .line 982
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_stockedUnitElementVariationMap:Ljava/util/Map;

    return-void
.end method

.method public setStrokeLayerId(I)V
    .locals 0

    .line 293
    iput p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_strokeLayerId:I

    return-void
.end method

.method public setStrokeStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 444
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    .line 448
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_strokeStyleMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 452
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_strokeStyleMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->uid()I

    move-result p1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setStyleManager(Lcom/metamoji/un/draw2/library/style/DrStStyleManager;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_styleManager:Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    return-void
.end method

.method public setTemporaryModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_temporaryModel:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method public setUndoManager(Lcom/metamoji/un/draw2/module/undo/DrUndoManager;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_undoManager:Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_version:I

    return-void
.end method

.method public settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_settings:Lcom/metamoji/un/draw2/module/DrModuleSettings;

    return-object v0
.end method

.method public startCount()J
    .locals 2

    .line 122
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_startCount:J

    return-wide v0
.end method

.method public stockObject(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1279
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1282
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_stocks:Ljava/util/HashSet;

    monitor-enter v0

    .line 1283
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_stocks:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1284
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stockUnitElementVariationWhenReceiveNotificationFromUnit()Z
    .locals 1

    .line 974
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_stockUnitElementVariationWhenReceiveNotificationFromUnit:Z

    return v0
.end method

.method public stockedUnitElementVariationMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;",
            ">;"
        }
    .end annotation

    .line 981
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_stockedUnitElementVariationMap:Ljava/util/Map;

    return-object v0
.end method

.method public strokeLayerId()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_strokeLayerId:I

    return v0
.end method

.method public styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_styleManager:Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    return-object v0
.end method

.method public temporaryModel()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_temporaryModel:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_undoManager:Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    return-object v0
.end method

.method public abstract unregisterUnit(Lcom/metamoji/nt/NtUnitController;)V
.end method

.method public abstract unselectableRubberBandFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
.end method

.method public unstockObject(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1289
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_stocks:Ljava/util/HashSet;

    monitor-enter v0

    .line 1293
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_stocks:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1294
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateAllRubberBandHandlesPropertiesForRubberBand(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;ZZZZZ)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 833
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 836
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->rubberBandStepRotationEnabled()Z

    move-result v1

    .line 837
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleSettings;->getAllRubberBandHandlePositions()Ljava/util/Set;

    move-result-object v2

    .line 838
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;

    .line 839
    invoke-virtual {p1, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->getHandleAtPosition(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 843
    :cond_1
    sget-object v5, Lcom/metamoji/un/draw2/module/DrModuleContext$1;->$SwitchMap$com$metamoji$un$draw2$library$overlay$rubberband$DrOvRubberBandHandle$FunctionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/metamoji/un/draw2/module/DrModuleSettings;->getRubberBandHandleFunctionTypeForPosition(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$Position;)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle$FunctionType;->ordinal()I

    move-result v3

    aget v3, v5, v3

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p6, :cond_2

    if-eqz v1, :cond_2

    .line 891
    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 892
    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    goto :goto_0

    .line 894
    :cond_2
    invoke-virtual {v4, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 895
    invoke-virtual {v4, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    goto :goto_0

    :pswitch_1
    if-eqz p6, :cond_3

    .line 882
    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 883
    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    goto :goto_0

    .line 885
    :cond_3
    invoke-virtual {v4, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 886
    invoke-virtual {v4, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    goto :goto_0

    :pswitch_2
    if-eqz p5, :cond_4

    .line 873
    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 874
    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    goto :goto_0

    .line 876
    :cond_4
    invoke-virtual {v4, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 877
    invoke-virtual {v4, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    goto :goto_0

    :pswitch_3
    if-eqz p4, :cond_5

    .line 864
    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 865
    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    goto :goto_0

    .line 867
    :cond_5
    invoke-virtual {v4, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 868
    invoke-virtual {v4, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    goto :goto_0

    :pswitch_4
    if-eqz p3, :cond_6

    .line 855
    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 856
    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    goto :goto_0

    .line 858
    :cond_6
    invoke-virtual {v4, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 859
    invoke-virtual {v4, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    goto :goto_0

    :pswitch_5
    if-eqz p2, :cond_7

    .line 846
    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 847
    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    goto/16 :goto_0

    .line 849
    :cond_7
    invoke-virtual {v4, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsEnabled(Z)V

    .line 850
    invoke-virtual {v4, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    goto/16 :goto_0

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateContentBounds(Lcom/metamoji/cm/RectEx;FF)V
    .locals 1

    if-eqz p1, :cond_0

    .line 227
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0, p1}, Lcom/metamoji/cm/RectEx;-><init>(Lcom/metamoji/cm/RectEx;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_contentBounds:Lcom/metamoji/cm/RectEx;

    .line 228
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_contentAngleInDegrees:F

    .line 229
    iput p3, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_contentScale:F

    return-void
.end method

.method public version()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/metamoji/un/draw2/module/DrModuleContext;->m_version:I

    return v0
.end method
