.class public Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;
.super Ljava/lang/Object;
.source "DrSelectionManager.java"


# instance fields
.field private m_closed:Z

.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

.field private m_delaySelectionUpdation:Z

.field private m_delayingUpdateTargetSelectionIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_elementSelectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/selection/DrSelection;",
            ">;"
        }
    .end annotation
.end field

.field private m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

.field private m_removedSelectionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_selectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/selection/DrSelection;",
            ">;"
        }
    .end annotation
.end field

.field private m_updatedSelectionIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3pMBHjZVvMrQMMnwZ3AK7FlCnUI(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->lambda$removeSelection$1(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$71aYjgkvcFPhLJIeXmtvQkSboi4(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->lambda$repaintAllSelections$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$QQ9x8aJp2Xo8E_e4J3ovAvZn0Ts(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;Lcom/metamoji/un/draw2/module/selection/DrSelection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->lambda$updateSelection$4(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QtdGinKI0k4l0YEQm4Rqiqvo09w(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->lambda$repaintSelection$6(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$X61Ty3vW0N0TfUkVPLvsSf1on7Y(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->lambda$removeAllSelectionsWithDestroy$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dL-fDOu9TdrIFpAnM9g1Qfs9u5M(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->lambda$removeHighlightObjectWithId$9(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$gGGbR-RmS2Bjno6w8PUZ7CfCmrQ(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->lambda$setDelaySelectionUpdation$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$lcC2KGbfnOrqtQkSk78tQ9MPZ4A(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;Lcom/metamoji/un/draw2/module/selection/DrSelection;Lcom/metamoji/un/draw2/module/element/DrEditContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->lambda$editSelection$8(Lcom/metamoji/un/draw2/module/selection/DrSelection;Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o06RWn-gb4iFwdVxrQ-2QLFZ0vU(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->lambda$removeSelectionsForTouch$2(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$t6zmrN6OIrA6yc-Rub29v7q-YyQ(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;Lcom/metamoji/un/draw2/module/selection/DrSelection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->lambda$addSelection$0(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;J)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/draw2/module/DrModuleContext;J)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 68
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    .line 69
    invoke-virtual {p1, p2, p3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setPrefix(J)V

    .line 70
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    .line 71
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    return-void
.end method

.method private addSelection_(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 765
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 766
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 771
    :cond_0
    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSelectionManager(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;)V

    const/4 v2, 0x1

    .line 774
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setIsActive(Z)V

    .line 777
    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setIsEditing(Z)V

    .line 780
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->generateId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 783
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v5

    iget-object v6, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/DrModuleContext;->highlightLayerId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    if-nez v5, :cond_1

    .line 785
    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 790
    :cond_1
    new-instance v6, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    invoke-direct {v6}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;-><init>()V

    .line 791
    sget-object v7, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->ADD:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    invoke-virtual {v6, v7}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setProcess(Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;)V

    .line 792
    invoke-virtual {v6, v5}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setLayer(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;)V

    .line 793
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->newSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setSnapShot(Lcom/metamoji/df/sprite/Sprite;)V

    move v7, v3

    .line 796
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v8

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-ge v7, v8, :cond_5

    .line 797
    invoke-virtual {v1, v7}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElementAtOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v8

    if-nez v8, :cond_2

    .line 799
    invoke-static {v11, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 802
    :cond_2
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v11

    if-nez v11, :cond_3

    .line 803
    invoke-static {v10, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 806
    :cond_3
    iget-object v10, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 807
    invoke-static {v9, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 812
    :cond_4
    invoke-virtual {v8, v6}, Lcom/metamoji/un/draw2/module/element/DrElement;->highlightWithContext(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    .line 815
    iget-object v9, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    invoke-virtual {v9, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 819
    :cond_5
    iget-object v7, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v7

    .line 820
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->snapShotBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v8

    const/4 v12, 0x0

    if-nez v8, :cond_7

    .line 822
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->snapShot()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotSprite(Lcom/metamoji/df/sprite/Sprite;)V

    .line 823
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->snapShotBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotBounds(Lcom/metamoji/cm/RectEx;)V

    .line 826
    invoke-direct/range {p0 .. p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->setSnapShotImageOfSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 828
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v8

    iget-object v13, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/DrModuleContext;->highlightImageLayerId()I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v8

    check-cast v8, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    if-eqz v8, :cond_6

    .line 831
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotImage()Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 832
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotImage()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 833
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotImageBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v14

    iget v15, v7, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseAlpha:F

    .line 832
    invoke-virtual {v8, v13, v14, v12, v15}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->drawImage(Landroid/graphics/Bitmap;Lcom/metamoji/cm/RectEx;FF)I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotId(I)V

    goto :goto_2

    :cond_6
    const/4 v8, 0x5

    .line 838
    invoke-static {v8, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 846
    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupIds()Ljava/util/Set;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupIds()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_a

    .line 847
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 848
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 849
    iget-object v14, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameMap()Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v14, v15, v8, v13}, Lcom/metamoji/un/draw2/module/DrModuleContext;->classifyGroupFramesAndStylesForGroupFrameMap(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    .line 850
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_8

    goto :goto_3

    :cond_8
    move-object v8, v4

    :goto_3
    invoke-virtual {v1, v8}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrames(Ljava/util/ArrayList;)V

    .line 851
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_9

    goto :goto_4

    :cond_9
    move-object v13, v4

    :goto_4
    invoke-virtual {v1, v13}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrameStyles(Ljava/util/ArrayList;)V

    goto :goto_5

    .line 853
    :cond_a
    invoke-virtual {v1, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrames(Ljava/util/ArrayList;)V

    .line 854
    invoke-virtual {v1, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrameStyles(Ljava/util/ArrayList;)V

    .line 858
    :goto_5
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrames()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrames()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_d

    .line 859
    iget-object v8, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v8

    iget v8, v8, Lcom/metamoji/un/draw2/module/DrModuleSettings;->groupFramePadding:F

    .line 860
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrames()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    move v14, v3

    .line 861
    :goto_6
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrames()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_c

    .line 862
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameStyles()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v14, v15, :cond_b

    goto :goto_7

    .line 865
    :cond_b
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrames()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/metamoji/cm/RectEx;

    .line 867
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameStyles()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 865
    invoke-virtual {v5, v15, v12, v3, v8}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->drawRect(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;F)I

    move-result v3

    .line 869
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    goto :goto_6

    .line 871
    :cond_c
    :goto_7
    invoke-virtual {v1, v13}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrameIds(Ljava/util/List;)V

    .line 876
    :cond_d
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 877
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->touch()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 878
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->touch()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getRubberBandFrameStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v3

    goto :goto_8

    :cond_e
    move-object v3, v4

    :goto_8
    if-nez v3, :cond_10

    .line 881
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->defaultRubberBandFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v3

    goto :goto_9

    .line 884
    :cond_f
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->unselectableRubberBandFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v3

    .line 886
    :cond_10
    :goto_9
    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 889
    new-instance v5, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    invoke-direct {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;-><init>()V

    .line 890
    invoke-virtual {v5, v12}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setAngleInRadians(F)V

    .line 891
    invoke-virtual {v5, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setFrameStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 892
    iget-object v3, v7, Lcom/metamoji/un/draw2/module/DrModuleSettings;->minRubberBandSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v5, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setMinFrameSize(Lcom/metamoji/cm/SizeF;)V

    .line 893
    iget-object v3, v7, Lcom/metamoji/un/draw2/module/DrModuleSettings;->minExtraHandleableSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v5, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setMinExtraHandleableFrameSize(Lcom/metamoji/cm/SizeF;)V

    .line 894
    iget v3, v7, Lcom/metamoji/un/draw2/module/DrModuleSettings;->rubberBandFramePadding:F

    invoke-virtual {v5, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setFramePadding(F)V

    .line 895
    invoke-virtual {v5, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setOptimizeFrameForZoom(Z)V

    .line 896
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/un/draw2/module/DrModuleSettings;->hitTestMargin:F

    invoke-virtual {v5, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setTouchMargin(F)V

    .line 897
    invoke-virtual {v5, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setFrameVisibility(Z)V

    .line 898
    invoke-virtual {v5, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setHandleVisibility(Z)V

    .line 899
    invoke-virtual {v5, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setExtraHandleVisibility(Z)V

    .line 902
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isResizable()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->noResizing()Z

    move-result v3

    if-nez v3, :cond_11

    move v3, v2

    goto :goto_a

    :cond_11
    const/4 v3, 0x0

    .line 903
    :goto_a
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isResizable()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->noResizingX()Z

    move-result v8

    if-nez v8, :cond_12

    move v8, v2

    goto :goto_b

    :cond_12
    const/4 v8, 0x0

    .line 904
    :goto_b
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isResizable()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->noResizingY()Z

    move-result v12

    if-nez v12, :cond_13

    move v12, v2

    goto :goto_c

    :cond_13
    const/4 v12, 0x0

    .line 905
    :goto_c
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v13

    if-ne v13, v2, :cond_17

    sget-object v13, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v1, v13}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->checkElementType(Lcom/metamoji/un/draw2/module/element/DrElementType;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 906
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getLastElement()Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v13

    check-cast v13, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;

    .line 908
    sget-object v14, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$1;->$SwitchMap$com$metamoji$un$draw2$module$element$arrow$DrArrowType:[I

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->arrowType()Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    move-result-object v15

    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->ordinal()I

    move-result v15

    aget v14, v14, v15

    if-eq v14, v2, :cond_16

    if-eq v14, v11, :cond_15

    if-eq v14, v10, :cond_14

    if-eq v14, v9, :cond_14

    goto :goto_e

    .line 919
    :cond_14
    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isHorizontal()Z

    move-result v14

    if-nez v14, :cond_16

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isVertical()Z

    move-result v13

    if-eqz v13, :cond_17

    goto :goto_d

    .line 913
    :cond_15
    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isHorizontal()Z

    move-result v14

    if-nez v14, :cond_16

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isVertical()Z

    move-result v14

    if-nez v14, :cond_16

    check-cast v13, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->lineCount()I

    move-result v13

    if-ne v13, v2, :cond_17

    :cond_16
    :goto_d
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    goto :goto_f

    :cond_17
    :goto_e
    move/from16 v19, v3

    move/from16 v20, v8

    move/from16 v21, v12

    .line 934
    :goto_f
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isResizable()Z

    move-result v22

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isRotatable()Z

    move-result v8

    if-eqz v8, :cond_18

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->noRotating()Z

    move-result v8

    if-nez v8, :cond_18

    move/from16 v23, v2

    goto :goto_10

    :cond_18
    const/16 v23, 0x0

    :goto_10
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setRubberBandHandleSettingsForRubberBand(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;ZZZZZ)V

    move-object/from16 v3, v18

    .line 937
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isExtraHandleable()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v5

    if-ne v5, v2, :cond_20

    const/4 v5, 0x0

    .line 939
    :goto_11
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v8

    if-ge v5, v8, :cond_20

    .line 940
    invoke-virtual {v1, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElementAtOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v8

    if-nez v8, :cond_19

    const/4 v8, 0x6

    .line 942
    invoke-static {v8, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_12
    move/from16 v17, v10

    goto :goto_16

    .line 945
    :cond_19
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v12

    if-nez v12, :cond_1a

    const/4 v8, 0x7

    .line 946
    invoke-static {v8, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_12

    .line 953
    :cond_1a
    instance-of v12, v8, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    if-nez v12, :cond_1b

    :goto_13
    goto :goto_12

    .line 956
    :cond_1b
    move-object v12, v8

    check-cast v12, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    .line 957
    invoke-interface {v12}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->handlesEnablement()Z

    move-result v13

    if-nez v13, :cond_1c

    goto :goto_13

    .line 960
    :cond_1c
    invoke-interface {v12}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getHandleCount()I

    move-result v13

    const/4 v14, 0x0

    :goto_14
    if-ge v14, v13, :cond_1e

    .line 962
    invoke-interface {v12, v14}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getHandleAtIndex(I)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v15

    if-nez v15, :cond_1d

    const/16 v15, 0x8

    .line 964
    invoke-static {v15, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move/from16 v17, v10

    goto :goto_15

    :cond_1d
    move/from16 v17, v10

    .line 967
    invoke-virtual {v15}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->isEnabled()Z

    move-result v10

    invoke-virtual {v15, v10}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    .line 968
    invoke-virtual {v3, v15}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->addExtraHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V

    :goto_15
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v17

    goto :goto_14

    :cond_1e
    move/from16 v17, v10

    .line 972
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v8

    sget-object v10, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v8, v10, :cond_1f

    .line 973
    sget-object v8, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeZero:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v3, v8}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setMinExtraHandleableFrameSize(Lcom/metamoji/cm/SizeF;)V

    goto :goto_16

    .line 975
    :cond_1f
    iget-object v8, v7, Lcom/metamoji/un/draw2/module/DrModuleSettings;->minExtraHandleableSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v3, v8}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setMinExtraHandleableFrameSize(Lcom/metamoji/cm/SizeF;)V

    :goto_16
    add-int/lit8 v5, v5, 0x1

    move/from16 v10, v17

    goto :goto_11

    :cond_20
    move/from16 v17, v10

    .line 981
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v5

    if-ne v5, v2, :cond_24

    const/4 v5, 0x0

    .line 982
    invoke-virtual {v1, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElementAtOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v8

    if-eqz v8, :cond_23

    .line 983
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 985
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v5

    sget-object v10, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    if-ne v5, v10, :cond_21

    .line 986
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->angleInDegrees()F

    move-result v5

    :goto_17
    neg-float v5, v5

    goto :goto_18

    .line 987
    :cond_21
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v5

    sget-object v10, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v5, v10, :cond_22

    .line 988
    check-cast v8, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->arrowAngle()F

    move-result v5

    goto :goto_17

    :cond_22
    const/high16 v5, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 990
    :goto_18
    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v8

    if-eqz v8, :cond_24

    const/high16 v8, 0x42b40000    # 90.0f

    add-float/2addr v8, v5

    const/high16 v10, 0x43340000    # 180.0f

    add-float/2addr v10, v5

    const/high16 v12, 0x43870000    # 270.0f

    add-float/2addr v12, v5

    .line 991
    new-array v9, v9, [F

    const/16 v16, 0x0

    aput v5, v9, v16

    aput v8, v9, v2

    aput v10, v9, v11

    aput v12, v9, v17

    .line 997
    invoke-virtual {v3, v9}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setAdsorptionAngles([F)V

    .line 998
    iget v2, v7, Lcom/metamoji/un/draw2/module/DrModuleSettings;->rubberBandAdsorptionMargin:F

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setAdsorptionMargin(F)V

    goto :goto_19

    :cond_23
    const/16 v2, 0x9

    .line 1001
    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1006
    :cond_24
    :goto_19
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v2

    iget-object v5, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->rubberBandLayerId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    if-eqz v2, :cond_25

    .line 1008
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setContentBounds(Lcom/metamoji/cm/RectEx;)V

    .line 1009
    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->addRubberBand(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)Z

    .line 1012
    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setRubberBand(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)V

    goto :goto_1a

    :cond_25
    const/16 v1, 0xa

    .line 1014
    invoke-static {v1, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1018
    :goto_1a
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->destroy()V

    return-void
.end method

.method private editSelection_(Lcom/metamoji/un/draw2/module/selection/DrSelection;Lcom/metamoji/un/draw2/module/element/DrEditContext;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    .line 1599
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setIsEditing(Z)V

    .line 1602
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v3

    iget-object v4, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->highlightLayerId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    const/4 v3, 0x0

    const/4 v10, 0x0

    if-nez v4, :cond_0

    .line 1604
    invoke-static {v3, v10}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1609
    :cond_0
    new-instance v11, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    invoke-direct {v11}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;-><init>()V

    .line 1610
    sget-object v5, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->EDIT:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    invoke-virtual {v11, v5}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setProcess(Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;)V

    .line 1611
    invoke-virtual {v11, v4}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setLayer(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;)V

    move-object/from16 v12, p2

    .line 1612
    invoke-virtual {v11, v12}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setEditContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    .line 1615
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameIds()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1616
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->paintGroupFramesWhenTranslateEdit()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v5

    sget-object v6, Lcom/metamoji/un/draw2/module/element/DrEditType;->TRANSLATE:Lcom/metamoji/un/draw2/module/element/DrEditType;

    if-ne v5, v6, :cond_2

    .line 1617
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v5

    iget v8, v5, Lcom/metamoji/un/draw2/module/DrModuleSettings;->groupFramePadding:F

    .line 1618
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrames()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1619
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameStyles()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_1

    goto :goto_2

    .line 1622
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrames()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/cm/RectEx;

    .line 1623
    new-instance v6, Lcom/metamoji/cm/RectEx;

    invoke-direct {v6, v5}, Lcom/metamoji/cm/RectEx;-><init>(Lcom/metamoji/cm/RectEx;)V

    .line 1624
    iget v5, v6, Lcom/metamoji/cm/RectEx;->x:F

    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->translateX()F

    move-result v7

    add-float/2addr v5, v7

    iput v5, v6, Lcom/metamoji/cm/RectEx;->x:F

    .line 1625
    iget v5, v6, Lcom/metamoji/cm/RectEx;->y:F

    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->translateY()F

    move-result v7

    add-float/2addr v5, v7

    iput v5, v6, Lcom/metamoji/cm/RectEx;->y:F

    .line 1629
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameStyles()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 1631
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v5, v6

    const/4 v6, 0x0

    .line 1626
    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->repaintRect(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;FI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1635
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    .line 1636
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->removeObjectWithId(I)V

    goto :goto_1

    .line 1644
    :cond_3
    :goto_2
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->process()Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    move-result-object v3

    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->EDIT:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    const/4 v5, 0x2

    if-ne v3, v4, :cond_5

    .line 1645
    sget-object v3, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->editContext()Lcom/metamoji/un/draw2/module/element/DrEditContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_4

    if-eq v3, v5, :cond_4

    goto :goto_3

    .line 1648
    :cond_4
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getLinkageFollowerIds()Ljava/util/Set;

    move-result-object v3

    .line 1649
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getLinkageTargetIds()Ljava/util/Set;

    move-result-object v4

    if-eqz v3, :cond_5

    .line 1650
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    :goto_3
    move-object v3, v10

    move-object v4, v3

    .line 1661
    :cond_6
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElements()Ljava/util/List;

    move-result-object v6

    .line 1662
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 1663
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    if-nez v8, :cond_8

    .line 1664
    invoke-static {v2, v10}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_4

    .line 1667
    :cond_8
    iget-object v8, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_9

    .line 1668
    invoke-static {v5, v10}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_4

    .line 1673
    :cond_9
    sget-object v8, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->NONE:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    .line 1676
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1677
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->disableWhenEditingTogether()Z

    move-result v9

    if-nez v9, :cond_b

    .line 1678
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1679
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isPreferred()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1680
    :cond_a
    sget-object v8, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->REMOVE:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    .line 1684
    :cond_b
    sget-object v9, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->NONE:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    .line 1685
    sget-object v13, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->NONE:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    if-eq v8, v13, :cond_c

    .line 1686
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->process()Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    move-result-object v9

    .line 1687
    invoke-virtual {v11, v8}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setProcess(Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;)V

    .line 1691
    :cond_c
    invoke-virtual {v7, v11}, Lcom/metamoji/un/draw2/module/element/DrElement;->highlightWithContext(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    .line 1694
    sget-object v7, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->NONE:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    if-eq v8, v7, :cond_7

    .line 1695
    invoke-virtual {v11, v9}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setProcess(Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;)V

    goto/16 :goto_4

    .line 1700
    :cond_d
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotImage()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_e

    .line 1701
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->destroy()V

    return-void

    .line 1706
    :cond_e
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v3

    iget-object v4, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->highlightImageLayerId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    const/4 v4, 0x3

    if-eqz v3, :cond_14

    .line 1709
    new-instance v6, Lcom/metamoji/cm/RectEx;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotImageBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/metamoji/cm/RectEx;-><init>(Lcom/metamoji/cm/RectEx;)V

    .line 1711
    sget-object v7, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrEditType:[I

    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->editType()Lcom/metamoji/un/draw2/module/element/DrEditType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrEditType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x0

    if-eq v7, v2, :cond_12

    if-eq v7, v5, :cond_11

    if-eq v7, v4, :cond_10

    const/4 v2, 0x4

    if-eq v7, v2, :cond_f

    goto :goto_5

    .line 1728
    :cond_f
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInRadians()F

    move-result v2

    float-to-double v4, v2

    .line 1729
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object v2

    .line 1730
    invoke-static {v6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v7

    .line 1728
    invoke-static {v4, v5, v2, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->pointOffsetByRotationWithAngleInRadians(DLandroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 1731
    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v4, v2}, Lcom/metamoji/cm/RectEx;->offset(FF)V

    .line 1732
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->angleInRadians()F

    move-result v8

    goto :goto_5

    .line 1713
    :cond_10
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->translateX()F

    move-result v2

    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->translateY()F

    move-result v4

    invoke-virtual {v6, v2, v4}, Lcom/metamoji/cm/RectEx;->offset(FF)V

    :goto_5
    move-object v14, v6

    move v15, v8

    goto :goto_6

    .line 1723
    :cond_11
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->scale()F

    move-result v2

    .line 1724
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->scale()F

    move-result v4

    .line 1725
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object v5

    .line 1722
    invoke-static {v6, v2, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->applyScaleToRect(Lcom/metamoji/cm/RectEx;FFLandroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object v6

    goto :goto_5

    .line 1717
    :cond_12
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->resizeX()F

    move-result v2

    .line 1718
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->resizeY()F

    move-result v4

    .line 1719
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->fixedPoint()Landroid/graphics/PointF;

    move-result-object v5

    .line 1716
    invoke-static {v6, v2, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->applyScaleToRect(Lcom/metamoji/cm/RectEx;FFLandroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object v6

    goto :goto_5

    .line 1740
    :goto_6
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotId()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->checkObjectWithId(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1741
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotImage()Landroid/graphics/Bitmap;

    move-result-object v13

    iget-object v2, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 1744
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightEditAlpha:F

    .line 1745
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotId()I

    move-result v17

    move/from16 v16, v2

    move-object v12, v3

    .line 1741
    invoke-virtual/range {v12 .. v17}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->repaintImage(Landroid/graphics/Bitmap;Lcom/metamoji/cm/RectEx;FFI)V

    goto :goto_7

    :cond_13
    move-object v12, v3

    .line 1747
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotImage()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 1750
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightEditAlpha:F

    .line 1747
    invoke-virtual {v12, v2, v14, v15, v3}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->drawImage(Landroid/graphics/Bitmap;Lcom/metamoji/cm/RectEx;FF)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotId(I)V

    goto :goto_7

    .line 1753
    :cond_14
    invoke-static {v4, v10}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1757
    :goto_7
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->destroy()V

    return-void
.end method

.method private synthetic lambda$addSelection$0(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V
    .locals 2

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    .line 150
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 151
    monitor-exit p0

    return-void

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x3

    .line 154
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 155
    monitor-exit p0

    return-void

    .line 157
    :cond_1
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    :try_start_1
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->addSelection_(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    .line 159
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :try_start_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    .line 159
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception p1

    .line 161
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private synthetic lambda$editSelection$8(Lcom/metamoji/un/draw2/module/selection/DrSelection;Lcom/metamoji/un/draw2/module/element/DrEditContext;)V
    .locals 1

    .line 564
    monitor-enter p0

    .line 565
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x3

    const/4 p2, 0x0

    .line 566
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 567
    monitor-exit p0

    return-void

    .line 569
    :cond_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 570
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->editSelection_(Lcom/metamoji/un/draw2/module/selection/DrSelection;Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    .line 571
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p2

    .line 571
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2

    :catchall_1
    move-exception p1

    .line 572
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private synthetic lambda$removeAllSelectionsWithDestroy$3(Z)V
    .locals 2

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 224
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 225
    :try_start_1
    invoke-direct {p0, v1, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->removeSelection_(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V

    .line 226
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 229
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private synthetic lambda$removeHighlightObjectWithId$9(II)V
    .locals 3

    .line 589
    monitor-enter p0

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 591
    monitor-exit p0

    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 594
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->uid()I

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 597
    :cond_1
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 598
    :try_start_1
    invoke-direct {p0, v1, p2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->removeHighlightObjectFromSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;I)V

    .line 599
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 601
    :cond_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private synthetic lambda$removeSelection$1(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V
    .locals 2

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 180
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 181
    monitor-exit p0

    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 185
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->removeSelection_(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V

    .line 186
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p2

    .line 186
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2

    :catchall_1
    move-exception p1

    .line 187
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private synthetic lambda$removeSelectionsForTouch$2(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Z)V
    .locals 4

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 203
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->touch()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 204
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 208
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    monitor-enter v0

    .line 210
    :try_start_0
    invoke-direct {p0, v0, p2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->removeSelection_(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V

    .line 211
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    return-void
.end method

.method private synthetic lambda$repaintAllSelections$7()V
    .locals 4

    .line 524
    monitor-enter p0

    .line 525
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 527
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 528
    :try_start_1
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    .line 529
    invoke-direct {p0, v2, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->repaintSelection_(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V

    goto :goto_1

    .line 531
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 535
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 536
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 537
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 538
    invoke-direct {p0, v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->removeSelection_(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V

    goto :goto_2

    .line 541
    :cond_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private synthetic lambda$repaintSelection$6(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V
    .locals 1

    .line 501
    monitor-enter p0

    .line 502
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 503
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 504
    monitor-exit p0

    return-void

    .line 506
    :cond_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 507
    :try_start_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 508
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->repaintSelection_(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V

    goto :goto_0

    .line 510
    :cond_1
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 511
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->removeSelection_(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V

    .line 513
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p2

    .line 513
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2

    :catchall_1
    move-exception p1

    .line 514
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private synthetic lambda$setDelaySelectionUpdation$5()V
    .locals 4

    .line 465
    monitor-enter p0

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_delayingUpdateTargetSelectionIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 467
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    if-nez v1, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 472
    :try_start_1
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 473
    invoke-direct {p0, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection_(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    .line 475
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 476
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 477
    invoke-direct {p0, v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->removeSelection_(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V

    .line 479
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_3
    const/4 v0, 0x0

    .line 481
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_delayingUpdateTargetSelectionIds:Ljava/util/HashSet;

    .line 482
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method private synthetic lambda$updateSelection$4(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V
    .locals 2

    .line 415
    monitor-enter p0

    .line 416
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 417
    :try_start_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 418
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection_(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    goto :goto_0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 421
    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->removeSelection_(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V

    .line 423
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    .line 423
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception p1

    .line 424
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method private removeHighlightObjectFromSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;I)V
    .locals 1

    .line 2023
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2024
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->disusedHighlightObjectIds()Ljava/util/HashSet;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2025
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setDisusedHighlightObjectIds(Ljava/util/HashSet;)V

    .line 2027
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->disusedHighlightObjectIds()Ljava/util/HashSet;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 2032
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->highlightLayerId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 2034
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 2039
    :cond_2
    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->checkObjectWithId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2040
    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->removeObjectWithId(I)V

    :cond_3
    return-void
.end method

.method private removeSelection_(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V
    .locals 9

    .line 1023
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->highlightLayerId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1025
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1030
    :cond_0
    new-instance v3, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    invoke-direct {v3}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;-><init>()V

    .line 1031
    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->REMOVE:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setProcess(Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;)V

    .line 1032
    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setLayer(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;)V

    move v4, v1

    .line 1035
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1036
    invoke-virtual {p1, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElementAtOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    .line 1038
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 1041
    :cond_1
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v5, 0x2

    .line 1042
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 1045
    :cond_2
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v5, 0x3

    .line 1046
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 1051
    :cond_3
    invoke-virtual {v5, v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->highlightWithContext(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    .line 1054
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1058
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->removedElements()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x5

    if-eqz v4, :cond_9

    .line 1059
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->removedElements()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 1060
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v6, 0x4

    .line 1061
    invoke-static {v6, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    .line 1066
    :cond_5
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    if-eqz v7, :cond_7

    if-eq v7, p1, :cond_6

    goto :goto_2

    .line 1077
    :cond_6
    invoke-virtual {v6, v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->highlightWithContext(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    .line 1080
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1072
    :cond_7
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    .line 1082
    :cond_8
    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setRemovedElements(Ljava/util/ArrayList;)V

    .line 1086
    :cond_9
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v4

    iget-object v6, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/DrModuleContext;->highlightImageLayerId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    if-eqz v4, :cond_a

    .line 1088
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->checkObjectWithId(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1089
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->removeObjectWithId(I)V

    goto :goto_3

    :cond_a
    const/4 v4, 0x6

    .line 1092
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1096
    :cond_b
    :goto_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameIds()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 1097
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    .line 1098
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->removeObjectWithId(I)V

    goto :goto_4

    .line 1100
    :cond_c
    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrameIds(Ljava/util/List;)V

    .line 1104
    :cond_d
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1105
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v0

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->rubberBandLayerId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;

    if-eqz v0, :cond_e

    .line 1107
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandLayer;->removeRubberBand(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;)Z

    goto :goto_5

    .line 1109
    :cond_e
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1114
    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_removedSelectionIds:Ljava/util/List;

    if-eqz v0, :cond_10

    .line 1115
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    :cond_10
    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setIsEditing(Z)V

    .line 1122
    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setIsActive(Z)V

    .line 1125
    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1128
    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSelectionManager(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;)V

    if-eqz p2, :cond_11

    .line 1132
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->destroy()V

    .line 1136
    :cond_11
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->destroy()V

    return-void
.end method

.method private repaintSelection_(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V
    .locals 10

    .line 1462
    new-instance v0, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;-><init>()V

    .line 1463
    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->REPAINT:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setProcess(Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;)V

    .line 1464
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->newSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setSnapShot(Lcom/metamoji/df/sprite/Sprite;)V

    .line 1467
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 1468
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v2, -0x1

    .line 1469
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 1472
    :cond_0
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v2, -0x2

    .line 1473
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 1477
    :cond_1
    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->highlightWithContext(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    goto :goto_0

    .line 1481
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->snapShotBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1482
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->snapShot()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotSprite(Lcom/metamoji/df/sprite/Sprite;)V

    .line 1483
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->snapShotBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotBounds(Lcom/metamoji/cm/RectEx;)V

    .line 1489
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->setSnapShotImageOfSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_4

    if-nez v0, :cond_4

    .line 1492
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->repaintHighlightAlways()Z

    move-result p2

    if-nez p2, :cond_4

    .line 1494
    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setIsEditing(Z)V

    return-void

    .line 1500
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object p2

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->highlightLayerId()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    if-eqz v4, :cond_d

    .line 1503
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1505
    new-instance p2, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    invoke-direct {p2}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;-><init>()V

    .line 1506
    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->REPAINT:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    invoke-virtual {p2, v2}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setProcess(Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;)V

    .line 1507
    invoke-virtual {p2, v4}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setLayer(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;)V

    .line 1510
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElements()Ljava/util/List;

    move-result-object v2

    .line 1511
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 1512
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1513
    invoke-virtual {v5, p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->highlightWithContext(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    goto :goto_1

    .line 1518
    :cond_6
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameIds()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameIds()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_e

    .line 1519
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object p2

    iget v8, p2, Lcom/metamoji/un/draw2/module/DrModuleSettings;->groupFramePadding:F

    move p2, v1

    .line 1520
    :goto_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrames()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_e

    .line 1521
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameStyles()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_e

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p2, v2, :cond_7

    goto/16 :goto_5

    .line 1524
    :cond_7
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrames()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/metamoji/cm/RectEx;

    .line 1526
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameStyles()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 1528
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v6, 0x0

    .line 1524
    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->repaintRect(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;FI)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 1533
    :cond_8
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->disusedHighlightObjectIds()Ljava/util/HashSet;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->disusedHighlightObjectIds()Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p2

    if-lez p2, :cond_b

    .line 1534
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->disusedHighlightObjectIds()Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 1535
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 1536
    invoke-virtual {v4, v2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->checkObjectWithId(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1537
    invoke-virtual {v4, v2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->removeObjectWithId(I)V

    goto :goto_3

    .line 1540
    :cond_a
    invoke-virtual {p1, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setDisusedHighlightObjectIds(Ljava/util/HashSet;)V

    .line 1544
    :cond_b
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->repaintHighlightAlways()Z

    move-result p2

    if-eqz p2, :cond_e

    .line 1546
    new-instance p2, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    invoke-direct {p2}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;-><init>()V

    .line 1547
    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->REPAINT:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    invoke-virtual {p2, v2}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setProcess(Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;)V

    .line 1548
    invoke-virtual {p2, v4}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setLayer(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;)V

    move v2, v1

    .line 1551
    :goto_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v4

    if-ge v2, v4, :cond_e

    .line 1552
    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElementAtOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v4

    .line 1553
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->repaintHighlightAlways()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1554
    invoke-virtual {v4, p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->highlightWithContext(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1560
    :cond_d
    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_e
    :goto_5
    if-nez v0, :cond_f

    .line 1564
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result p2

    if-eqz p2, :cond_13

    .line 1565
    :cond_f
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object p2

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->highlightImageLayerId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    if-eqz v4, :cond_12

    .line 1568
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotId()I

    move-result p2

    invoke-virtual {v4, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->checkObjectWithId(I)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 1570
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotImage()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 1571
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotImage()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1572
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotImageBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v6

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 1574
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object p2

    iget v8, p2, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseAlpha:F

    .line 1575
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotId()I

    move-result v9

    const/4 v7, 0x0

    .line 1571
    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->repaintImage(Landroid/graphics/Bitmap;Lcom/metamoji/cm/RectEx;FFI)V

    goto :goto_6

    .line 1577
    :cond_10
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotId()I

    move-result p2

    invoke-virtual {v4, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->removeObjectWithId(I)V

    goto :goto_6

    .line 1581
    :cond_11
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotImage()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_13

    .line 1582
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotImage()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1583
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotImageBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 1585
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseAlpha:F

    const/4 v3, 0x0

    .line 1582
    invoke-virtual {v4, p2, v0, v3, v2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->drawImage(Landroid/graphics/Bitmap;Lcom/metamoji/cm/RectEx;FF)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotId(I)V

    goto :goto_6

    :cond_12
    const/4 p2, 0x1

    .line 1589
    invoke-static {p2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1594
    :cond_13
    :goto_6
    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setIsEditing(Z)V

    return-void
.end method

.method private setSnapShotImageOfSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)Z
    .locals 7

    .line 1762
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1763
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 1768
    :cond_0
    new-instance v2, Lcom/metamoji/cm/RectEx;

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayTotalBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/metamoji/cm/RectEx;-><init>(Lcom/metamoji/cm/RectEx;)V

    .line 1771
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v3

    .line 1772
    iget v4, v2, Lcom/metamoji/cm/RectEx;->width:F

    iget v5, v2, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, v3, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightImageSurplusRatio:F

    mul-float/2addr v4, v5

    .line 1773
    iget v5, v2, Lcom/metamoji/cm/RectEx;->x:F

    sub-float/2addr v5, v4

    iput v5, v2, Lcom/metamoji/cm/RectEx;->x:F

    .line 1774
    iget v5, v2, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr v5, v4

    iput v5, v2, Lcom/metamoji/cm/RectEx;->y:F

    .line 1775
    iget v5, v2, Lcom/metamoji/cm/RectEx;->width:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    add-float/2addr v5, v4

    iput v5, v2, Lcom/metamoji/cm/RectEx;->width:F

    .line 1776
    iget v5, v2, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr v5, v4

    iput v5, v2, Lcom/metamoji/cm/RectEx;->height:F

    .line 1780
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    invoke-static {v2, v4, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIntersection(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    .line 1783
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 1784
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1785
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotImage(Landroid/graphics/Bitmap;)V

    .line 1786
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotTargetBounds(Lcom/metamoji/cm/RectEx;)V

    .line 1787
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotImageBounds(Lcom/metamoji/cm/RectEx;)V

    .line 1788
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotImageScale(F)V

    return v5

    :cond_1
    return v1

    .line 1796
    :cond_2
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v4

    .line 1799
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotTargetBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectContainsRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1800
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotImageScale()F

    move-result v6

    sub-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v3, v3, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightImageUpdateThreshold:F

    cmpg-float v3, v6, v3

    if-gtz v3, :cond_3

    return v1

    .line 1805
    :cond_3
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v1

    iget v1, v1, Lcom/metamoji/un/draw2/module/DrModuleSettings;->rubberBandFramePadding:F

    neg-float v1, v1

    div-float/2addr v1, v4

    .line 1806
    invoke-static {v2, v1, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectInset(Lcom/metamoji/cm/RectEx;FF)Lcom/metamoji/cm/RectEx;

    move-result-object v1

    .line 1809
    invoke-static {v1, v4, v4, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->rasterizeWithBounds(Lcom/metamoji/cm/RectEx;FFLcom/metamoji/df/sprite/Sprite;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotImage(Landroid/graphics/Bitmap;)V

    .line 1810
    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotTargetBounds(Lcom/metamoji/cm/RectEx;)V

    .line 1811
    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotImageBounds(Lcom/metamoji/cm/RectEx;)V

    .line 1812
    invoke-virtual {p1, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotImageScale(F)V

    return v5

    :cond_4
    :goto_0
    return v1
.end method

.method private updateGroupInformationsOfSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1820
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1823
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1829
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1832
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v5

    .line 1838
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object v7

    const/4 v6, 0x1

    move v15, v6

    const/4 v14, 0x0

    .line 1840
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v8

    const/4 v10, 0x0

    if-ge v14, v8, :cond_5

    .line 1841
    invoke-virtual {v1, v14}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElementAtOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v16

    .line 1844
    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1847
    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v8

    .line 1848
    invoke-static {v5, v8, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-object v9, v8

    .line 1851
    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v17, v9

    const/4 v9, 0x0

    move-object/from16 v13, v17

    invoke-virtual/range {v7 .. v12}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/HashSet;Ljava/util/HashSet;ZZ)Ljava/util/HashSet;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1854
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v9

    if-nez v9, :cond_0

    goto :goto_3

    .line 1860
    :cond_0
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1862
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    if-eqz v10, :cond_1

    .line 1864
    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1866
    :cond_1
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1867
    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1868
    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1872
    :goto_2
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/cm/RectEx;

    if-eqz v10, :cond_2

    .line 1875
    invoke-static {v10, v13, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    goto :goto_1

    .line 1877
    :cond_2
    new-instance v10, Lcom/metamoji/cm/RectEx;

    invoke-direct {v10, v13}, Lcom/metamoji/cm/RectEx;-><init>(Lcom/metamoji/cm/RectEx;)V

    .line 1878
    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_3
    const/4 v15, 0x0

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1886
    :cond_5
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v8

    if-le v8, v6, :cond_8

    .line 1887
    invoke-virtual {v7, v4, v10}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsComposedOfMembers(Ljava/util/HashSet;Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 1888
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 1890
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1891
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_6

    .line 1892
    invoke-virtual {v2, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1893
    invoke-virtual {v3, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    move v15, v6

    .line 1903
    :cond_8
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_9

    .line 1904
    invoke-virtual {v1, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupIds(Ljava/util/Set;)V

    .line 1905
    invoke-virtual {v1, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrameMap(Ljava/util/HashMap;)V

    const/4 v2, 0x0

    .line 1906
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupMemberOnly(Z)V

    .line 1907
    invoke-virtual {v1, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setConnectedGroupComponents(Ljava/util/Set;)V

    .line 1908
    invoke-virtual {v1, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setLockedGroupIds(Ljava/util/Set;)V

    .line 1909
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setDistinctGroupCount(I)V

    .line 1910
    invoke-virtual {v1, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrames(Ljava/util/ArrayList;)V

    .line 1911
    invoke-virtual {v1, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrameStyles(Ljava/util/ArrayList;)V

    return-void

    .line 1916
    :cond_9
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1919
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1928
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1932
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 1933
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v11

    new-array v11, v11, [Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-interface {v10, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    array-length v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_5
    if-ge v12, v11, :cond_d

    aget-object v6, v10, v12

    .line 1935
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    .line 1938
    invoke-virtual {v7, v6}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMemberCountOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)I

    move-result v5

    move-object/from16 v18, v8

    .line 1939
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v8

    if-ne v8, v5, :cond_b

    .line 1941
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v15, :cond_a

    add-int/2addr v13, v5

    .line 1955
    :cond_a
    invoke-virtual {v9, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    add-int/lit8 v14, v14, 0x1

    .line 1957
    invoke-virtual {v7, v6}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getEquivalentGroupsToGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 1958
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_c

    .line 1959
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1960
    invoke-virtual {v9, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1966
    :cond_b
    invoke-virtual {v2, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, v18

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_5

    :cond_d
    move-object/from16 v18, v8

    .line 1974
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_16

    .line 1976
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1977
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1978
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1979
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1980
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashSet;

    if-eqz v12, :cond_f

    .line 1982
    invoke-virtual {v12, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1983
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v15

    move-object/from16 v17, v2

    const/4 v2, 0x2

    if-ne v15, v2, :cond_10

    .line 1984
    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_f
    move-object/from16 v17, v2

    .line 1987
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1988
    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1989
    invoke-virtual {v6, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    :goto_8
    move-object/from16 v2, v17

    goto :goto_7

    .line 1995
    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1996
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1997
    iget-object v8, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v8, v3, v2, v6}, Lcom/metamoji/un/draw2/module/DrModuleContext;->classifyGroupFramesAndStylesForGroupFrameMap(Ljava/util/Map;Ljava/util/List;Ljava/util/List;)V

    .line 2000
    invoke-virtual {v1, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupIds(Ljava/util/Set;)V

    .line 2001
    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrameMap(Ljava/util/HashMap;)V

    .line 2002
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v3

    if-lt v13, v3, :cond_12

    const/4 v3, 0x1

    goto :goto_9

    :cond_12
    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupMemberOnly(Z)V

    .line 2003
    invoke-virtual {v7, v4, v5}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->createConnectedComponentsOfGroups(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setConnectedGroupComponents(Ljava/util/Set;)V

    .line 2004
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_13

    move-object/from16 v8, v18

    goto :goto_a

    :cond_13
    const/4 v8, 0x0

    :goto_a
    invoke-virtual {v1, v8}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setLockedGroupIds(Ljava/util/Set;)V

    .line 2005
    invoke-virtual {v1, v14}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setDistinctGroupCount(I)V

    .line 2006
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    goto :goto_b

    :cond_14
    const/4 v2, 0x0

    :goto_b
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrames(Ljava/util/ArrayList;)V

    .line 2007
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_15

    move-object v5, v6

    goto :goto_c

    :cond_15
    const/4 v5, 0x0

    :goto_c
    invoke-virtual {v1, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrameStyles(Ljava/util/ArrayList;)V

    return-void

    :cond_16
    const/4 v2, 0x0

    .line 2009
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupIds(Ljava/util/Set;)V

    .line 2010
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrameMap(Ljava/util/HashMap;)V

    const/4 v3, 0x0

    .line 2011
    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupMemberOnly(Z)V

    .line 2012
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setConnectedGroupComponents(Ljava/util/Set;)V

    .line 2013
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setLockedGroupIds(Ljava/util/Set;)V

    .line 2014
    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setDistinctGroupCount(I)V

    .line 2015
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrames(Ljava/util/ArrayList;)V

    .line 2016
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrameStyles(Ljava/util/ArrayList;)V

    return-void
.end method

.method private updateSelection_(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1141
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v2

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->highlightImageLayerId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 1143
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->checkObjectWithId(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1144
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->removeObjectWithId(I)V

    goto :goto_0

    .line 1147
    :cond_0
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1151
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->clearSnapShotProperties()V

    .line 1154
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->removeAllExtraHandles()V

    .line 1157
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v5

    iget-object v6, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/DrModuleContext;->highlightLayerId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;->layerWithId(I)Lcom/metamoji/un/draw2/library/overlay/DrOvLayer;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;

    const/4 v6, 0x1

    if-nez v5, :cond_2

    .line 1159
    invoke-static {v6, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1164
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameIds()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameIds()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 1165
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameIds()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    .line 1166
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->removeObjectWithId(I)V

    goto :goto_1

    .line 1168
    :cond_3
    invoke-virtual {v1, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrameIds(Ljava/util/List;)V

    .line 1172
    :cond_4
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->disusedHighlightObjectIds()Ljava/util/HashSet;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->disusedHighlightObjectIds()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 1173
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->disusedHighlightObjectIds()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1174
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1175
    invoke-virtual {v5, v8}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->checkObjectWithId(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1176
    invoke-virtual {v5, v8}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->removeObjectWithId(I)V

    goto :goto_2

    .line 1179
    :cond_6
    invoke-virtual {v1, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setDisusedHighlightObjectIds(Ljava/util/HashSet;)V

    .line 1183
    :cond_7
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isSelectable()Z

    move-result v7

    .line 1186
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->update()V

    .line 1189
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v8

    if-nez v8, :cond_8

    goto/16 :goto_19

    .line 1194
    :cond_8
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->updateProperties()V

    .line 1197
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setAngleInRadians(F)V

    .line 1200
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setFrameVisibility(Z)V

    .line 1203
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setHandleVisibility(Z)V

    .line 1204
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setExtraHandleVisibility(Z)V

    .line 1208
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->removedElements()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v10, 0x3

    const/4 v11, 0x2

    if-eqz v8, :cond_d

    .line 1210
    new-instance v8, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    invoke-direct {v8}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;-><init>()V

    .line 1211
    sget-object v12, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->REMOVE:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    invoke-virtual {v8, v12}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setProcess(Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;)V

    .line 1212
    invoke-virtual {v8, v5}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setLayer(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;)V

    .line 1214
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->removedElements()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 1215
    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v14

    if-nez v14, :cond_9

    .line 1216
    invoke-static {v11, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_3

    .line 1221
    :cond_9
    iget-object v14, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    if-eqz v14, :cond_b

    if-eq v14, v1, :cond_a

    goto :goto_3

    .line 1232
    :cond_a
    invoke-virtual {v13, v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->highlightWithContext(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    .line 1235
    iget-object v14, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1227
    :cond_b
    invoke-static {v10, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_3

    .line 1237
    :cond_c
    invoke-virtual {v1, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setRemovedElements(Ljava/util/ArrayList;)V

    .line 1241
    :cond_d
    new-instance v8, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;

    invoke-direct {v8}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;-><init>()V

    .line 1242
    sget-object v12, Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;->ADD:Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;

    invoke-virtual {v8, v12}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setProcess(Lcom/metamoji/un/draw2/module/element/DrHighlightProcess;)V

    .line 1243
    invoke-virtual {v8, v5}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setLayer(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;)V

    .line 1244
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcSprite;->newSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->setSnapShot(Lcom/metamoji/df/sprite/Sprite;)V

    move v12, v3

    .line 1247
    :goto_4
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v13

    const/4 v14, 0x4

    if-ge v12, v13, :cond_10

    .line 1248
    invoke-virtual {v1, v12}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElementAtOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v13

    if-nez v13, :cond_e

    .line 1250
    invoke-static {v14, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_5

    .line 1253
    :cond_e
    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v14

    if-nez v14, :cond_f

    const/4 v13, 0x5

    .line 1254
    invoke-static {v13, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_5

    .line 1259
    :cond_f
    invoke-virtual {v13, v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->highlightWithContext(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V

    .line 1262
    iget-object v14, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v13

    invoke-virtual {v14, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1266
    :cond_10
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->snapShotBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v12

    invoke-static {v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 1268
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->snapShot()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotSprite(Lcom/metamoji/df/sprite/Sprite;)V

    .line 1269
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->snapShotBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotBounds(Lcom/metamoji/cm/RectEx;)V

    .line 1272
    invoke-direct/range {p0 .. p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->setSnapShotImageOfSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)Z

    move-result v12

    if-eqz v12, :cond_12

    if-eqz v2, :cond_11

    .line 1276
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotImage()Landroid/graphics/Bitmap;

    move-result-object v12

    if-eqz v12, :cond_12

    .line 1277
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotImage()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1278
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->snapShotImageBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v13

    iget-object v15, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 1280
    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v15

    iget v15, v15, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseAlpha:F

    .line 1277
    invoke-virtual {v2, v12, v13, v9, v15}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->drawImage(Landroid/graphics/Bitmap;Lcom/metamoji/cm/RectEx;FF)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setSnapShotId(I)V

    goto :goto_6

    :cond_11
    const/4 v2, 0x6

    .line 1283
    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1291
    :cond_12
    :goto_6
    invoke-direct/range {p0 .. p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateGroupInformationsOfSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    .line 1294
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrames()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrames()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_15

    .line 1295
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v2

    iget v2, v2, Lcom/metamoji/un/draw2/module/DrModuleSettings;->groupFramePadding:F

    .line 1296
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrames()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    move v13, v3

    .line 1297
    :goto_7
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrames()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v13, v15, :cond_14

    .line 1298
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameStyles()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v13, v15, :cond_13

    goto :goto_8

    .line 1301
    :cond_13
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrames()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/metamoji/cm/RectEx;

    .line 1303
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameStyles()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    .line 1301
    invoke-virtual {v5, v15, v9, v3, v2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicsLayer;->drawRect(Lcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;F)I

    move-result v3

    .line 1305
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_7

    .line 1307
    :cond_14
    :goto_8
    invoke-virtual {v1, v12}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrameIds(Ljava/util/List;)V

    .line 1311
    :cond_15
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isSelectable()Z

    move-result v2

    if-eq v2, v7, :cond_19

    .line 1314
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1315
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->touch()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1316
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->touch()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->getRubberBandFrameStyleForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v2

    goto :goto_9

    :cond_16
    move-object v2, v4

    :goto_9
    if-nez v2, :cond_18

    .line 1319
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->defaultRubberBandFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v2

    goto :goto_a

    .line 1322
    :cond_17
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->unselectableRubberBandFrameStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v2

    .line 1324
    :cond_18
    :goto_a
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v3

    invoke-virtual {v2, v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setFrameStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 1328
    :cond_19
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isResizable()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->noResizing()Z

    move-result v2

    if-nez v2, :cond_1a

    move v2, v6

    goto :goto_b

    :cond_1a
    const/4 v2, 0x0

    .line 1329
    :goto_b
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isResizable()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->noResizingX()Z

    move-result v3

    if-nez v3, :cond_1b

    move v3, v6

    goto :goto_c

    :cond_1b
    const/4 v3, 0x0

    .line 1330
    :goto_c
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isResizable()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->noResizingY()Z

    move-result v5

    if-nez v5, :cond_1c

    move v5, v6

    goto :goto_d

    :cond_1c
    const/4 v5, 0x0

    .line 1331
    :goto_d
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v7

    if-ne v7, v6, :cond_20

    sget-object v7, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-virtual {v1, v7}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->checkElementType(Lcom/metamoji/un/draw2/module/element/DrElementType;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 1332
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getLastElement()Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;

    .line 1334
    sget-object v9, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$1;->$SwitchMap$com$metamoji$un$draw2$module$element$arrow$DrArrowType:[I

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->arrowType()Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowType;->ordinal()I

    move-result v12

    aget v9, v9, v12

    if-eq v9, v6, :cond_1f

    if-eq v9, v11, :cond_1e

    if-eq v9, v10, :cond_1d

    if-eq v9, v14, :cond_1d

    goto :goto_f

    .line 1345
    :cond_1d
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isHorizontal()Z

    move-result v9

    if-nez v9, :cond_1f

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isVertical()Z

    move-result v7

    if-eqz v7, :cond_20

    goto :goto_e

    .line 1339
    :cond_1e
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isHorizontal()Z

    move-result v9

    if-nez v9, :cond_1f

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isVertical()Z

    move-result v9

    if-nez v9, :cond_1f

    check-cast v7, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/arrow/DrMultiLineArrowElement;->lineCount()I

    move-result v7

    if-ne v7, v6, :cond_20

    :cond_1f
    :goto_e
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    goto :goto_10

    :cond_20
    :goto_f
    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v5

    .line 1360
    :goto_10
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v18

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isResizable()Z

    move-result v22

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isRotatable()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->noRotating()Z

    move-result v3

    if-nez v3, :cond_21

    move/from16 v23, v6

    goto :goto_11

    :cond_21
    const/16 v23, 0x0

    :goto_11
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v23}, Lcom/metamoji/un/draw2/module/DrModuleContext;->updateAllRubberBandHandlesPropertiesForRubberBand(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;ZZZZZ)V

    .line 1363
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isExtraHandleable()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v2

    if-ne v2, v6, :cond_29

    const/4 v2, 0x0

    .line 1366
    :goto_12
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 1367
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElementAtOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    if-nez v3, :cond_22

    const/4 v3, 0x7

    .line 1369
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_15

    .line 1372
    :cond_22
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v5

    if-nez v5, :cond_23

    const/16 v3, 0x8

    .line 1373
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_15

    .line 1380
    :cond_23
    instance-of v5, v3, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    if-nez v5, :cond_24

    goto :goto_15

    .line 1383
    :cond_24
    move-object v5, v3

    check-cast v5, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    .line 1384
    invoke-interface {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->handlesEnablement()Z

    move-result v7

    if-nez v7, :cond_25

    goto :goto_15

    .line 1387
    :cond_25
    invoke-interface {v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getHandleCount()I

    move-result v7

    const/4 v9, 0x0

    :goto_13
    if-ge v9, v7, :cond_27

    .line 1389
    invoke-interface {v5, v9}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getHandleAtIndex(I)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v12

    if-nez v12, :cond_26

    const/16 v12, 0x9

    .line 1391
    invoke-static {v12, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_14

    .line 1394
    :cond_26
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->isEnabled()Z

    move-result v13

    invoke-virtual {v12, v13}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->setIsVisible(Z)V

    .line 1395
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->addExtraHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V

    :goto_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    .line 1399
    :cond_27
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v3

    sget-object v5, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v3, v5, :cond_28

    .line 1400
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v3

    sget-object v5, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeZero:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setMinExtraHandleableFrameSize(Lcom/metamoji/cm/SizeF;)V

    goto :goto_15

    .line 1402
    :cond_28
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v3

    iget-object v5, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/metamoji/un/draw2/module/DrModuleSettings;->minExtraHandleableSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setMinExtraHandleableFrameSize(Lcom/metamoji/cm/SizeF;)V

    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 1408
    :cond_29
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v2

    if-ne v2, v6, :cond_2d

    const/4 v2, 0x0

    .line 1409
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElementAtOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1410
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1412
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v2

    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    if-ne v2, v4, :cond_2a

    .line 1413
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->angleInDegrees()F

    move-result v2

    :goto_16
    neg-float v2, v2

    goto :goto_17

    .line 1414
    :cond_2a
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v2

    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v2, v4, :cond_2b

    .line 1415
    check-cast v3, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->arrowAngle()F

    move-result v2

    goto :goto_16

    :cond_2b
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 1417
    :goto_17
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result v3

    if-eqz v3, :cond_2d

    const/high16 v3, 0x42b40000    # 90.0f

    add-float/2addr v3, v2

    const/high16 v4, 0x43340000    # 180.0f

    add-float/2addr v4, v2

    const/high16 v5, 0x43870000    # 270.0f

    add-float/2addr v5, v2

    .line 1418
    new-array v7, v14, [F

    const/16 v16, 0x0

    aput v2, v7, v16

    aput v3, v7, v6

    aput v4, v7, v11

    aput v5, v7, v10

    .line 1424
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setAdsorptionAngles([F)V

    .line 1425
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v2

    iget-object v3, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v3

    iget v3, v3, Lcom/metamoji/un/draw2/module/DrModuleSettings;->rubberBandAdsorptionMargin:F

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setAdsorptionMargin(F)V

    goto :goto_18

    :cond_2c
    const/16 v2, 0xa

    .line 1428
    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1433
    :cond_2d
    :goto_18
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v2

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setContentBounds(Lcom/metamoji/cm/RectEx;)V

    const/4 v2, 0x0

    .line 1436
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setIsEditing(Z)V

    .line 1439
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrHighlightContext;->destroy()V

    .line 1442
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_updatedSelectionIds:Ljava/util/List;

    if-eqz v2, :cond_2e

    .line 1443
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    :goto_19
    return-void
.end method


# virtual methods
.method public addSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V
    .locals 2

    .line 139
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 140
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 144
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 147
    :cond_1
    new-instance v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda7;-><init>(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public delaySelectionUpdation()Z
    .locals 2

    .line 434
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 435
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 438
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_delaySelectionUpdation:Z

    return v0
.end method

.method public destroy()V
    .locals 3

    .line 622
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 625
    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    .line 626
    :try_start_0
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    .line 627
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 628
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 629
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 630
    :try_start_1
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->destroy()V

    .line 631
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 634
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    .line 636
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 637
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 638
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    .line 640
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_updatedSelectionIds:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 641
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 642
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_updatedSelectionIds:Ljava/util/List;

    .line 644
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_removedSelectionIds:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 645
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 646
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_removedSelectionIds:Ljava/util/List;

    .line 648
    :cond_5
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 649
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    .line 650
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_delayingUpdateTargetSelectionIds:Ljava/util/HashSet;

    if-eqz v0, :cond_6

    .line 651
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 652
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_delayingUpdateTargetSelectionIds:Ljava/util/HashSet;

    .line 654
    :cond_6
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public editSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;Lcom/metamoji/un/draw2/module/element/DrEditContext;)V
    .locals 2

    .line 551
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 552
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 556
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x2

    .line 560
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 563
    :cond_2
    new-instance v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda8;-><init>(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;Lcom/metamoji/un/draw2/module/selection/DrSelection;Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 80
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 85
    throw v0
.end method

.method public getAllFollowerIds()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 312
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 313
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 316
    :cond_0
    monitor-enter p0

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    .line 331
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 332
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 333
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getLinkageFollowerElementIds()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 334
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 335
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_3

    move-object v1, v0

    :cond_3
    monitor-exit p0

    return-object v1

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 322
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getLinkageFollowerElementIds()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 323
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 324
    monitor-exit p0

    return-object v2

    .line 327
    :cond_6
    monitor-exit p0

    return-object v1

    .line 319
    :cond_7
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    .line 339
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAllSelectionIds()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 264
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 265
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public getAllSelections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/module/selection/DrSelection;",
            ">;"
        }
    .end annotation

    .line 251
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 252
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSelectionById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/selection/DrSelection;
    .locals 2

    .line 237
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 238
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 242
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 245
    :cond_1
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 247
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;
    .locals 2

    .line 277
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 278
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 282
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 285
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 286
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 289
    :cond_2
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 291
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSelectionContainsElementWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/selection/DrSelection;
    .locals 2

    .line 295
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 296
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 300
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 303
    :cond_1
    monitor-enter p0

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 305
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getSelectionContainsGroupWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/selection/DrSelection;
    .locals 4

    .line 346
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 347
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 351
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 356
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupIds()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    return-object v1
.end method

.method public getSelectionsForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/module/selection/DrSelection;",
            ">;"
        }
    .end annotation

    .line 370
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 371
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 375
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 378
    :cond_1
    monitor-enter p0

    .line 379
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 380
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 381
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->touch()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 382
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    :cond_3
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 386
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hasSelection()Z
    .locals 2

    .line 95
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 96
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method notifyAllElementsRemovedFromSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 730
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 733
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x1

    .line 734
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 737
    :cond_1
    monitor-enter p0

    .line 739
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 740
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElementAtOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 742
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 745
    :cond_2
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v2, 0x3

    .line 746
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 749
    :cond_3
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v2, 0x4

    .line 750
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 754
    :cond_4
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 756
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method notifyElementAddedToSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;Lcom/metamoji/un/draw2/module/element/DrElement;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 668
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 671
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    .line 672
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x2

    .line 676
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 679
    :cond_2
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 p1, 0x3

    .line 680
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 683
    :cond_3
    monitor-enter p0

    .line 684
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    if-eqz v1, :cond_5

    if-eq v1, p1, :cond_4

    const/4 p1, 0x4

    .line 687
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 689
    :cond_4
    monitor-exit p0

    return-void

    .line 692
    :cond_5
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method notifyElementRemovedFromSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;Lcom/metamoji/un/draw2/module/element/DrElement;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 698
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 701
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isActive()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    .line 702
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x2

    .line 706
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 709
    :cond_2
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 p1, 0x3

    .line 710
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 713
    :cond_3
    monitor-enter p0

    .line 714
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    if-eqz v1, :cond_5

    if-ne v1, p1, :cond_4

    .line 718
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_elementSelectionMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 p1, 0x4

    .line 720
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x5

    .line 723
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 725
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeAllSelectionsWithDestroy(Z)V
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 218
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 221
    :cond_0
    new-instance v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;Z)V

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeHighlightObjectWithId(II)V
    .locals 1

    .line 583
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 584
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 588
    :cond_0
    new-instance v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda9;-><init>(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;II)V

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V
    .locals 2

    .line 169
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 170
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 174
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 177
    :cond_1
    new-instance v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeSelectionsForTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Z)V
    .locals 2

    .line 192
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 193
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 197
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 200
    :cond_1
    new-instance v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;Z)V

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removedSelectionIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_removedSelectionIds:Ljava/util/List;

    return-object v0
.end method

.method public repaintAllSelections()V
    .locals 2

    .line 519
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 520
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 523
    :cond_0
    new-instance v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;)V

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public repaintSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V
    .locals 2

    .line 492
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 493
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 497
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 500
    :cond_1
    new-instance v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;Lcom/metamoji/un/draw2/module/selection/DrSelection;Z)V

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetIdPrefix(J)V
    .locals 1

    .line 609
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 610
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 613
    :cond_0
    monitor-enter p0

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setPrefix(J)V

    .line 615
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public selectionCount()I
    .locals 2

    .line 106
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public setDelaySelectionUpdation(Z)V
    .locals 3

    .line 441
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 442
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 446
    monitor-enter p0

    .line 447
    :try_start_0
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_delaySelectionUpdation:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 448
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_delaySelectionUpdation:Z

    .line 449
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_delayingUpdateTargetSelectionIds:Ljava/util/HashSet;

    .line 451
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 452
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 454
    :cond_2
    monitor-enter p0

    .line 455
    :try_start_1
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_delaySelectionUpdation:Z

    if-nez p1, :cond_3

    .line 456
    monitor-exit p0

    return-void

    .line 458
    :cond_3
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_delaySelectionUpdation:Z

    .line 459
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_delayingUpdateTargetSelectionIds:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 460
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_delayingUpdateTargetSelectionIds:Ljava/util/HashSet;

    .line 461
    monitor-exit p0

    return-void

    .line 463
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 464
    new-instance p1, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;)V

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception p1

    .line 463
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public setRemovedSelectionIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_removedSelectionIds:Ljava/util/List;

    return-void
.end method

.method public setUpdatedSelectionIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_updatedSelectionIds:Ljava/util/List;

    return-void
.end method

.method public updateSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V
    .locals 2

    .line 396
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 397
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 401
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 404
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 405
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 408
    :cond_2
    monitor-enter p0

    .line 409
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_delaySelectionUpdation:Z

    if-eqz v0, :cond_3

    .line 410
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_delayingUpdateTargetSelectionIds:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 411
    monitor-exit p0

    return-void

    .line 413
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    new-instance v0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 413
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updatedSelectionIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->m_updatedSelectionIds:Ljava/util/List;

    return-object v0
.end method
