.class public Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;
.super Ljava/lang/Object;
.source "DrLinkageManager.java"


# instance fields
.field private m_closed:Z

.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

.field private m_followerIdTargetIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_targetIdFollowerIdsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    .line 62
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    .line 63
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    return-void
.end method

.method private activateLinkageForFollowerIds_(Ljava/util/Set;ILcom/metamoji/un/draw2/module/command/DrCommandExecutionType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;Ljava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;I",
            "Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;",
            "Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;",
            "Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 1450
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editWithVariationAlways()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;-><init>()V

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;-><init>()V

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 1452
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v8, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1453
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_a

    .line 1454
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    .line 1458
    :cond_1
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-nez v4, :cond_2

    :goto_2
    move-object/from16 v3, p6

    move-object v4, v2

    goto/16 :goto_5

    .line 1462
    :cond_2
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v10, 0x1

    if-eqz p2, :cond_8

    if-eq p2, v10, :cond_7

    const/4 v5, 0x2

    if-eq p2, v5, :cond_6

    const/4 v5, 0x3

    if-eq p2, v5, :cond_5

    const/4 v5, 0x4

    if-eq p2, v5, :cond_4

    .line 1484
    invoke-static {v10, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    .line 1481
    :cond_4
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v5

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v6

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->setLinkageRotateVariationToDirection_(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)Z

    move-result v3

    goto :goto_3

    .line 1478
    :cond_5
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v5

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v6

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->setLinkageReverseVariationToDirection_(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)Z

    move-result v3

    goto :goto_3

    .line 1475
    :cond_6
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v5

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v6

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->setLinkageScaleVariationToDirection_(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)Z

    move-result v3

    goto :goto_3

    .line 1472
    :cond_7
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v5

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v6

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->setLinkageResizeVariationToDirection_(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)Z

    move-result v3

    goto :goto_3

    .line 1469
    :cond_8
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v5

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v6

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->setLinkageTranslateVariationToDirection_(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)Z

    move-result v3

    :goto_3
    move-object v4, v2

    if-eqz v3, :cond_9

    move-object/from16 v3, p6

    .line 1489
    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v8, v10

    goto :goto_5

    :cond_9
    move-object/from16 v3, p6

    goto :goto_5

    :cond_a
    :goto_4
    move-object/from16 v3, p6

    move-object v4, v2

    .line 1455
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_5
    move-object v2, v4

    goto/16 :goto_1

    :cond_b
    move-object v4, v2

    if-eqz v8, :cond_c

    .line 1495
    new-instance p1, Lcom/metamoji/un/draw2/module/command/DrCommand;

    iget-object p2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-direct {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;-><init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V

    .line 1496
    invoke-virtual {p1, v4}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 1497
    invoke-virtual {p1, p4}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationType(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;)V

    move-object/from16 p2, p5

    .line 1498
    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setCollaborationTarget(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;)V

    .line 1499
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->executeCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    return-void

    .line 1501
    :cond_c
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->destroy()V

    return-void
.end method

.method private static applyLatestStatusOfFollower_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 1939
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->contentScale()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setLatestFollowerContentScale(F)V

    .line 1940
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    if-ne v1, v2, :cond_0

    .line 1941
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 1942
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingX()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setLatestFollowerIsReversingX(Z)V

    .line 1943
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingY()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setLatestFollowerIsReversingY(Z)V

    goto :goto_0

    .line 1945
    :cond_0
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setLatestFollowerIsReversingX(Z)V

    .line 1946
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setLatestFollowerIsReversingY(Z)V

    .line 1949
    :goto_0
    sget-object v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$SizeType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->sizeType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_2

    .line 1961
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v1, v2, :cond_4

    goto :goto_1

    .line 1956
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    if-ne v1, v2, :cond_4

    goto :goto_1

    .line 1951
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->POINTS:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    if-ne v1, v2, :cond_4

    .line 1969
    :goto_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->getLinkageCriterionSizeOfElement_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Z)Lcom/metamoji/cm/SizeF;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setLatestFollowerCriterionSize(Lcom/metamoji/cm/SizeF;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    const/high16 p0, 0x3f800000    # 1.0f

    .line 1972
    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setLatestFollowerContentScale(F)V

    .line 1973
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setLatestFollowerIsReversingX(Z)V

    .line 1974
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setLatestFollowerIsReversingY(Z)V

    const/high16 p0, 0x7fc00000    # Float.NaN

    .line 1975
    invoke-static {p0, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setLatestFollowerCriterionSize(Lcom/metamoji/cm/SizeF;)V

    return-void
.end method

.method private static applyLatestStatusOfTarget_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1921
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->contentScale()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setLatestTargetContentScale(F)V

    .line 1922
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    if-ne v1, v2, :cond_0

    .line 1923
    check-cast p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 1924
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingX()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setLatestTargetIsReversingX(Z)V

    .line 1925
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingY()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setLatestTargetIsReversingY(Z)V

    return-void

    .line 1927
    :cond_0
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setLatestTargetIsReversingX(Z)V

    .line 1928
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setLatestTargetIsReversingY(Z)V

    return-void

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 1931
    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setLatestTargetContentScale(F)V

    .line 1932
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setLatestTargetIsReversingX(Z)V

    .line 1933
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setLatestTargetIsReversingY(Z)V

    return-void
.end method

.method private static calculateLinkageCriterionSizeForBaseSize_(Lcom/metamoji/cm/SizeF;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Z)Lcom/metamoji/cm/SizeF;
    .locals 8

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 2295
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    .line 2296
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->width()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->width()D

    move-result-wide v4

    cmpl-double v1, v4, v2

    if-lez v1, :cond_0

    .line 2297
    iget v1, p0, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v4, v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->width()D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v1, v4

    iput v1, v0, Lcom/metamoji/cm/SizeF;->width:F

    .line 2299
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->height()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->height()D

    move-result-wide v4

    cmpl-double v1, v4, v2

    if-lez v1, :cond_1

    .line 2300
    iget v1, p0, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v1, v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->height()D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float p1, v1

    iput p1, v0, Lcom/metamoji/cm/SizeF;->height:F

    .line 2302
    :cond_1
    iget p1, v0, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 2303
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_4

    .line 2306
    iget p1, v0, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2307
    iget p1, p0, Lcom/metamoji/cm/SizeF;->width:F

    iput p1, v0, Lcom/metamoji/cm/SizeF;->width:F

    .line 2309
    :cond_3
    iget p1, v0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2310
    iget p0, p0, Lcom/metamoji/cm/SizeF;->height:F

    iput p0, v0, Lcom/metamoji/cm/SizeF;->height:F

    :cond_4
    return-object v0
.end method

.method private classifyFollowerIds_(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1327
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1329
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 1331
    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 1334
    :cond_0
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_1

    .line 1336
    invoke-static {v6, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 1341
    :cond_1
    iget-object v7, v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-nez v7, :cond_2

    goto :goto_0

    .line 1345
    :cond_2
    iget-object v8, v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_0

    .line 1351
    :cond_3
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v8

    .line 1352
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v9

    const/4 v10, 0x2

    if-eqz v8, :cond_14

    if-nez v9, :cond_4

    goto/16 :goto_b

    .line 1359
    :cond_4
    sget-object v4, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$PositionType:[I

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->positionType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->ordinal()I

    move-result v11

    aget v4, v4, v11

    const/4 v11, 0x4

    const/4 v12, 0x3

    if-eq v4, v6, :cond_6

    if-eq v4, v10, :cond_6

    if-eq v4, v12, :cond_6

    if-eq v4, v11, :cond_6

    :cond_5
    :goto_1
    move-object/from16 v11, p2

    goto :goto_2

    .line 1364
    :cond_6
    sget-object v4, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$PositionType:[I

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->positionType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->ordinal()I

    move-result v13

    aget v4, v4, v13

    if-eq v4, v6, :cond_7

    if-eq v4, v10, :cond_7

    if-eq v4, v12, :cond_7

    if-eq v4, v11, :cond_7

    goto :goto_1

    .line 1369
    :cond_7
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->xDifference()D

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->yDifference()D

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_8
    move-object/from16 v11, p2

    .line 1370
    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1382
    :goto_2
    sget-object v4, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$SizeType:[I

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->sizeType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->ordinal()I

    move-result v13

    aget v4, v4, v13

    if-eq v4, v6, :cond_a

    if-eq v4, v10, :cond_a

    if-eq v4, v12, :cond_a

    :cond_9
    :goto_3
    move-object/from16 v13, p3

    goto :goto_4

    .line 1386
    :cond_a
    sget-object v4, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$SizeType:[I

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->sizeType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->ordinal()I

    move-result v13

    aget v4, v4, v13

    if-eq v4, v6, :cond_b

    if-eq v4, v10, :cond_b

    if-eq v4, v12, :cond_b

    goto :goto_3

    .line 1390
    :cond_b
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifference()D

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifference()D

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1391
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifferenceRatio()D

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifferenceRatio()D

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_c
    move-object/from16 v13, p3

    .line 1392
    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1404
    :goto_4
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->ignoreContentScale()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1405
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->contentScale()F

    move-result v4

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->latestTargetContentScale()F

    move-result v14

    div-float/2addr v4, v14

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->contentScale()F

    move-result v14

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->latestFollowerContentScale()F

    move-result v15

    div-float/2addr v14, v15

    const/4 v15, 0x6

    invoke-static {v4, v14, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v4

    if-nez v4, :cond_d

    move-object/from16 v14, p4

    .line 1406
    invoke-interface {v14, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    move-object/from16 v14, p4

    .line 1410
    :goto_5
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->ignoreReversing()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v4

    sget-object v15, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    if-ne v4, v15, :cond_10

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v4

    sget-object v15, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    if-ne v4, v15, :cond_10

    .line 1411
    check-cast v3, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 1412
    check-cast v7, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 1413
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->latestTargetIsReversingX()Z

    move-result v4

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingX()Z

    move-result v15

    if-eq v4, v15, :cond_f

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->latestFollowerIsReversingX()Z

    move-result v4

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingX()Z

    move-result v15

    if-eq v4, v15, :cond_e

    goto :goto_7

    :cond_e
    :goto_6
    move-object/from16 v3, p5

    goto :goto_8

    .line 1414
    :cond_f
    :goto_7
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->latestTargetIsReversingY()Z

    move-result v4

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingY()Z

    move-result v7

    if-eq v4, v7, :cond_10

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->latestFollowerIsReversingY()Z

    move-result v4

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingY()Z

    move-result v3

    if-ne v4, v3, :cond_10

    goto :goto_6

    .line 1415
    :goto_8
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    move-object/from16 v3, p5

    .line 1420
    :goto_9
    sget-object v4, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$AngleType:[I

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->angleType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->ordinal()I

    move-result v7

    aget v4, v4, v7

    if-eq v4, v6, :cond_12

    if-eq v4, v10, :cond_12

    if-eq v4, v12, :cond_12

    :cond_11
    :goto_a
    move-object/from16 v5, p6

    goto/16 :goto_0

    .line 1424
    :cond_12
    sget-object v4, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$AngleType:[I

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->angleType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->ordinal()I

    move-result v7

    aget v4, v4, v7

    if-eq v4, v6, :cond_13

    if-eq v4, v10, :cond_13

    if-eq v4, v12, :cond_13

    goto :goto_a

    .line 1428
    :cond_13
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->angleDifference()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v4

    if-nez v4, :cond_11

    move-object/from16 v5, p6

    .line 1429
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_14
    :goto_b
    move-object/from16 v11, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v3, p5

    move-object/from16 v5, p6

    .line 1354
    invoke-static {v10, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    return-void
.end method

.method private cleanWithRemoval_(Z)V
    .locals 6

    .line 1107
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->elementCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1108
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1109
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void

    .line 1112
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1114
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 1117
    :cond_1
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 1118
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1119
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 1121
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v5, 0x0

    .line 1123
    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->setLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    goto :goto_1

    .line 1127
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1129
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 1130
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1131
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    return-void
.end method

.method private collectFollowerIdsForTargetId_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)Z"
        }
    .end annotation

    .line 1162
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1163
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    if-eqz p3, :cond_4

    .line 1166
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1171
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1172
    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1173
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    :cond_3
    return v0

    .line 1167
    :cond_4
    :goto_1
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return v1

    :cond_5
    :goto_2
    return v0
.end method

.method private collectFollowerIdsForTargetId_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)Z"
        }
    .end annotation

    .line 1186
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 1187
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 1191
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-eqz p5, :cond_2

    .line 1192
    invoke-interface {p5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-eqz p2, :cond_3

    .line 1196
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v2

    :cond_3
    if-nez p3, :cond_4

    if-nez p4, :cond_4

    goto :goto_0

    .line 1202
    :cond_4
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1203
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_0

    .line 1206
    :cond_5
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isStrong()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz p3, :cond_1

    .line 1208
    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    if-eqz p4, :cond_1

    .line 1213
    invoke-interface {p4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_7
    :goto_2
    return v0
.end method

.method private constructInformationsForEditTargetFollowerIds_(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 1227
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1228
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-nez v1, :cond_1

    goto :goto_0

    .line 1232
    :cond_1
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->isEqualToId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    if-eqz p2, :cond_a

    .line 1234
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1236
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1237
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    if-nez v4, :cond_2

    goto/16 :goto_2

    .line 1241
    :cond_2
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1242
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 1246
    :cond_3
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->disableWhenEditingTogether()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p3, :cond_4

    .line 1249
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1253
    :cond_4
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->disableWhenEditingTogether()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isPreferred()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    .line 1255
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1260
    :cond_5
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isPreferred()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p4, :cond_0

    .line 1263
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    if-eqz p3, :cond_7

    .line 1268
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1272
    :cond_7
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->disableWhenEditingTogether()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isPreferred()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    .line 1274
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    :goto_1
    const/4 v0, 0x1

    .line 1243
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    :goto_2
    const/4 v0, 0x0

    .line 1238
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    if-eqz p2, :cond_b

    .line 1281
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz p4, :cond_0

    .line 1284
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    if-eqz p5, :cond_0

    .line 1289
    invoke-interface {p5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    if-eqz p2, :cond_0

    .line 1295
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1297
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1298
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v2

    if-nez v2, :cond_d

    goto :goto_3

    .line 1302
    :cond_d
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->disableWhenEditingTogether()Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz p3, :cond_0

    .line 1305
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    if-eqz p4, :cond_0

    .line 1310
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    :goto_3
    const/4 v0, 0x2

    .line 1299
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method private static getLinkageCriterionAngleOfElement_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)D
    .locals 8

    .line 2319
    sget-object v0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$AngleType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->angleType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_0

    .line 2361
    invoke-static {v2, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-wide v6

    .line 2354
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object p1

    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne p1, v0, :cond_1

    .line 2355
    check-cast p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->arrowAngle()F

    move-result p0

    float-to-double p0, p0

    return-wide p0

    :cond_1
    const/4 p0, 0x4

    .line 2357
    invoke-static {p0, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-wide v6

    .line 2324
    :cond_2
    instance-of v0, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    if-eqz v0, :cond_8

    .line 2325
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->handleIndex()I

    move-result v0

    if-ltz v0, :cond_7

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->otherHandleIndex()I

    move-result v0

    if-ltz v0, :cond_7

    .line 2326
    check-cast p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    .line 2327
    invoke-interface {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getHandleCount()I

    move-result v0

    .line 2328
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->handleIndex()I

    move-result v3

    if-ge v3, v0, :cond_6

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->otherHandleIndex()I

    move-result v3

    if-ge v3, v0, :cond_6

    .line 2329
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->handleIndex()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getHandleAtIndex(I)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v0

    .line 2330
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->otherHandleIndex()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getHandleAtIndex(I)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object p0

    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    .line 2332
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {p1, v1, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_3

    return-wide v1

    .line 2335
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr p1, v3

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->angleInDegreesMadeByPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p0

    float-to-double p0, p0

    cmpg-double v0, p0, v1

    if-gez v0, :cond_4

    const-wide v0, 0x4076800000000000L    # 360.0

    add-double/2addr p0, v0

    :cond_4
    return-wide p0

    :cond_5
    const/4 p0, 0x0

    .line 2341
    invoke-static {p0, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-wide v6

    .line 2344
    :cond_6
    invoke-static {v1, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-wide v6

    .line 2347
    :cond_7
    invoke-static {v4, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-wide v6

    .line 2350
    :cond_8
    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-wide v6

    .line 2321
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->angleInDegrees()F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method

.method private static getLinkageCriterionPositionOfElement_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)Landroid/graphics/PointF;
    .locals 13

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 2143
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object v0

    .line 2144
    sget-object v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$PositionType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->positionType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v1, v7, :cond_13

    const/4 v8, 0x2

    if-eq v1, v8, :cond_b

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_0

    const/16 p0, 0xb

    .line 2253
    invoke-static {p0, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 2226
    :cond_0
    instance-of v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    if-eqz v1, :cond_5

    .line 2227
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->handleIndex()I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->otherHandleIndex()I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->parameter()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2228
    check-cast p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    .line 2229
    invoke-interface {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getHandleCount()I

    move-result v1

    .line 2230
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->handleIndex()I

    move-result v3

    if-ge v3, v1, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->otherHandleIndex()I

    move-result v3

    if-ge v3, v1, :cond_3

    .line 2231
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->handleIndex()I

    move-result v1

    invoke-interface {p0, v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getHandleAtIndex(I)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v1

    .line 2232
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->otherHandleIndex()I

    move-result v3

    invoke-interface {p0, v3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getHandleAtIndex(I)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object p0

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    .line 2234
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/PointF;Landroid/graphics/PointF;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2235
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 2237
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->parameter()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-static {v0, p0, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getParameterPointOfLine(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x7

    .line 2240
    invoke-static {p0, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_3
    const/16 p0, 0x8

    .line 2243
    invoke-static {p0, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_4
    const/16 p0, 0x9

    .line 2246
    invoke-static {p0, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_5
    const/16 p0, 0xa

    .line 2249
    invoke-static {p0, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 2205
    :cond_6
    instance-of v1, p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    if-eqz v1, :cond_a

    .line 2206
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->handleIndex()I

    move-result v1

    if-ltz v1, :cond_9

    .line 2207
    check-cast p0, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    .line 2208
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->handleIndex()I

    move-result v1

    invoke-interface {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getHandleCount()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 2209
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->handleIndex()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getHandleAtIndex(I)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 2211
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;->centerPoint()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 2213
    :cond_7
    invoke-static {v4, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 2216
    :cond_8
    invoke-static {v3, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 2219
    :cond_9
    invoke-static {v2, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_a
    const/4 p0, 0x6

    .line 2222
    invoke-static {p0, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 2171
    :cond_b
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v1

    sget-object v9, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    if-ne v1, v9, :cond_12

    .line 2172
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->x()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->y()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2173
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->frameRect()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    .line 2175
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->x()D

    move-result-wide v6

    cmpl-double v6, v6, v4

    if-nez v6, :cond_c

    .line 2176
    iget v6, v1, Lcom/metamoji/cm/RectEx;->x:F

    goto :goto_0

    .line 2177
    :cond_c
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->x()D

    move-result-wide v6

    cmpl-double v6, v6, v2

    if-nez v6, :cond_d

    .line 2178
    iget v6, v1, Lcom/metamoji/cm/RectEx;->x:F

    iget v7, v1, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v6, v7

    goto :goto_0

    .line 2180
    :cond_d
    iget v6, v1, Lcom/metamoji/cm/RectEx;->x:F

    float-to-double v6, v6

    iget v8, v1, Lcom/metamoji/cm/RectEx;->width:F

    float-to-double v8, v8

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->x()D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    .line 2183
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->y()D

    move-result-wide v7

    cmpl-double v4, v7, v4

    if-nez v4, :cond_e

    .line 2184
    iget p1, v1, Lcom/metamoji/cm/RectEx;->y:F

    goto :goto_1

    .line 2185
    :cond_e
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->y()D

    move-result-wide v4

    cmpl-double v2, v4, v2

    if-nez v2, :cond_f

    .line 2186
    iget p1, v1, Lcom/metamoji/cm/RectEx;->y:F

    iget v2, v1, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr p1, v2

    goto :goto_1

    .line 2188
    :cond_f
    iget v2, v1, Lcom/metamoji/cm/RectEx;->y:F

    float-to-double v2, v2

    iget v4, v1, Lcom/metamoji/cm/RectEx;->height:F

    float-to-double v4, v4

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->y()D

    move-result-wide v7

    mul-double/2addr v4, v7

    add-double/2addr v2, v4

    double-to-float p1, v2

    .line 2190
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->angleInDegrees()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_10

    .line 2191
    iput v6, v0, Landroid/graphics/PointF;->x:F

    .line 2192
    iput p1, v0, Landroid/graphics/PointF;->y:F

    return-object v0

    .line 2194
    :cond_10
    invoke-static {v6, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 2195
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->angleInRadians()F

    move-result p0

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->rotationWithAngleInRadians(FLandroid/graphics/PointF;)Landroid/graphics/Matrix;

    move-result-object p0

    .line 2194
    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointApplyAffineTransform(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 2198
    :cond_11
    invoke-static {v7, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 2201
    :cond_12
    invoke-static {v8, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 2146
    :cond_13
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object p0

    .line 2147
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->x()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v1

    if-nez v1, :cond_16

    .line 2148
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->x()D

    move-result-wide v7

    cmpl-double v1, v7, v4

    if-nez v1, :cond_14

    .line 2149
    iget v1, p0, Lcom/metamoji/cm/RectEx;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_2

    .line 2150
    :cond_14
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->x()D

    move-result-wide v7

    cmpl-double v1, v7, v2

    if-nez v1, :cond_15

    .line 2151
    iget v1, p0, Lcom/metamoji/cm/RectEx;->x:F

    iget v7, p0, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v1, v7

    iput v1, v0, Landroid/graphics/PointF;->x:F

    goto :goto_2

    .line 2153
    :cond_15
    iget v1, p0, Lcom/metamoji/cm/RectEx;->x:F

    float-to-double v7, v1

    iget v1, p0, Lcom/metamoji/cm/RectEx;->width:F

    float-to-double v9, v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->x()D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-float v1, v7

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 2156
    :cond_16
    :goto_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->y()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v1

    if-nez v1, :cond_19

    .line 2157
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->y()D

    move-result-wide v7

    cmpl-double v1, v7, v4

    if-nez v1, :cond_17

    .line 2158
    iget p0, p0, Lcom/metamoji/cm/RectEx;->y:F

    iput p0, v0, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 2159
    :cond_17
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->y()D

    move-result-wide v4

    cmpl-double v1, v4, v2

    if-nez v1, :cond_18

    .line 2160
    iget p1, p0, Lcom/metamoji/cm/RectEx;->y:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr p1, p0

    iput p1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_3

    .line 2162
    :cond_18
    iget v1, p0, Lcom/metamoji/cm/RectEx;->y:F

    float-to-double v1, v1

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    float-to-double v3, p0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->y()D

    move-result-wide p0

    mul-double/2addr v3, p0

    add-double/2addr v1, v3

    double-to-float p0, v1

    iput p0, v0, Landroid/graphics/PointF;->y:F

    .line 2165
    :cond_19
    :goto_3
    iget p0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result p0

    if-eqz p0, :cond_1a

    iget p0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x0

    .line 2166
    invoke-static {p0, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_1a
    return-object v0
.end method

.method private static getLinkageCriterionSizeOfElement_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Z)Lcom/metamoji/cm/SizeF;
    .locals 5

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 2263
    invoke-static {v0, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGSizeMake(FF)Lcom/metamoji/cm/SizeF;

    move-result-object v0

    .line 2264
    sget-object v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$linkage$DrLinkageCriterion$SizeType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->sizeType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    .line 2287
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 2280
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v1

    sget-object v3, Lcom/metamoji/un/draw2/module/element/DrElementType;->ARROW:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v1, v3, :cond_1

    .line 2281
    check-cast p0, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->arrowTipBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->calculateLinkageCriterionSizeForBaseSize_(Lcom/metamoji/cm/SizeF;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Z)Lcom/metamoji/cm/SizeF;

    move-result-object p0

    return-object p0

    .line 2283
    :cond_1
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 2273
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v1

    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    if-ne v1, v4, :cond_3

    .line 2274
    check-cast p0, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->frameRect()Lcom/metamoji/cm/RectEx;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->calculateLinkageCriterionSizeForBaseSize_(Lcom/metamoji/cm/SizeF;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Z)Lcom/metamoji/cm/SizeF;

    move-result-object p0

    return-object p0

    .line 2276
    :cond_3
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 2266
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v1

    sget-object v3, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->POINTS:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    if-ne v1, v3, :cond_5

    .line 2267
    check-cast p0, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->pathBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->calculateLinkageCriterionSizeForBaseSize_(Lcom/metamoji/cm/SizeF;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Z)Lcom/metamoji/cm/SizeF;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    .line 2269
    invoke-static {p0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0
.end method

.method private registerFollowerId_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 3

    .line 1031
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-eqz v0, :cond_1

    .line 1033
    invoke-virtual {v0, p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->isEqualToId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1036
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    if-eqz v1, :cond_1

    .line 1037
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1038
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1039
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1040
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_2

    .line 1047
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 1049
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->setWithObjects([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private removeLinkageFromElement_(Lcom/metamoji/un/draw2/module/element/DrElement;)Z
    .locals 2

    .line 1095
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1096
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->setLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1099
    :goto_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1100
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->unregisterFollowerId_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    :cond_1
    return v0
.end method

.method private setLinkageResizeVariationToDirection_(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)Z
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x1

    move-object/from16 v3, p5

    .line 1569
    invoke-static {v1, v3, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->getLinkageCriterionSizeOfElement_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Z)Lcom/metamoji/cm/SizeF;

    move-result-object v3

    .line 1570
    iget v4, v3, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v4

    if-nez v4, :cond_2f

    iget v4, v3, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto/16 :goto_14

    :cond_0
    move-object/from16 v4, p3

    move-object/from16 v7, p6

    .line 1574
    invoke-static {v4, v7, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->getLinkageCriterionSizeOfElement_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Z)Lcom/metamoji/cm/SizeF;

    move-result-object v7

    .line 1575
    iget v8, v7, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v8

    if-nez v8, :cond_2e

    iget v8, v7, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_13

    .line 1581
    :cond_1
    new-instance v8, Lcom/metamoji/cm/SizeF;

    invoke-direct {v8}, Lcom/metamoji/cm/SizeF;-><init>()V

    .line 1582
    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumWidthRatio()D

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v9

    const/high16 v10, 0x7fc00000    # Float.NaN

    if-nez v9, :cond_2

    .line 1583
    iget v9, v7, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumWidthRatio()D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v9, v11

    iput v9, v8, Lcom/metamoji/cm/SizeF;->width:F

    goto :goto_0

    .line 1585
    :cond_2
    iput v10, v8, Lcom/metamoji/cm/SizeF;->width:F

    .line 1587
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumHeightRatio()D

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1588
    iget v9, v7, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumHeightRatio()D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v9, v11

    iput v9, v8, Lcom/metamoji/cm/SizeF;->height:F

    goto :goto_1

    .line 1590
    :cond_3
    iput v10, v8, Lcom/metamoji/cm/SizeF;->height:F

    .line 1598
    :goto_1
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v9

    const/4 v11, 0x6

    if-eqz v9, :cond_a

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v12

    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->isEqualToId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1600
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->latestFollowerCriterionSize()Lcom/metamoji/cm/SizeF;

    move-result-object v9

    .line 1603
    new-instance v12, Lcom/metamoji/cm/SizeF;

    invoke-direct {v12}, Lcom/metamoji/cm/SizeF;-><init>()V

    .line 1604
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumWidthRatio()D

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v13

    if-nez v13, :cond_4

    .line 1605
    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->latestFollowerCriterionSize()Lcom/metamoji/cm/SizeF;

    move-result-object v13

    iget v13, v13, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v14

    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumWidthRatio()D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v13, v14

    iput v13, v12, Lcom/metamoji/cm/SizeF;->width:F

    goto :goto_2

    .line 1607
    :cond_4
    iput v10, v12, Lcom/metamoji/cm/SizeF;->width:F

    .line 1609
    :goto_2
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumHeightRatio()D

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1610
    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->latestFollowerCriterionSize()Lcom/metamoji/cm/SizeF;

    move-result-object v10

    iget v10, v10, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumHeightRatio()D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v10, v13

    iput v10, v12, Lcom/metamoji/cm/SizeF;->height:F

    goto :goto_3

    .line 1612
    :cond_5
    iput v10, v12, Lcom/metamoji/cm/SizeF;->height:F

    .line 1616
    :goto_3
    iget v10, v9, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v10

    if-nez v10, :cond_7

    iget v10, v12, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v10

    if-nez v10, :cond_7

    iget v10, v9, Lcom/metamoji/cm/SizeF;->width:F

    iget v13, v12, Lcom/metamoji/cm/SizeF;->width:F

    .line 1617
    invoke-static {v10, v13, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v10

    if-nez v10, :cond_6

    iget v10, v9, Lcom/metamoji/cm/SizeF;->width:F

    iget v13, v12, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float v10, v10, v13

    if-gtz v10, :cond_7

    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    move v10, v2

    .line 1621
    :goto_4
    iget v13, v9, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v13

    if-nez v13, :cond_9

    iget v13, v12, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v13

    if-nez v13, :cond_9

    iget v13, v9, Lcom/metamoji/cm/SizeF;->height:F

    iget v14, v12, Lcom/metamoji/cm/SizeF;->height:F

    .line 1622
    invoke-static {v13, v14, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v13

    if-nez v13, :cond_8

    iget v13, v9, Lcom/metamoji/cm/SizeF;->height:F

    iget v12, v12, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v12, v13, v12

    if-gtz v12, :cond_9

    :cond_8
    const/4 v12, 0x0

    goto :goto_5

    :cond_9
    move v12, v2

    goto :goto_5

    :cond_a
    move v10, v2

    move v12, v10

    const/4 v9, 0x0

    .line 1629
    :goto_5
    new-instance v13, Lcom/metamoji/cm/SizeF;

    invoke-direct {v13}, Lcom/metamoji/cm/SizeF;-><init>()V

    const/4 v14, 0x2

    const/4 v15, 0x0

    if-eqz v10, :cond_11

    .line 1631
    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifference()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v10

    if-nez v10, :cond_f

    .line 1632
    iget v10, v7, Lcom/metamoji/cm/SizeF;->width:F

    const/16 p5, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifference()D

    move-result-wide v5

    double-to-float v5, v5

    add-float/2addr v10, v5

    iput v10, v13, Lcom/metamoji/cm/SizeF;->width:F

    .line 1633
    iget v5, v8, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1635
    iget v5, v13, Lcom/metamoji/cm/SizeF;->width:F

    iget v6, v8, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v5, v6, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v5

    if-nez v5, :cond_b

    iget v5, v13, Lcom/metamoji/cm/SizeF;->width:F

    iget v6, v8, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_e

    .line 1637
    :cond_b
    iget v5, v8, Lcom/metamoji/cm/SizeF;->width:F

    iput v5, v13, Lcom/metamoji/cm/SizeF;->width:F

    goto :goto_6

    .line 1639
    :cond_c
    iget v5, v13, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v5, v15, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v5

    if-nez v5, :cond_d

    iget v5, v13, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float v5, v5, v15

    if-gez v5, :cond_e

    .line 1640
    :cond_d
    iget v5, v3, Lcom/metamoji/cm/SizeF;->width:F

    iput v5, v13, Lcom/metamoji/cm/SizeF;->width:F

    :cond_e
    :goto_6
    move-object/from16 v17, v3

    move v6, v12

    goto/16 :goto_9

    :cond_f
    const/16 p5, 0x0

    .line 1642
    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifferenceRatio()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v5

    if-nez v5, :cond_10

    .line 1643
    iget v5, v7, Lcom/metamoji/cm/SizeF;->width:F

    move v6, v12

    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifferenceRatio()D

    move-result-wide v11

    double-to-float v10, v11

    mul-float/2addr v5, v10

    iput v5, v13, Lcom/metamoji/cm/SizeF;->width:F

    goto :goto_7

    :cond_10
    move v6, v12

    .line 1645
    iget v5, v3, Lcom/metamoji/cm/SizeF;->width:F

    iput v5, v13, Lcom/metamoji/cm/SizeF;->width:F

    goto :goto_7

    :cond_11
    move v6, v12

    const/16 p5, 0x0

    .line 1648
    iget v5, v7, Lcom/metamoji/cm/SizeF;->width:F

    iget v10, v9, Lcom/metamoji/cm/SizeF;->width:F

    cmpg-float v5, v5, v10

    if-gtz v5, :cond_12

    .line 1650
    iget v5, v7, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumWidthRatio()D

    move-result-wide v10

    double-to-float v10, v10

    div-float/2addr v5, v10

    iput v5, v13, Lcom/metamoji/cm/SizeF;->width:F

    :goto_7
    move-object/from16 v17, v3

    goto :goto_9

    .line 1653
    :cond_12
    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifference()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v5

    if-nez v5, :cond_13

    .line 1654
    iget v5, v7, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifference()D

    move-result-wide v10

    double-to-float v10, v10

    add-float/2addr v5, v10

    iput v5, v13, Lcom/metamoji/cm/SizeF;->width:F

    goto :goto_8

    .line 1655
    :cond_13
    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifferenceRatio()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v5

    if-nez v5, :cond_14

    .line 1656
    iget v5, v7, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifferenceRatio()D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v5, v10

    iput v5, v13, Lcom/metamoji/cm/SizeF;->width:F

    goto :goto_8

    :cond_14
    const/4 v5, 0x0

    .line 1658
    invoke-static {v14, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1659
    iget v5, v3, Lcom/metamoji/cm/SizeF;->width:F

    iput v5, v13, Lcom/metamoji/cm/SizeF;->width:F

    .line 1664
    :goto_8
    iget v5, v13, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v10, v5

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumWidthRatio()D

    move-result-wide v17

    mul-double v10, v10, v17

    .line 1665
    iget v5, v7, Lcom/metamoji/cm/SizeF;->width:F

    move-object/from16 v17, v3

    float-to-double v2, v5

    const/4 v5, 0x6

    invoke-static {v2, v3, v10, v11, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v2

    if-nez v2, :cond_15

    iget v2, v7, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v2, v2

    cmpg-double v2, v2, v10

    if-gez v2, :cond_15

    .line 1667
    iget v2, v7, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumWidthRatio()D

    move-result-wide v10

    double-to-float v3, v10

    div-float/2addr v2, v3

    iput v2, v13, Lcom/metamoji/cm/SizeF;->width:F

    :cond_15
    :goto_9
    if-eqz v6, :cond_1c

    .line 1672
    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifference()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1673
    iget v2, v7, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifference()D

    move-result-wide v3

    double-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v13, Lcom/metamoji/cm/SizeF;->height:F

    .line 1674
    iget v2, v8, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v2

    if-nez v2, :cond_17

    .line 1676
    iget v2, v13, Lcom/metamoji/cm/SizeF;->height:F

    iget v3, v8, Lcom/metamoji/cm/SizeF;->height:F

    const/4 v5, 0x6

    invoke-static {v2, v3, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v2

    if-nez v2, :cond_16

    iget v2, v13, Lcom/metamoji/cm/SizeF;->height:F

    iget v3, v8, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_18

    .line 1678
    :cond_16
    iget v2, v8, Lcom/metamoji/cm/SizeF;->height:F

    iput v2, v13, Lcom/metamoji/cm/SizeF;->height:F

    goto :goto_a

    .line 1680
    :cond_17
    iget v2, v13, Lcom/metamoji/cm/SizeF;->height:F

    const/4 v5, 0x6

    invoke-static {v2, v15, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v2

    if-nez v2, :cond_19

    iget v2, v13, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v2, v2, v15

    if-gez v2, :cond_18

    goto :goto_b

    :cond_18
    :goto_a
    move-object/from16 v2, v17

    goto/16 :goto_d

    :cond_19
    :goto_b
    move-object/from16 v2, v17

    .line 1681
    iget v3, v2, Lcom/metamoji/cm/SizeF;->height:F

    iput v3, v13, Lcom/metamoji/cm/SizeF;->height:F

    goto/16 :goto_d

    :cond_1a
    move-object/from16 v2, v17

    .line 1683
    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifferenceRatio()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1684
    iget v3, v7, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifferenceRatio()D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    iput v3, v13, Lcom/metamoji/cm/SizeF;->height:F

    goto/16 :goto_d

    .line 1686
    :cond_1b
    iget v3, v2, Lcom/metamoji/cm/SizeF;->height:F

    iput v3, v13, Lcom/metamoji/cm/SizeF;->height:F

    goto/16 :goto_d

    :cond_1c
    move-object/from16 v2, v17

    .line 1689
    iget v3, v7, Lcom/metamoji/cm/SizeF;->height:F

    iget v5, v9, Lcom/metamoji/cm/SizeF;->height:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1d

    .line 1691
    iget v3, v7, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumHeightRatio()D

    move-result-wide v4

    double-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v13, Lcom/metamoji/cm/SizeF;->height:F

    goto :goto_d

    .line 1694
    :cond_1d
    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifference()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1695
    iget v3, v7, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifference()D

    move-result-wide v5

    double-to-float v5, v5

    add-float/2addr v3, v5

    iput v3, v13, Lcom/metamoji/cm/SizeF;->height:F

    goto :goto_c

    .line 1696
    :cond_1e
    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifferenceRatio()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1697
    iget v3, v7, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual/range {p4 .. p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifferenceRatio()D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v3, v5

    iput v3, v13, Lcom/metamoji/cm/SizeF;->height:F

    goto :goto_c

    :cond_1f
    const/4 v3, 0x3

    const/4 v5, 0x0

    .line 1699
    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1700
    iget v3, v2, Lcom/metamoji/cm/SizeF;->height:F

    iput v3, v13, Lcom/metamoji/cm/SizeF;->height:F

    .line 1705
    :goto_c
    iget v3, v13, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v5, v3

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumHeightRatio()D

    move-result-wide v8

    mul-double/2addr v5, v8

    .line 1706
    iget v3, v7, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v8, v3

    const/4 v3, 0x6

    invoke-static {v8, v9, v5, v6, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v8

    if-nez v8, :cond_20

    iget v3, v7, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v8, v3

    cmpg-double v3, v8, v5

    if-gez v3, :cond_20

    .line 1708
    iget v3, v7, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumHeightRatio()D

    move-result-wide v4

    double-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v13, Lcom/metamoji/cm/SizeF;->height:F

    .line 1715
    :cond_20
    :goto_d
    iget v3, v13, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v3, v3, v15

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_21

    iget v3, v2, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v3, v3, v15

    if-lez v3, :cond_21

    .line 1716
    iget v3, v13, Lcom/metamoji/cm/SizeF;->width:F

    iget v5, v2, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr v3, v5

    const/4 v5, 0x6

    .line 1717
    invoke-static {v3, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v6

    if-eqz v6, :cond_22

    :cond_21
    move v3, v4

    .line 1722
    :cond_22
    iget v5, v13, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v5, v5, v15

    if-lez v5, :cond_23

    iget v5, v2, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v5, v5, v15

    if-lez v5, :cond_23

    .line 1723
    iget v5, v13, Lcom/metamoji/cm/SizeF;->height:F

    iget v2, v2, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v5, v2

    const/4 v2, 0x6

    .line 1724
    invoke-static {v5, v4, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v6

    if-eqz v6, :cond_24

    :cond_23
    move v5, v4

    :cond_24
    cmpl-float v2, v3, v4

    if-nez v2, :cond_25

    cmpl-float v6, v5, v4

    if-nez v6, :cond_25

    return p5

    .line 1736
    :cond_25
    sget-object v6, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v12, 0x1

    if-eq v6, v12, :cond_2c

    if-eq v6, v14, :cond_26

    const/4 v6, 0x0

    const/4 v7, 0x6

    .line 1772
    invoke-static {v7, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p5

    :cond_26
    const/4 v7, 0x6

    .line 1742
    move-object v6, v1

    check-cast v6, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 1743
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->rect()Lcom/metamoji/cm/RectEx;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v8

    .line 1744
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->frameRect()Lcom/metamoji/cm/RectEx;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->sizeOf(Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/SizeF;

    move-result-object v6

    if-eqz v2, :cond_28

    .line 1745
    iget v2, v8, Lcom/metamoji/cm/SizeF;->width:F

    iget v9, v6, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v2, v9, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v2

    if-nez v2, :cond_28

    .line 1746
    iget v2, v8, Lcom/metamoji/cm/SizeF;->width:F

    iget v7, v6, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_27

    .line 1747
    iget v2, v6, Lcom/metamoji/cm/SizeF;->width:F

    mul-float/2addr v2, v3

    iget v3, v8, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v2, v3

    iget v3, v6, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr v2, v3

    iget v3, v8, Lcom/metamoji/cm/SizeF;->width:F

    div-float v3, v2, v3

    const/4 v2, 0x6

    .line 1748
    invoke-static {v3, v4, v2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v7

    if-eqz v7, :cond_28

    goto :goto_e

    :cond_27
    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 1752
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_e
    move v3, v4

    :cond_28
    cmpl-float v2, v5, v4

    if-eqz v2, :cond_2b

    .line 1756
    iget v2, v8, Lcom/metamoji/cm/SizeF;->height:F

    iget v7, v6, Lcom/metamoji/cm/SizeF;->height:F

    const/4 v9, 0x6

    invoke-static {v2, v7, v9}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 1757
    iget v2, v8, Lcom/metamoji/cm/SizeF;->height:F

    iget v7, v6, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v2, v2, v7

    if-lez v2, :cond_2a

    .line 1758
    iget v2, v6, Lcom/metamoji/cm/SizeF;->height:F

    mul-float/2addr v2, v5

    iget v5, v8, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v2, v5

    iget v5, v6, Lcom/metamoji/cm/SizeF;->height:F

    sub-float/2addr v2, v5

    iget v5, v8, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v2, v5

    const/4 v5, 0x6

    .line 1759
    invoke-static {v2, v4, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v5

    if-eqz v5, :cond_29

    move v5, v4

    goto :goto_f

    :cond_29
    move v5, v2

    goto :goto_f

    :cond_2a
    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 1763
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_10

    :cond_2b
    :goto_f
    move v4, v3

    .line 1767
    :goto_10
    new-instance v2, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initRectTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v2

    .line 1768
    invoke-virtual {v2, v4}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleWidth(F)V

    .line 1769
    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleHeight(F)V

    goto :goto_11

    .line 1738
    :cond_2c
    new-instance v2, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v2

    .line 1739
    move-object v4, v1

    check-cast v4, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->pathBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->scale(FFLandroid/graphics/PointF;)Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTransform(Landroid/graphics/Matrix;)V

    .line 1777
    :goto_11
    instance-of v3, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;

    if-eqz v3, :cond_2d

    .line 1778
    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;

    invoke-static {v1, v2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setResizeVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;)Z

    goto :goto_12

    .line 1780
    :cond_2d
    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;

    invoke-static {v1, v2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->applyResizeVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;)Z

    :goto_12
    const/4 v12, 0x1

    return v12

    :cond_2e
    :goto_13
    move v12, v2

    const/16 p5, 0x0

    const/4 v3, 0x0

    .line 1576
    invoke-static {v12, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p5

    :cond_2f
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 1571
    :goto_14
    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0
.end method

.method private setLinkageReverseVariationToDirection_(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)Z
    .locals 3

    .line 1839
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object p5

    sget-object p6, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    const/4 v0, 0x0

    if-ne p5, p6, :cond_5

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object p5

    sget-object p6, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    if-eq p5, p6, :cond_0

    goto :goto_3

    .line 1845
    :cond_0
    move-object p5, p2

    check-cast p5, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 1846
    check-cast p3, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 1847
    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->latestTargetIsReversingX()Z

    move-result p6

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingX()Z

    move-result v1

    const/4 v2, 0x1

    if-eq p6, v1, :cond_1

    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->latestFollowerIsReversingX()Z

    move-result p6

    invoke-virtual {p5}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingX()Z

    move-result v1

    if-ne p6, v1, :cond_1

    move p6, v2

    goto :goto_0

    :cond_1
    move p6, v0

    .line 1848
    :goto_0
    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->latestTargetIsReversingY()Z

    move-result v1

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingY()Z

    move-result p3

    if-eq v1, p3, :cond_2

    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->latestFollowerIsReversingY()Z

    move-result p3

    invoke-virtual {p5}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingY()Z

    move-result p4

    if-ne p3, p4, :cond_2

    move p3, v2

    goto :goto_1

    :cond_2
    move p3, v0

    :goto_1
    if-nez p6, :cond_3

    if-nez p3, :cond_3

    return v0

    .line 1856
    :cond_3
    new-instance p4, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {p4}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {p4}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p4

    .line 1857
    invoke-virtual {p4, p6}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setIsReversingX(Z)V

    .line 1858
    invoke-virtual {p4, p3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setIsReversingY(Z)V

    .line 1861
    instance-of p3, p1, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;

    if-eqz p3, :cond_4

    .line 1862
    check-cast p1, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;

    invoke-static {p2, p4, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setResizeVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;)Z

    goto :goto_2

    .line 1864
    :cond_4
    check-cast p1, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;

    invoke-static {p2, p4, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->applyResizeVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;)Z

    :goto_2
    return v2

    :cond_5
    :goto_3
    const/4 p1, 0x0

    .line 1840
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0
.end method

.method private setLinkageRotateVariationToDirection_(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)Z
    .locals 2

    .line 1877
    invoke-static {p2, p5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->getLinkageCriterionAngleOfElement_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)D

    move-result-wide v0

    .line 1878
    invoke-static {p3, p6}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->getLinkageCriterionAngleOfElement_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)D

    move-result-wide p5

    sub-double/2addr p5, v0

    .line 1879
    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->angleDifference()D

    move-result-wide p3

    add-double/2addr p5, p3

    invoke-static {p5, p6}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(D)D

    move-result-wide p3

    const/4 p5, 0x6

    const-wide/16 v0, 0x0

    .line 1880
    invoke-static {p3, p4, v0, v1, p5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result p5

    if-eqz p5, :cond_0

    move-wide p3, v0

    :cond_0
    cmpl-double p5, p3, v0

    const/4 p6, 0x0

    if-nez p5, :cond_1

    return p6

    .line 1891
    :cond_1
    sget-object p5, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v0

    aget p5, p5, v0

    const/4 v0, 0x1

    if-eq p5, v0, :cond_3

    const/4 v1, 0x2

    if-eq p5, v1, :cond_2

    const/4 p1, 0x0

    .line 1901
    invoke-static {p6, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p6

    .line 1897
    :cond_2
    new-instance p5, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {p5}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {p5}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initRectTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p5

    double-to-float p3, p3

    .line 1898
    invoke-virtual {p5, p3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setAngleInDegrees(F)V

    goto :goto_0

    .line 1893
    :cond_3
    new-instance p5, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {p5}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {p5}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p5

    double-to-float p3, p3

    .line 1894
    move-object p4, p2

    check-cast p4, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->pathBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p4

    invoke-static {p4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->rotationWithAngleInDegrees(FLandroid/graphics/PointF;)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p5, p3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTransform(Landroid/graphics/Matrix;)V

    .line 1906
    :goto_0
    instance-of p3, p1, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;

    if-eqz p3, :cond_4

    .line 1907
    check-cast p1, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;

    invoke-static {p2, p5, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setRotateVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;)Z

    goto :goto_1

    .line 1909
    :cond_4
    check-cast p1, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;

    invoke-static {p2, p5, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->applyRotateVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;)Z

    :goto_1
    return v0
.end method

.method private setLinkageScaleVariationToDirection_(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)Z
    .locals 1

    .line 1793
    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/element/DrElement;->contentScale()F

    move-result p3

    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->latestTargetContentScale()F

    move-result p5

    div-float/2addr p3, p5

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->contentScale()F

    move-result p5

    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->latestFollowerContentScale()F

    move-result p4

    div-float/2addr p5, p4

    div-float/2addr p3, p5

    const/4 p4, 0x6

    const/high16 p5, 0x3f800000    # 1.0f

    .line 1794
    invoke-static {p3, p5, p4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result p4

    if-eqz p4, :cond_0

    move p3, p5

    :cond_0
    cmpl-float p4, p3, p5

    const/4 p5, 0x0

    if-nez p4, :cond_1

    return p5

    .line 1805
    :cond_1
    sget-object p4, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object p6

    invoke-virtual {p6}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result p6

    aget p4, p4, p6

    const/4 p6, 0x1

    if-eq p4, p6, :cond_3

    const/4 v0, 0x2

    if-eq p4, v0, :cond_2

    const/4 p1, 0x0

    .line 1818
    invoke-static {p5, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p5

    .line 1812
    :cond_2
    new-instance p4, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {p4}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {p4}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initRectTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p4

    .line 1813
    invoke-virtual {p4, p3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleWidth(F)V

    .line 1814
    invoke-virtual {p4, p3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleHeight(F)V

    .line 1815
    invoke-virtual {p4, p3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setContentScale(F)V

    goto :goto_0

    .line 1807
    :cond_3
    new-instance p4, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {p4}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {p4}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p4

    .line 1808
    move-object p5, p2

    check-cast p5, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    invoke-virtual {p5}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->pathBounds()Lcom/metamoji/cm/RectEx;

    move-result-object p5

    invoke-static {p5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->centerOfRect(Lcom/metamoji/cm/RectEx;)Landroid/graphics/PointF;

    move-result-object p5

    invoke-static {p3, p3, p5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->scale(FFLandroid/graphics/PointF;)Landroid/graphics/Matrix;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTransform(Landroid/graphics/Matrix;)V

    .line 1809
    invoke-virtual {p4, p3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setContentScale(F)V

    .line 1823
    :goto_0
    instance-of p3, p1, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;

    if-eqz p3, :cond_4

    .line 1824
    check-cast p1, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;

    invoke-static {p2, p4, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setScaleVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;)Z

    goto :goto_1

    .line 1826
    :cond_4
    check-cast p1, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;

    invoke-static {p2, p4, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->applyScaleVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;)Z

    :goto_1
    return p6
.end method

.method private setLinkageToElement_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;Z)Z
    .locals 2

    .line 1072
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1073
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p2, :cond_1

    if-eqz p3, :cond_0

    .line 1075
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->registerFollowerId_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    :cond_0
    return v1

    .line 1079
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isEqualToLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1080
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->removeLinkageFromElement_(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    :cond_2
    const/4 v1, 0x1

    .line 1085
    :cond_3
    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->setLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    if-eqz p3, :cond_4

    .line 1087
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->registerFollowerId_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    :cond_4
    return v1
.end method

.method private setLinkageTranslateVariationToDirection_(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)Z
    .locals 7

    .line 1515
    invoke-static {p2, p5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->getLinkageCriterionPositionOfElement_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)Landroid/graphics/PointF;

    move-result-object p5

    .line 1516
    invoke-static {p3, p6}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->getLinkageCriterionPositionOfElement_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)Landroid/graphics/PointF;

    move-result-object p3

    .line 1517
    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->xDifference()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result p6

    const/4 v0, 0x6

    const-wide/16 v1, 0x0

    if-nez p6, :cond_0

    .line 1518
    iget p6, p3, Landroid/graphics/PointF;->x:F

    iget v3, p5, Landroid/graphics/PointF;->x:F

    sub-float/2addr p6, v3

    float-to-double v3, p6

    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->xDifference()D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 1519
    invoke-static {v3, v4, v1, v2, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result p6

    if-eqz p6, :cond_1

    :cond_0
    move-wide v3, v1

    .line 1523
    :cond_1
    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->yDifference()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result p6

    if-nez p6, :cond_2

    .line 1524
    iget p3, p3, Landroid/graphics/PointF;->y:F

    iget p5, p5, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p5

    float-to-double p5, p3

    invoke-virtual {p4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->yDifference()D

    move-result-wide p3

    add-double/2addr p5, p3

    .line 1525
    invoke-static {p5, p6, v1, v2, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    move-wide p5, v1

    :cond_3
    cmpl-double p3, v3, v1

    const/4 p4, 0x0

    if-nez p3, :cond_4

    cmpl-double p3, p5, v1

    if-nez p3, :cond_4

    return p4

    .line 1537
    :cond_4
    sget-object p3, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v0

    aget p3, p3, v0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_6

    const/4 v1, 0x2

    if-eq p3, v1, :cond_5

    const/4 p1, 0x0

    .line 1548
    invoke-static {p4, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p4

    .line 1543
    :cond_5
    new-instance p3, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {p3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initRectTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p3

    double-to-float p4, v3

    .line 1544
    invoke-virtual {p3, p4}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateX(F)V

    double-to-float p4, p5

    .line 1545
    invoke-virtual {p3, p4}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateY(F)V

    goto :goto_0

    .line 1539
    :cond_6
    new-instance p3, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {p3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p3

    double-to-float p4, v3

    double-to-float p5, p5

    .line 1540
    invoke-static {p4, p5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformMakeTranslation(FF)Landroid/graphics/Matrix;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTransform(Landroid/graphics/Matrix;)V

    .line 1553
    :goto_0
    instance-of p4, p1, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;

    if-eqz p4, :cond_7

    .line 1554
    check-cast p1, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;

    invoke-static {p2, p3, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setTranslateVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;)Z

    goto :goto_1

    .line 1556
    :cond_7
    check-cast p1, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;

    invoke-static {p2, p3, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->applyTranslateVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;)Z

    :goto_1
    return v0
.end method

.method private unregisterFollowerId_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 3

    .line 1055
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1059
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 1061
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1062
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1063
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 1064
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLinkageOfFollower_(Lcom/metamoji/un/draw2/module/element/DrElement;Z)Z
    .locals 3

    .line 1138
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 1139
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 1144
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->applyLatestStatusOfTarget_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 1145
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->applyLatestStatusOfFollower_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    :cond_1
    if-eqz v0, :cond_3

    .line 1147
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isFixed()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 1150
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->updateLinkage_(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1151
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->resaveLinkage()V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method private static updateLinkage_(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/element/DrElement;)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1990
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->positionType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x6

    if-eq v3, v4, :cond_7

    .line 1991
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->positionType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$PositionType;

    if-eq v3, v4, :cond_7

    .line 1992
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->xDifference()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->yDifference()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1993
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->getLinkageCriterionPositionOfElement_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)Landroid/graphics/PointF;

    move-result-object v3

    .line 1994
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->getLinkageCriterionPositionOfElement_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)Landroid/graphics/PointF;

    move-result-object v4

    .line 1995
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->xDifference()D

    move-result-wide v13

    invoke-static {v13, v14}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1996
    iget v13, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v13

    if-nez v13, :cond_2

    iget v13, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v13}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1997
    iget v13, v3, Landroid/graphics/PointF;->x:F

    iget v14, v4, Landroid/graphics/PointF;->x:F

    invoke-static {v13, v14, v10}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v13

    if-eqz v13, :cond_1

    const-wide/16 v13, 0x0

    goto :goto_0

    .line 2000
    :cond_1
    iget v13, v3, Landroid/graphics/PointF;->x:F

    iget v14, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    goto :goto_0

    .line 2003
    :cond_2
    invoke-static {v9, v7}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v9

    :cond_3
    const-wide/high16 v13, 0x7ff8000000000000L    # Double.NaN

    .line 2007
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->yDifference()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v15

    if-nez v15, :cond_6

    .line 2008
    iget v15, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v15}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v15

    if-nez v15, :cond_5

    iget v15, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v15}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v15

    if-nez v15, :cond_5

    .line 2009
    iget v15, v3, Landroid/graphics/PointF;->y:F

    iget v11, v4, Landroid/graphics/PointF;->y:F

    invoke-static {v15, v11, v10}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v11

    if-eqz v11, :cond_4

    const-wide/16 v3, 0x0

    goto :goto_1

    .line 2012
    :cond_4
    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    goto :goto_1

    .line 2015
    :cond_5
    invoke-static {v8, v7}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v9

    :cond_6
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    goto :goto_1

    :cond_7
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v13, 0x7ff8000000000000L    # Double.NaN

    .line 2022
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->sizeType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    move-result-object v11

    sget-object v12, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    if-eq v11, v12, :cond_1f

    .line 2023
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->sizeType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    move-result-object v11

    sget-object v12, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$SizeType;

    if-eq v11, v12, :cond_1f

    .line 2024
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifference()D

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifference()D

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifferenceRatio()D

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifferenceRatio()D

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v11

    if-nez v11, :cond_1f

    .line 2025
    :cond_8
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v11

    invoke-static {v1, v11, v9}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->getLinkageCriterionSizeOfElement_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Z)Lcom/metamoji/cm/SizeF;

    move-result-object v11

    .line 2026
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v12

    invoke-static {v2, v12, v9}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->getLinkageCriterionSizeOfElement_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;Z)Lcom/metamoji/cm/SizeF;

    move-result-object v12

    .line 2027
    new-instance v15, Lcom/metamoji/cm/SizeF;

    invoke-direct {v15}, Lcom/metamoji/cm/SizeF;-><init>()V

    .line 2028
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumWidthRatio()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v17

    move/from16 v18, v8

    const/high16 v8, 0x7fc00000    # Float.NaN

    if-nez v17, :cond_9

    move/from16 v17, v9

    iget v9, v12, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v9

    if-nez v9, :cond_a

    .line 2029
    iget v9, v12, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v5, v9

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumWidthRatio()D

    move-result-wide v21

    mul-double v5, v5, v21

    double-to-float v5, v5

    iput v5, v15, Lcom/metamoji/cm/SizeF;->width:F

    goto :goto_2

    :cond_9
    move/from16 v17, v9

    .line 2031
    :cond_a
    iput v8, v15, Lcom/metamoji/cm/SizeF;->width:F

    .line 2033
    :goto_2
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumHeightRatio()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v5

    if-nez v5, :cond_b

    iget v5, v12, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v5

    if-nez v5, :cond_b

    .line 2034
    iget v5, v12, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v5, v5

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->minimumHeightRatio()D

    move-result-wide v8

    mul-double/2addr v5, v8

    double-to-float v5, v5

    iput v5, v15, Lcom/metamoji/cm/SizeF;->height:F

    goto :goto_3

    .line 2036
    :cond_b
    iput v8, v15, Lcom/metamoji/cm/SizeF;->height:F

    .line 2038
    :goto_3
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->isEqualToId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v5

    if-eqz v5, :cond_c

    move/from16 v5, v18

    goto :goto_4

    :cond_c
    move/from16 v5, v17

    .line 2039
    :goto_4
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifference()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v6

    if-nez v6, :cond_f

    .line 2040
    iget v6, v11, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v6

    if-nez v6, :cond_e

    iget v6, v12, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v6

    if-nez v6, :cond_e

    .line 2041
    iget v6, v15, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v6

    if-nez v6, :cond_d

    iget v6, v12, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v8, v6

    .line 2042
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifference()D

    move-result-wide v21

    add-double v8, v8, v21

    iget v6, v15, Lcom/metamoji/cm/SizeF;->width:F

    move-wide/from16 v22, v8

    float-to-double v7, v6

    cmpl-double v6, v22, v7

    if-ltz v6, :cond_f

    if-eqz v5, :cond_d

    .line 2044
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifference()D

    move-result-wide v6

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifference()D

    move-result-wide v8

    sub-double/2addr v6, v8

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9, v10}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2045
    :cond_d
    iget v6, v11, Lcom/metamoji/cm/SizeF;->width:F

    iget v7, v12, Lcom/metamoji/cm/SizeF;->width:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    goto :goto_5

    :cond_e
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2048
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v17

    :cond_f
    const-wide/high16 v6, 0x7ff8000000000000L    # Double.NaN

    .line 2052
    :goto_5
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifference()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v8

    if-nez v8, :cond_13

    .line 2053
    iget v8, v11, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v8

    if-nez v8, :cond_12

    iget v8, v12, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v8

    if-nez v8, :cond_12

    .line 2054
    iget v8, v15, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v8

    if-nez v8, :cond_10

    iget v8, v12, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v8, v8

    .line 2055
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifference()D

    move-result-wide v22

    add-double v8, v8, v22

    iget v10, v15, Lcom/metamoji/cm/SizeF;->height:F

    move/from16 v23, v5

    move-wide/from16 v24, v6

    float-to-double v5, v10

    cmpl-double v5, v8, v5

    if-ltz v5, :cond_14

    if-eqz v23, :cond_11

    .line 2057
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifference()D

    move-result-wide v5

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifference()D

    move-result-wide v7

    sub-double/2addr v5, v7

    const/4 v7, 0x6

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v8, v9, v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_6

    :cond_10
    move/from16 v23, v5

    move-wide/from16 v24, v6

    .line 2058
    :cond_11
    :goto_6
    iget v5, v11, Lcom/metamoji/cm/SizeF;->height:F

    iget v6, v12, Lcom/metamoji/cm/SizeF;->height:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    goto :goto_7

    :cond_12
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 2061
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v17

    :cond_13
    move/from16 v23, v5

    move-wide/from16 v24, v6

    :cond_14
    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    .line 2065
    :goto_7
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifferenceRatio()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v7

    const/4 v10, 0x0

    if-nez v7, :cond_19

    .line 2066
    iget v7, v11, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v7

    if-nez v7, :cond_18

    iget v7, v12, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v7

    if-nez v7, :cond_18

    iget v7, v12, Lcom/metamoji/cm/SizeF;->width:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_18

    .line 2067
    iget v7, v15, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v7

    if-nez v7, :cond_17

    iget v7, v12, Lcom/metamoji/cm/SizeF;->width:F

    move/from16 v20, v10

    move-object/from16 v19, v11

    float-to-double v10, v7

    .line 2068
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifferenceRatio()D

    move-result-wide v26

    mul-double v10, v10, v26

    iget v7, v15, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v8, v7

    cmpl-double v7, v10, v8

    if-ltz v7, :cond_16

    if-eqz v23, :cond_15

    .line 2070
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifferenceRatio()D

    move-result-wide v7

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifferenceRatio()D

    move-result-wide v9

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const/4 v11, 0x6

    invoke-static {v7, v8, v9, v10, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v7

    if-eqz v7, :cond_16

    :cond_15
    move-object/from16 v7, v19

    goto :goto_8

    :cond_16
    move-object/from16 v7, v19

    goto :goto_9

    :cond_17
    move/from16 v20, v10

    move-object v7, v11

    .line 2071
    :goto_8
    iget v8, v7, Lcom/metamoji/cm/SizeF;->width:F

    iget v9, v12, Lcom/metamoji/cm/SizeF;->width:F

    div-float/2addr v8, v9

    float-to-double v8, v8

    goto :goto_a

    :cond_18
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 2074
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v17

    :cond_19
    move/from16 v20, v10

    move-object v7, v11

    :goto_9
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    .line 2078
    :goto_a
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifferenceRatio()D

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 2079
    iget v10, v7, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v10

    if-nez v10, :cond_1c

    iget v10, v12, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v10

    if-nez v10, :cond_1c

    iget v10, v12, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v10, v10, v20

    if-lez v10, :cond_1c

    .line 2080
    iget v10, v15, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(F)Z

    move-result v10

    if-nez v10, :cond_1a

    iget v10, v12, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v10, v10

    .line 2081
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifferenceRatio()D

    move-result-wide v19

    mul-double v10, v10, v19

    iget v15, v15, Lcom/metamoji/cm/SizeF;->height:F

    move-wide/from16 v19, v5

    float-to-double v5, v15

    cmpl-double v5, v10, v5

    if-ltz v5, :cond_1e

    if-eqz v23, :cond_1b

    .line 2083
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifferenceRatio()D

    move-result-wide v5

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifferenceRatio()D

    move-result-wide v10

    mul-double/2addr v5, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v15, 0x6

    invoke-static {v5, v6, v10, v11, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_b

    :cond_1a
    move-wide/from16 v19, v5

    .line 2084
    :cond_1b
    :goto_b
    iget v5, v7, Lcom/metamoji/cm/SizeF;->height:F

    iget v6, v12, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v5, v6

    float-to-double v5, v5

    move-wide v11, v8

    move-wide/from16 v9, v24

    move-wide v7, v5

    move-wide/from16 v5, v19

    goto :goto_c

    :cond_1c
    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 2087
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v17

    :cond_1d
    move-wide/from16 v19, v5

    :cond_1e
    move-wide v11, v8

    move-wide/from16 v5, v19

    move-wide/from16 v9, v24

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    goto :goto_c

    :cond_1f
    move/from16 v18, v8

    move/from16 v17, v9

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v11, 0x7ff8000000000000L    # Double.NaN

    .line 2094
    :goto_c
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v15

    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->angleType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    move-result-object v15

    move-wide/from16 v19, v7

    sget-object v7, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    if-eq v15, v7, :cond_21

    .line 2095
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;->angleType()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    move-result-object v7

    sget-object v8, Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;->NONE:Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion$AngleType;

    if-eq v7, v8, :cond_21

    .line 2096
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->angleDifference()D

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v7

    if-nez v7, :cond_21

    .line 2097
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->getLinkageCriterionAngleOfElement_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)D

    move-result-wide v7

    .line 2098
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->getLinkageCriterionAngleOfElement_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;)D

    move-result-wide v1

    .line 2099
    invoke-static {v7, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v15

    if-nez v15, :cond_20

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v15

    if-nez v15, :cond_20

    sub-double/2addr v7, v1

    .line 2100
    invoke-static {v7, v8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(D)D

    move-result-wide v1

    const/4 v15, 0x6

    goto :goto_d

    :cond_20
    const/4 v1, 0x0

    const/4 v15, 0x6

    .line 2102
    invoke-static {v15, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v17

    :cond_21
    const/4 v15, 0x6

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 2109
    :goto_d
    invoke-static {v13, v14}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v7

    if-nez v7, :cond_22

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->xDifference()D

    move-result-wide v7

    invoke-static {v13, v14, v7, v8, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v7

    if-nez v7, :cond_22

    .line 2110
    invoke-virtual {v0, v13, v14}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setXDifference(D)V

    move/from16 v17, v18

    .line 2113
    :cond_22
    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v7

    if-nez v7, :cond_23

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->yDifference()D

    move-result-wide v7

    invoke-static {v3, v4, v7, v8, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v7

    if-nez v7, :cond_23

    .line 2114
    invoke-virtual {v0, v3, v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setYDifference(D)V

    move/from16 v17, v18

    .line 2117
    :cond_23
    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifference()D

    move-result-wide v3

    invoke-static {v9, v10, v3, v4, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v3

    if-nez v3, :cond_24

    .line 2118
    invoke-virtual {v0, v9, v10}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setWidthDifference(D)V

    move/from16 v17, v18

    .line 2121
    :cond_24
    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v3

    if-nez v3, :cond_25

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifference()D

    move-result-wide v3

    invoke-static {v5, v6, v3, v4, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v3

    if-nez v3, :cond_25

    .line 2122
    invoke-virtual {v0, v5, v6}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setHeightDifference(D)V

    move/from16 v17, v18

    .line 2125
    :cond_25
    invoke-static {v11, v12}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v3

    if-nez v3, :cond_26

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->widthDifferenceRatio()D

    move-result-wide v3

    invoke-static {v11, v12, v3, v4, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v3

    if-nez v3, :cond_26

    .line 2126
    invoke-virtual {v0, v11, v12}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setWidthDifferenceRatio(D)V

    move/from16 v17, v18

    .line 2129
    :cond_26
    invoke-static/range {v19 .. v20}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->heightDifferenceRatio()D

    move-result-wide v3

    move-wide/from16 v5, v19

    invoke-static {v5, v6, v3, v4, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v3

    if-nez v3, :cond_27

    .line 2130
    invoke-virtual {v0, v5, v6}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setHeightDifferenceRatio(D)V

    move/from16 v17, v18

    .line 2133
    :cond_27
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isnan(D)Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->angleDifference()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(DDI)Z

    move-result v3

    if-nez v3, :cond_28

    .line 2134
    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setAngleDifference(D)V

    return v18

    :cond_28
    return v17
.end method


# virtual methods
.method public activateLinkageForTargetIds(Ljava/util/Set;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;Ljava/util/Set;Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;",
            "Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;",
            "Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 896
    iget-boolean v2, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    .line 897
    invoke-static {v9, v8}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v10, 0x1

    if-eqz p1, :cond_13

    .line 900
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_8

    .line 904
    :cond_1
    sget-object v2, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->NONE:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x2

    .line 905
    invoke-static {v0, v8}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 908
    :cond_2
    monitor-enter p0

    .line 909
    :try_start_0
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 910
    monitor-exit p0

    return-void

    .line 914
    :cond_3
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 915
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-object/from16 v5, p5

    .line 916
    invoke-direct {v1, v4, v2, v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->collectFollowerIdsForTargetId_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/Set;Ljava/util/Set;)Z

    goto :goto_0

    .line 918
    :cond_4
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 919
    monitor-exit p0

    return-void

    .line 923
    :cond_5
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->disableLinkageUpdateAtCommandExecution()Z

    move-result v11

    .line 924
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->deactivateLinkageAtEditNotificationFromUnit()Z

    move-result v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 928
    :try_start_1
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->delayEndRegistration()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->isRegistering()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->delayNotifyUnit()Z

    move-result v3

    if-nez v3, :cond_7

    .line 929
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3, v10}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDelayNotifyUnit(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v13, v10

    goto :goto_1

    :cond_7
    move v13, v9

    .line 934
    :goto_1
    :try_start_2
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3, v10}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDisableLinkageUpdateAtCommandExecution(Z)V

    .line 937
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3, v10}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDeactivateLinkageAtEditNotificationFromUnit(Z)V

    .line 940
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 941
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 942
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 943
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 944
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 945
    invoke-direct/range {v1 .. v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->classifyFollowerIds_(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object v2, v7

    .line 948
    :try_start_3
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 951
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v3, 0x4

    move-object/from16 v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v4, v0

    .line 952
    invoke-direct/range {v1 .. v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->activateLinkageForFollowerIds_(Ljava/util/Set;ILcom/metamoji/un/draw2/module/command/DrCommandExecutionType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;Ljava/util/Set;)V

    .line 956
    :cond_8
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_9

    const/4 v3, 0x2

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v2, v17

    .line 957
    invoke-direct/range {v1 .. v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->activateLinkageForFollowerIds_(Ljava/util/Set;ILcom/metamoji/un/draw2/module/command/DrCommandExecutionType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;Ljava/util/Set;)V

    .line 961
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v3, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v2, v16

    .line 962
    invoke-direct/range {v1 .. v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->activateLinkageForFollowerIds_(Ljava/util/Set;ILcom/metamoji/un/draw2/module/command/DrCommandExecutionType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;Ljava/util/Set;)V

    .line 966
    :cond_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v3, 0x3

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v2, v18

    .line 967
    invoke-direct/range {v1 .. v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->activateLinkageForFollowerIds_(Ljava/util/Set;ILcom/metamoji/un/draw2/module/command/DrCommandExecutionType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;Ljava/util/Set;)V

    .line 971
    :cond_b
    invoke-virtual {v15}, Ljava/util/HashSet;->size()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v0, :cond_c

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v2, v15

    .line 972
    :try_start_4
    invoke-direct/range {v1 .. v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->activateLinkageForFollowerIds_(Ljava/util/Set;ILcom/metamoji/un/draw2/module/command/DrCommandExecutionType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;Ljava/util/Set;)V

    goto :goto_2

    :cond_c
    move-object/from16 v1, p0

    move-object/from16 v4, p2

    .line 976
    :goto_2
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 977
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 978
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    .line 979
    invoke-direct {v1, v3, v10}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->updateLinkageOfFollower_(Lcom/metamoji/un/draw2/module/element/DrElement;Z)Z

    .line 982
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v5

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    .line 983
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->isEqualToId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 984
    invoke-direct {v1, v3, v10}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->updateLinkageOfFollower_(Lcom/metamoji/un/draw2/module/element/DrElement;Z)Z

    goto :goto_3

    :cond_e
    if-eqz p6, :cond_f

    .line 990
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->editWithVariationAlways()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {v14}, Ljava/util/HashSet;->size()I

    move-result v2

    if-ge v0, v2, :cond_f

    .line 991
    invoke-virtual {v14, v7}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 992
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual {v0, v14, v4, v5, v6}, Lcom/metamoji/un/draw2/module/DrModuleContext;->executeIdentityCommandForElementsWithIds(Ljava/util/Set;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_f
    if-eqz v13, :cond_10

    .line 999
    :try_start_5
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v9}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDelayNotifyUnit(Z)V

    .line 1003
    :cond_10
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v11}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDisableLinkageUpdateAtCommandExecution(Z)V

    .line 1006
    :goto_4
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v12}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDeactivateLinkageAtEditNotificationFromUnit(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move v13, v9

    goto :goto_7

    :catch_2
    move-exception v0

    move v13, v9

    :goto_5
    const/4 v2, 0x3

    .line 995
    :try_start_6
    invoke-static {v2, v8, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v13, :cond_11

    .line 999
    :try_start_7
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v9}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDelayNotifyUnit(Z)V

    .line 1003
    :cond_11
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v11}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDisableLinkageUpdateAtCommandExecution(Z)V

    goto :goto_4

    .line 1008
    :goto_6
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    :goto_7
    if-eqz v13, :cond_12

    .line 999
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2, v9}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDelayNotifyUnit(Z)V

    .line 1003
    :cond_12
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2, v11}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDisableLinkageUpdateAtCommandExecution(Z)V

    .line 1006
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2, v12}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDeactivateLinkageAtEditNotificationFromUnit(Z)V

    .line 1007
    throw v0

    :catchall_3
    move-exception v0

    .line 1008
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 901
    :cond_13
    :goto_8
    invoke-static {v10, v8}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public checkByAngleForFollowerId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 3

    .line 378
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 379
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 383
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 386
    :cond_1
    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 391
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 395
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->byAngle()Z

    move-result p1

    monitor-exit p0

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x2

    .line 392
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 393
    monitor-exit p0

    return v2

    .line 388
    :cond_5
    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 396
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkByPositionForFollowerId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 3

    .line 328
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 329
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 333
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 336
    :cond_1
    monitor-enter p0

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 340
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 341
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 345
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->byPosition()Z

    move-result p1

    monitor-exit p0

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x2

    .line 342
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 343
    monitor-exit p0

    return v2

    .line 338
    :cond_5
    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 346
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkBySizeForFollowerId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 3

    .line 353
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 354
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 358
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 361
    :cond_1
    monitor-enter p0

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 366
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 370
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->bySize()Z

    move-result p1

    monitor-exit p0

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x2

    .line 367
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 368
    monitor-exit p0

    return v2

    .line 363
    :cond_5
    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 371
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkDisableWhenEditingTogetherForFollowerId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 3

    .line 303
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 304
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 308
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 311
    :cond_1
    monitor-enter p0

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 316
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 320
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->disableWhenEditingTogether()Z

    move-result p1

    monitor-exit p0

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x2

    .line 317
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 318
    monitor-exit p0

    return v2

    .line 313
    :cond_5
    :goto_1
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 321
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkFollowerId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 3

    .line 170
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 175
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 178
    :cond_1
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 180
    monitor-exit p0

    return v2

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    move v2, v0

    :cond_3
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 183
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkPreferedFollowerId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 3

    .line 190
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 191
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 195
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 198
    :cond_1
    monitor-enter p0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 203
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isPreferred()Z

    move-result p1

    if-eqz p1, :cond_3

    move v2, v0

    :cond_3
    monitor-exit p0

    return v2

    .line 200
    :cond_4
    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 204
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkStrongFollowerForTargetId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 4

    .line 253
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 254
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 258
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 261
    :cond_1
    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 263
    monitor-exit p0

    return v2

    .line 265
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_6

    .line 266
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 269
    :cond_3
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 270
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 271
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isStrong()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 272
    monitor-exit p0

    return v0

    .line 275
    :cond_5
    monitor-exit p0

    return v2

    .line 267
    :cond_6
    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 276
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkStrongFollowerId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 3

    .line 211
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 216
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 219
    :cond_1
    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 224
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isStrong()Z

    move-result p1

    if-eqz p1, :cond_3

    move v2, v0

    :cond_3
    monitor-exit p0

    return v2

    .line 221
    :cond_4
    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 225
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public checkTargetId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 3

    .line 232
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 233
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 237
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 240
    :cond_1
    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 242
    monitor-exit p0

    return v2

    .line 244
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_3

    .line 245
    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_3

    move v2, v0

    :cond_3
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 246
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cleanWithRemoval(Z)V
    .locals 1

    .line 759
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 760
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 763
    :cond_0
    monitor-enter p0

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 765
    monitor-exit p0

    return-void

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 772
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->cleanWithRemoval_(Z)V

    if-lez v0, :cond_2

    .line 775
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 776
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->notifyLinkageManagerIsEmpty()V

    .line 778
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public collectFollowerIdsForTargetId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)Z"
        }
    .end annotation

    .line 792
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 793
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 797
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x2

    .line 801
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 804
    :cond_2
    monitor-enter p0

    .line 805
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 806
    monitor-exit p0

    return v2

    .line 808
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->collectFollowerIdsForTargetId_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/Set;Ljava/util/Set;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 809
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public collectFollowerIdsForTargetId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)Z"
        }
    .end annotation

    .line 827
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 828
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 832
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 835
    :cond_1
    monitor-enter p0

    .line 836
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    .line 837
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_1

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 839
    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->collectFollowerIdsForTargetId_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_1
    move-exception v0

    move-object v1, p0

    :goto_0
    move-object p1, v0

    .line 840
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method public constructInformationsForEditTargetFollowerIds(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 860
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 861
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 864
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    if-nez p3, :cond_2

    if-nez p4, :cond_2

    if-nez p5, :cond_2

    const/4 p1, 0x2

    .line 869
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 872
    :cond_2
    monitor-enter p0

    .line 873
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_3

    .line 874
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object p2, p1

    move-object p1, p0

    goto :goto_1

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 876
    :try_start_2
    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->constructInformationsForEditTargetFollowerIds_(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p1, v1

    .line 877
    :try_start_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    move-object p1, v1

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, p0

    :goto_0
    move-object p2, v0

    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p2

    :catchall_3
    move-exception v0

    goto :goto_0

    :cond_4
    :goto_2
    move-object p1, p0

    const/4 p2, 0x1

    .line 865
    invoke-static {p2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1015
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1018
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    .line 1019
    monitor-enter p0

    const/4 v0, 0x0

    .line 1020
    :try_start_0
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 1021
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    .line 1022
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    .line 1023
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public followerCount()I
    .locals 2

    .line 157
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 158
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 161
    :cond_0
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 163
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTargetIdForFollowerId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 2

    .line 283
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 284
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 288
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 291
    :cond_1
    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 293
    monitor-exit p0

    return-object v1

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 296
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerFollower(Lcom/metamoji/un/draw2/module/element/DrElement;Z)V
    .locals 4

    .line 75
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 76
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 80
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 83
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 p1, 0x2

    .line 84
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 87
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 p1, 0x3

    .line 88
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 91
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 p1, 0x4

    .line 92
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 95
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 p1, 0x5

    .line 96
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 99
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v2

    if-nez v2, :cond_6

    const/4 p1, 0x6

    .line 100
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 103
    :cond_6
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 108
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->registerFollowerId_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    if-eqz p2, :cond_7

    .line 112
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->applyLatestStatusOfTarget_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 113
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->applyLatestStatusOfFollower_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    :cond_7
    if-nez v1, :cond_8

    .line 117
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-ne p1, v0, :cond_8

    .line 118
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->notifyLinkageManagerIsNotEmpty()V

    .line 120
    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeLinkageFromElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z
    .locals 3

    .line 461
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 462
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 466
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 469
    :cond_1
    monitor-enter p0

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 474
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->removeLinkageFromElement_(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result p1

    if-lez v0, :cond_2

    .line 477
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->notifyLinkageManagerIsEmpty()V

    .line 481
    :cond_2
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 482
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLinkageToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;Z)Z
    .locals 4

    .line 406
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 407
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 411
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 414
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    if-nez v3, :cond_2

    if-eqz p3, :cond_2

    const/4 p1, 0x2

    .line 415
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x3

    .line 419
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 422
    :cond_3
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 p1, 0x4

    .line 423
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 426
    :cond_4
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 p1, 0x5

    .line 427
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 430
    :cond_5
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v3

    if-nez v3, :cond_6

    const/4 p1, 0x6

    .line 431
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 434
    :cond_6
    monitor-enter p0

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 439
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->setLinkageToElement_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;Z)Z

    move-result p3

    .line 442
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->applyLatestStatusOfTarget_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 443
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->applyLatestStatusOfFollower_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    if-nez v1, :cond_7

    .line 446
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-ne p1, v0, :cond_7

    .line 447
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->notifyLinkageManagerIsNotEmpty()V

    .line 450
    :cond_7
    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    .line 451
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unregisterFollower(Lcom/metamoji/un/draw2/module/element/DrElement;)V
    .locals 2

    .line 127
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 128
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 132
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 135
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 136
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 139
    :cond_2
    monitor-enter p0

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 144
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->unregisterFollowerId_(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    if-lez v0, :cond_3

    .line 147
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 148
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->notifyLinkageManagerIsEmpty()V

    .line 150
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateLatestStatusOfAllLinkages()V
    .locals 5

    .line 733
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 734
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 737
    :cond_0
    monitor-enter p0

    .line 738
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 739
    monitor-exit p0

    return-void

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 742
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 743
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 744
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->applyLatestStatusOfTarget_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 745
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->applyLatestStatusOfFollower_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 747
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 750
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateLatestStatusOfLinkagesByFollowerIds(Ljava/util/Set;Ljava/util/Set;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;Z)V"
        }
    .end annotation

    .line 662
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 663
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 666
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz p2, :cond_10

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 669
    :cond_2
    monitor-enter p0

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 671
    monitor-exit p0

    return-void

    .line 673
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_9

    .line 674
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 675
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 676
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    .line 679
    :cond_5
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-nez v3, :cond_6

    goto :goto_0

    .line 683
    :cond_6
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 684
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->isEqualToId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    .line 688
    :cond_7
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v5

    .line 689
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->applyLatestStatusOfTarget_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 690
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->applyLatestStatusOfFollower_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 691
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_4

    if-eqz v5, :cond_4

    .line 692
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->isEqualToId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 693
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 694
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->applyLatestStatusOfTarget_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 695
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->applyLatestStatusOfFollower_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 696
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    :goto_1
    const/4 v2, 0x1

    .line 685
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    if-eqz p2, :cond_f

    .line 700
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_f

    .line 701
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 702
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p3

    if-nez p3, :cond_b

    const/4 p2, 0x2

    .line 704
    invoke-static {p2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    .line 707
    :cond_b
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashSet;

    if-eqz p2, :cond_a

    .line 708
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_c

    goto :goto_2

    .line 711
    :cond_c
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 712
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_3

    .line 715
    :cond_d
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 716
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 717
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    invoke-static {p3, v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->applyLatestStatusOfTarget_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 718
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->applyLatestStatusOfFollower_(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 719
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    const/4 v2, 0x3

    .line 721
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_3

    .line 726
    :cond_f
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_10
    :goto_4
    return-void
.end method

.method public updateLinkageOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z
    .locals 4

    .line 492
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 493
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 497
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 500
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 p1, 0x2

    .line 501
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 504
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 p1, 0x3

    .line 505
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 508
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 p1, 0x4

    .line 509
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 512
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 p1, 0x5

    .line 513
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 516
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v3

    if-nez v3, :cond_6

    const/4 p1, 0x6

    .line 517
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 520
    :cond_6
    monitor-enter p0

    .line 521
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->updateLinkageOfFollower_(Lcom/metamoji/un/draw2/module/element/DrElement;Z)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 522
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateLinkageOfElementWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 4

    .line 532
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 533
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 537
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 540
    :cond_1
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 542
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 545
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 p1, 0x3

    .line 546
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 549
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 p1, 0x4

    .line 550
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 553
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v3

    if-nez v3, :cond_5

    const/4 p1, 0x5

    .line 554
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 557
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v3

    if-nez v3, :cond_6

    const/4 p1, 0x6

    .line 558
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 561
    :cond_6
    monitor-enter p0

    .line 562
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->updateLinkageOfFollower_(Lcom/metamoji/un/draw2/module/element/DrElement;Z)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 563
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateLinkagesByFollowerIds(Ljava/util/Set;Ljava/util/Set;ZLjava/util/Set;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;Z",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)Z"
        }
    .end annotation

    .line 579
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 580
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-eqz p1, :cond_1

    .line 583
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz p2, :cond_1b

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_a

    .line 586
    :cond_2
    monitor-enter p0

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_followerIdTargetIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->elementCount()I

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_9

    :cond_3
    const/4 v0, 0x1

    if-eqz p2, :cond_14

    .line 591
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_6

    :cond_4
    if-eqz p1, :cond_5

    .line 607
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_5

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_5
    move-object v3, v1

    .line 608
    :goto_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 609
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_1

    .line 612
    :cond_7
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_targetIdFollowerIdsMap:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashSet;

    if-eqz p2, :cond_6

    .line 613
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    .line 616
    :cond_8
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-eqz v3, :cond_a

    .line 618
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 620
    :cond_a
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 621
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v6

    if-eqz v6, :cond_9

    if-eqz p4, :cond_b

    invoke-interface {p4, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_2

    .line 624
    :cond_b
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v4

    if-nez v4, :cond_c

    goto :goto_3

    .line 628
    :cond_c
    invoke-direct {p0, v5, p3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->updateLinkageOfFollower_(Lcom/metamoji/un/draw2/module/element/DrElement;Z)Z

    move-result v4

    if-eqz v4, :cond_9

    move v2, v0

    goto :goto_2

    :cond_d
    :goto_3
    const/4 v4, 0x2

    .line 625
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    :cond_e
    if-eqz v3, :cond_13

    .line 633
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_13

    .line 634
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 635
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 636
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    if-eqz v4, :cond_f

    if-eqz p4, :cond_10

    invoke-interface {p4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_4

    .line 639
    :cond_10
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object p2

    if-nez p2, :cond_11

    goto :goto_5

    .line 643
    :cond_11
    invoke-direct {p0, v3, p3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->updateLinkageOfFollower_(Lcom/metamoji/un/draw2/module/element/DrElement;Z)Z

    move-result p2

    if-eqz p2, :cond_f

    move v2, v0

    goto :goto_4

    :cond_12
    :goto_5
    const/4 p2, 0x3

    .line 640
    invoke-static {p2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_4

    .line 648
    :cond_13
    monitor-exit p0

    return v2

    .line 592
    :cond_14
    :goto_6
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 593
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 594
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    if-eqz v4, :cond_15

    if-eqz p4, :cond_16

    invoke-interface {p4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_16

    goto :goto_7

    .line 597
    :cond_16
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p2

    if-eqz p2, :cond_18

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object p2

    if-eqz p2, :cond_18

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object p2

    if-nez p2, :cond_17

    goto :goto_8

    .line 601
    :cond_17
    invoke-direct {p0, v3, p3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->updateLinkageOfFollower_(Lcom/metamoji/un/draw2/module/element/DrElement;Z)Z

    move-result p2

    if-eqz p2, :cond_15

    move v2, v0

    goto :goto_7

    .line 598
    :cond_18
    :goto_8
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_7

    .line 605
    :cond_19
    monitor-exit p0

    return v2

    .line 588
    :cond_1a
    :goto_9
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    .line 649
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1b
    :goto_a
    return v2
.end method
