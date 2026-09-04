.class public Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;
.super Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
.source "DrSelectDirection.java"


# instance fields
.field private m_didSelect:Z

.field private m_ignoreGroup:Z

.field private m_inclusionOnly:Z

.field private m_internalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;",
            ">;"
        }
    .end annotation
.end field

.field private m_isNonLimitation:Z

.field private m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

.field private m_restrictSelectionToTranslation:Z

.field private m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

.field private final m_touchPosition:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;-><init>()V

    .line 99
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_touchPosition:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_ignoreGroup:Z

    .line 115
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_inclusionOnly:Z

    .line 131
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_restrictSelectionToTranslation:Z

    return-void
.end method

.method private addInformationOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)[I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;II",
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;>;",
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/cm/RectEx;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)[I"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p8

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v5

    move-object/from16 v6, p1

    .line 643
    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 644
    filled-new-array/range {p6 .. p7}, [I

    move-result-object v0

    return-object v0

    :cond_0
    if-nez v1, :cond_2

    .line 649
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v1

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->collectFollowerIdsForTargetId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z

    .line 660
    :cond_1
    filled-new-array/range {p6 .. p7}, [I

    move-result-object v0

    return-object v0

    .line 664
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object v8

    .line 665
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v11, 0x0

    move-object/from16 v10, p12

    invoke-virtual/range {v8 .. v13}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/HashSet;Ljava/util/HashSet;ZZ)Ljava/util/HashSet;

    move-result-object v7

    move-object v13, v8

    if-eqz v7, :cond_12

    .line 672
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v8

    if-nez v8, :cond_3

    goto/16 :goto_9

    .line 689
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v14

    .line 691
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move/from16 v8, p6

    move/from16 v9, p7

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 693
    invoke-virtual {v1, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    move/from16 p5, v9

    if-eqz v12, :cond_4

    move/from16 v9, p5

    const/4 v10, 0x1

    goto :goto_0

    .line 699
    :cond_4
    invoke-virtual {v4, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v6, p0

    goto :goto_2

    .line 705
    :cond_5
    invoke-virtual {v13, v11}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMembersOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;

    move-result-object v12

    .line 706
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    check-cast v7, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-object/from16 v6, p0

    .line 707
    iget-boolean v9, v6, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_isNonLimitation:Z

    if-nez v9, :cond_6

    .line 709
    invoke-virtual {v14, v7}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v9

    invoke-static {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->checkImpossibilityOfSelectionForElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 711
    :cond_6
    invoke-virtual {v5, v7}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElementWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 713
    :cond_7
    invoke-virtual {v4, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object/from16 v6, p1

    move/from16 v9, p5

    goto :goto_0

    :cond_8
    move-object/from16 v6, p1

    goto :goto_1

    :cond_9
    move-object/from16 v6, p0

    .line 722
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v7

    .line 723
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 725
    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 726
    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v17, v8, 0x1

    if-eqz p3, :cond_a

    .line 731
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v8

    move-object v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v18, v7

    move-object v7, v8

    move-object v8, v9

    const/4 v9, 0x0

    move-object/from16 p12, v5

    move/from16 v5, p5

    move-object/from16 p5, p12

    move-object v4, v10

    move-object/from16 p12, v15

    move-object/from16 v6, v18

    const/4 v15, 0x0

    move-object/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->collectFollowerIdsForTargetId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z

    move-object v9, v8

    goto :goto_4

    :cond_a
    move-object/from16 p12, v5

    move/from16 v5, p5

    move-object/from16 p5, p12

    move-object v6, v7

    move-object v4, v11

    move-object/from16 p12, v15

    const/4 v15, 0x0

    :goto_4
    move/from16 v8, v17

    goto :goto_5

    :cond_b
    move-object/from16 p12, v5

    move/from16 v5, p5

    move-object/from16 p5, p12

    move-object v6, v7

    move-object v4, v11

    move-object/from16 p12, v15

    const/4 v15, 0x0

    .line 740
    :goto_5
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    if-eqz v7, :cond_c

    .line 742
    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_6

    :cond_c
    const/4 v7, 0x1

    .line 744
    new-array v10, v7, [Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    aput-object v4, v10, v15

    invoke-static {v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->setWithObjects([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    :goto_6
    invoke-virtual {v14, v9}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 750
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v9

    invoke-static {v6, v9, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    goto :goto_7

    :cond_d
    const/4 v9, 0x0

    .line 752
    invoke-static {v15, v9}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_7
    move v7, v5

    move-object/from16 v5, p5

    move/from16 p5, v7

    move-object/from16 v15, p12

    move-object v11, v4

    move-object v7, v6

    move-object/from16 v6, p0

    move-object/from16 v4, p11

    goto/16 :goto_3

    :cond_e
    move-object/from16 p12, v5

    move/from16 v5, p5

    move-object/from16 p5, p12

    move-object v6, v7

    move-object v4, v11

    move-object/from16 p12, v15

    const/4 v7, 0x1

    const/4 v15, 0x0

    .line 757
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p9

    .line 766
    invoke-virtual {v9, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    add-int/lit8 v5, v5, 0x1

    .line 771
    invoke-virtual {v13, v4}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getEquivalentGroupsToGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 772
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_f

    .line 773
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 774
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    move-object/from16 v6, p1

    move-object/from16 v4, p11

    move-object/from16 v15, p12

    move v9, v5

    move v10, v7

    move-object/from16 v5, p5

    goto/16 :goto_0

    :cond_10
    move v5, v9

    if-nez v10, :cond_11

    .line 785
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_11

    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 p7, p3

    move-object/from16 p4, v0

    move-object/from16 p5, v1

    move-object/from16 p8, v2

    move-object/from16 p9, v3

    move-object/from16 p6, v4

    invoke-virtual/range {p4 .. p9}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->collectFollowerIdsForTargetId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z

    .line 797
    :cond_11
    filled-new-array {v8, v5}, [I

    move-result-object v0

    return-object v0

    .line 673
    :cond_12
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_13

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->collectFollowerIdsForTargetId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z

    .line 684
    :cond_13
    filled-new-array/range {p6 .. p7}, [I

    move-result-object v0

    return-object v0
.end method

.method private addInformationOfElements(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;)[I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;II",
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;>;",
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/cm/RectEx;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)[I"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p8

    .line 816
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 817
    filled-new-array/range {p6 .. p7}, [I

    move-result-object v0

    return-object v0

    :cond_0
    if-nez v1, :cond_3

    .line 822
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 823
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v4

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->collectFollowerIdsForTargetId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z

    goto :goto_0

    .line 834
    :cond_2
    filled-new-array/range {p6 .. p7}, [I

    move-result-object v0

    return-object v0

    .line 838
    :cond_3
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 839
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 840
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 844
    :cond_4
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 847
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 853
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v6

    .line 854
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object v8

    .line 855
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move/from16 v14, p6

    move/from16 v15, p7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v16, v9

    check-cast v16, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 857
    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v11, 0x0

    move-object/from16 v10, p10

    invoke-virtual/range {v8 .. v13}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/HashSet;Ljava/util/HashSet;ZZ)Ljava/util/HashSet;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 864
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v10

    if-nez v10, :cond_5

    goto/16 :goto_b

    .line 880
    :cond_5
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move/from16 v16, v15

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 882
    invoke-virtual {v4, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_3

    .line 887
    :cond_6
    invoke-virtual {v8, v10}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMembersOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;

    move-result-object v11

    .line 891
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 892
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    move-object/from16 p5, v3

    move-object/from16 p1, v7

    move-object v3, v10

    move-object/from16 v10, p9

    goto/16 :goto_a

    .line 901
    :cond_8
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v12

    .line 902
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 904
    invoke-virtual {v0, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 905
    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v14, 0x1

    if-eqz p3, :cond_9

    .line 910
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v19, v12

    const/4 v12, 0x0

    move-object/from16 p5, v3

    move-object/from16 p1, v7

    move-object v3, v10

    move-object v10, v13

    move-object/from16 v7, v19

    move-object/from16 v13, p3

    invoke-virtual/range {v10 .. v15}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->collectFollowerIdsForTargetId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z

    goto :goto_5

    :cond_9
    move-object/from16 p5, v3

    move-object/from16 p1, v7

    move-object v3, v10

    move-object v7, v12

    :goto_5
    move/from16 v14, v18

    goto :goto_6

    :cond_a
    move-object/from16 p5, v3

    move-object/from16 p1, v7

    move-object v3, v10

    move-object v7, v12

    .line 919
    :goto_6
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    const/4 v12, 0x0

    if-eqz v10, :cond_b

    .line 921
    invoke-interface {v10, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    const/4 v10, 0x1

    .line 923
    new-array v10, v10, [Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    aput-object v3, v10, v12

    invoke-static {v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->setWithObjects([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v10

    invoke-virtual {v2, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    :goto_7
    invoke-virtual {v6, v11}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 929
    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v10

    invoke-static {v7, v10, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    goto :goto_8

    :cond_c
    const/4 v10, 0x0

    .line 931
    invoke-static {v12, v10}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_8
    move-object v10, v3

    move-object v12, v7

    move-object/from16 v7, p1

    move-object/from16 v3, p5

    goto :goto_4

    :cond_d
    move-object/from16 p5, v3

    move-object/from16 p1, v7

    move-object v3, v10

    move-object v7, v12

    .line 936
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, p9

    .line 945
    invoke-virtual {v10, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    add-int/lit8 v16, v16, 0x1

    .line 950
    invoke-virtual {v8, v3}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getEquivalentGroupsToGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 951
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v11

    if-lez v11, :cond_e

    .line 952
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 953
    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 960
    :cond_e
    :goto_a
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, p1

    move-object/from16 v3, p5

    goto/16 :goto_3

    :cond_f
    move-object/from16 v10, p9

    move/from16 v15, v16

    goto/16 :goto_2

    :cond_10
    :goto_b
    move-object/from16 v10, p9

    move-object/from16 p5, v3

    move-object/from16 p1, v7

    .line 865
    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_11

    .line 869
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v11

    move v7, v14

    const/4 v14, 0x0

    move/from16 v16, v15

    const/4 v15, 0x0

    const/4 v12, 0x0

    move-object/from16 v13, p3

    move-object v10, v3

    move/from16 v3, v16

    invoke-virtual/range {v10 .. v15}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->collectFollowerIdsForTargetId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z

    goto :goto_c

    :cond_11
    move v7, v14

    move v3, v15

    :goto_c
    move v15, v3

    move v14, v7

    move-object/from16 v7, p1

    move-object/from16 v3, p5

    goto/16 :goto_2

    :cond_12
    move v7, v14

    move v3, v15

    .line 964
    filled-new-array {v7, v3}, [I

    move-result-object v0

    return-object v0
.end method

.method private static checkImpossibilityOfSelectionForElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 802
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isSelectable()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method canSave_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method destroy_()V
    .locals 2

    .line 616
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_internalMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 618
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_internalMap:Ljava/util/HashMap;

    .line 620
    :cond_0
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->setOverlay(Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;)V

    .line 621
    invoke-virtual {p0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->setTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    return-void
.end method

.method public didSelect()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_didSelect:Z

    return v0
.end method

.method executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 30

    move-object/from16 v0, p0

    .line 217
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-nez v1, :cond_0

    .line 218
    invoke-static {v13, v14}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v14

    .line 221
    :cond_0
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    return-object v14

    .line 226
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 229
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->followerCount()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v3, v1

    goto :goto_0

    :cond_2
    move-object v3, v14

    .line 253
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->ignoreGroup()Z

    move-result v1

    if-nez v1, :cond_3

    .line 254
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 255
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 256
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 257
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v8, v5

    move-object v9, v6

    move-object v5, v4

    move-object v4, v1

    goto :goto_1

    :cond_3
    move-object v4, v14

    move-object v5, v4

    move-object v8, v5

    move-object v9, v8

    .line 265
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v15

    .line 266
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->intervalManager()Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

    move-result-object v16

    .line 267
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->inclusionOnly()Z

    move-result v1

    const-wide/16 v22, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_f

    .line 269
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 270
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;

    .line 272
    iget-object v7, v6, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v15, v7}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 276
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move/from16 v26, v13

    move-object/from16 v27, v14

    .line 281
    iget-wide v13, v6, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->strokeStartIndex:D

    cmpg-double v7, v13, v22

    if-ltz v7, :cond_d

    iget-wide v13, v6, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->strokeEndIndex:D

    cmpg-double v7, v13, v22

    if-gez v7, :cond_5

    goto/16 :goto_6

    .line 287
    :cond_5
    iget-object v7, v6, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-eqz v7, :cond_9

    .line 289
    iget-object v7, v6, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v15, v7}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    if-eqz v7, :cond_6

    .line 291
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 296
    :cond_6
    iget-wide v13, v6, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->strokeStartIndex:D

    iget-wide v10, v6, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->strokeEndIndex:D

    iget-object v7, v6, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-object/from16 v21, v7

    move-wide/from16 v19, v10

    move-wide/from16 v17, v13

    invoke-virtual/range {v16 .. v21}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalContainingInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 300
    invoke-virtual {v15, v7}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 302
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 304
    :cond_7
    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_6

    .line 310
    :cond_8
    iget-wide v10, v6, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->strokeStartIndex:D

    iget-wide v13, v6, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->strokeEndIndex:D

    iget-object v6, v6, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-object/from16 v21, v6

    move-wide/from16 v17, v10

    move-wide/from16 v19, v13

    invoke-virtual/range {v16 .. v21}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getSubIntervalsOfInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v13, v16

    goto :goto_3

    :cond_9
    move-object/from16 v13, v16

    .line 315
    iget-object v6, v6, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v13, v6}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalsInGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v6

    :goto_3
    if-eqz v6, :cond_c

    .line 319
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_a

    goto :goto_5

    .line 324
    :cond_a
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 325
    invoke-virtual {v15, v7}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 327
    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x2

    goto :goto_4

    .line 329
    :cond_b
    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x2

    invoke-static {v11, v7}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_4

    :cond_c
    :goto_5
    move-object/from16 v16, v13

    goto :goto_6

    :cond_d
    const/4 v11, 0x2

    :goto_6
    move/from16 v13, v26

    move-object/from16 v14, v27

    goto/16 :goto_2

    :cond_e
    move/from16 v26, v13

    move-object/from16 v27, v14

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    .line 335
    invoke-direct/range {v0 .. v10}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->addInformationOfElements(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;)[I

    move-result-object v1

    .line 345
    aget v6, v1, v26

    .line 346
    aget v1, v1, v12

    move-object v10, v3

    move-object v11, v4

    move v13, v6

    move-object v3, v9

    move/from16 p1, v12

    move-object v9, v0

    move-object v0, v5

    move-object v12, v8

    goto/16 :goto_12

    :cond_f
    move/from16 v26, v13

    move-object/from16 v27, v14

    move-object/from16 v13, v16

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    .line 355
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->ignoreGroup()Z

    move-result v1

    if-nez v1, :cond_10

    .line 356
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 357
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v29, v10

    move/from16 v28, v11

    move-object v11, v14

    move-object v10, v1

    goto :goto_7

    :cond_10
    move-object/from16 v29, v10

    move/from16 v28, v11

    move-object/from16 v10, v27

    move-object v11, v10

    .line 361
    :goto_7
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;

    .line 363
    iget-object v12, v1, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v15, v12}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v12

    if-eqz v12, :cond_11

    move-object v1, v12

    move-object/from16 v16, v13

    move-object/from16 v24, v14

    move/from16 v14, v28

    move-object/from16 v12, v29

    const/16 p1, 0x1

    .line 367
    invoke-direct/range {v0 .. v12}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->addInformationOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)[I

    move-result-object v1

    .line 379
    aget v6, v1, v26

    .line 380
    aget v7, v1, p1

    move-object/from16 v0, p0

    :goto_9
    move-object/from16 v14, v24

    goto/16 :goto_11

    :cond_11
    move-object/from16 v16, v13

    move-object/from16 v24, v14

    move/from16 v14, v28

    move-object/from16 v12, v29

    const/16 p1, 0x1

    move-object v13, v1

    .line 385
    iget-wide v0, v13, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->strokeStartIndex:D

    cmpg-double v0, v0, v22

    if-ltz v0, :cond_1b

    iget-wide v0, v13, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->strokeEndIndex:D

    cmpg-double v0, v0, v22

    if-gez v0, :cond_12

    goto/16 :goto_f

    .line 391
    :cond_12
    iget-object v0, v13, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-eqz v0, :cond_16

    .line 393
    iget-object v0, v13, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v15, v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    .line 395
    invoke-direct/range {v0 .. v12}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->addInformationOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)[I

    move-result-object v1

    .line 407
    aget v6, v1, v26

    .line 408
    aget v7, v1, p1

    move-object/from16 v29, v12

    move/from16 v28, v14

    :goto_a
    move-object/from16 v13, v16

    goto :goto_9

    .line 413
    :cond_13
    iget-wide v0, v13, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->strokeStartIndex:D

    move-object/from16 v25, v15

    iget-wide v14, v13, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->strokeEndIndex:D

    iget-object v12, v13, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-wide/from16 v17, v0

    move-object/from16 v21, v12

    move-wide/from16 v19, v14

    invoke-virtual/range {v16 .. v21}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalContainingInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v14

    if-eqz v14, :cond_15

    move-object/from16 v15, v25

    .line 417
    invoke-virtual {v15, v14}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v1

    if-eqz v1, :cond_14

    const/4 v12, 0x0

    move-object/from16 v0, p0

    .line 419
    invoke-direct/range {v0 .. v12}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->addInformationOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)[I

    move-result-object v1

    .line 431
    aget v6, v1, v26

    .line 432
    aget v7, v1, p1

    const/16 v28, 0x2

    move-object/from16 v29, v12

    goto :goto_a

    :cond_14
    const/4 v12, 0x0

    const/4 v0, 0x3

    .line 434
    invoke-static {v14}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto/16 :goto_f

    :cond_15
    move-object/from16 v15, v25

    const/4 v12, 0x0

    .line 440
    iget-wide v0, v13, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->strokeStartIndex:D

    move-wide/from16 v17, v0

    iget-wide v0, v13, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->strokeEndIndex:D

    iget-object v13, v13, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-wide/from16 v19, v0

    move-object/from16 v21, v13

    invoke-virtual/range {v16 .. v21}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getSubIntervalsOfInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v14, v16

    goto :goto_b

    :cond_16
    move-object/from16 v14, v16

    .line 445
    iget-object v0, v13, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v14, v0}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalsInGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v0

    :goto_b
    if-eqz v0, :cond_1a

    .line 449
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_e

    .line 454
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 455
    invoke-virtual {v15, v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v1

    if-eqz v1, :cond_18

    move-object/from16 v0, p0

    .line 457
    invoke-direct/range {v0 .. v12}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->addInformationOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;IILjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;)[I

    move-result-object v1

    move-object/from16 v29, v9

    move-object v9, v0

    move-object v0, v5

    move-object v5, v11

    move-object v11, v4

    move-object v4, v10

    move-object v10, v3

    move-object/from16 v3, v29

    move-object/from16 v29, v12

    move-object v12, v8

    .line 469
    aget v6, v1, v26

    .line 470
    aget v1, v1, p1

    move v7, v1

    goto :goto_d

    :cond_18
    move-object/from16 v16, v0

    move-object v0, v5

    move-object v5, v11

    move-object/from16 v29, v12

    move-object v11, v4

    move-object v12, v8

    move-object v4, v10

    move-object v10, v3

    move-object v3, v9

    move-object/from16 v9, p0

    const/4 v1, 0x4

    .line 472
    invoke-static/range {v16 .. v16}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_d
    move-object v9, v3

    move-object v3, v10

    move-object v8, v12

    move-object/from16 v12, v29

    move-object v10, v4

    move-object v4, v11

    move-object v11, v5

    move-object v5, v0

    goto :goto_c

    :cond_19
    move-object v0, v5

    move-object v5, v11

    move-object v11, v4

    move-object/from16 v29, v12

    move-object v13, v14

    move-object/from16 v14, v24

    const/16 v28, 0x2

    move/from16 v12, p1

    move-object v11, v5

    move-object v5, v0

    move-object/from16 v0, p0

    goto/16 :goto_8

    :cond_1a
    :goto_e
    move-object v0, v5

    move-object v5, v11

    move-object/from16 v29, v12

    goto :goto_10

    :cond_1b
    :goto_f
    move-object v0, v5

    move-object v5, v11

    move-object/from16 v29, v12

    move-object/from16 v14, v16

    :goto_10
    move-object v11, v4

    move-object v12, v8

    move-object v4, v10

    move-object v10, v3

    move-object v3, v9

    move-object/from16 v9, p0

    move-object v8, v5

    move-object v5, v0

    move-object v0, v9

    move-object v9, v3

    move-object v3, v10

    move-object v10, v4

    move-object v4, v11

    move-object v11, v8

    move-object v8, v12

    move-object v13, v14

    move-object/from16 v14, v24

    const/16 v28, 0x2

    :goto_11
    move/from16 v12, p1

    goto/16 :goto_8

    :cond_1c
    move v1, v7

    move-object v10, v3

    move-object v11, v4

    move-object v3, v9

    move/from16 p1, v12

    move-object v9, v0

    move-object v0, v5

    move-object v12, v8

    move v13, v6

    .line 479
    :goto_12
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_1d

    return-object v27

    :cond_1d
    if-eqz v10, :cond_27

    .line 489
    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_27

    .line 490
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 491
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 492
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const/4 v14, 0x2

    .line 493
    new-array v5, v14, [I

    move-object v14, v3

    const/4 v3, 0x1

    move-object v4, v2

    move-object v2, v15

    .line 494
    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getSortedElementsByAscending(ZLjava/util/Set;[ILjava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    .line 500
    aget v3, v5, v26

    .line 501
    aget v4, v5, p1

    .line 502
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v5

    if-gtz v5, :cond_1f

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v5

    if-gtz v5, :cond_1f

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_1e

    goto :goto_13

    :cond_1e
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v27

    move-object v5, v0

    move-object v15, v5

    goto :goto_16

    .line 503
    :cond_1f
    :goto_13
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 504
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v16, v0

    .line 505
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 506
    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_14
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_23

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 507
    invoke-virtual {v6, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 508
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {v15, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 510
    :cond_20
    invoke-virtual {v7, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_21

    .line 511
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 512
    :cond_21
    invoke-virtual {v8, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_22

    .line 513
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_22
    :goto_15
    move-object/from16 v2, v18

    goto :goto_14

    :cond_23
    move-object/from16 v18, v2

    .line 517
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_24

    move-object/from16 v5, v27

    .line 520
    :cond_24
    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_25

    move-object/from16 v15, v27

    .line 523
    :cond_25
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_26

    move-object/from16 v0, v27

    :cond_26
    :goto_16
    move-object/from16 v2, v18

    goto :goto_17

    :cond_27
    move-object/from16 v16, v0

    move-object v14, v3

    const/4 v0, 0x2

    .line 528
    new-array v0, v0, [I

    move/from16 v3, p1

    .line 529
    invoke-virtual {v15, v3, v2, v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getSortedElementsByAscending(ZLjava/util/Set;[I)Ljava/util/List;

    move-result-object v2

    .line 530
    aget v4, v0, v26

    .line 531
    aget v0, v0, v3

    move v3, v4

    move-object/from16 v5, v27

    move-object v15, v5

    move v4, v0

    move-object v0, v15

    .line 533
    :goto_17
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_28

    const/4 v0, 0x5

    move-object/from16 v1, v27

    .line 534
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_28
    if-eqz v12, :cond_2a

    .line 542
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v7, v7, [Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-interface {v6, v7}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    array-length v7, v6

    move/from16 v8, v26

    :goto_18
    if-ge v8, v7, :cond_2a

    aget-object v10, v6, v8

    .line 543
    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move-object/from16 v18, v2

    .line 544
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v2

    move-object/from16 v17, v6

    const/4 v6, 0x1

    if-gt v2, v6, :cond_29

    .line 545
    invoke-virtual {v12, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, v17

    move-object/from16 v2, v18

    goto :goto_18

    :cond_2a
    move-object/from16 v18, v2

    .line 551
    new-instance v2, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v6

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lcom/metamoji/un/draw2/module/selection/DrSelection;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;)V

    .line 552
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->touch()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V

    .line 553
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->touchPosition()Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setTouchPosition(Landroid/graphics/PointF;)V

    .line 554
    iget-boolean v6, v9, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_isNonLimitation:Z

    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setIsNonLimitation(Z)V

    .line 555
    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setExternalLinkageStrongFollowerIds(Ljava/util/Set;)V

    .line 556
    invoke-virtual {v2, v15}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setExternalUpperOrderLinkageStrongFollowerIds(Ljava/util/Set;)V

    .line 557
    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setExternalLowerOrderLinkageStrongFollowerIds(Ljava/util/Set;)V

    .line 558
    invoke-virtual {v2, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setMaximumElementOrder(I)V

    .line 559
    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setMinimumElementOrder(I)V

    .line 560
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 561
    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    goto :goto_19

    :cond_2b
    if-eqz v11, :cond_2e

    .line 563
    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2e

    .line 564
    invoke-virtual {v2, v11}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupIds(Ljava/util/Set;)V

    .line 565
    invoke-virtual {v2, v14}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupFrameMap(Ljava/util/HashMap;)V

    .line 566
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v0

    if-ne v13, v0, :cond_2c

    const/4 v0, 0x1

    goto :goto_1a

    :cond_2c
    move/from16 v0, v26

    :goto_1a
    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setGroupMemberOnly(Z)V

    .line 567
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->createConnectedComponentsOfGroups(Ljava/util/Set;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setConnectedGroupComponents(Ljava/util/Set;)V

    .line 568
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2d

    move-object/from16 v5, v16

    goto :goto_1b

    :cond_2d
    const/4 v5, 0x0

    :goto_1b
    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setLockedGroupIds(Ljava/util/Set;)V

    .line 569
    invoke-virtual {v2, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setDistinctGroupCount(I)V

    .line 573
    :cond_2e
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->restrictSelectionToTranslation()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v3, 0x1

    .line 574
    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setDisableResizability(Z)V

    .line 575
    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setDisableReversibility(Z)V

    .line 576
    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setDisableRotatability(Z)V

    .line 577
    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->setDisableExtraHandleability(Z)V

    .line 581
    :cond_2f
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->addSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    .line 584
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->restrictSelectionToTranslation()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 585
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setFrameVisibility(Z)V

    .line 586
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setHandleVisibility(Z)V

    .line 587
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setExtraHandleVisibility(Z)V

    .line 588
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setFixFrameVisibility(Z)V

    .line 589
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setFixHandleVisibility(Z)V

    .line 590
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->rubberBand()Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBand;->setFixExtraHandleVisibility(Z)V

    goto :goto_1c

    :cond_30
    const/4 v3, 0x1

    .line 594
    :goto_1c
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->touch()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 595
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->touch()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    move-result-object v0

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;->setTargetSelectionId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 599
    :cond_31
    iput-boolean v3, v9, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_didSelect:Z

    const/16 v27, 0x0

    return-object v27
.end method

.method hasReverse_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ignoreGroup()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_ignoreGroup:Z

    return v0
.end method

.method public inclusionOnly()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_inclusionOnly:Z

    return v0
.end method

.method init_()Z
    .locals 1

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_internalMap:Ljava/util/HashMap;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 191
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->setTouchPosition(Landroid/graphics/PointF;)V

    const/4 v0, 0x0

    .line 192
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->setIgnoreGroup(Z)V

    .line 193
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->setInclusionOnly(Z)V

    .line 194
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_isNonLimitation:Z

    .line 195
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->setRestrictSelectionToTranslation(Z)V

    .line 196
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_didSelect:Z

    const/4 v0, 0x1

    return v0
.end method

.method public isNonLimitation()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_isNonLimitation:Z

    return v0
.end method

.method public overlay()Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    return-object v0
.end method

.method restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public restrictSelectionToTranslation()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_restrictSelectionToTranslation:Z

    return v0
.end method

.method saveToModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public selectElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V
    .locals 4

    .line 147
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 148
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 152
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 155
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 156
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    .line 160
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 163
    :cond_3
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_isNonLimitation:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x4

    .line 164
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    return-void

    .line 172
    :cond_5
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;-><init>()V

    .line 173
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 174
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v1, v2, :cond_6

    .line 175
    move-object v1, p1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    .line 176
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->strokeStartIndex:D

    .line 177
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->strokeEndIndex:D

    .line 178
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 182
    :cond_6
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setIgnoreGroup(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_ignoreGroup:Z

    return-void
.end method

.method public setInclusionOnly(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_inclusionOnly:Z

    return-void
.end method

.method public setIsNonLimitation(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_isNonLimitation:Z

    return-void
.end method

.method public setOverlay(Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_overlay:Lcom/metamoji/un/draw2/library/overlay/DrOvOverlay;

    return-void
.end method

.method public setRestrictSelectionToTranslation(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_restrictSelectionToTranslation:Z

    return-void
.end method

.method public setTouch(Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    return-void
.end method

.method public setTouchPosition(Landroid/graphics/PointF;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_touchPosition:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public touch()Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_touch:Lcom/metamoji/un/draw2/library/overlay/DrOvTouch;

    return-object v0
.end method

.method public touchPosition()Landroid/graphics/PointF;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSelectDirection;->m_touchPosition:Landroid/graphics/PointF;

    return-object v0
.end method

.method type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 202
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SELECT:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    return-object v0
.end method
