.class public Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;
.super Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
.source "DrAddRemoveDirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;,
        Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;,
        Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrRestoreType;
    }
.end annotation


# static fields
.field private static final MODEL_PROPERTY_BASE_STROKE_ID:Ljava/lang/String; = "b"

.field private static final MODEL_PROPERTY_ELEMENT_ID:Ljava/lang/String; = "i"

.field private static final MODEL_PROPERTY_ELEMENT_MODEL:Ljava/lang/String; = "m"

.field private static final MODEL_PROPERTY_ELEMENT_ORDER:Ljava/lang/String; = "o"

.field private static final MODEL_PROPERTY_EXECUTION_TYPE:Ljava/lang/String; = "t"

.field private static final MODEL_PROPERTY_GROUPS:Ljava/lang/String; = "g"

.field private static final MODEL_PROPERTY_RESTORE_TYPE:Ljava/lang/String; = "r"

.field private static final MODEL_PROPERTY_STROKE_END_INDEX:Ljava/lang/String; = "e"

.field private static final MODEL_PROPERTY_STROKE_START_INDEX:Ljava/lang/String; = "s"

.field private static final MODEL_TYPE_INTERNAL:Ljava/lang/String; = "i"


# instance fields
.field private m_addedElementIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_elementIdExchangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_elementLinkageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/linkage/DrLinkage;",
            ">;"
        }
    .end annotation
.end field

.field private m_elementModelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field

.field private m_elementOrderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_groupsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_internals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;",
            ">;"
        }
    .end annotation
.end field

.field private m_linkageFollowerElementIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_linkageTargetElementIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_maintenanceLinkage:Z

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_removedElementIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_replacementMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;",
            ">;>;"
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

.field private m_updatedElementIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;-><init>()V

    return-void
.end method

.method private addElementWithInternal(Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;ZZ)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 848
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v2

    .line 849
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object v3

    .line 850
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v4

    .line 853
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->element:Lcom/metamoji/un/draw2/module/element/DrElement;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_4

    .line 855
    iget-object v4, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->element:Lcom/metamoji/un/draw2/module/element/DrElement;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 856
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementLinkageMap:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    .line 857
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->element:Lcom/metamoji/un/draw2/module/element/DrElement;

    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/module/element/DrElement;->setLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 861
    :cond_0
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->element:Lcom/metamoji/un/draw2/module/element/DrElement;

    iget v6, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementOrder:I

    invoke-virtual {v2, v5, v6}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    .line 864
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->element:Lcom/metamoji/un/draw2/module/element/DrElement;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    iput-object v2, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 867
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 868
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 869
    iget-object v6, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v3, v6, v5}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->addMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 874
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementLinkageMap:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    .line 875
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    :cond_2
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_addedElementIds:Ljava/util/HashSet;

    if-eqz v2, :cond_3

    .line 880
    iget-object v1, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_3
    invoke-virtual {v0, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->setModifiedModel(Z)V

    .line 885
    invoke-virtual {v0, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->setModifiedCanvas(Z)V

    return-void

    .line 891
    :cond_4
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const/4 v8, 0x0

    if-nez v5, :cond_5

    .line 892
    invoke-static {v8, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 895
    :cond_5
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    if-nez v5, :cond_6

    .line 896
    invoke-static {v7, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 901
    :cond_6
    invoke-direct {v0, v1, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->checkWhetherExecuteInternal(Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;Z)Z

    move-result v5

    if-nez v5, :cond_7

    goto/16 :goto_8

    .line 906
    :cond_7
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v5

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v5, :cond_1d

    .line 914
    iget-object v12, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    if-eqz v12, :cond_9

    .line 915
    iget-object v12, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v13, v8

    :cond_8
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 916
    iget-object v15, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v3, v15, v14}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 917
    iget-object v13, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v3, v13, v14}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->addMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    move v13, v7

    goto :goto_1

    :cond_9
    move v13, v8

    .line 924
    :cond_a
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v3

    sget-object v12, Lcom/metamoji/un/draw2/module/element/DrElementType;->UNIT:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v3, v12, :cond_18

    .line 925
    move-object v14, v5

    check-cast v14, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 936
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    invoke-static {v3}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getTranslateXFromModel(Lcom/metamoji/df/model/IModel;)F

    move-result v3

    .line 937
    iget-object v6, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    invoke-static {v6}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getTranslateYFromModel(Lcom/metamoji/df/model/IModel;)F

    move-result v6

    .line 938
    iget-object v12, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    invoke-static {v12}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getScaleWidthFromModel(Lcom/metamoji/df/model/IModel;)F

    move-result v12

    .line 939
    iget-object v15, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    invoke-static {v15}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getScaleHeightFromModel(Lcom/metamoji/df/model/IModel;)F

    move-result v15

    .line 940
    iget-object v8, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    invoke-static {v8}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getIsReversingXFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v8

    .line 941
    iget-object v7, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    invoke-static {v7}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->getIsReversingYFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v7

    .line 942
    iget-object v9, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/module/element/DrElement;->checkAngleInDegreesFromModel(Lcom/metamoji/df/model/IModel;F)F

    move-result v9

    .line 943
    iget-object v10, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    invoke-static {v10, v11}, Lcom/metamoji/un/draw2/module/element/DrElement;->checkContentScaleFromModel(Lcom/metamoji/df/model/IModel;F)F

    move-result v10

    .line 946
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateX()F

    move-result v18

    sub-float v3, v3, v18

    .line 947
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateY()F

    move-result v18

    sub-float v6, v6, v18

    .line 948
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleWidth()F

    move-result v18

    div-float v12, v12, v18

    .line 949
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleHeight()F

    move-result v18

    div-float v15, v15, v18

    .line 950
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingX()Z

    move-result v18

    xor-int v19, v8, v18

    .line 951
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingY()Z

    move-result v8

    xor-int v20, v7, v8

    .line 952
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v7

    sub-float/2addr v9, v7

    invoke-static {v9}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result v7

    .line 953
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->contentScale()F

    move-result v8

    div-float/2addr v10, v8

    const/4 v8, 0x0

    const/4 v9, 0x5

    .line 956
    invoke-static {v3, v8, v9}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v16

    if-eqz v16, :cond_b

    move v3, v8

    .line 959
    :cond_b
    invoke-static {v6, v8, v9}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v16

    if-eqz v16, :cond_c

    const/16 v16, 0x0

    goto :goto_2

    :cond_c
    move/from16 v16, v6

    .line 962
    :goto_2
    invoke-static {v12, v11, v9}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v6

    if-eqz v6, :cond_d

    move v12, v11

    .line 965
    :cond_d
    invoke-static {v15, v11, v9}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v6

    if-eqz v6, :cond_e

    move/from16 v18, v11

    goto :goto_3

    :cond_e
    move/from16 v18, v15

    :goto_3
    const/4 v8, 0x0

    .line 968
    invoke-static {v7, v8, v9}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v6

    if-eqz v6, :cond_f

    move/from16 v21, v8

    goto :goto_4

    :cond_f
    move/from16 v21, v7

    .line 971
    :goto_4
    invoke-static {v10, v11, v9}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v6

    if-eqz v6, :cond_10

    move/from16 v22, v11

    goto :goto_5

    :cond_10
    move/from16 v22, v10

    :goto_5
    cmpl-float v6, v3, v8

    if-nez v6, :cond_11

    cmpl-float v6, v16, v8

    if-nez v6, :cond_11

    cmpl-float v6, v12, v11

    if-nez v6, :cond_11

    cmpl-float v6, v18, v11

    if-nez v6, :cond_11

    if-nez v19, :cond_11

    if-nez v20, :cond_11

    cmpl-float v6, v21, v8

    if-nez v6, :cond_11

    cmpl-float v6, v22, v11

    if-eqz v6, :cond_12

    .line 978
    :cond_11
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDisableUndoRegistrationForUnit(Z)V

    move v15, v3

    move/from16 v17, v12

    .line 981
    invoke-virtual/range {v14 .. v22}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->applyVariationWithTranslate(FFFFZZFF)V

    .line 991
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setDisableUndoRegistrationForUnit(Z)V

    const/4 v13, 0x1

    .line 998
    :cond_12
    iget v3, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementOrder:I

    if-ltz v3, :cond_13

    .line 999
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->lastElementOrder()I

    move-result v6

    if-le v3, v6, :cond_14

    .line 1000
    :cond_13
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->lastElementOrder()I

    move-result v3

    .line 1004
    :cond_14
    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementByOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v6

    if-eq v6, v5, :cond_15

    .line 1005
    invoke-virtual {v2, v5, v3}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->changeOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z

    const/4 v13, 0x1

    .line 1010
    :cond_15
    iget-object v1, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    invoke-static {v1}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->restoreFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v1

    .line 1011
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1012
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->removeLinkageFromElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    :cond_16
    if-eqz v1, :cond_17

    .line 1015
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v2

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v1, v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->setLinkageToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;Z)Z

    goto :goto_7

    :cond_17
    const/4 v7, 0x1

    goto :goto_7

    .line 1019
    :cond_18
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    invoke-static {v3, v8, v7}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->equalCompletely(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;Z)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1021
    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 1024
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v7

    invoke-static {v3, v7, v6}, Lcom/metamoji/un/draw2/module/element/DrElement;->restoreElementFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    .line 1027
    iget v1, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementOrder:I

    invoke-virtual {v2, v3, v1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    .line 1030
    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 1032
    invoke-virtual {v1, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)I

    move-result v2

    if-ltz v2, :cond_19

    .line 1034
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->removeElementAtOrder(I)Z

    .line 1035
    invoke-virtual {v1, v3, v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z

    goto :goto_6

    :cond_19
    const/4 v2, 0x2

    .line 1037
    invoke-static {v2, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1038
    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    .line 1043
    :cond_1a
    :goto_6
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->destroy()V

    move-object v5, v3

    const/4 v13, 0x1

    :cond_1b
    :goto_7
    if-eqz v13, :cond_1f

    const/4 v7, 0x1

    .line 1056
    invoke-virtual {v0, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->setModifiedModel(Z)V

    .line 1057
    invoke-virtual {v0, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->setModifiedCanvas(Z)V

    .line 1060
    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 1062
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    :cond_1c
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_updatedElementIds:Ljava/util/HashSet;

    if-eqz v1, :cond_1f

    .line 1067
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 1075
    :cond_1d
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    invoke-static {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->getTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v5

    sget-object v7, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v5, v7, :cond_38

    .line 1076
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->intervalManager()Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

    move-result-object v23

    .line 1080
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-eqz v5, :cond_21

    .line 1082
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v5

    if-eqz v5, :cond_1e

    goto :goto_8

    .line 1087
    :cond_1e
    iget-wide v7, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeStartIndex:D

    iget-wide v9, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeEndIndex:D

    iget-object v5, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-object/from16 v28, v5

    move-wide/from16 v24, v7

    move-wide/from16 v26, v9

    invoke-virtual/range {v23 .. v28}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalContainingInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    if-eqz v5, :cond_20

    :cond_1f
    :goto_8
    return-void

    .line 1094
    :cond_20
    iget-wide v7, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeStartIndex:D

    iget-wide v9, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeEndIndex:D

    iget-object v5, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-object/from16 v28, v5

    move-wide/from16 v24, v7

    move-wide/from16 v26, v9

    invoke-virtual/range {v23 .. v28}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getSubIntervalsOfInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v5

    goto :goto_9

    :cond_21
    move-object/from16 v5, v23

    .line 1099
    iget-object v7, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v5, v7}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalsInGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v5

    :goto_9
    if-eqz v5, :cond_38

    .line 1103
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_38

    .line 1105
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v7}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getSortedElementsByAscending(ZLjava/util/Set;)Ljava/util/List;

    move-result-object v7

    if-eqz p3, :cond_22

    .line 1110
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_a

    :cond_22
    move-object v5, v6

    .line 1114
    :goto_a
    iget v8, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementOrder:I

    if-ltz v8, :cond_23

    .line 1115
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->lastElementOrder()I

    move-result v9

    if-le v8, v9, :cond_24

    .line 1116
    :cond_23
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->lastElementOrder()I

    move-result v8

    .line 1120
    :cond_24
    invoke-virtual {v2, v7, v8}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->changeOrderOfElements(Ljava/util/List;I)Z

    .line 1123
    iget-object v8, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    invoke-static {v8}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->getTransformFromModel(Lcom/metamoji/df/model/IModel;)Landroid/graphics/Matrix;

    move-result-object v8

    .line 1126
    iget-object v9, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/metamoji/un/draw2/module/element/DrElement;->checkAngleInDegreesFromModel(Lcom/metamoji/df/model/IModel;F)F

    move-result v9

    .line 1127
    iget-object v10, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    invoke-static {v10, v11}, Lcom/metamoji/un/draw2/module/element/DrElement;->checkContentScaleFromModel(Lcom/metamoji/df/model/IModel;F)F

    move-result v10

    .line 1130
    iget-object v12, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    invoke-static {v12}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->getPenStyleModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v12

    if-eqz v12, :cond_27

    .line 1134
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->getStyleByModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v13

    check-cast v13, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz v13, :cond_25

    .line 1138
    invoke-virtual {v13}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v12

    invoke-virtual {v13, v11, v12}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->cloneWithScale(FLcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v13

    goto :goto_b

    :cond_25
    if-nez v13, :cond_28

    .line 1142
    invoke-static {v12}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->restoreStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz v13, :cond_26

    .line 1144
    invoke-virtual {v13, v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_b

    :cond_26
    const/4 v11, 0x3

    .line 1146
    invoke-static {v11, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_b

    .line 1151
    :cond_27
    iget-object v11, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-static {v11}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    invoke-static {v12, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move-object v13, v6

    .line 1155
    :cond_28
    :goto_b
    iget-object v11, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    sget-object v12, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    if-eq v11, v12, :cond_29

    const/4 v11, 0x1

    goto :goto_c

    :cond_29
    const/4 v11, 0x0

    .line 1157
    :goto_c
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_35

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 1158
    check-cast v14, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    if-nez v14, :cond_2a

    const/4 v15, 0x5

    .line 1160
    invoke-static {v15, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_d

    :cond_2a
    const/4 v15, 0x5

    .line 1165
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->transform()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-static {v8, v6, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/Matrix;Landroid/graphics/Matrix;I)Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->angleInDegrees()F

    move-result v6

    invoke-static {v9, v6, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 1166
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->contentScale()F

    move-result v6

    invoke-static {v10, v6, v15}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v6

    if-nez v6, :cond_2b

    goto :goto_e

    :cond_2b
    move-object/from16 v19, v8

    goto :goto_f

    .line 1167
    :cond_2c
    :goto_e
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->inversion()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v6

    .line 1168
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->angleInDegrees()F

    move-result v17

    sub-float v17, v9, v17

    invoke-static/range {v17 .. v17}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result v15

    .line 1169
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->contentScale()F

    move-result v17

    move-object/from16 v19, v8

    div-float v8, v10, v17

    .line 1167
    invoke-virtual {v14, v6, v15, v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->applyVariationWithTransform(Landroid/graphics/Matrix;FF)V

    :goto_f
    if-eqz v13, :cond_2f

    .line 1174
    invoke-static {v14, v13}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->changePenStyleOfStrokeElement(Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    move-result-object v6

    if-eq v6, v14, :cond_2f

    .line 1179
    invoke-virtual {v2, v14}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)I

    move-result v8

    .line 1182
    invoke-virtual {v2, v14}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 1185
    invoke-virtual {v2, v6, v8}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    .line 1188
    invoke-virtual {v4, v14}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v8

    if-eqz v8, :cond_2e

    .line 1190
    invoke-virtual {v8, v14}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)I

    move-result v15

    if-ltz v15, :cond_2d

    .line 1192
    invoke-virtual {v8, v15}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->removeElementAtOrder(I)Z

    .line 1193
    invoke-virtual {v8, v6, v15}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z

    goto :goto_10

    :cond_2d
    const/4 v15, 0x6

    move/from16 v17, v9

    const/4 v9, 0x0

    .line 1195
    invoke-static {v15, v9}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1196
    invoke-virtual {v8, v6}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    goto :goto_11

    :cond_2e
    :goto_10
    move/from16 v17, v9

    .line 1201
    :goto_11
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->destroy()V

    move-object v14, v6

    goto :goto_12

    :cond_2f
    move/from16 v17, v9

    .line 1209
    :goto_12
    iget-object v6, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    if-eqz v6, :cond_30

    .line 1210
    iget-object v6, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_30

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1211
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-virtual {v3, v9, v8}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->addMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_13

    :cond_30
    if-eqz p3, :cond_32

    .line 1217
    new-instance v6, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;

    invoke-direct {v6}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;-><init>()V

    .line 1218
    const-string v8, "i"

    iget-object v9, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->model:Lcom/metamoji/df/model/IModel;

    invoke-static {v8, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v8

    iput-object v8, v6, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->model:Lcom/metamoji/df/model/IModel;

    .line 1219
    iget-object v8, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    iput-object v8, v6, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    .line 1220
    iput-object v14, v6, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->element:Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 1221
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    iput-object v8, v6, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1222
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v8

    iput-object v8, v6, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    .line 1223
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    const/4 v15, 0x0

    invoke-virtual {v3, v9, v15, v15}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;ZZ)Ljava/util/HashSet;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, v6, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    .line 1224
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v8

    iput-wide v8, v6, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeStartIndex:D

    .line 1225
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v8

    iput-wide v8, v6, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeEndIndex:D

    .line 1226
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    iput-object v8, v6, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1227
    iget-object v8, v6, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v6, v8}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->saveToModel(Lcom/metamoji/df/model/IModel;)V

    if-eqz v11, :cond_31

    .line 1229
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_31
    const/4 v15, 0x0

    .line 1231
    invoke-virtual {v5, v15, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1236
    :cond_32
    :goto_14
    invoke-virtual {v4, v14}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v6

    if-eqz v6, :cond_33

    .line 1238
    iget-object v8, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    :cond_33
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_updatedElementIds:Ljava/util/HashSet;

    if-eqz v6, :cond_34

    .line 1243
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_34
    move/from16 v9, v17

    move-object/from16 v8, v19

    const/4 v6, 0x0

    goto/16 :goto_d

    :cond_35
    if-eqz p3, :cond_37

    const/4 v15, 0x0

    .line 1250
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/element/DrElement;

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)I

    move-result v2

    .line 1253
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v8, v15

    :goto_15
    if-ge v8, v3, :cond_36

    .line 1254
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;

    add-int v6, v2, v8

    .line 1255
    iput v6, v4, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementOrder:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    .line 1259
    :cond_36
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_replacementMap:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    const/4 v7, 0x1

    .line 1263
    invoke-virtual {v0, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->setModifiedModel(Z)V

    .line 1264
    invoke-virtual {v0, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->setModifiedCanvas(Z)V

    return-void

    .line 1271
    :cond_38
    iget-object v4, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v5

    const/4 v9, 0x0

    invoke-static {v4, v5, v9}, Lcom/metamoji/un/draw2/module/element/DrElement;->restoreElementFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v4

    .line 1274
    iget v5, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementOrder:I

    invoke-virtual {v2, v4, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    .line 1277
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    if-eqz v2, :cond_39

    .line 1278
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1279
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v3, v5, v4}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->addMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_16

    .line 1284
    :cond_39
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_addedElementIds:Ljava/util/HashSet;

    if-eqz v2, :cond_3a

    .line 1285
    iget-object v1, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3a
    const/4 v7, 0x1

    .line 1289
    invoke-virtual {v0, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->setModifiedModel(Z)V

    .line 1290
    invoke-virtual {v0, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->setModifiedCanvas(Z)V

    return-void
.end method

.method private checkWhetherExecuteInternal(Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;Z)Z
    .locals 11

    .line 1502
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 1514
    :cond_0
    iget-wide v1, p1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeStartIndex:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    const/4 v2, 0x0

    if-ltz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1517
    :goto_0
    iget-object v3, p1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 1520
    iget-object p1, p1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-nez p1, :cond_3

    move-object p1, v3

    goto :goto_1

    :cond_2
    move-object p1, v4

    .line 1527
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v5

    .line 1528
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->bySelf()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1530
    invoke-virtual {v5, p2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->checkCurrentCollaborationId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1532
    sget-object v6, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ADD_REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v5, v3, v6}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1537
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gtz v7, :cond_5

    .line 1539
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v9

    cmp-long v6, v7, v9

    if-nez v6, :cond_4

    move v6, v0

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    move v7, v2

    goto :goto_3

    .line 1542
    :cond_5
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_6
    move v7, v0

    move v6, v2

    :goto_3
    if-eqz v1, :cond_a

    .line 1553
    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v5, p1, v1}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1558
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v7

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gtz v7, :cond_8

    .line 1560
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v7

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v9

    cmp-long p2, v7, v9

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    move v1, v0

    goto :goto_5

    .line 1563
    :cond_8
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_9
    move v1, v2

    move v2, v0

    :goto_5
    move v0, v6

    goto :goto_6

    :cond_a
    move v0, v6

    move v2, v7

    goto :goto_6

    :cond_b
    move v2, v0

    :goto_6
    if-eqz v0, :cond_c

    .line 1578
    sget-object p2, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ADD_REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v5, v3, p2, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    :cond_c
    if-eqz v1, :cond_d

    .line 1581
    sget-object p2, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v5, p1, p2, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    :cond_d
    return v2
.end method

.method private removeElementWithInternal(Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;ZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1294
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v2

    .line 1295
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object v3

    .line 1296
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v4

    .line 1299
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_0

    .line 1300
    invoke-static {v7, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 1305
    :cond_0
    invoke-direct {v0, v1, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->checkWhetherExecuteInternal(Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;Z)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_8

    .line 1310
    :cond_1
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v5

    const/4 v8, 0x1

    if-eqz v5, :cond_10

    .line 1315
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v6

    iget-object v9, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    invoke-static {v6, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->equals(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1317
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    iput-object v9, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    .line 1321
    :cond_2
    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)I

    move-result v9

    .line 1322
    iget v10, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementOrder:I

    if-eq v9, v10, :cond_3

    move v9, v8

    goto :goto_0

    :cond_3
    move v9, v7

    :goto_0
    if-eqz v9, :cond_4

    .line 1324
    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)I

    move-result v10

    iput v10, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementOrder:I

    .line 1328
    :cond_4
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v10

    invoke-virtual {v3, v10, v7, v7}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;ZZ)Ljava/util/HashSet;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 1331
    iget-object v11, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    if-eqz v11, :cond_6

    .line 1332
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v11

    iget-object v12, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ne v11, v12, :cond_6

    .line 1333
    iget-object v11, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1334
    invoke-interface {v10, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    :cond_6
    :goto_1
    move v7, v8

    goto :goto_2

    .line 1346
    :cond_7
    iget-object v11, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    if-eqz v11, :cond_8

    goto :goto_1

    :cond_8
    :goto_2
    if-eqz v7, :cond_9

    .line 1349
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    :cond_9
    if-eqz p3, :cond_c

    if-nez v6, :cond_a

    .line 1355
    iget-object v6, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->saveElementModelToModel(Lcom/metamoji/df/model/IModel;)V

    :cond_a
    if-eqz v9, :cond_b

    .line 1358
    iget-object v6, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->saveElementOrderToModel(Lcom/metamoji/df/model/IModel;)V

    :cond_b
    if-eqz v7, :cond_c

    .line 1361
    iget-object v6, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->saveGroupsToModel(Lcom/metamoji/df/model/IModel;)V

    .line 1366
    :cond_c
    iget-object v6, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    if-eqz v6, :cond_d

    iget-object v1, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 1367
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->removeMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1371
    :cond_d
    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1373
    invoke-virtual {v1, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 1374
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    :cond_e
    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 1381
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_removedElementIds:Ljava/util/HashSet;

    if-eqz v1, :cond_f

    .line 1382
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1386
    :cond_f
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->destroy()V

    .line 1389
    invoke-virtual {v0, v8}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->setModifiedModel(Z)V

    .line 1390
    invoke-virtual {v0, v8}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->setModifiedCanvas(Z)V

    return-void

    .line 1396
    :cond_10
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->intervalManager()Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

    move-result-object v9

    .line 1398
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-eqz v5, :cond_13

    .line 1400
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v5

    if-eqz v5, :cond_11

    goto/16 :goto_8

    .line 1405
    :cond_11
    iget-wide v10, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeStartIndex:D

    iget-wide v12, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeEndIndex:D

    iget-object v14, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual/range {v9 .. v14}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalContainingInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    if-eqz v5, :cond_12

    goto/16 :goto_8

    .line 1412
    :cond_12
    iget-wide v10, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeStartIndex:D

    iget-wide v12, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeEndIndex:D

    iget-object v14, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual/range {v9 .. v14}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getSubIntervalsOfInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v5

    goto :goto_3

    .line 1417
    :cond_13
    iget-object v5, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v9, v5}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalsInGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_1d

    .line 1421
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_14

    goto/16 :goto_8

    .line 1426
    :cond_14
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v7, v9}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getSortedElementOrdersByAscending(ZLjava/util/Set;)Ljava/util/List;

    move-result-object v5

    if-eqz p3, :cond_15

    .line 1431
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_4

    :cond_15
    move-object v9, v6

    .line 1435
    :goto_4
    iget-object v10, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    sget-object v11, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    if-eq v10, v11, :cond_16

    move v10, v8

    goto :goto_5

    :cond_16
    move v10, v7

    .line 1436
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 1438
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1441
    invoke-virtual {v2, v11}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementByOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v12

    check-cast v12, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    if-nez v12, :cond_17

    .line 1443
    invoke-static {v8, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_6

    :cond_17
    if-eqz p3, :cond_19

    .line 1449
    new-instance v13, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;

    invoke-direct {v13}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;-><init>()V

    .line 1450
    const-string v14, "i"

    iget-object v15, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->model:Lcom/metamoji/df/model/IModel;

    invoke-static {v14, v15}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v14

    iput-object v14, v13, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->model:Lcom/metamoji/df/model/IModel;

    .line 1451
    iget-object v14, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    iput-object v14, v13, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    .line 1452
    iput-object v12, v13, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->element:Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 1453
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v14

    iput-object v14, v13, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1454
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v14

    iput-object v14, v13, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    .line 1455
    iput v11, v13, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementOrder:I

    .line 1456
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v14

    invoke-virtual {v3, v14, v7, v7}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;ZZ)Ljava/util/HashSet;

    move-result-object v14

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v13, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    .line 1457
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v14

    iput-wide v14, v13, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeStartIndex:D

    .line 1458
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v14

    iput-wide v14, v13, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeEndIndex:D

    .line 1459
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v11

    iput-object v11, v13, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1460
    iget-object v11, v13, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {v13, v11}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->saveToModel(Lcom/metamoji/df/model/IModel;)V

    if-eqz v10, :cond_18

    .line 1462
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1464
    :cond_18
    invoke-virtual {v9, v7, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1469
    :cond_19
    :goto_7
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->removeMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1472
    invoke-virtual {v4, v12}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v11

    if-eqz v11, :cond_1a

    .line 1474
    invoke-virtual {v11, v12}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 1475
    iget-object v13, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v14

    invoke-virtual {v13, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    :cond_1a
    invoke-virtual {v2, v12}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 1482
    iget-object v11, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_removedElementIds:Ljava/util/HashSet;

    if-eqz v11, :cond_1b

    .line 1483
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1487
    :cond_1b
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->destroy()V

    .line 1490
    invoke-virtual {v0, v8}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->setModifiedModel(Z)V

    .line 1491
    invoke-virtual {v0, v8}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->setModifiedCanvas(Z)V

    goto/16 :goto_6

    :cond_1c
    if-eqz p3, :cond_1d

    .line 1496
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_replacementMap:Ljava/util/HashMap;

    iget-object v1, v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v2, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    :goto_8
    return-void
.end method


# virtual methods
.method public addElement(Lcom/metamoji/un/draw2/module/element/DrElement;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/module/element/DrElement;",
            "I",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 293
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 294
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 298
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    if-gez p2, :cond_2

    const/4 p2, -0x1

    .line 306
    :cond_2
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;-><init>()V

    .line 307
    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    iput-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    .line 308
    iput-object p1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->element:Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 309
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    .line 310
    iput p2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementOrder:I

    .line 311
    iput-object p3, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->groups:Ljava/util/List;

    .line 312
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object p2

    sget-object p3, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne p2, p3, :cond_3

    .line 313
    check-cast p1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    .line 314
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide p2

    iput-wide p2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeStartIndex:D

    .line 315
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide p2

    iput-wide p2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeEndIndex:D

    .line 316
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 320
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_internals:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addedElementIds()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_addedElementIds:Ljava/util/HashSet;

    return-object v0
.end method

.method public afterSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 10

    .line 762
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->afterSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 766
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

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

    .line 776
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    move v4, v2

    :cond_1
    if-nez v4, :cond_2

    .line 782
    const-string v0, "r"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 786
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    .line 787
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    .line 788
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_b

    .line 791
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    if-nez v5, :cond_3

    .line 793
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 794
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 799
    :cond_3
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->getExecutionTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    move-result-object v6

    if-eqz v4, :cond_4

    .line 800
    sget-object v7, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    if-eq v6, v7, :cond_5

    :cond_4
    if-nez v4, :cond_8

    sget-object v7, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    if-ne v6, v7, :cond_8

    .line 802
    :cond_5
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementModelMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/df/model/IModel;

    if-nez v6, :cond_6

    .line 804
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 807
    :cond_6
    const-string v7, "m"

    invoke-static {v7, v6, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 810
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementOrderMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_7

    .line 812
    const-string v7, "o"

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v7, v6, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    .line 816
    :cond_7
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_8

    .line 818
    const-string v7, "g"

    invoke-static {v7, v6, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    .line 823
    :cond_8
    sget-object v6, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ADD_REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v0, v5, v6, v3}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 826
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->getStrokeStartIndexFromModel(Lcom/metamoji/df/model/IModel;)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_a

    .line 827
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->getBaseStrokeIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    if-nez v6, :cond_9

    goto :goto_1

    :cond_9
    move-object v5, v6

    .line 831
    :goto_1
    sget-object v6, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v0, v5, v6, v3}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 835
    :cond_a
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 839
    :cond_b
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementModelMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 840
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementOrderMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 841
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public beforeSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 8

    .line 674
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->beforeSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 678
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    .line 688
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    move v5, v3

    :cond_1
    if-nez v5, :cond_2

    .line 694
    const-string v0, "r"

    sget-object v4, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrRestoreType;->REVERSE:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrRestoreType;

    invoke-static {v0, v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementModelMap:Ljava/util/HashMap;

    if-nez v0, :cond_3

    .line 699
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementModelMap:Ljava/util/HashMap;

    .line 700
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementOrderMap:Ljava/util/HashMap;

    .line 701
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_groupsMap:Ljava/util/HashMap;

    .line 705
    :cond_3
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_a

    .line 708
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->getExecutionTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    move-result-object v0

    if-eqz v5, :cond_4

    .line 712
    sget-object v4, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    if-ne v0, v4, :cond_5

    .line 713
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 717
    :cond_4
    sget-object v4, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    if-ne v0, v4, :cond_5

    .line 718
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 724
    :cond_5
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-nez v0, :cond_6

    .line 726
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 727
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 732
    :cond_6
    const-string v4, "m"

    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v6

    if-nez v6, :cond_7

    .line 734
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 735
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 738
    :cond_7
    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 739
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementModelMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, -0x1

    .line 742
    const-string v6, "o"

    invoke-static {v6, v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)I

    move-result v4

    if-ltz v4, :cond_8

    .line 744
    invoke-static {v6, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 745
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementOrderMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    :cond_8
    const-string v4, "g"

    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 750
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 751
    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 752
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_groupsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    :cond_9
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_a
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

    .line 634
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 635
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_internals:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 636
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 637
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_internals:Ljava/util/ArrayList;

    .line 639
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_replacementMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 640
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 641
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_replacementMap:Ljava/util/HashMap;

    .line 643
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_selectionMap:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 644
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 645
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_selectionMap:Ljava/util/HashMap;

    .line 647
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementModelMap:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 648
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 649
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementModelMap:Ljava/util/HashMap;

    .line 651
    :cond_3
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementOrderMap:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    .line 652
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 653
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementOrderMap:Ljava/util/HashMap;

    .line 655
    :cond_4
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementLinkageMap:Ljava/util/HashMap;

    if-eqz v1, :cond_5

    .line 656
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 657
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementLinkageMap:Ljava/util/HashMap;

    .line 659
    :cond_5
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_groupsMap:Ljava/util/HashMap;

    if-eqz v1, :cond_6

    .line 660
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 661
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_groupsMap:Ljava/util/HashMap;

    .line 663
    :cond_6
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_addedElementIds:Ljava/util/HashSet;

    .line 664
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_removedElementIds:Ljava/util/HashSet;

    .line 665
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_updatedElementIds:Ljava/util/HashSet;

    .line 666
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementIdExchangeMap:Ljava/util/HashMap;

    .line 667
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_linkageFollowerElementIds:Ljava/util/HashSet;

    .line 668
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_linkageTargetElementIds:Ljava/util/HashSet;

    return-void
.end method

.method public elementIdExchangeMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementIdExchangeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method protected executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 9

    .line 430
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_internals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto/16 :goto_8

    :cond_0
    return-object v1

    .line 437
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    if-eq v0, v2, :cond_6

    const/4 v5, 0x3

    if-eq v0, v5, :cond_6

    const/4 v5, 0x4

    if-eq v0, v5, :cond_3

    const/4 v5, 0x5

    if-eq v0, v5, :cond_4

    .line 451
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    if-eqz p1, :cond_2

    goto/16 :goto_8

    :cond_2
    return-object v1

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0

    .line 439
    :cond_5
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_6

    move v3, v4

    :cond_6
    move v0, v3

    move v3, v4

    :goto_0
    if-eqz v0, :cond_7

    .line 457
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_replacementMap:Ljava/util/HashMap;

    .line 461
    :cond_7
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementIdExchangeMap:Ljava/util/HashMap;

    if-eqz v5, :cond_8

    .line 462
    iget-boolean v5, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_maintenanceLinkage:Z

    if-eqz v5, :cond_8

    .line 463
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementLinkageMap:Ljava/util/HashMap;

    .line 483
    :cond_8
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_internals:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    .line 469
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;

    .line 470
    iget-object v6, v5, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;->ordinal()I

    move-result v6

    if-eqz v6, :cond_a

    if-eq v6, v4, :cond_9

    .line 478
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 475
    :cond_9
    invoke-direct {p0, v5, v3, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->removeElementWithInternal(Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;ZZ)V

    goto :goto_1

    .line 472
    :cond_a
    invoke-direct {p0, v5, v3, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->addElementWithInternal(Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;ZZ)V

    goto :goto_1

    .line 483
    :cond_b
    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->reversedList(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;

    .line 484
    iget-object v7, v6, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;->ordinal()I

    move-result v7

    if-eqz v7, :cond_d

    if-eq v7, v4, :cond_c

    .line 492
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    .line 489
    :cond_c
    invoke-direct {p0, v6, v3, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->addElementWithInternal(Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;ZZ)V

    goto :goto_2

    .line 486
    :cond_d
    invoke-direct {p0, v6, v3, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->removeElementWithInternal(Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;ZZ)V

    goto :goto_2

    .line 499
    :cond_e
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementIdExchangeMap:Ljava/util/HashMap;

    if-eqz v2, :cond_14

    .line 500
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_10

    .line 501
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementIdExchangeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 502
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementIdExchangeMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-class v6, Lcom/metamoji/un/draw2/module/element/DrElement;

    invoke-static {v5, v6}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/module/element/DrElement;

    if-eqz v5, :cond_f

    .line 503
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 504
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementIdExchangeMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 510
    :cond_10
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementLinkageMap:Ljava/util/HashMap;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 511
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementLinkageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 512
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v5

    if-nez v5, :cond_12

    goto :goto_4

    .line 516
    :cond_12
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementLinkageMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    .line 517
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementIdExchangeMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-class v8, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-static {v7, v8}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-eqz v7, :cond_13

    .line 519
    invoke-virtual {v6, v7}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->setTargetId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 520
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v4}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->setLinkageToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;Z)Z

    .line 523
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_linkageTargetElementIds:Ljava/util/HashSet;

    if-eqz v5, :cond_13

    .line 524
    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_13
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_linkageFollowerElementIds:Ljava/util/HashSet;

    if-eqz v5, :cond_11

    .line 530
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_14
    if-eqz v0, :cond_18

    .line 537
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_replacementMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 542
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeChildren(Lcom/metamoji/df/model/IModel;)V

    .line 545
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_internals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;

    .line 546
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_replacementMap:Ljava/util/HashMap;

    iget-object v5, v3, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_16

    .line 548
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;

    .line 549
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    iget-object v4, v4, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->model:Lcom/metamoji/df/model/IModel;

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v4, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_6

    .line 553
    :cond_16
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v3, v3, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->model:Lcom/metamoji/df/model/IModel;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_5

    .line 559
    :cond_17
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_internals:Ljava/util/ArrayList;

    .line 563
    :cond_18
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 564
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    .line 565
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 566
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v4

    if-nez v4, :cond_19

    .line 567
    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    goto :goto_7

    .line 570
    :cond_1a
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_1b
    if-eqz p1, :cond_1c

    :goto_8
    return-object p0

    :cond_1c
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

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_internals:Ljava/util/ArrayList;

    .line 409
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_selectionMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    return v0
.end method

.method public linkageFollowerElementIds()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 398
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_linkageFollowerElementIds:Ljava/util/HashSet;

    return-object v0
.end method

.method public linkageTargetElementIds()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_linkageTargetElementIds:Ljava/util/HashSet;

    return-object v0
.end method

.method public maintenanceLinkage()Z
    .locals 1

    .line 389
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_maintenanceLinkage:Z

    return v0
.end method

.method public removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V
    .locals 3

    .line 328
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 329
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 333
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 336
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 337
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 342
    :cond_2
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;-><init>()V

    .line 343
    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    iput-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    .line 344
    iput-object p1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->element:Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 345
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 346
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->elementModel:Lcom/metamoji/df/model/IModel;

    .line 347
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne v1, v2, :cond_3

    .line 348
    check-cast p1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    .line 349
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeStartIndex:D

    .line 350
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->strokeEndIndex:D

    .line 351
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 355
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_internals:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removedElementIds()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_removedElementIds:Ljava/util/HashSet;

    return-object v0
.end method

.method protected restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 4

    .line 578
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 581
    const-string v0, "r"

    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrRestoreType;->NORMAL:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrRestoreType;

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrRestoreType;

    .line 585
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrRestoreType;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    .line 592
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    move v2, v1

    :cond_1
    if-eqz v2, :cond_2

    .line 599
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->lastChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_7

    .line 601
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;-><init>()V

    .line 602
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->restoreFromModel(Lcom/metamoji/df/model/IModel;)V

    if-nez v2, :cond_5

    .line 604
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;->ordinal()I

    move-result v3

    if-eqz v3, :cond_4

    if-eq v3, v1, :cond_3

    goto :goto_1

    .line 609
    :cond_3
    sget-object v3, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    iput-object v3, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    goto :goto_1

    .line 606
    :cond_4
    sget-object v3, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    iput-object v3, v0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->executionType:Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrExecutionType;

    .line 615
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_internals:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_6

    .line 616
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

    .line 624
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_internals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;

    .line 625
    const-string v2, "i"

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 626
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection$DrAddRemoveInternal;->saveToModel(Lcom/metamoji/df/model/IModel;)V

    .line 627
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setAddedElementIds(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 364
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_addedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method public setElementIdExchangeMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 378
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_elementIdExchangeMap:Ljava/util/HashMap;

    return-void
.end method

.method public setLinkageFollowerElementIds(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 399
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_linkageFollowerElementIds:Ljava/util/HashSet;

    return-void
.end method

.method public setLinkageTargetElementIds(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 401
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_linkageTargetElementIds:Ljava/util/HashSet;

    return-void
.end method

.method public setMaintenanceLinkage(Z)V
    .locals 0

    .line 390
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_maintenanceLinkage:Z

    return-void
.end method

.method public setRemovedElementIds(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 366
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_removedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method public setUpdatedElementIds(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 368
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method protected type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 415
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ADD_REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    return-object v0
.end method

.method public updatedElementIds()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-object v0
.end method
