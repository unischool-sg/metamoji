.class public Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;
.super Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
.source "DrGroupDirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;,
        Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;,
        Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrRestoreType;,
        Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;
    }
.end annotation


# static fields
.field private static final MODEL_PROPERTY_EXECUTION_TYPE:Ljava/lang/String; = "t"

.field private static final MODEL_PROPERTY_GROUP_ID:Ljava/lang/String; = "g"

.field private static final MODEL_PROPERTY_MEMBERS:Ljava/lang/String; = "m"

.field private static final MODEL_PROPERTY_RESTORE_TYPE:Ljava/lang/String; = "r"

.field private static final MODEL_TYPE_INTERNAL:Ljava/lang/String; = "i"


# instance fields
.field private m_internals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;",
            ">;"
        }
    .end annotation
.end field

.field private m_membersModelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field

.field private m_model:Lcom/metamoji/df/model/IModel;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;-><init>()V

    return-void
.end method

.method private addGroupWithInternal(Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;ZZ)V
    .locals 12

    .line 708
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object p2

    .line 709
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->intervalManager()Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

    move-result-object v1

    .line 712
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 715
    iget-object v2, p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->elements:Ljava/util/List;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_a

    .line 717
    iget-object p3, p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->elements:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 719
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 720
    iget-object v3, p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-direct {p0, v2, p1, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->addMemberWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    if-eqz v0, :cond_0

    .line 723
    invoke-direct {p0, v2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->checkSelectionWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Ljava/util/HashSet;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move-object v0, v8

    goto :goto_0

    .line 731
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v3

    sget-object v4, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 736
    :cond_2
    const-class v3, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    .line 738
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 740
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v2

    const-class v3, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    if-eqz v2, :cond_3

    .line 742
    iget-object v3, p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-direct {p0, v2, p1, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->addMemberWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    if-eqz v0, :cond_0

    .line 745
    invoke-direct {p0, v2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->checkSelectionWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Ljava/util/HashSet;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 753
    :cond_3
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v2

    .line 754
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v4

    .line 755
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    .line 753
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalContainingInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 757
    invoke-virtual {p2, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 759
    iget-object v2, p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-direct {p0, v3, p1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->addMemberWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    if-eqz v0, :cond_0

    .line 762
    invoke-direct {p0, v3, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->checkSelectionWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Ljava/util/HashSet;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 766
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 772
    :cond_5
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v2

    .line 773
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v4

    .line 774
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    .line 772
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getSubIntervalsOfInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    .line 777
    :cond_6
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalsInGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_0

    .line 781
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_0

    .line 786
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 787
    invoke-virtual {p2, v3}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 789
    iget-object v3, p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-direct {p0, v4, p1, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->addMemberWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    if-eqz v0, :cond_8

    .line 792
    invoke-direct {p0, v4, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->checkSelectionWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Ljava/util/HashSet;)Z

    move-result v3

    if-nez v3, :cond_8

    move-object v0, v8

    goto :goto_3

    .line 796
    :cond_9
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_3

    .line 802
    :cond_a
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->getAllMembers()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 803
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_e

    :cond_b
    if-eqz p3, :cond_c

    .line 810
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v3

    goto :goto_4

    :cond_c
    move-object v9, v8

    .line 814
    :goto_4
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;

    .line 816
    iget-object v2, v11, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {p2, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 820
    iget-object v3, p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-direct {p0, v2, v8, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->addMemberWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    if-eqz v0, :cond_d

    .line 823
    invoke-direct {p0, v2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->checkSelectionWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Ljava/util/HashSet;)Z

    move-result v2

    if-nez v2, :cond_d

    :goto_6
    move-object v0, v8

    goto :goto_5

    :cond_e
    if-eqz p3, :cond_f

    .line 832
    iget-object v2, v11, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_f
    iget-wide v2, v11, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeStartIndex:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_d

    iget-wide v2, v11, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeEndIndex:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_10

    goto :goto_5

    .line 842
    :cond_10
    iget-object v2, v11, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-eqz v2, :cond_16

    .line 844
    iget-object v2, v11, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {p2, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v2

    const-class v3, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    if-eqz v2, :cond_12

    if-eqz p3, :cond_11

    .line 847
    iget-object v3, p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-direct {p0, v2, p1, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->addMemberWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_7

    .line 849
    :cond_11
    iget-object v3, p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-direct {p0, v2, v8, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->addMemberWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    :goto_7
    if-eqz v0, :cond_d

    .line 853
    invoke-direct {p0, v2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->checkSelectionWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Ljava/util/HashSet;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_6

    .line 861
    :cond_12
    iget-wide v2, v11, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeStartIndex:D

    iget-wide v4, v11, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeEndIndex:D

    iget-object v6, v11, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalContainingInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 865
    invoke-virtual {p2, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    if-eqz v3, :cond_14

    if-eqz p3, :cond_13

    .line 868
    iget-object v2, p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-direct {p0, v3, p1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->addMemberWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_8

    .line 870
    :cond_13
    iget-object v2, p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-direct {p0, v3, v8, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->addMemberWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    :goto_8
    if-eqz v0, :cond_d

    .line 874
    invoke-direct {p0, v3, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->checkSelectionWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Ljava/util/HashSet;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_6

    :cond_14
    const/4 v3, 0x2

    .line 878
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 884
    :cond_15
    iget-wide v2, v11, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeStartIndex:D

    iget-wide v4, v11, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeEndIndex:D

    iget-object v6, v11, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getSubIntervalsOfInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v2

    goto :goto_9

    .line 889
    :cond_16
    iget-object v2, v11, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalsInGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v2

    :goto_9
    if-eqz v2, :cond_d

    .line 893
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_17

    goto/16 :goto_5

    .line 898
    :cond_17
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 899
    invoke-virtual {p2, v3}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v4

    if-eqz v4, :cond_1a

    if-eqz p3, :cond_19

    .line 902
    iget-object v3, p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-direct {p0, v4, p1, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->addMemberWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_b

    .line 904
    :cond_19
    iget-object v3, p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-direct {p0, v4, v8, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->addMemberWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    :goto_b
    if-eqz v0, :cond_18

    .line 908
    invoke-direct {p0, v4, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->checkSelectionWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Ljava/util/HashSet;)Z

    move-result v3

    if-nez v3, :cond_18

    move-object v0, v8

    goto :goto_a

    :cond_1a
    const/4 v4, 0x3

    .line 912
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_a

    :cond_1b
    if-eqz p3, :cond_1c

    .line 918
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1c

    .line 919
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 920
    invoke-virtual {p1, p3}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->removeMemberWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_c

    :cond_1c
    if-eqz v0, :cond_1d

    .line 926
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    if-ne p1, v7, :cond_1d

    .line 927
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object p1

    .line 928
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 929
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {p1, p3}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_1d
    :goto_e
    return-void
.end method

.method private addMemberWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 4

    if-eqz p2, :cond_1

    .line 1015
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->checkMemberWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1016
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;-><init>()V

    .line 1017
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1018
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v1, v2, :cond_0

    .line 1019
    const-class v1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    .line 1020
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeStartIndex:D

    .line 1021
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->strokeEndIndex:D

    .line 1022
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1024
    :cond_0
    invoke-virtual {p2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->addMember(Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 1029
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->addMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    const/4 p1, 0x1

    .line 1032
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->setModifiedModel(Z)V

    :cond_2
    return-void
.end method

.method private checkSelectionWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Ljava/util/HashSet;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)Z"
        }
    .end annotation

    .line 1037
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1041
    :cond_0
    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1042
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1044
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private removeGroupWithInternal(Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;ZZ)V
    .locals 8

    .line 935
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object p2

    .line 938
    iget-object v0, p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {p2, v0}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_7

    .line 944
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object p3

    .line 947
    iget-object v1, p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {p2, v1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMembersOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;

    move-result-object v1

    .line 950
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->memberCount()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 952
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 953
    invoke-virtual {p3, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 955
    invoke-direct {p0, v4, p1, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->addMemberWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 957
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 962
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->getAllMembers()Ljava/util/Collection;

    move-result-object v2

    .line 965
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 966
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 967
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;

    .line 968
    iget-object v7, v6, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 970
    iget-object v6, v6, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 973
    :cond_3
    iget-object v6, v6, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupMember;->uid:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 978
    :cond_4
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 979
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 980
    invoke-virtual {p3, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 982
    invoke-direct {p0, v4, p1, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->addMemberWithElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_2

    .line 984
    :cond_5
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    .line 990
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_7

    .line 991
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 992
    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->removeMemberWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_3

    .line 999
    :cond_7
    iget-object p3, p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {p2, p3}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->removeGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1002
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->setModifiedModel(Z)V

    .line 1005
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getAllSelections()Ljava/util/List;

    move-result-object p2

    .line 1006
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 1007
    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupIds()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupIds()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1008
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    :goto_5
    return-void
.end method


# virtual methods
.method public addGroupWithElements(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            ">;)V"
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 359
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 362
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 368
    :cond_1
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;-><init>()V

    .line 369
    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    iput-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    .line 370
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->createGroup()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 371
    iput-object p1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->elements:Ljava/util/List;

    .line 374
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_internals:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 363
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public afterSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 649
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->afterSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 653
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    const/4 p1, 0x0

    .line 663
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 669
    :cond_0
    const-string v0, "r"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_membersModelMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 678
    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_5

    .line 681
    const-string v0, "g"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 683
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 684
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 689
    :cond_3
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_membersModelMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_4

    .line 691
    const-string v3, "m"

    invoke-static {v3, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 694
    :cond_4
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 698
    :cond_5
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_membersModelMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public beforeSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 6

    .line 577
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->beforeSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 581
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    .line 591
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    move v4, v2

    :cond_1
    if-nez v4, :cond_2

    .line 597
    const-string v0, "r"

    sget-object v3, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrRestoreType;->REVERSE:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrRestoreType;

    invoke-static {v0, v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    .line 601
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_membersModelMap:Ljava/util/HashMap;

    if-nez v0, :cond_3

    .line 602
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_membersModelMap:Ljava/util/HashMap;

    .line 606
    :cond_3
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_8

    .line 609
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    .line 610
    const-string/jumbo v3, "t"

    invoke-static {v3, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    if-eqz v4, :cond_4

    .line 614
    sget-object v3, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    if-ne v0, v3, :cond_5

    .line 615
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 619
    :cond_4
    sget-object v3, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    if-ne v0, v3, :cond_5

    .line 620
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 626
    :cond_5
    const-string v0, "g"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 628
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 629
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 634
    :cond_6
    const-string v3, "m"

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    if-nez v5, :cond_7

    .line 636
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 639
    :cond_7
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 640
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_membersModelMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_8
    return-void
.end method

.method protected canSave_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected destroy_()V
    .locals 2

    const/4 v0, 0x0

    .line 559
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 560
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_internals:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 561
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 562
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_internals:Ljava/util/ArrayList;

    .line 564
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_selectionMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 565
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 566
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_selectionMap:Ljava/util/HashMap;

    .line 568
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_membersModelMap:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 569
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 570
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_membersModelMap:Ljava/util/HashMap;

    :cond_2
    return-void
.end method

.method protected executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 8

    .line 430
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_internals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto/16 :goto_4

    :cond_0
    return-object v1

    .line 437
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_5

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v0, v4, :cond_6

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    .line 451
    invoke-static {v5, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    if-eqz p1, :cond_2

    goto/16 :goto_4

    :cond_2
    return-object v1

    :cond_3
    move v0, v5

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    move v5, v3

    :cond_6
    move v0, v5

    move v5, v3

    .line 471
    :goto_0
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_internals:Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    .line 457
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;

    .line 458
    iget-object v6, v4, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->ordinal()I

    move-result v6

    if-eqz v6, :cond_8

    if-eq v6, v3, :cond_7

    .line 466
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 463
    :cond_7
    invoke-direct {p0, v4, v5, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->removeGroupWithInternal(Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;ZZ)V

    goto :goto_1

    .line 460
    :cond_8
    invoke-direct {p0, v4, v5, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->addGroupWithInternal(Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;ZZ)V

    goto :goto_1

    .line 471
    :cond_9
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->reversedList(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;

    .line 472
    iget-object v7, v6, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->ordinal()I

    move-result v7

    if-eqz v7, :cond_b

    if-eq v7, v3, :cond_a

    .line 480
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    .line 477
    :cond_a
    invoke-direct {p0, v6, v5, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->addGroupWithInternal(Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;ZZ)V

    goto :goto_2

    .line 474
    :cond_b
    invoke-direct {p0, v6, v5, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->removeGroupWithInternal(Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;ZZ)V

    goto :goto_2

    .line 487
    :cond_c
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 488
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    .line 489
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 490
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v4

    if-nez v4, :cond_d

    .line 491
    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    goto :goto_3

    .line 494
    :cond_e
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_f
    if-eqz p1, :cond_10

    :goto_4
    return-object p0

    :cond_10
    return-object v1
.end method

.method protected hasReverse_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected init_()Z
    .locals 1

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_internals:Ljava/util/ArrayList;

    .line 409
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_selectionMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    return v0
.end method

.method public removeGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 2

    .line 381
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 382
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 386
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 390
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 395
    :cond_2
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;-><init>()V

    .line 396
    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    iput-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    .line 397
    iput-object p1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->groupId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 400
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_internals:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 4

    .line 502
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 505
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrRestoreType;->NORMAL:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrRestoreType;

    .line 506
    const-string v1, "r"

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrRestoreType;

    .line 510
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrRestoreType;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    .line 517
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    move v2, v1

    :cond_1
    if-eqz v2, :cond_2

    .line 524
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->lastChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_7

    .line 526
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;-><init>()V

    .line 527
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->restoreFromModel(Lcom/metamoji/df/model/IModel;)V

    if-nez v2, :cond_5

    .line 529
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->ordinal()I

    move-result v3

    if-eqz v3, :cond_4

    if-eq v3, v1, :cond_3

    goto :goto_1

    .line 534
    :cond_3
    sget-object v3, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    iput-object v3, v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    goto :goto_1

    .line 531
    :cond_4
    sget-object v3, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    iput-object v3, v0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrExecutionType;

    .line 540
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_internals:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_6

    .line 541
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->prevSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_7
    return v1
.end method

.method protected saveToModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->m_internals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;

    .line 550
    const-string v2, "i"

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 551
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection$DrGroupInternal;->saveToModel(Lcom/metamoji/df/model/IModel;)V

    .line 552
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 415
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->GROUP:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    return-object v0
.end method
