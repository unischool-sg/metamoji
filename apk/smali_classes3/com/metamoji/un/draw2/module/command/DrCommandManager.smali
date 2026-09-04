.class public Lcom/metamoji/un/draw2/module/command/DrCommandManager;
.super Ljava/lang/Object;
.source "DrCommandManager.java"


# instance fields
.field private m_autoDestroyCommand:Z

.field private m_closed:Z

.field private m_collaborationIdMaps:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;",
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

.field private m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

.field private m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

.field private m_delayCollaborationModelDestruction:Z

.field private m_destroyTargetModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field

.field private m_disableRegisterCommand:Z

.field private m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

.field private m_extraDataAcceptability:Z

.field private m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

.field private m_isExecutingCommand:Z

.field private m_sendOnlyExtraDataNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_sendOnlyReverseExtraDataNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_willSendCollaborationData:Z

.field private m_willSendCollaborationDataIndirectly:Z


# direct methods
.method public static synthetic $r8$lambda$Dlce2FVHvYs7x3VtB4uw4SovQmM(Lcom/metamoji/un/draw2/module/command/DrCommandManager;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->lambda$executeCommands$0(Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 59
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    .line 60
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->startCount()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->setPrefix(J)V

    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setAutoDestroyCommand(Z)V

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_delayCollaborationModelDestruction:Z

    return-void
.end method

.method public static generateDistinctTargetTypeFromDirectionType(Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;I)I
    .locals 1

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    const/4 p0, 0x0

    const/4 p1, 0x0

    .line 894
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 897
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->intValue()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    mul-int/2addr p0, v0

    add-int/2addr p0, p1

    return p0
.end method

.method private synthetic lambda$executeCommands$0(Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;Ljava/util/List;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 187
    monitor-enter p0

    .line 189
    :try_start_0
    iget-boolean v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_isExecutingCommand:Z

    const/4 v3, 0x4

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "DrCommand execution cannot be nested."

    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 200
    monitor-exit p0

    return-void

    :cond_0
    const/4 v4, 0x1

    .line 204
    iput-boolean v4, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_isExecutingCommand:Z

    .line 213
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->canvasQueueing()Z

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setCanvasQueueing(Z)V

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    .line 219
    :goto_0
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->undoManager()Lcom/metamoji/un/draw2/module/undo/DrUndoManager;

    move-result-object v7

    .line 220
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->REGISTER:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    if-ne v2, v0, :cond_2

    move v8, v4

    goto :goto_1

    :cond_2
    move v8, v5

    :goto_1
    if-eqz v8, :cond_3

    .line 222
    invoke-interface {v7}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->isRegistering()Z

    move-result v0

    if-nez v0, :cond_3

    .line 223
    invoke-interface {v7}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->beginRegistration()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v9, v4

    goto :goto_2

    :cond_3
    move v9, v5

    :goto_2
    const/4 v10, 0x0

    .line 230
    :try_start_1
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->UNDO:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    if-ne v2, v0, :cond_4

    invoke-static/range {p2 .. p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->reversedList(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object/from16 v0, p2

    .line 231
    :goto_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/metamoji/un/draw2/module/command/DrCommand;

    const/4 v0, 0x5

    if-nez v12, :cond_5

    .line 233
    invoke-static {v0, v10}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_4

    .line 238
    :cond_5
    iput-object v12, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    .line 242
    iput-boolean v5, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_extraDataAcceptability:Z

    .line 244
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/command/DrCommand;->isReversal()Z

    move-result v13

    const/4 v14, 0x3

    const/4 v15, 0x2

    if-eqz v13, :cond_b

    .line 245
    sget-object v13, Lcom/metamoji/un/draw2/module/command/DrCommandManager$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v16

    aget v13, v13, v16

    if-eq v13, v4, :cond_a

    if-eq v13, v15, :cond_9

    if-eq v13, v14, :cond_8

    if-eq v13, v3, :cond_7

    if-eq v13, v0, :cond_6

    goto :goto_5

    .line 254
    :cond_6
    iput-boolean v4, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_extraDataAcceptability:Z

    goto :goto_5

    .line 257
    :cond_7
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->UNDO:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    .line 259
    iput-boolean v4, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_extraDataAcceptability:Z

    goto :goto_7

    .line 262
    :cond_8
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->REDO:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    .line 263
    iput-boolean v4, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_extraDataAcceptability:Z

    goto :goto_6

    .line 251
    :cond_9
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->NORMAL:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    goto :goto_6

    .line 247
    :cond_a
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->REVERSE:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    goto :goto_7

    .line 269
    :cond_b
    sget-object v13, Lcom/metamoji/un/draw2/module/command/DrCommandManager$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v16

    aget v13, v13, v16

    if-eq v13, v15, :cond_f

    if-eq v13, v14, :cond_e

    if-eq v13, v3, :cond_d

    if-eq v13, v0, :cond_c

    goto :goto_5

    .line 276
    :cond_c
    iput-boolean v4, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_extraDataAcceptability:Z

    goto :goto_5

    .line 283
    :cond_d
    iput-boolean v4, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_extraDataAcceptability:Z

    :goto_5
    move-object v0, v2

    :goto_6
    move v13, v4

    goto :goto_8

    .line 280
    :cond_e
    iput-boolean v4, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_extraDataAcceptability:Z

    :cond_f
    move-object v0, v2

    :goto_7
    move v13, v5

    .line 291
    :goto_8
    invoke-virtual {v12, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setExecutionType(Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    if-eqz v13, :cond_10

    .line 294
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/command/DrCommand;->direction()Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v0

    goto :goto_9

    :cond_10
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/command/DrCommand;->reverseDirection()Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v0

    :goto_9
    iput-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    if-nez v0, :cond_11

    const/4 v0, 0x6

    .line 296
    invoke-static {v0, v10}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_4

    .line 301
    :cond_11
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaborating()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 302
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/command/DrCommand;->collaborationType()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    move-result-object v0

    sget-object v14, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->NONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    if-eq v0, v14, :cond_12

    .line 303
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/command/DrCommand;->collaborationTarget()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    move-result-object v0

    sget-object v14, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->NONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    if-eq v0, v14, :cond_12

    move v0, v4

    goto :goto_a

    :cond_12
    move v0, v5

    :goto_a
    iput-boolean v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_willSendCollaborationData:Z

    .line 306
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaboratingIndirectly()Z

    move-result v0

    iput-boolean v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_willSendCollaborationDataIndirectly:Z

    .line 309
    iget-boolean v14, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_willSendCollaborationData:Z

    if-nez v14, :cond_13

    if-eqz v0, :cond_14

    .line 310
    :cond_13
    iput-boolean v4, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_extraDataAcceptability:Z

    .line 314
    :cond_14
    iget-boolean v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_extraDataAcceptability:Z

    if-eqz v0, :cond_1b

    .line 315
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/command/DrCommand;->extraData()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_16

    if-eqz v8, :cond_15

    .line 316
    invoke-interface {v7}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->undoModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto :goto_b

    :cond_15
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    :goto_b
    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->newEmptyExtraDataWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setExtraData(Lcom/metamoji/df/model/IModel;)V

    .line 318
    :cond_16
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/command/DrCommand;->reverseExtraData()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_18

    if-eqz v8, :cond_17

    .line 319
    invoke-interface {v7}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->undoModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto :goto_c

    :cond_17
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    :goto_c
    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->newEmptyExtraDataWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setReverseExtraData(Lcom/metamoji/df/model/IModel;)V

    .line 323
    :cond_18
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_sendOnlyExtraDataNames:Ljava/util/HashSet;

    if-nez v0, :cond_19

    .line 324
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_sendOnlyExtraDataNames:Ljava/util/HashSet;

    goto :goto_d

    .line 326
    :cond_19
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 328
    :goto_d
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_sendOnlyReverseExtraDataNames:Ljava/util/HashSet;

    if-nez v0, :cond_1a

    .line 329
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_sendOnlyReverseExtraDataNames:Ljava/util/HashSet;

    goto :goto_e

    .line 331
    :cond_1a
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 336
    :cond_1b
    :goto_e
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    if-eqz v0, :cond_1c

    sget-object v14, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->DID_BEGIN_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    iget-object v15, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    .line 337
    invoke-interface {v0, v14, v12, v15}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->ignoreCommandEventType(Lcom/metamoji/un/draw2/module/command/DrCommandEventType;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 338
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    iget-object v14, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-interface {v0, v12, v14}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->handleDidBeginCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    :cond_1c
    if-eqz v8, :cond_29

    .line 346
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->hasReverse()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->canSave()Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_10

    .line 365
    :cond_1d
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    if-eqz v0, :cond_1e

    sget-object v14, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->WILL_EXECUTE_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    iget-object v15, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    .line 366
    invoke-interface {v0, v14, v12, v15}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->ignoreCommandEventType(Lcom/metamoji/un/draw2/module/command/DrCommandEventType;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 367
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    iget-object v14, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-interface {v0, v12, v14}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->handleWillExecuteCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    :cond_1e
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    if-eqz v13, :cond_1f

    .line 373
    :try_start_2
    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->executeAndCreateReverseDirection(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setReverseDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    goto :goto_f

    .line 375
    :cond_1f
    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->executeAndCreateReverseDirection(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_f

    :catch_0
    move-exception v0

    const/16 v14, 0x8

    .line 378
    :try_start_3
    invoke-static {v14, v10, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 382
    :goto_f
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    if-eqz v0, :cond_20

    sget-object v14, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->DID_EXECUTE_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    iget-object v15, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    .line 383
    invoke-interface {v0, v14, v12, v15}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->ignoreCommandEventType(Lcom/metamoji/un/draw2/module/command/DrCommandEventType;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 384
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    iget-object v14, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-interface {v0, v12, v14}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->handleDidExecuteCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 388
    :cond_20
    invoke-interface {v7}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->undoModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->newEmptyCommandModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 391
    invoke-virtual {v12, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->saveToModel(Lcom/metamoji/df/model/IModel;)Z

    .line 394
    iget-object v14, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    if-eqz v14, :cond_21

    sget-object v15, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->WILL_REGISTER_UNDO_MODEL:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    iget-object v3, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    .line 395
    invoke-interface {v14, v15, v12, v3}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->ignoreCommandEventType(Lcom/metamoji/un/draw2/module/command/DrCommandEventType;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 396
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    iget-object v14, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-interface {v3, v0, v12, v14}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->handleWillRegisterUndoModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 400
    :cond_21
    invoke-interface {v7, v0}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->registerUndoModel(Lcom/metamoji/df/model/IModel;)V

    .line 403
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    if-eqz v3, :cond_22

    sget-object v14, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->DID_REGISTER_UNDO_MODEL:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    iget-object v15, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    .line 404
    invoke-interface {v3, v14, v12, v15}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->ignoreCommandEventType(Lcom/metamoji/un/draw2/module/command/DrCommandEventType;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 405
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    iget-object v14, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-interface {v3, v0, v12, v14}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->handleDidRegisterUndoModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 409
    :cond_22
    iget-boolean v3, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_willSendCollaborationData:Z

    if-eqz v3, :cond_2b

    if-eqz v13, :cond_23

    .line 411
    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->getDirectionModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto :goto_13

    .line 413
    :cond_23
    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->getReverseDirectionModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    goto :goto_13

    :cond_24
    :goto_10
    const/4 v0, 0x7

    .line 347
    invoke-static {v0, v10}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 348
    iget-boolean v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_willSendCollaborationData:Z

    if-nez v0, :cond_25

    iget-boolean v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_willSendCollaborationDataIndirectly:Z

    if-eqz v0, :cond_26

    .line 349
    :cond_25
    iput-boolean v5, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_willSendCollaborationData:Z

    .line 350
    iput-boolean v5, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_willSendCollaborationDataIndirectly:Z

    .line 352
    :cond_26
    iget-boolean v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_extraDataAcceptability:Z

    if-eqz v0, :cond_27

    .line 353
    invoke-virtual {v12, v5}, Lcom/metamoji/un/draw2/module/command/DrCommand;->destroyExtraDataForReverse(Z)V

    .line 354
    invoke-virtual {v12, v4}, Lcom/metamoji/un/draw2/module/command/DrCommand;->destroyExtraDataForReverse(Z)V

    .line 355
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_sendOnlyExtraDataNames:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 356
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_sendOnlyReverseExtraDataNames:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 357
    iput-boolean v5, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_extraDataAcceptability:Z

    .line 359
    :cond_27
    iput-object v10, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    .line 360
    iput-object v10, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    :cond_28
    :goto_11
    const/4 v3, 0x4

    goto/16 :goto_4

    .line 418
    :cond_29
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    if-eqz v0, :cond_2a

    sget-object v3, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->WILL_EXECUTE_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    iget-object v13, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    .line 419
    invoke-interface {v0, v3, v12, v13}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->ignoreCommandEventType(Lcom/metamoji/un/draw2/module/command/DrCommandEventType;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 420
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    iget-object v3, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-interface {v0, v12, v3}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->handleWillExecuteCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 425
    :cond_2a
    :try_start_4
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-virtual {v0, v5}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->executeAndCreateReverseDirection(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_12

    :catch_1
    move-exception v0

    const/16 v3, 0x9

    .line 427
    :try_start_5
    invoke-static {v3, v10, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 431
    :goto_12
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    if-eqz v0, :cond_2b

    sget-object v3, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->DID_EXECUTE_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    iget-object v13, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    .line 432
    invoke-interface {v0, v3, v12, v13}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->ignoreCommandEventType(Lcom/metamoji/un/draw2/module/command/DrCommandEventType;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 433
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    iget-object v3, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-interface {v0, v12, v3}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->handleDidExecuteCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    :cond_2b
    move-object v0, v10

    .line 452
    :goto_13
    invoke-virtual {v12, v5}, Lcom/metamoji/un/draw2/module/command/DrCommand;->checkExtraDataPropertiesForReverse(Z)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 453
    invoke-virtual {v12, v5}, Lcom/metamoji/un/draw2/module/command/DrCommand;->destroyExtraDataForReverse(Z)V

    .line 455
    :cond_2c
    invoke-virtual {v12, v4}, Lcom/metamoji/un/draw2/module/command/DrCommand;->checkExtraDataPropertiesForReverse(Z)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 456
    invoke-virtual {v12, v4}, Lcom/metamoji/un/draw2/module/command/DrCommand;->destroyExtraDataForReverse(Z)V

    .line 460
    :cond_2d
    iget-boolean v3, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_willSendCollaborationData:Z

    if-eqz v3, :cond_2f

    .line 462
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    if-eqz v3, :cond_2e

    sget-object v13, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->WILL_SEND_COLLABORATION_DATA:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    iget-object v14, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    .line 463
    invoke-interface {v3, v13, v12, v14}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->ignoreCommandEventType(Lcom/metamoji/un/draw2/module/command/DrCommandEventType;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 464
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    iget-object v13, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-interface {v3, v0, v12, v13}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->handleWillSendCollaborationData(Ljava/lang/Object;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 468
    :cond_2e
    invoke-direct {v1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->sendDirectionModel(Lcom/metamoji/df/model/IModel;)V

    .line 471
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    if-eqz v3, :cond_2f

    sget-object v13, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->DID_SEND_COLLABORATION_DATA:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    iget-object v14, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    .line 472
    invoke-interface {v3, v13, v12, v14}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->ignoreCommandEventType(Lcom/metamoji/un/draw2/module/command/DrCommandEventType;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 473
    iget-object v3, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    iget-object v13, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-interface {v3, v0, v12, v13}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->handleDidSendCollaborationData(Ljava/lang/Object;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 478
    :cond_2f
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    if-eqz v0, :cond_30

    sget-object v3, Lcom/metamoji/un/draw2/module/command/DrCommandEventType;->WILL_END_COMMAND:Lcom/metamoji/un/draw2/module/command/DrCommandEventType;

    iget-object v13, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    .line 479
    invoke-interface {v0, v3, v12, v13}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->ignoreCommandEventType(Lcom/metamoji/un/draw2/module/command/DrCommandEventType;Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 480
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    iget-object v3, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-interface {v0, v12, v3}, Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;->handleWillEndCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V

    .line 484
    :cond_30
    iget-boolean v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_extraDataAcceptability:Z

    if-eqz v0, :cond_33

    .line 485
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_sendOnlyExtraDataNames:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 486
    invoke-virtual {v12, v3, v5}, Lcom/metamoji/un/draw2/module/command/DrCommand;->removeExtraDataPropertyForName(Ljava/lang/String;Z)V

    goto :goto_14

    .line 488
    :cond_31
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_sendOnlyReverseExtraDataNames:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 489
    invoke-virtual {v12, v3, v4}, Lcom/metamoji/un/draw2/module/command/DrCommand;->removeExtraDataPropertyForName(Ljava/lang/String;Z)V

    goto :goto_15

    .line 491
    :cond_32
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_sendOnlyExtraDataNames:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 492
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_sendOnlyReverseExtraDataNames:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 496
    :cond_33
    iput-boolean v5, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_willSendCollaborationData:Z

    .line 497
    iput-boolean v5, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_willSendCollaborationDataIndirectly:Z

    .line 498
    iput-boolean v5, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_extraDataAcceptability:Z

    .line 501
    iput-object v10, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    .line 504
    iput-object v10, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    .line 507
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->NONE:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {v12, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setExecutionType(Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    .line 510
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->autoDestroyCommand()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 511
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/command/DrCommand;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_11

    :cond_34
    if-eqz v9, :cond_35

    .line 518
    :try_start_6
    invoke-interface {v7}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->isRegistering()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 519
    invoke-interface {v7}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->endRegistration()V

    :cond_35
    if-eqz v6, :cond_37

    .line 524
    :goto_16
    iget-object v0, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0, v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setCanvasQueueing(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_17

    :catchall_0
    move-exception v0

    goto :goto_18

    :catch_2
    move-exception v0

    const/16 v2, 0xa

    .line 515
    :try_start_7
    invoke-static {v2, v10, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v9, :cond_36

    .line 518
    :try_start_8
    invoke-interface {v7}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->isRegistering()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 519
    invoke-interface {v7}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->endRegistration()V

    :cond_36
    if-eqz v6, :cond_37

    goto :goto_16

    .line 532
    :cond_37
    :goto_17
    monitor-exit p0

    return-void

    :goto_18
    if-eqz v9, :cond_38

    .line 518
    invoke-interface {v7}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->isRegistering()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 519
    invoke-interface {v7}, Lcom/metamoji/un/draw2/module/undo/DrUndoManager;->endRegistration()V

    :cond_38
    if-eqz v6, :cond_39

    .line 524
    iget-object v2, v1, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->setCanvasQueueing(Z)V

    .line 526
    :cond_39
    throw v0

    :catchall_1
    move-exception v0

    .line 532
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0
.end method

.method private sendDirectionModel(Lcom/metamoji/df/model/IModel;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 912
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->canSave()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 917
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->newEmptyDirectionModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 918
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-virtual {v3, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->saveToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 919
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 920
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    return-void

    :cond_1
    move v2, v0

    .line 926
    :cond_2
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->generateId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->setCollaborationId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 927
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->saveCollaborationIdToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 930
    sget-object v3, Lcom/metamoji/un/draw2/module/command/DrCommandManager$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v0, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    .line 945
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 940
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->reverseExtraData()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 941
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->reverseExtraData()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->saveAdditionalDataToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 934
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->extraData()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 935
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->extraData()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->saveAdditionalDataToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 950
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->beforeSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 953
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->collaborationManager()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/command/DrCommand;->collaborationType()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/DrCommand;->collaborationTarget()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    move-result-object v4

    invoke-interface {v0, p1, v3, v4}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationManager;->sendModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;)V

    .line 956
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->afterSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 959
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->setCollaborationId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 960
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->saveCollaborationIdToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 963
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->saveAdditionalDataToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    if-eqz v2, :cond_7

    .line 967
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_delayCollaborationModelDestruction:Z

    if-eqz v0, :cond_6

    .line 968
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_destroyTargetModels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 970
    :cond_6
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public allExtraDataPropertyNamesForReverse(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 761
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 762
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 763
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    if-nez v0, :cond_1

    .line 766
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 768
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandManager$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    .line 778
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 779
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_2
    xor-int/lit8 p1, p1, 0x1

    .line 781
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/DrCommand;->allExtraDataPropertyNamesForReverse(Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public autoDestroyCommand()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_autoDestroyCommand:Z

    return v0
.end method

.method public checkCurrentCollaborationId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 878
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 881
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->prefix()J

    move-result-wide v1

    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->prefix()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public checkExtraDataPropertiesForReverse(Z)Z
    .locals 5

    .line 713
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 714
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    if-nez v0, :cond_1

    return v2

    .line 720
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandManager$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/command/DrCommand;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    .line 730
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_2
    xor-int/lit8 p1, p1, 0x1

    .line 733
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/DrCommand;->checkExtraDataPropertiesForReverse(Z)Z

    move-result p1

    return p1
.end method

.method public currentExecutionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->NONE:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    return-object v0
.end method

.method public delayCollaborationModelDestruction()Z
    .locals 2

    .line 103
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 107
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_delayCollaborationModelDestruction:Z

    return v0
.end method

.method public destroy()V
    .locals 3

    .line 788
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 791
    :cond_0
    monitor-enter p0

    .line 792
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_isExecutingCommand:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 793
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 794
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 796
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_closed:Z

    .line 797
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 798
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    .line 799
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_idGenerator:Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;

    .line 800
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_collaborationIdMaps:Ljava/util/EnumMap;

    if-eqz v0, :cond_2

    .line 801
    invoke-virtual {v0}, Ljava/util/EnumMap;->clear()V

    .line 802
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_collaborationIdMaps:Ljava/util/EnumMap;

    .line 804
    :cond_2
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    .line 805
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    .line 806
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_destroyTargetModels:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 807
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    .line 808
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 810
    :cond_3
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_destroyTargetModels:Ljava/util/ArrayList;

    .line 812
    :cond_4
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_sendOnlyExtraDataNames:Ljava/util/HashSet;

    .line 813
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_sendOnlyReverseExtraDataNames:Ljava/util/HashSet;

    .line 814
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public disableRegisterCommand()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_disableRegisterCommand:Z

    return v0
.end method

.method public eventListener()Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    return-object v0
.end method

.method public executeCommand(Lcom/metamoji/un/draw2/module/command/DrCommand;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V
    .locals 3

    .line 144
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 149
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 152
    :cond_1
    new-array v0, v0, [Lcom/metamoji/un/draw2/module/command/DrCommand;

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->executeCommands(Ljava/util/List;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    return-void
.end method

.method public executeCommands(Ljava/util/List;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/module/command/DrCommand;",
            ">;",
            "Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;",
            ")V"
        }
    .end annotation

    .line 156
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 161
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 164
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_2

    .line 165
    invoke-static {v4, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 168
    :cond_2
    sget-object v3, Lcom/metamoji/un/draw2/module/command/DrCommandManager$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p2}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    if-eq v3, v0, :cond_4

    if-eq v3, v4, :cond_4

    const/4 v0, 0x3

    if-eq v3, v0, :cond_4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    .line 180
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 175
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->disableRegisterCommand()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    sget-object p2, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->NORMAL:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    .line 186
    :cond_4
    new-instance v0, Lcom/metamoji/un/draw2/module/command/DrCommandManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/metamoji/un/draw2/module/command/DrCommandManager$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/draw2/module/command/DrCommandManager;Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;Ljava/util/List;)V

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtApplicationUtility;->performActionOnMainThread(Ljava/lang/Runnable;)V

    .line 536
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_willSendCollaborationData:Z

    .line 537
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_willSendCollaborationDataIndirectly:Z

    .line 538
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_extraDataAcceptability:Z

    .line 539
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    .line 540
    iput-object v2, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    .line 541
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_sendOnlyExtraDataNames:Ljava/util/HashSet;

    if-eqz p1, :cond_5

    .line 542
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 544
    :cond_5
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_sendOnlyReverseExtraDataNames:Ljava/util/HashSet;

    if-eqz p1, :cond_6

    .line 545
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 549
    :cond_6
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_isExecutingCommand:Z

    return-void
.end method

.method public extraDataAcceptability()Z
    .locals 1

    .line 587
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_extraDataAcceptability:Z

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 71
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_closed:Z

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 76
    throw v0
.end method

.method public getExtraDataPropertyCountForReverse(Z)I
    .locals 5

    .line 737
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 738
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    if-nez v0, :cond_1

    return v2

    .line 744
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandManager$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/command/DrCommand;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    .line 754
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_2
    xor-int/lit8 p1, p1, 0x1

    .line 757
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/DrCommand;->getExtraDataPropertyCountForReverse(Z)I

    move-result p1

    return p1
.end method

.method public getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 4

    .line 635
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 636
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    return-object v1

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    if-nez v0, :cond_2

    return-object v1

    .line 645
    :cond_2
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandManager$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    .line 655
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_3
    xor-int/lit8 p2, p2, 0x1

    .line 658
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 855
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 858
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_collaborationIdMaps:Ljava/util/EnumMap;

    if-nez v1, :cond_1

    return-object v0

    .line 863
    :cond_1
    invoke-virtual {v1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    if-nez p2, :cond_2

    return-object v0

    .line 869
    :cond_2
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object p1
.end method

.method public isExecutingCommand()Z
    .locals 2

    .line 556
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 557
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 560
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_isExecutingCommand:Z

    return v0
.end method

.method public removeAllExtraDataPropertiesForReverse(Z)V
    .locals 4

    .line 689
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 690
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    if-nez v0, :cond_1

    return-void

    .line 696
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandManager$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    .line 706
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_2
    xor-int/lit8 p1, p1, 0x1

    .line 709
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/DrCommand;->removeAllExtraDataPropertiesForReverse(Z)V

    return-void
.end method

.method public removeExtraDataPropertyForName(Ljava/lang/String;Z)V
    .locals 4

    .line 662
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 663
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 669
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 672
    :cond_2
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandManager$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    .line 682
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_3
    xor-int/lit8 p2, p2, 0x1

    .line 685
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/un/draw2/module/command/DrCommand;->removeExtraDataPropertyForName(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAutoDestroyCommand(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_autoDestroyCommand:Z

    return-void
.end method

.method public setDelayCollaborationModelDestruction(Z)V
    .locals 2

    .line 110
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 111
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 114
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_delayCollaborationModelDestruction:Z

    if-ne p1, v0, :cond_1

    return-void

    .line 117
    :cond_1
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_delayCollaborationModelDestruction:Z

    if-eqz p1, :cond_2

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_destroyTargetModels:Ljava/util/ArrayList;

    return-void

    .line 121
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_destroyTargetModels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 122
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_destroyTargetModels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    .line 123
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 126
    :cond_3
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_destroyTargetModels:Ljava/util/ArrayList;

    return-void
.end method

.method public setDisableRegisterCommand(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_disableRegisterCommand:Z

    return-void
.end method

.method public setEventListener(Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_eventListener:Lcom/metamoji/un/draw2/module/command/DrCommandEventListener;

    return-void
.end method

.method public setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .locals 6

    .line 595
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 596
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 600
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 603
    :cond_1
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_extraDataAcceptability:Z

    const/4 v3, 0x2

    if-nez v2, :cond_2

    .line 604
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 607
    :cond_2
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    const/4 v4, 0x3

    if-nez v2, :cond_3

    .line 608
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 611
    :cond_3
    sget-object v2, Lcom/metamoji/un/draw2/module/command/DrCommandManager$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/command/DrCommand;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v5

    aget v2, v2, v5

    if-eq v2, v0, :cond_5

    if-eq v2, v3, :cond_4

    if-eq v2, v4, :cond_4

    const/4 v0, 0x4

    if-eq v2, v0, :cond_5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    .line 621
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_4
    xor-int/lit8 p3, p3, 0x1

    .line 624
    :cond_5
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_currentCommand:Lcom/metamoji/un/draw2/module/command/DrCommand;

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/command/DrCommand;->setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V

    if-eqz p4, :cond_7

    if-eqz p3, :cond_6

    .line 627
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_sendOnlyReverseExtraDataNames:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 629
    :cond_6
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_sendOnlyExtraDataNames:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 829
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_collaborationIdMaps:Ljava/util/EnumMap;

    if-nez v0, :cond_1

    .line 835
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_collaborationIdMaps:Ljava/util/EnumMap;

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_collaborationIdMaps:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 841
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 842
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_collaborationIdMaps:Ljava/util/EnumMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p3, :cond_3

    .line 847
    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 849
    :cond_3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public willSendCollaborationData()Z
    .locals 1

    .line 574
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_willSendCollaborationData:Z

    return v0
.end method

.method public willSendCollaborationDataIndirectly()Z
    .locals 1

    .line 581
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->m_willSendCollaborationDataIndirectly:Z

    return v0
.end method
