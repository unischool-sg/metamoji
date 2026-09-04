.class public Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;
.super Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
.source "DrBindUnbindDirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;
    }
.end annotation


# static fields
.field public static final MODEL_PROPERTY_ELEMENT_ID:Ljava/lang/String; = "i"

.field public static final MODEL_PROPERTY_NEXT_LINKAGE_MODEL:Ljava/lang/String; = "n"

.field public static final MODEL_PROPERTY_PREV_LINKAGE_MODEL:Ljava/lang/String; = "p"

.field public static final MODEL_TYPE_INTERNAL:Ljava/lang/String; = "i"


# instance fields
.field private m_elementIdInternalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;",
            ">;"
        }
    .end annotation
.end field

.field private m_elementIdLinkageModelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field

.field private m_model:Lcom/metamoji/df/model/IModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;-><init>()V

    return-void
.end method


# virtual methods
.method public afterSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 6

    .line 513
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->afterSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 517
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

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

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 527
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    move v2, v3

    .line 532
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_6

    .line 535
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    .line 538
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_elementIdLinkageModelMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/model/IModel;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_5

    .line 542
    invoke-static {p1, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setPrevLinkageModelToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 546
    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->getNextLinkageModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 548
    invoke-static {p1, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setPrevLinkageModelToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 553
    invoke-static {p1, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setNextLinkageModelToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    .line 555
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setNextLinkageModelToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 560
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v3

    sget-object v4, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->BIND_UNBIND:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 563
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 567
    :cond_6
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_elementIdLinkageModelMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public beforeSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 5

    .line 451
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->beforeSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 455
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

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

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    .line 465
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    move v2, v3

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_elementIdLinkageModelMap:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 471
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_elementIdLinkageModelMap:Ljava/util/HashMap;

    .line 475
    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_7

    .line 478
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v2, :cond_3

    .line 483
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->getPrevLinkageModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 485
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setPrevLinkageModelToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 486
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_elementIdLinkageModelMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 490
    :cond_3
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->getNextLinkageModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 492
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_elementIdLinkageModelMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_4
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->getPrevLinkageModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 498
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setNextLinkageModelToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 499
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setPrevLinkageModelToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    .line 501
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setNextLinkageModelToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 506
    :cond_6
    :goto_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_7
    return-void
.end method

.method protected canSave_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected destroy_()V
    .locals 1

    const/4 v0, 0x0

    .line 443
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 444
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_elementIdInternalMap:Ljava/util/HashMap;

    .line 445
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_elementIdLinkageModelMap:Ljava/util/HashMap;

    return-void
.end method

.method protected executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 14

    .line 261
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_elementIdInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto/16 :goto_c

    :cond_0
    return-object v1

    .line 269
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    .line 283
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    if-eqz p1, :cond_2

    goto/16 :goto_c

    :cond_2
    return-object v1

    :cond_3
    move v0, v2

    goto :goto_0

    .line 278
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_3

    move v0, v3

    :goto_0
    move v4, v0

    move v0, v2

    move v5, v0

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v3

    :goto_1
    move v4, v2

    :goto_2
    move v5, v3

    goto :goto_4

    .line 271
    :cond_7
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_8

    move v0, v3

    goto :goto_3

    :cond_8
    move v0, v2

    :goto_3
    move v4, v0

    move v0, v2

    goto :goto_2

    .line 291
    :goto_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->hasSelection()Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    goto :goto_5

    :cond_9
    move-object v6, v1

    .line 294
    :goto_5
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_elementIdInternalMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;

    .line 296
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->bySelf()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->checkCurrentCollaborationId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 298
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v9

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v10

    sget-object v11, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->BIND_UNBIND:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v9, v10, v11}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 302
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v10

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_b

    .line 304
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v9

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v10

    sget-object v11, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->BIND_UNBIND:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v9, v10, v11, v1}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_7

    .line 305
    :cond_b
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v10

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-gez v9, :cond_c

    goto :goto_6

    .line 310
    :cond_c
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-static {v9}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 316
    :cond_d
    :goto_7
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v9

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v9

    if-nez v9, :cond_e

    goto/16 :goto_6

    :cond_e
    if-eqz v0, :cond_f

    .line 323
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setPrevLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    goto/16 :goto_8

    :cond_f
    if-eqz v4, :cond_17

    if-eqz v5, :cond_13

    .line 326
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    if-eqz v10, :cond_12

    .line 327
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->prevLinkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    if-eqz v10, :cond_11

    .line 328
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->prevLinkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isEqualToLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 329
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setPrevLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 330
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->savePrevLinkageToModel(Lcom/metamoji/df/model/IModel;)V

    goto/16 :goto_8

    .line 332
    :cond_10
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setPrevLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    goto/16 :goto_8

    .line 335
    :cond_11
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setPrevLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 336
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->savePrevLinkageToModel(Lcom/metamoji/df/model/IModel;)V

    goto :goto_8

    .line 339
    :cond_12
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->prevLinkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    if-eqz v10, :cond_17

    .line 340
    invoke-virtual {v8, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setPrevLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 341
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->savePrevLinkageToModel(Lcom/metamoji/df/model/IModel;)V

    goto :goto_8

    .line 345
    :cond_13
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 346
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->nextLinkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    if-eqz v10, :cond_15

    .line 347
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->nextLinkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->isEqualToLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 348
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setNextLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 349
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->savePrevLinkageToModel(Lcom/metamoji/df/model/IModel;)V

    goto :goto_8

    .line 351
    :cond_14
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setNextLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    goto :goto_8

    .line 354
    :cond_15
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/element/DrElement;->linkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setNextLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 355
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->savePrevLinkageToModel(Lcom/metamoji/df/model/IModel;)V

    goto :goto_8

    .line 358
    :cond_16
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->nextLinkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    if-eqz v10, :cond_17

    .line 359
    invoke-virtual {v8, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setNextLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 360
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->savePrevLinkageToModel(Lcom/metamoji/df/model/IModel;)V

    :cond_17
    :goto_8
    if-eqz v5, :cond_18

    .line 367
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->nextLinkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    goto :goto_9

    :cond_18
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->prevLinkage()Lcom/metamoji/un/draw2/module/linkage/DrLinkage;

    move-result-object v10

    :goto_9
    if-eqz v10, :cond_1b

    .line 369
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v11

    invoke-virtual {v11, v9, v10, v3}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->setLinkageToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;Z)Z

    move-result v10

    if-eqz v10, :cond_19

    move v2, v3

    .line 374
    :cond_19
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->updateLinkageOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result v10

    if-eqz v10, :cond_1c

    if-eqz v4, :cond_1c

    if-eqz v5, :cond_1a

    .line 376
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->saveNextLinkageToModel(Lcom/metamoji/df/model/IModel;)V

    goto :goto_a

    .line 378
    :cond_1a
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->savePrevLinkageToModel(Lcom/metamoji/df/model/IModel;)V

    goto :goto_a

    .line 382
    :cond_1b
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/DrModuleContext;->linkageManager()Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/metamoji/un/draw2/module/linkage/DrLinkageManager;->removeLinkageFromElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    move-result v8

    if-eqz v8, :cond_1c

    move v2, v3

    :cond_1c
    :goto_a
    if-eqz v6, :cond_a

    .line 389
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 391
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_1d
    if-eqz v6, :cond_1f

    .line 397
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1f

    .line 398
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 399
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 400
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    goto :goto_b

    :cond_1f
    if-eqz v2, :cond_20

    .line 408
    invoke-virtual {p0, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->setModifiedModel(Z)V

    :cond_20
    if-eqz p1, :cond_21

    :goto_c
    return-object p0

    :cond_21
    return-object v1
.end method

.method protected hasReverse_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected init_()Z
    .locals 1

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_elementIdInternalMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    return v0
.end method

.method public removeLinkageFromElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V
    .locals 3

    .line 213
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 214
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 218
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 221
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 222
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 225
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_elementIdInternalMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    .line 226
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 231
    :cond_3
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;

    invoke-direct {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection-IA;)V

    .line 232
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 233
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_elementIdInternalMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    .line 416
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 417
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 419
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection-IA;)V

    .line 420
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->restoreFromModel(Lcom/metamoji/df/model/IModel;)V

    .line 421
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 422
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_elementIdInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 424
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 426
    :goto_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected saveToModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_elementIdInternalMap:Ljava/util/HashMap;

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

    check-cast v1, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;

    .line 434
    const-string v2, "i"

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 435
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->saveToModel(Lcom/metamoji/df/model/IModel;)V

    .line 436
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setLinkageToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V
    .locals 3

    .line 177
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 178
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 182
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 185
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 186
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x3

    .line 190
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 193
    :cond_3
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->targetCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/linkage/DrLinkage;->followerCriterion()Lcom/metamoji/un/draw2/module/linkage/DrLinkageCriterion;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_elementIdInternalMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 p1, 0x5

    .line 198
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 203
    :cond_5
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;

    invoke-direct {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection-IA;)V

    .line 204
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 205
    invoke-virtual {v0, p2}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection$DrBindUnbindInternal;->setNextLinkage(Lcom/metamoji/un/draw2/module/linkage/DrLinkage;)V

    .line 206
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->m_elementIdInternalMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    :goto_0
    const/4 p1, 0x4

    .line 194
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method protected type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 247
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->BIND_UNBIND:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    return-object v0
.end method
