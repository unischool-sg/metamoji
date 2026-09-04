.class public Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;
.super Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
.source "DrSetExtraHandleVariationDirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;
    }
.end annotation


# static fields
.field private static final MODEL_PROPERTY_ELEMENT_ID:Ljava/lang/String; = "i"

.field private static final MODEL_PROPERTY_HANDLE_INDEX:Ljava/lang/String; = "h"

.field private static final MODEL_PROPERTY_NEXT_VARIATION:Ljava/lang/String; = "n"

.field private static final MODEL_PROPERTY_PREV_VARIATION:Ljava/lang/String; = "p"

.field private static final MODEL_TYPE_INTERNAL:Ljava/lang/String; = "i"


# instance fields
.field private m_internalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;",
            ">;"
        }
    .end annotation
.end field

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_updatedElementIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_variationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;-><init>()V

    return-void
.end method


# virtual methods
.method public afterSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 6

    .line 522
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->afterSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 525
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_variationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 531
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    .line 541
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    move v1, v2

    .line 546
    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_7

    .line 549
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    .line 552
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_variationMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 553
    const-string v3, "p"

    if-eqz v1, :cond_3

    if-eqz v2, :cond_6

    .line 556
    invoke-static {v3, v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDictionaryPropertyForName(Ljava/lang/String;Ljava/util/Map;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 560
    :cond_3
    const-string v4, "n"

    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->dictionaryPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 562
    invoke-static {v3, v5, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDictionaryPropertyForName(Ljava/lang/String;Ljava/util/Map;Lcom/metamoji/df/model/IModel;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 567
    invoke-static {v4, v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDictionaryPropertyForName(Ljava/lang/String;Ljava/util/Map;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 569
    :cond_5
    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 574
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_EXTRA_HANDLE_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 577
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 581
    :cond_7
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_variationMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public beforeSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 6

    .line 459
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->beforeSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 463
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

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

    .line 473
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    move v1, v2

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_variationMap:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 479
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_variationMap:Ljava/util/HashMap;

    .line 483
    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_7

    .line 486
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    .line 489
    const-string v2, "p"

    if-eqz v1, :cond_3

    .line 491
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->dictionaryPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 493
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 494
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_variationMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 498
    :cond_3
    const-string v3, "n"

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->dictionaryPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 500
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_variationMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :cond_4
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->dictionaryPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 506
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 507
    invoke-static {v3, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDictionaryPropertyForName(Ljava/lang/String;Ljava/util/Map;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 510
    :cond_5
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 515
    :cond_6
    :goto_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_7
    return-void
.end method

.method canSave_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method destroy_()V
    .locals 2

    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 445
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_internalMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 447
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_internalMap:Ljava/util/HashMap;

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_variationMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 450
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 451
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_variationMap:Ljava/util/HashMap;

    .line 453
    :cond_1
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 23

    move-object/from16 v0, p0

    .line 223
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    goto/16 :goto_17

    :cond_0
    return-object v2

    .line 231
    :cond_1
    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v8, :cond_7

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_3

    .line 247
    invoke-static {v7, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    if-eqz p1, :cond_2

    goto/16 :goto_17

    :cond_2
    return-object v2

    :cond_3
    move v1, v7

    goto :goto_0

    .line 241
    :cond_4
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_3

    move v1, v8

    :goto_0
    move v9, v1

    move v1, v7

    move v10, v1

    goto :goto_4

    :cond_5
    move v1, v7

    goto :goto_1

    :cond_6
    move v1, v8

    :goto_1
    move v9, v7

    :goto_2
    move v10, v8

    goto :goto_4

    .line 233
    :cond_7
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_8

    move v1, v8

    goto :goto_3

    :cond_8
    move v1, v7

    :goto_3
    move v9, v1

    move v1, v7

    goto :goto_2

    :goto_4
    if-nez v1, :cond_a

    if-eqz v9, :cond_9

    goto :goto_5

    :cond_9
    move-object v11, v2

    goto :goto_6

    .line 254
    :cond_a
    :goto_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 258
    :goto_6
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 261
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v13

    .line 262
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v14

    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v14

    .line 263
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v15

    .line 264
    iget-object v7, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_23

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;

    if-eqz v15, :cond_f

    .line 269
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->bySelf()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-virtual {v13, v15}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->checkCurrentCollaborationId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 271
    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    sget-object v5, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_EXTRA_HANDLE_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v13, v4, v5}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 274
    invoke-virtual {v15}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v18

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v20

    cmp-long v5, v18, v20

    if-nez v5, :cond_b

    .line 276
    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    sget-object v5, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_EXTRA_HANDLE_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v13, v4, v5, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_8

    .line 279
    :cond_b
    invoke-virtual {v15}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v18

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v4

    cmp-long v4, v18, v4

    if-gez v4, :cond_c

    goto :goto_9

    .line 283
    :cond_c
    invoke-static {v15}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_8

    .line 288
    :cond_d
    invoke-static {v15}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_8

    .line 292
    :cond_e
    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    sget-object v5, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ADD_REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v13, v4, v5, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 295
    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    sget-object v5, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v13, v4, v5, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 302
    :cond_f
    :goto_8
    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v4

    if-nez v4, :cond_11

    if-eqz v11, :cond_10

    .line 306
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_9
    const/4 v3, 0x5

    const/4 v4, 0x4

    :goto_a
    const/4 v5, 0x3

    goto :goto_7

    .line 313
    :cond_11
    instance-of v5, v4, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    if-nez v5, :cond_12

    .line 314
    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    invoke-static {v5, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v3, 0x5

    const/4 v4, 0x4

    goto/16 :goto_7

    :cond_12
    move-object/from16 v17, v2

    const/4 v5, 0x3

    .line 317
    move-object v2, v4

    check-cast v2, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    if-eqz v10, :cond_13

    .line 320
    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$mnextVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Ljava/util/Map;

    move-result-object v18

    goto :goto_b

    :cond_13
    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$mprevVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Ljava/util/Map;

    move-result-object v18

    :goto_b
    move-object/from16 v5, v18

    if-nez v5, :cond_14

    .line 322
    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move v4, v3

    move-object/from16 v2, v17

    const/4 v3, 0x5

    goto :goto_a

    :cond_14
    const/16 v16, 0x4

    .line 330
    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$mhandleIndex(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)I

    move-result v6

    invoke-interface {v2, v6}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getHandleAtIndex(I)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v6

    if-eqz v6, :cond_1f

    .line 333
    invoke-interface {v2, v6}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getVariationOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)Ljava/util/Map;

    move-result-object v8

    if-nez v1, :cond_16

    if-eqz v9, :cond_15

    goto :goto_c

    :cond_15
    move/from16 v21, v1

    move-object/from16 v22, v7

    const/4 v7, 0x5

    goto/16 :goto_12

    :cond_16
    :goto_c
    if-eqz v8, :cond_1b

    if-eqz v10, :cond_18

    .line 338
    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$mprevVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Ljava/util/Map;

    move-result-object v21

    if-eqz v21, :cond_17

    move/from16 v21, v1

    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$mprevVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2, v6, v1, v8}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->checkVariationsEqualityOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_d

    :cond_17
    move/from16 v21, v1

    .line 339
    :goto_d
    invoke-static {v3, v8}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$msetPrevVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;Ljava/util/Map;)V

    goto :goto_f

    :cond_18
    move/from16 v21, v1

    .line 343
    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$mnextVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$mnextVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v2, v6, v1, v8}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->checkVariationsEqualityOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_e

    :cond_19
    move-object/from16 v22, v7

    const/4 v7, 0x5

    goto :goto_10

    .line 344
    :cond_1a
    :goto_e
    invoke-static {v3, v8}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$msetNextVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;Ljava/util/Map;)V

    :goto_f
    move-object/from16 v22, v7

    const/4 v1, 0x1

    const/4 v7, 0x5

    goto :goto_11

    :cond_1b
    move/from16 v21, v1

    .line 349
    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v7

    const/4 v7, 0x5

    invoke-static {v7, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_10
    const/4 v1, 0x0

    :goto_11
    if-eqz v9, :cond_1d

    if-eqz v1, :cond_1d

    .line 353
    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_1d

    if-eqz v10, :cond_1c

    .line 355
    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->savePrevVariationToModel(Lcom/metamoji/df/model/IModel;)V

    goto :goto_12

    .line 357
    :cond_1c
    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->saveNextVariationToModel(Lcom/metamoji/df/model/IModel;)V

    .line 363
    :cond_1d
    :goto_12
    invoke-interface {v2, v6, v5, v8}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->checkVariationsEqualityOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Ljava/util/Map;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 364
    invoke-interface {v2, v6, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->setVariationOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Ljava/util/Map;)V

    const/4 v1, 0x1

    goto :goto_13

    :cond_1e
    const/4 v1, 0x0

    goto :goto_13

    :cond_1f
    move/from16 v21, v1

    move-object/from16 v22, v7

    const/4 v7, 0x5

    .line 369
    invoke-interface {v2, v5}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->applyUnknownVariation(Ljava/util/Map;)Z

    move-result v1

    :goto_13
    if-eqz v1, :cond_22

    .line 375
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 377
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-interface {v12, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_20
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_updatedElementIds:Ljava/util/HashSet;

    if-eqz v1, :cond_21

    .line 382
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_21
    const/4 v1, 0x1

    .line 386
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->setModifiedModel(Z)V

    .line 387
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->setModifiedCanvas(Z)V

    goto :goto_14

    :cond_22
    const/4 v1, 0x1

    :goto_14
    move v8, v1

    move v3, v7

    move/from16 v4, v16

    move-object/from16 v2, v17

    move/from16 v1, v21

    move-object/from16 v7, v22

    const/4 v5, 0x3

    const/4 v6, 0x2

    goto/16 :goto_7

    :cond_23
    move-object/from16 v17, v2

    if-eqz v11, :cond_25

    .line 392
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_25

    .line 393
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;

    .line 394
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_24

    .line 395
    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 396
    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeChild(Lcom/metamoji/df/model/IModel;)V

    goto :goto_15

    .line 402
    :cond_25
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_28

    .line 403
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v1

    .line 404
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 405
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v4

    if-nez v4, :cond_26

    .line 406
    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    goto :goto_16

    .line 409
    :cond_27
    invoke-interface {v12}, Ljava/util/Map;->clear()V

    :cond_28
    if-eqz p1, :cond_29

    :goto_17
    return-object v0

    :cond_29
    return-object v17
.end method

.method hasReverse_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method init_()Z
    .locals 1

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_internalMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    return v0
.end method

.method restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    .line 417
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 418
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 420
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection-IA;)V

    .line 421
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->restoreFromModel(Lcom/metamoji/df/model/IModel;)V

    .line 422
    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 423
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 425
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 427
    :goto_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method saveToModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_internalMap:Ljava/util/HashMap;

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

    check-cast v1, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;

    .line 435
    const-string v2, "i"

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 436
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->saveToModel(Lcom/metamoji/df/model/IModel;)V

    .line 437
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setExtraHandleVariation(Ljava/util/Map;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;",
            "I)V"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 154
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 158
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x2

    .line 162
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 165
    :cond_2
    instance-of v0, p2, Lcom/metamoji/un/draw2/module/element/DrElement;

    if-nez v0, :cond_3

    const/4 p1, 0x3

    .line 166
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 169
    :cond_3
    invoke-interface {p2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getHandleCount()I

    move-result v0

    if-lt p3, v0, :cond_4

    const/4 p1, 0x4

    .line 170
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 173
    :cond_4
    check-cast p2, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 174
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 p1, 0x5

    .line 175
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 180
    :cond_5
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;

    invoke-direct {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection-IA;)V

    .line 181
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$msetElementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 182
    invoke-static {v0, p3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$msetHandleIndex(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;I)V

    .line 183
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$msetNextVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;Ljava/util/Map;)V

    .line 186
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection$DrSetExtraHandleVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 195
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 208
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_EXTRA_HANDLE_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

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

    .line 194
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-object v0
.end method
