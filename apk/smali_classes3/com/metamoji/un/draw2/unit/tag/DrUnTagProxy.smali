.class public Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;
.super Ljava/lang/Object;
.source "DrUnTagProxy.java"

# interfaces
.implements Lcom/metamoji/cm/ICmEventHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ICmEventHandler<",
        "Ljava/util/List<",
        "Lcom/metamoji/ctold/CtEventTagChanged;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final ELEMENT_EXTERNAL_PROPERTY_NAME_TAGGED:Ljava/lang/String; = "EX!tagged"


# instance fields
.field private m_closed:Z

.field private m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

.field private m_handlerEnablement:Z

.field private m_notifierEnablement:Z

.field private m_objectListener:Lcom/metamoji/ctold/CtObjectListener;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/draw2/unit/DrUnUnitContext;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    .line 65
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getObjectListener()Lcom/metamoji/ctold/CtObjectListener;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_objectListener:Lcom/metamoji/ctold/CtObjectListener;

    if-nez p1, :cond_1

    .line 68
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 71
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 73
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_handlerEnablement:Z

    .line 74
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_notifierEnablement:Z

    .line 75
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    return-void
.end method

.method private checkSelectedTaggableObjects(Ljava/util/ArrayList;Lcom/metamoji/ctold/CtTaggedObjectFilter;)I
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;",
            "Lcom/metamoji/ctold/CtTaggedObjectFilter;",
            ")I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 772
    iget-object v3, v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v3

    .line 773
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->selectionCount()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    if-eqz v1, :cond_1

    .line 783
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v7, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto :goto_0

    .line 786
    :cond_1
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 787
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    move-object v8, v7

    const/4 v7, 0x0

    .line 791
    :goto_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 794
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 797
    iget-object v11, v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object v11

    .line 798
    iget-object v12, v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v12}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v12

    .line 799
    iget-object v13, v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v13

    .line 800
    invoke-virtual {v13}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getUnitId()Ljava/lang/String;

    move-result-object v14

    .line 801
    invoke-virtual {v13}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v15

    .line 802
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getAllSelections()Ljava/util/List;

    move-result-object v3

    .line 803
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 805
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupIds()Ljava/util/Set;

    move-result-object v16

    if-eqz v16, :cond_1e

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupIds()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v16

    if-lez v16, :cond_1e

    .line 806
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupIds()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 807
    invoke-virtual {v10, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    goto :goto_2

    .line 812
    :cond_2
    invoke-virtual {v10, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 815
    invoke-virtual {v11, v5}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMembersOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;

    move-result-object v17

    if-eqz v17, :cond_1d

    .line 816
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v18

    if-nez v18, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 821
    sget-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_MAXIMUM_GROUP:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    move-object/from16 v18, v3

    sget-object v3, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->GROUP:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    .line 823
    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->objectIdFromType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v3

    .line 821
    invoke-interface {v2, v0, v14, v3}, Lcom/metamoji/ctold/CtTaggedObjectFilter;->select(Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_4
    move-object/from16 v18, v3

    :goto_3
    if-eqz v1, :cond_5

    .line 825
    sget-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->GROUP:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    .line 827
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->groupFrameMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/cm/RectEx;

    .line 825
    invoke-static {v0, v5, v3, v15, v13}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->newTaggableObjectWithType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 831
    :cond_5
    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_6
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 837
    invoke-virtual {v9, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    goto :goto_5

    .line 840
    :cond_7
    invoke-virtual {v12, v3}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v17

    if-nez v17, :cond_8

    goto :goto_5

    .line 846
    :cond_8
    sget-object v19, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_UNKNOWN:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 849
    sget-object v19, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual/range {v17 .. v17}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v20

    move-object/from16 v21, v0

    aget v0, v19, v20

    move-object/from16 v19, v4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_a

    const/4 v4, 0x3

    if-eq v0, v4, :cond_a

    const/4 v4, 0x4

    if-eq v0, v4, :cond_9

    .line 864
    sget-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP_MEMBER_ELEM:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 865
    sget-object v4, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->objectIdFromType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 855
    :cond_9
    sget-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP_MEMBER_UNIT:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 856
    move-object/from16 v4, v17

    check-cast v4, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->unitId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v20, v8

    const/4 v8, 0x0

    goto :goto_7

    .line 860
    :cond_a
    sget-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP_MEMBER_SHAPE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 861
    sget-object v4, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->objectIdFromType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 851
    :cond_b
    sget-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP_MEMBER_STROKE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 852
    sget-object v4, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->objectIdFromType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v4

    :goto_6
    move-object/from16 v20, v8

    move-object v8, v4

    move-object v4, v14

    :goto_7
    if-eqz v2, :cond_c

    .line 870
    invoke-interface {v2, v0, v4, v8}, Lcom/metamoji/ctold/CtTaggedObjectFilter;->select(Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_c
    if-eqz v1, :cond_f

    if-eqz v8, :cond_d

    .line 874
    sget-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    .line 876
    invoke-virtual/range {v17 .. v17}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    .line 874
    invoke-static {v0, v3, v4, v15, v13}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->newTaggableObjectWithType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;

    move-result-object v0

    goto :goto_8

    .line 880
    :cond_d
    move-object/from16 v0, v17

    check-cast v0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->unit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_e

    .line 883
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    :cond_e
    invoke-virtual/range {v17 .. v17}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-virtual {v7, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 887
    :cond_f
    invoke-virtual {v6, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 892
    :cond_10
    :goto_9
    invoke-virtual {v9, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v19

    move-object/from16 v8, v20

    move-object/from16 v0, v21

    goto/16 :goto_5

    :cond_11
    move-object/from16 v19, v4

    move-object/from16 v20, v8

    .line 896
    invoke-virtual {v11, v5}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsIncludedInGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 897
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_10

    .line 900
    :cond_12
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 901
    invoke-virtual {v10, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_a

    .line 906
    :cond_14
    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 909
    invoke-virtual {v11, v3}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMembersOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 910
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_15

    goto :goto_a

    :cond_15
    if-eqz v2, :cond_17

    .line 915
    sget-object v5, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_GROUP:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    sget-object v8, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->GROUP:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    .line 917
    invoke-static {v8, v3}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->objectIdFromType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v8

    .line 915
    invoke-interface {v2, v5, v14, v8}, Lcom/metamoji/ctold/CtTaggedObjectFilter;->select(Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_c

    :cond_16
    move-object/from16 v21, v0

    :goto_b
    move-object/from16 v4, v20

    goto :goto_f

    :cond_17
    :goto_c
    if-eqz v1, :cond_1b

    .line 919
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v5

    .line 920
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 921
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    check-cast v0, Lcom/metamoji/cm/RectEx;

    if-eqz v0, :cond_18

    .line 923
    invoke-static {v5, v0, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    goto :goto_e

    .line 925
    :cond_18
    invoke-virtual {v12, v8}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v0

    if-eqz v0, :cond_19

    move-object/from16 v17, v0

    .line 927
    invoke-virtual/range {v17 .. v17}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    invoke-virtual/range {v17 .. v17}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    invoke-static {v5, v0, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    :cond_19
    :goto_e
    move-object/from16 v0, v21

    goto :goto_d

    :cond_1a
    move-object/from16 v21, v0

    .line 932
    sget-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->GROUP:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    invoke-static {v0, v3, v5, v15, v13}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->newTaggableObjectWithType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1b
    move-object/from16 v21, v0

    move-object/from16 v4, v20

    .line 938
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_f
    move-object/from16 v20, v4

    move-object/from16 v0, v21

    goto/16 :goto_a

    :cond_1c
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v8, v20

    goto/16 :goto_2

    :cond_1d
    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_1e
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object v4, v8

    const/4 v0, 0x0

    .line 946
    :goto_11
    invoke-virtual/range {v19 .. v19}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v3

    if-ge v0, v3, :cond_27

    move-object/from16 v3, v19

    .line 947
    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getElementAtOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v5

    .line 948
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    move/from16 v16, v0

    move-object/from16 v19, v3

    goto/16 :goto_16

    .line 953
    :cond_1f
    sget-object v8, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_UNKNOWN:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 956
    sget-object v8, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v16

    aget v8, v8, v16

    move/from16 v16, v0

    const/4 v0, 0x1

    if-eq v8, v0, :cond_22

    const/4 v0, 0x2

    if-eq v8, v0, :cond_21

    const/4 v0, 0x3

    if-eq v8, v0, :cond_21

    const/4 v0, 0x4

    if-eq v8, v0, :cond_20

    .line 971
    sget-object v8, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_ELEM:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 972
    sget-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    move-object/from16 v19, v3

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->objectIdFromType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_20
    move-object/from16 v19, v3

    .line 962
    sget-object v8, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_UNIT:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 963
    move-object v0, v5

    check-cast v0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->unitId()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    goto :goto_13

    :cond_21
    move-object/from16 v19, v3

    .line 967
    sget-object v8, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_SHAPE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 968
    sget-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->objectIdFromType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_22
    move-object/from16 v19, v3

    .line 958
    sget-object v8, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_STROKE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    .line 959
    sget-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->objectIdFromType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    move-object v3, v0

    move-object v0, v14

    :goto_13
    if-eqz v2, :cond_23

    .line 977
    invoke-interface {v2, v8, v0, v3}, Lcom/metamoji/ctold/CtTaggedObjectFilter;->select(Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_23
    if-eqz v1, :cond_25

    if-eqz v3, :cond_24

    .line 981
    sget-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v8

    invoke-static {v0, v3, v8, v15, v13}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->newTaggableObjectWithType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;

    move-result-object v0

    goto :goto_14

    .line 983
    :cond_24
    move-object v0, v5

    check-cast v0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->unit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    :goto_14
    if-eqz v0, :cond_26

    .line 986
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 989
    :cond_25
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 994
    :cond_26
    :goto_15
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_16
    add-int/lit8 v0, v16, 0x1

    goto/16 :goto_11

    :cond_27
    move-object/from16 v0, p0

    move-object v8, v4

    move-object/from16 v3, v18

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_28
    move-object v4, v8

    if-eqz v1, :cond_29

    .line 999
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_29
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public checkTaggedElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z
    .locals 8

    .line 136
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 140
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 144
    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 149
    :cond_2
    const-string v2, "EX!tagged"

    invoke-virtual {p1, v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->getExternalPropertyForName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-class v5, Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    .line 152
    iget-boolean v5, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_handlerEnablement:Z

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v5

    sget-object v6, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-eq v5, v6, :cond_3

    .line 153
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 157
    :cond_3
    iget-object v4, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getObjectFilterForTag()Lcom/metamoji/ctold/CtTaggedObjectFilter;

    move-result-object v4

    const/4 v5, 0x2

    if-nez v4, :cond_4

    .line 159
    invoke-static {v5, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 165
    :cond_4
    sget-object v6, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v3, :cond_7

    if-eq v6, v5, :cond_6

    const/4 v3, 0x3

    if-eq v6, v3, :cond_6

    const/4 v5, 0x4

    if-eq v6, v5, :cond_5

    .line 183
    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 178
    :cond_5
    sget-object v1, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_UNIT:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    move-object v3, p1

    check-cast v3, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    .line 179
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->unitId()Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-interface {v4, v1, v3, v0}, Lcom/metamoji/ctold/CtTaggedObjectFilter;->select(Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 173
    :cond_6
    sget-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_SHAPE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    .line 174
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->unitId()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    .line 175
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->objectIdFromType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-interface {v4, v0, v1, v3}, Lcom/metamoji/ctold/CtTaggedObjectFilter;->select(Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 167
    :cond_7
    sget-object v0, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->CT_OBJECT_STROKE:Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    .line 168
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->unitId()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    .line 169
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->objectIdFromType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-interface {v4, v0, v1, v3}, Lcom/metamoji/ctold/CtTaggedObjectFilter;->select(Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 188
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->setExternalPropertyForName(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public checkTaggedElementWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 2

    .line 194
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 198
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->checkTaggedElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result p1

    return p1
.end method

.method public checkTaggedGroupWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public destroy()V
    .locals 1

    .line 632
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 635
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    const/4 v0, 0x0

    .line 636
    iput-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    .line 637
    iput-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_objectListener:Lcom/metamoji/ctold/CtObjectListener;

    return-void
.end method

.method public getSelectedTaggableObjectCountByFilter(Lcom/metamoji/ctold/CtTaggedObjectFilter;)I
    .locals 1

    .line 362
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 365
    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->checkSelectedTaggableObjects(Ljava/util/ArrayList;Lcom/metamoji/ctold/CtTaggedObjectFilter;)I

    move-result p1

    return p1
.end method

.method public getSelectedTaggableObjectsByFilter(Lcom/metamoji/ctold/CtTaggedObjectFilter;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/CtTaggedObjectFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;"
        }
    .end annotation

    .line 373
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 376
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->checkSelectedTaggableObjects(Ljava/util/ArrayList;Lcom/metamoji/ctold/CtTaggedObjectFilter;)I

    move-result p1

    if-lez p1, :cond_1

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getTaggableObjectForElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/ctold/CtTaggableObject;
    .locals 4

    .line 238
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 242
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 246
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 249
    :cond_2
    sget-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    .line 261
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 259
    :cond_3
    check-cast p1, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->unit()Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    return-object p1

    .line 253
    :cond_4
    sget-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    .line 254
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    .line 255
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    iget-object v2, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    .line 256
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    .line 257
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v3

    .line 253
    invoke-static {v0, v1, p1, v2, v3}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->newTaggableObjectWithType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;

    move-result-object p1

    return-object p1
.end method

.method public getTaggableObjectForGroupWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Z)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;
    .locals 3

    .line 268
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 272
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p1, 0x1

    .line 276
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 279
    :cond_2
    sget-object v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    if-nez p2, :cond_4

    .line 281
    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMembersOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 282
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 283
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 284
    iget-object v2, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 286
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    goto :goto_0

    .line 291
    :cond_4
    sget-object p2, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->GROUP:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    .line 294
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    .line 295
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v2

    .line 291
    invoke-static {p2, p1, v0, v1, v2}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->newTaggableObjectWithType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;

    move-result-object p1

    return-object p1
.end method

.method public getTaggableObjectWithObjectId(Ljava/lang/String;Z)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;
    .locals 4

    .line 304
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 308
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 311
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->idFromObjectId(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 313
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 316
    :cond_2
    sget-object v3, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy$1;->$SwitchMap$com$metamoji$un$draw2$unit$tag$DrUnTaggableObject$Type:[I

    invoke-static {p1}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->typeFromObjectId(Ljava/lang/String;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ordinal()I

    move-result p1

    aget p1, v3, p1

    if-eq p1, v2, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    .line 352
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 330
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 331
    sget-object p1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    if-nez p2, :cond_5

    .line 333
    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getMembersOfGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/HashSet;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 334
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 335
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 336
    iget-object v2, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 338
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    goto :goto_0

    .line 343
    :cond_5
    sget-object p2, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->GROUP:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    .line 346
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    .line 347
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v2

    .line 343
    invoke-static {p2, v0, p1, v1, v2}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->newTaggableObjectWithType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;

    move-result-object p1

    return-object p1

    .line 318
    :cond_6
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p1

    if-eqz p1, :cond_8

    if-eqz p2, :cond_7

    .line 320
    sget-object p1, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 321
    :goto_1
    sget-object p2, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    .line 324
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    .line 325
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v2

    .line 321
    invoke-static {p2, v0, p1, v1, v2}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->newTaggableObjectWithType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;

    move-result-object p1

    return-object p1

    :cond_8
    :goto_2
    return-object v1
.end method

.method public handlerEnablement()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_handlerEnablement:Z

    return v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 40
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->invoke(Ljava/util/List;)V

    return-void
.end method

.method public invoke(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    .line 650
    instance-of v2, p1, Ljava/util/List;

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 656
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 659
    iget-object v3, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getUnitId()Ljava/lang/String;

    move-result-object v3

    .line 660
    iget-object v4, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v4

    .line 661
    iget-object v5, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v5

    .line 662
    iget-object v6, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v6

    .line 664
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/ctold/CtEventTagChanged;

    .line 668
    sget-object v8, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy$1;->$SwitchMap$com$metamoji$ctold$object$CtObjectType:[I

    invoke-virtual {v7}, Lcom/metamoji/ctold/CtEventTagChanged;->getObjectType()Lcom/metamoji/ctold/object/CtObjectType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/ctold/object/CtObjectType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v8, v10, :cond_3

    if-eq v8, v9, :cond_2

    goto :goto_1

    .line 703
    :cond_2
    iget-object v8, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v7}, Lcom/metamoji/ctold/CtEventTagChanged;->getObjectId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->getUnitElementByChildUnitControllerId(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    move-result-object v8

    .line 706
    invoke-virtual {v7}, Lcom/metamoji/ctold/CtEventTagChanged;->isExistTagInstance()Z

    move-result v7

    goto :goto_2

    .line 671
    :cond_3
    invoke-virtual {v7}, Lcom/metamoji/ctold/CtEventTagChanged;->getOwnerId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 673
    iget-object v8, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v7}, Lcom/metamoji/ctold/CtEventTagChanged;->getOwnerId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->getUnitElementByChildUnitControllerId(Ljava/lang/String;)Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 676
    invoke-virtual {v7}, Lcom/metamoji/ctold/CtEventTagChanged;->containsTagInstance()Z

    move-result v7

    goto :goto_2

    :cond_4
    move v7, v0

    goto :goto_2

    .line 683
    :cond_5
    invoke-virtual {v7}, Lcom/metamoji/ctold/CtEventTagChanged;->getObjectId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->typeFromObjectId(Ljava/lang/String;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    move-result-object v8

    sget-object v11, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    if-eq v8, v11, :cond_6

    .line 684
    invoke-static {v10, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 689
    :cond_6
    invoke-virtual {v7}, Lcom/metamoji/ctold/CtEventTagChanged;->getObjectId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->idFromObjectId(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    if-nez v8, :cond_7

    .line 691
    invoke-static {v9, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_1
    move v7, v0

    move-object v8, v1

    goto :goto_2

    .line 694
    :cond_7
    invoke-virtual {v4, v8}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v8

    .line 697
    invoke-virtual {v7}, Lcom/metamoji/ctold/CtEventTagChanged;->isExistTagInstance()Z

    move-result v7

    :goto_2
    if-nez v8, :cond_8

    goto :goto_0

    .line 718
    :cond_8
    const-string v11, "EX!tagged"

    if-eqz v7, :cond_9

    .line 719
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v11, v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->setExternalPropertyForName(Ljava/lang/String;Ljava/lang/Object;)V

    .line 722
    iget-object v7, v6, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseColor3:Ljava/lang/Integer;

    invoke-virtual {v8, v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->setHighlightBaseColor(Ljava/lang/Integer;)V

    goto :goto_4

    .line 724
    :cond_9
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v8, v11, v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->setExternalPropertyForName(Ljava/lang/String;Ljava/lang/Object;)V

    .line 727
    sget-object v7, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v11

    aget v7, v7, v11

    if-eq v7, v10, :cond_c

    if-eq v7, v9, :cond_b

    const/4 v9, 0x3

    if-eq v7, v9, :cond_b

    const/4 v10, 0x4

    if-eq v7, v10, :cond_a

    .line 744
    invoke-static {v9, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 745
    iget-object v7, v6, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseColor:Ljava/lang/Integer;

    invoke-virtual {v8, v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->setHighlightBaseColor(Ljava/lang/Integer;)V

    goto :goto_4

    .line 739
    :cond_a
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameFillColorR()I

    move-result v7

    .line 740
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameFillColorG()I

    move-result v9

    .line 741
    invoke-static {}, Lcom/metamoji/ui/UIUtils;->unitFrameFillColorB()I

    move-result v10

    .line 739
    invoke-static {v7, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->setHighlightBaseColor(Ljava/lang/Integer;)V

    goto :goto_4

    .line 735
    :cond_b
    iget-object v7, v6, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseColor2:Ljava/lang/Integer;

    invoke-virtual {v8, v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->setHighlightBaseColor(Ljava/lang/Integer;)V

    goto :goto_4

    .line 730
    :cond_c
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->isErasable()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, v6, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseColor:Ljava/lang/Integer;

    goto :goto_3

    :cond_d
    iget-object v7, v6, Lcom/metamoji/un/draw2/module/DrModuleSettings;->highlightBaseColor2:Ljava/lang/Integer;

    :goto_3
    invoke-virtual {v8, v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->setHighlightBaseColor(Ljava/lang/Integer;)V

    .line 751
    :goto_4
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElementWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 752
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v8

    if-nez v8, :cond_1

    .line 753
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 758
    :cond_e
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_10

    .line 759
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 760
    invoke-virtual {v5, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 762
    invoke-virtual {v5, v0}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    goto :goto_5

    :cond_10
    return-void

    .line 651
    :cond_11
    :goto_6
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public notifierEnablement()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_notifierEnablement:Z

    return v0
.end method

.method public notifyDividedElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 542
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 545
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_notifierEnablement:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 548
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 553
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 556
    :cond_3
    iget-object v1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v1

    .line 557
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    .line 558
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 559
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 560
    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 562
    sget-object v5, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    .line 563
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    .line 564
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v4

    .line 562
    invoke-static {v5, v6, v4, v2, v1}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->newTaggableObjectWithType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 569
    :cond_5
    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_objectListener:Lcom/metamoji/ctold/CtObjectListener;

    sget-object v0, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    sget-object v4, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-static {v0, p1, v4, v2, v1}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->newTaggableObjectWithType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;

    move-result-object p1

    invoke-interface {p2, p1, v3}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectDivided(Lcom/metamoji/ctold/CtTaggableObject;Ljava/util/List;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public notifyRemovedElementIds(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 474
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 477
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_notifierEnablement:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_5

    .line 480
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 485
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 488
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    .line 490
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 491
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 492
    sget-object v4, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    sget-object v5, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-static {v4, v3, v5, v1, v0}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->newTaggableObjectWithType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 498
    :cond_4
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_objectListener:Lcom/metamoji/ctold/CtObjectListener;

    invoke-interface {p1, v2}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsRemoving(Ljava/util/List;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public notifyRemovedGroupIds(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 502
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 505
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_notifierEnablement:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_5

    .line 508
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 511
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 513
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 516
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    .line 518
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 519
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 520
    sget-object v4, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->GROUP:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    sget-object v5, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-static {v4, v3, v5, v1, v0}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->newTaggableObjectWithType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    :cond_4
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_objectListener:Lcom/metamoji/ctold/CtObjectListener;

    invoke-interface {p1, v2}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsRemoving(Ljava/util/List;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public notifyRemovedUnit(Lcom/metamoji/nt/NtUnitController;)V
    .locals 1

    .line 526
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_notifierEnablement:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 532
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcUnit;->checkUnit(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 535
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_objectListener:Lcom/metamoji/ctold/CtObjectListener;

    invoke-interface {v0, p1}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectRemoving(Lcom/metamoji/ctold/CtTaggableObject;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public notifyUnifiedElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 581
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 584
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_notifierEnablement:Z

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 587
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 592
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 595
    :cond_3
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 596
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v0, v1, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->unit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 599
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    .line 601
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 602
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 603
    sget-object v4, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    sget-object v5, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull:Lcom/metamoji/cm/RectEx;

    invoke-static {v4, v3, v5, v1, v0}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->newTaggableObjectWithType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 609
    :cond_5
    sget-object p2, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v3

    aget p2, p2, v3

    const/4 v3, 0x1

    if-eq p2, v3, :cond_7

    const/4 v3, 0x2

    if-eq p2, v3, :cond_7

    const/4 v3, 0x3

    if-eq p2, v3, :cond_7

    const/4 v0, 0x4

    if-eq p2, v0, :cond_6

    goto :goto_1

    .line 621
    :cond_6
    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_objectListener:Lcom/metamoji/ctold/CtObjectListener;

    check-cast p1, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->unit()Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    invoke-interface {p2, v2, p1}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectUnificated(Ljava/util/List;Lcom/metamoji/ctold/CtTaggableObject;)V

    return-void

    .line 613
    :cond_7
    iget-object p2, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_objectListener:Lcom/metamoji/ctold/CtObjectListener;

    sget-object v3, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    .line 615
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    .line 616
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 614
    invoke-static {v3, v4, p1, v1, v0}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->newTaggableObjectWithType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;

    move-result-object p1

    .line 613
    invoke-interface {p2, v2, p1}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectUnificated(Ljava/util/List;Lcom/metamoji/ctold/CtTaggableObject;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public notifyUpdatedElementIds(Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 424
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 427
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_notifierEnablement:Z

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz p1, :cond_9

    .line 430
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 p1, 0x0

    .line 435
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 438
    :cond_3
    iget-object v2, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object v2

    .line 439
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    .line 440
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 441
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 442
    invoke-virtual {v0, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_0

    .line 447
    :cond_5
    sget-object v6, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x1

    if-eq v6, v7, :cond_7

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    const/4 v7, 0x3

    if-eq v6, v7, :cond_7

    const/4 v7, 0x4

    if-eq v6, v7, :cond_6

    move-object v5, v1

    goto :goto_1

    .line 458
    :cond_6
    check-cast v5, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/unit/DrUnitElement;->unit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v5

    goto :goto_1

    .line 451
    :cond_7
    sget-object v6, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;->ELEMENT:Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;

    .line 452
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    .line 453
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v5

    .line 451
    invoke-static {v6, v7, v5, v3, v2}, Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;->newTaggableObjectWithType(Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject$Type;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/cm/RectEx;Lcom/metamoji/df/sprite/Sprite;Lcom/metamoji/ctold/CtTaggableObject;)Lcom/metamoji/un/draw2/unit/tag/DrUnTaggableObject;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_4

    .line 464
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    :cond_8
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_objectListener:Lcom/metamoji/ctold/CtObjectListener;

    invoke-interface {p1, v4}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsGeometricChanged(Ljava/util/List;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public requireNotificationForDivide()Z
    .locals 2

    .line 403
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_objectListener:Lcom/metamoji/ctold/CtObjectListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public requireNotificationForRemove()Z
    .locals 2

    .line 396
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_objectListener:Lcom/metamoji/ctold/CtObjectListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public requireNotificationForUnify()Z
    .locals 2

    .line 410
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_objectListener:Lcom/metamoji/ctold/CtObjectListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public requireNotificationForUpdate()Z
    .locals 2

    .line 389
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_objectListener:Lcom/metamoji/ctold/CtObjectListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public setHandlerEnablement(Z)V
    .locals 4

    .line 91
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 95
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 96
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->addTagEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 97
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_handlerEnablement:Z

    return-void

    .line 99
    :cond_1
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 100
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_handlerEnablement:Z

    return-void

    .line 103
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 104
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_context:Lcom/metamoji/un/draw2/unit/DrUnUnitContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitContext;->controller()Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->removeTagEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V

    goto :goto_0

    .line 106
    :cond_3
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 108
    :goto_0
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_handlerEnablement:Z

    return-void
.end method

.method public setNotifierEnablement(Z)V
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 126
    iget-object p1, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_objectListener:Lcom/metamoji/ctold/CtObjectListener;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_notifierEnablement:Z

    return-void

    .line 128
    :cond_2
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/unit/tag/DrUnTagProxy;->m_notifierEnablement:Z

    return-void
.end method
