.class public Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;
.super Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
.source "DrChangeOrderDirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;,
        Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;,
        Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;
    }
.end annotation


# static fields
.field private static final MODEL_PROPERTY_BASE_STROKE_ID:Ljava/lang/String; = "b"

.field private static final MODEL_PROPERTY_CHANGE_TYPE:Ljava/lang/String; = "t"

.field private static final MODEL_PROPERTY_ELEMENT_ID:Ljava/lang/String; = "i"

.field private static final MODEL_PROPERTY_NEXT_ORDER:Ljava/lang/String; = "n"

.field private static final MODEL_PROPERTY_PREV_ORDER:Ljava/lang/String; = "p"

.field private static final MODEL_PROPERTY_RESTORE_TYPE:Ljava/lang/String; = "r"

.field private static final MODEL_PROPERTY_STROKE_END_INDEX:Ljava/lang/String; = "e"

.field private static final MODEL_PROPERTY_STROKE_START_INDEX:Ljava/lang/String; = "s"

.field private static final MODEL_TYPE_INTERNAL:Ljava/lang/String; = "i"


# instance fields
.field private m_changeType:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

.field private m_collaborating:Z

.field private m_commonTargetId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_elementIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_elementIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_internalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;",
            ">;"
        }
    .end annotation
.end field

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_orderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;-><init>()V

    return-void
.end method

.method private changeOrderWithUpdateInternal(Z)V
    .locals 12

    .line 636
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    .line 637
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_collaborating:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 638
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->intervalManager()Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

    move-result-object v3

    .line 641
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 644
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_elementIdSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 646
    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 647
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 652
    :cond_1
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;

    if-nez v10, :cond_2

    .line 654
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 660
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    :cond_3
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mstrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_0

    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mstrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)D

    move-result-wide v4

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    goto :goto_0

    .line 670
    :cond_4
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 672
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 677
    :cond_5
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mstrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)D

    move-result-wide v4

    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mstrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)D

    move-result-wide v6

    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalContainingInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    if-eqz v4, :cond_6

    goto :goto_0

    .line 682
    :cond_6
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mstrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)D

    move-result-wide v4

    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mstrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)D

    move-result-wide v6

    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getSubIntervalsOfInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v4

    goto :goto_1

    .line 685
    :cond_7
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalsInGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_0

    .line 689
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_0

    .line 694
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 696
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_9

    .line 700
    invoke-virtual {v0, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    .line 701
    new-instance v7, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection-IA;)V

    .line 702
    invoke-static {v7, v5}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetElementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 703
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v10

    invoke-static {v7, v10, v11}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetStrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;D)V

    .line 704
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v10

    invoke-static {v7, v10, v11}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetStrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;D)V

    .line 705
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetBaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 706
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 712
    :cond_a
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_elementIdSet:Ljava/util/HashSet;

    .line 716
    :cond_b
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_changeType:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    sget-object v3, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;->BRING_TO_FRONT:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_c

    move v1, v4

    goto :goto_3

    :cond_c
    move v1, v2

    .line 719
    :goto_3
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->elementCount()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    move v5, v2

    :goto_4
    if-eqz v1, :cond_e

    const/4 v1, -0x1

    goto :goto_5

    :cond_e
    move v1, v4

    :goto_5
    move v6, v5

    :goto_6
    if-ge v2, v3, :cond_14

    .line 734
    invoke-virtual {v0, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementByOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v7

    .line 735
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    .line 738
    iget-object v9, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_elementIdSet:Ljava/util/HashSet;

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    :goto_7
    add-int/2addr v5, v1

    goto :goto_9

    :cond_f
    if-eq v6, v5, :cond_10

    .line 745
    invoke-virtual {v0, v7, v6}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->changeOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z

    :cond_10
    if-eqz p1, :cond_12

    .line 750
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;

    if-eqz v7, :cond_11

    .line 752
    invoke-static {v7, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetNextOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;I)V

    .line 753
    invoke-static {v7, v5}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetPrevOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;I)V

    goto :goto_8

    .line 755
    :cond_11
    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 759
    :goto_8
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_elementIdList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_12
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_elementIdList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_elementIdSet:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    if-ne v7, v8, :cond_13

    goto :goto_a

    :cond_13
    add-int/2addr v6, v1

    goto :goto_7

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    :goto_a
    return-void
.end method

.method private restoreOrderInReverse(Z)V
    .locals 5

    .line 777
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    .line 779
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_elementIdList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->reversedList(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v1

    .line 780
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 782
    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 784
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 789
    :cond_1
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;

    if-nez v4, :cond_2

    const/4 v3, 0x1

    .line 791
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 797
    invoke-static {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mprevOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->changeOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z

    goto :goto_0

    .line 799
    :cond_3
    invoke-static {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mnextOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->changeOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method private sortWithUpdateModel(ZZ)V
    .locals 17

    move-object/from16 v0, p0

    .line 807
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 810
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 813
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 819
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v4

    .line 820
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->intervalManager()Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

    move-result-object v6

    .line 821
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_elementIdSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, -0x1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v12, 0x0

    const/4 v9, 0x0

    if-eqz v8, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 823
    iget-object v8, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;

    if-nez v14, :cond_0

    .line 825
    invoke-static {v13}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 830
    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mnextOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)I

    move-result v8

    goto :goto_1

    :cond_1
    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mprevOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)I

    move-result v8

    :goto_1
    move v15, v8

    if-ge v7, v15, :cond_2

    move/from16 v16, v15

    goto :goto_2

    :cond_2
    move/from16 v16, v7

    .line 838
    :goto_2
    invoke-virtual {v4, v13}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 840
    invoke-virtual {v1, v15, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 843
    invoke-virtual {v3, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_3
    if-eqz p1, :cond_4

    .line 851
    iget-object v7, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v7

    invoke-static {v7}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeChild(Lcom/metamoji/df/model/IModel;)V

    .line 858
    :cond_4
    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mstrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpg-double v7, v7, v9

    if-ltz v7, :cond_b

    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mstrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)D

    move-result-wide v7

    cmpg-double v7, v7, v9

    if-gez v7, :cond_5

    goto/16 :goto_5

    .line 864
    :cond_5
    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 866
    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v7

    if-eqz v7, :cond_6

    goto/16 :goto_5

    .line 871
    :cond_6
    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mstrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)D

    move-result-wide v7

    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mstrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)D

    move-result-wide v9

    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v11

    invoke-virtual/range {v6 .. v11}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalContainingInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    if-eqz v7, :cond_7

    goto/16 :goto_5

    .line 876
    :cond_7
    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mstrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)D

    move-result-wide v7

    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mstrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)D

    move-result-wide v9

    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v11

    invoke-virtual/range {v6 .. v11}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getSubIntervalsOfInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v7

    goto :goto_3

    .line 879
    :cond_8
    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalsInGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v7

    :goto_3
    if-eqz v7, :cond_b

    .line 883
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_9

    goto :goto_5

    .line 888
    :cond_9
    invoke-virtual {v1, v15, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 891
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 893
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 896
    invoke-virtual {v2, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_a

    .line 900
    invoke-virtual {v4, v8}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v9

    check-cast v9, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    .line 901
    new-instance v10, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;

    invoke-direct {v10, v12}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection-IA;)V

    .line 902
    invoke-static {v10, v8}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetElementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 903
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v14

    invoke-static {v10, v14, v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetStrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;D)V

    .line 904
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v14

    invoke-static {v10, v14, v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetStrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;D)V

    .line 905
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetBaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 908
    iget-object v9, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    const-string v8, "i"

    iget-object v9, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v8, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v8

    .line 912
    invoke-static {v10, v8}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msaveToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/df/model/IModel;)V

    .line 913
    iget-object v9, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v8, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 914
    invoke-static {v10, v8}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/df/model/IModel;)V

    goto :goto_4

    :cond_b
    :goto_5
    move/from16 v7, v16

    goto/16 :goto_0

    .line 920
    :cond_c
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_d

    goto/16 :goto_10

    .line 925
    :cond_d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 928
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 931
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move v10, v9

    .line 934
    :goto_6
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->elementCount()I

    move-result v11

    if-ge v10, v11, :cond_14

    .line 936
    invoke-virtual {v4, v10}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementByOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v11

    .line 937
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v11

    .line 940
    invoke-virtual {v3, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    .line 942
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v6, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 951
    :cond_e
    invoke-virtual {v2, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-eqz v13, :cond_10

    .line 953
    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-nez v14, :cond_f

    .line 955
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 956
    invoke-virtual {v8, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    :cond_f
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    if-eqz p1, :cond_13

    .line 963
    iget-object v13, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;

    if-eqz v13, :cond_12

    if-eqz p2, :cond_11

    .line 966
    invoke-static {v13}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mprevOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)I

    move-result v11

    if-eq v11, v10, :cond_13

    .line 967
    invoke-static {v13, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetPrevOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;I)V

    .line 968
    invoke-static {v13}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 969
    invoke-static {v13}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msavePrevOrderToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/df/model/IModel;)V

    goto :goto_7

    .line 973
    :cond_11
    invoke-static {v13}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mnextOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)I

    move-result v11

    if-eq v11, v10, :cond_13

    .line 974
    invoke-static {v13, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetNextOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;I)V

    .line 975
    invoke-static {v13}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v11

    if-eqz v11, :cond_13

    .line 976
    invoke-static {v13}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msaveNextOrderToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/df/model/IModel;)V

    goto :goto_7

    .line 981
    :cond_12
    invoke-static {v11}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    invoke-static {v13, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_13
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 993
    :cond_14
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v2

    move v3, v9

    move v10, v3

    :goto_8
    if-lez v2, :cond_27

    .line 996
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-lez v11, :cond_27

    if-le v3, v7, :cond_15

    const/4 v1, 0x2

    .line 999
    invoke-static {v1, v12}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1005
    :cond_15
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-nez v11, :cond_1a

    .line 1010
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_17

    :cond_16
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1016
    :cond_17
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1019
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-eq v13, v10, :cond_19

    .line 1023
    invoke-virtual {v4, v11}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v13

    if-eqz v13, :cond_18

    .line 1025
    invoke-virtual {v4, v13, v10}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->changeOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z

    goto :goto_a

    :cond_18
    const/4 v13, 0x3

    .line 1027
    invoke-static {v11}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1032
    :cond_19
    :goto_a
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1033
    invoke-virtual {v6, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 1045
    :cond_1a
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1048
    invoke-virtual {v4, v11}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v13

    if-eqz v13, :cond_1f

    .line 1053
    invoke-virtual {v4, v10}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementByOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v14

    if-eq v14, v13, :cond_1b

    .line 1054
    invoke-virtual {v4, v13, v10}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->changeOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z

    :cond_1b
    if-eqz p1, :cond_1e

    .line 1059
    iget-object v13, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;

    if-eqz v13, :cond_1d

    if-eqz p2, :cond_1c

    .line 1062
    invoke-static {v13}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mnextOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)I

    move-result v11

    if-eq v11, v10, :cond_1e

    .line 1063
    invoke-static {v13, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetNextOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;I)V

    .line 1064
    invoke-static {v13}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v11

    if-eqz v11, :cond_1e

    .line 1065
    invoke-static {v13}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msaveNextOrderToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/df/model/IModel;)V

    goto :goto_c

    .line 1069
    :cond_1c
    invoke-static {v13}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mprevOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)I

    move-result v11

    if-eq v11, v10, :cond_1e

    .line 1070
    invoke-static {v13, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetPrevOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;I)V

    .line 1071
    invoke-static {v13}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v11

    if-eqz v11, :cond_1e

    .line 1072
    invoke-static {v13}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msavePrevOrderToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/df/model/IModel;)V

    goto :goto_c

    :cond_1d
    const/4 v13, 0x4

    .line 1077
    invoke-static {v11}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_1e
    :goto_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 1094
    :cond_1f
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_26

    .line 1095
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_20

    goto/16 :goto_f

    .line 1102
    :cond_20
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1107
    invoke-virtual {v4, v13}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v14

    if-nez v14, :cond_21

    const/4 v14, 0x6

    .line 1109
    invoke-static {v13}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 1115
    :cond_21
    invoke-virtual {v4, v10}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementByOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v15

    if-eq v15, v14, :cond_22

    .line 1116
    invoke-virtual {v4, v14, v10}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->changeOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z

    :cond_22
    if-eqz p1, :cond_25

    .line 1121
    iget-object v14, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;

    if-eqz v14, :cond_24

    if-eqz p2, :cond_23

    .line 1124
    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mnextOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)I

    move-result v13

    if-eq v13, v10, :cond_25

    .line 1125
    invoke-static {v14, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetNextOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;I)V

    .line 1126
    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v13

    if-eqz v13, :cond_25

    .line 1127
    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msaveNextOrderToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/df/model/IModel;)V

    goto :goto_e

    .line 1131
    :cond_23
    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mprevOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)I

    move-result v13

    if-eq v13, v10, :cond_25

    .line 1132
    invoke-static {v14, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetPrevOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;I)V

    .line 1133
    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v13

    if-eqz v13, :cond_25

    .line 1134
    invoke-static {v14}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msavePrevOrderToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/df/model/IModel;)V

    goto :goto_e

    :cond_24
    const/4 v14, 0x7

    .line 1139
    invoke-static {v13}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_25
    :goto_e
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_26
    :goto_f
    const/4 v13, 0x5

    .line 1096
    invoke-static {v11}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto/16 :goto_9

    :cond_27
    :goto_10
    return-void
.end method


# virtual methods
.method public afterSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 5

    .line 566
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->afterSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 570
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    .line 580
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    move v1, v2

    :cond_1
    if-nez v1, :cond_2

    .line 586
    const-string v0, "r"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 590
    :cond_2
    const-string/jumbo v0, "t"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 593
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_6

    .line 596
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$smgetElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    .line 599
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_orderMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-nez v0, :cond_3

    .line 601
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 604
    :cond_3
    const-string v2, "p"

    if-eqz v1, :cond_4

    .line 606
    invoke-static {v2, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 609
    :cond_4
    const-string v3, "n"

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 611
    invoke-static {v2, v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    .line 615
    :cond_5
    invoke-static {v3, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    .line 619
    :goto_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 623
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_commonTargetId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->CHANGE_ORDER:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 625
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    .line 623
    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void
.end method

.method public beforeSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 6

    .line 480
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->beforeSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 484
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    .line 494
    invoke-static {v5, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    move v5, v3

    :cond_1
    if-nez v5, :cond_2

    .line 500
    const-string v0, "r"

    sget-object v4, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;->REVERSE:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;

    invoke-static {v0, v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_changeType:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;->ordinal()I

    move-result v0

    const-string/jumbo v4, "t"

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    .line 513
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 510
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_changeType:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    invoke-static {v4, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 506
    :cond_4
    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 518
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_orderMap:Ljava/util/HashMap;

    if-nez v0, :cond_5

    .line 519
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_orderMap:Ljava/util/HashMap;

    .line 523
    :cond_5
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_a

    .line 526
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$smgetElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    .line 529
    const-string v1, "p"

    if-eqz v5, :cond_6

    .line 531
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 535
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 536
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_orderMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 540
    :cond_6
    const-string v2, "n"

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 544
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_orderMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :cond_7
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 550
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 551
    invoke-static {v2, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 554
    :cond_8
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 559
    :cond_9
    :goto_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_1

    :cond_a
    return-void
.end method

.method protected canSave_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public changeOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V
    .locals 4

    .line 226
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 227
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 231
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 234
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 235
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_elementIdSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;

    invoke-direct {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection-IA;)V

    .line 244
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetElementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 245
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_collaborating:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v1, v2, :cond_3

    .line 246
    move-object v1, p1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    .line 247
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetStrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;D)V

    .line 248
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetStrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;D)V

    .line 249
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msetBaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 251
    :cond_3
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public changeType()Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_changeType:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    return-object v0
.end method

.method protected destroy_()V
    .locals 2

    const/4 v0, 0x0

    .line 457
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 458
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_commonTargetId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 459
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 461
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_elementIdSet:Ljava/util/HashSet;

    if-eqz v1, :cond_1

    .line 464
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 465
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_elementIdSet:Ljava/util/HashSet;

    .line 467
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_elementIdList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 468
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 469
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_elementIdList:Ljava/util/ArrayList;

    .line 471
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_orderMap:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 472
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 473
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_orderMap:Ljava/util/HashMap;

    :cond_3
    return-void
.end method

.method protected executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 10

    .line 290
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto/16 :goto_7

    :cond_0
    return-object v1

    .line 297
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_collaborating:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 298
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    .line 299
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 301
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->bySelf()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->checkCurrentCollaborationId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 303
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_commonTargetId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    sget-object v6, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->CHANGE_ORDER:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v0, v5, v6}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 307
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 309
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_commonTargetId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    sget-object v5, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->CHANGE_ORDER:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v0, v4, v5, v1}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_0

    .line 314
    :cond_2
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_4

    if-eqz p1, :cond_3

    goto/16 :goto_7

    :cond_3
    return-object v1

    .line 318
    :cond_4
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_5
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 333
    :cond_6
    :goto_0
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v0, v3, :cond_c

    if-eq v0, v5, :cond_b

    if-eq v0, v4, :cond_a

    const/4 v6, 0x4

    if-eq v0, v6, :cond_9

    const/4 v6, 0x5

    if-eq v0, v6, :cond_8

    .line 349
    invoke-static {v5, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    if-eqz p1, :cond_7

    goto :goto_7

    :cond_7
    return-object v1

    :cond_8
    move v0, v2

    goto :goto_1

    .line 343
    :cond_9
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_8

    move v0, v3

    :goto_1
    move v6, v0

    move v0, v2

    goto :goto_5

    :cond_a
    move v0, v2

    goto :goto_2

    :cond_b
    move v0, v3

    :goto_2
    move v6, v2

    move v2, v0

    :goto_3
    move v0, v3

    goto :goto_5

    .line 335
    :cond_c
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_d

    move v0, v3

    goto :goto_4

    :cond_d
    move v0, v2

    :goto_4
    move v6, v0

    goto :goto_3

    .line 354
    :goto_5
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_changeType:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;->ordinal()I

    move-result v7

    if-eqz v7, :cond_f

    if-eq v7, v3, :cond_e

    if-eq v7, v5, :cond_e

    .line 367
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_6

    .line 364
    :cond_e
    invoke-direct {p0, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->changeOrderWithUpdateInternal(Z)V

    goto :goto_6

    .line 356
    :cond_f
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_collaborating:Z

    if-eqz v2, :cond_10

    .line 357
    invoke-direct {p0, v6, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->sortWithUpdateModel(ZZ)V

    goto :goto_6

    :cond_10
    xor-int/2addr v0, v3

    .line 359
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->restoreOrderInReverse(Z)V

    :goto_6
    if-eqz p1, :cond_11

    :goto_7
    return-object p0

    :cond_11
    return-object v1
.end method

.method protected hasReverse_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected init_()Z
    .locals 6

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    .line 260
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_elementIdSet:Ljava/util/HashSet;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_elementIdList:Ljava/util/ArrayList;

    .line 262
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;->RESTORE:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_changeType:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    .line 265
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaborating()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 266
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_collaborating:Z

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    .line 267
    invoke-static {v2, v3, v4, v5}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->idWithCount(JJ)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_commonTargetId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    :cond_0
    return v1
.end method

.method protected restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 7

    .line 376
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 379
    const-string v0, "r"

    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;->NORMAL:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;

    .line 383
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrRestoreType;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_0

    .line 390
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 395
    :goto_0
    const-string/jumbo v4, "t"

    sget-object v5, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;->RESTORE:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    invoke-static {v4, v5, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    .line 396
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;->ordinal()I

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_2

    if-eq v5, v3, :cond_2

    if-eq v5, v6, :cond_2

    .line 403
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 400
    :cond_2
    iput-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_changeType:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    if-eqz v0, :cond_3

    .line 408
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->lastChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_7

    .line 410
    new-instance v2, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;

    invoke-direct {v2, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection-IA;)V

    .line 411
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$mrestoreFromModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/df/model/IModel;)V

    .line 412
    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 413
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-boolean v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_collaborating:Z

    if-eqz v4, :cond_4

    .line 415
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_elementIdSet:Ljava/util/HashSet;

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 417
    :cond_4
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_elementIdList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 420
    :cond_5
    invoke-static {v6, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_2
    if-eqz v0, :cond_6

    .line 422
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_1

    :cond_6
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->prevSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_1

    :cond_7
    return v3
.end method

.method protected saveToModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 4

    .line 431
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_collaborating:Z

    const-string v1, "i"

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;

    .line 434
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 435
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msaveToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/df/model/IModel;)V

    .line 436
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_elementIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 441
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;

    if-eqz v3, :cond_1

    .line 443
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 444
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->-$$Nest$msaveToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/df/model/IModel;)V

    .line 445
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 447
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public setChangeType(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->m_changeType:Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeType;

    return-void
.end method

.method protected type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 275
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->CHANGE_ORDER:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    return-object v0
.end method
