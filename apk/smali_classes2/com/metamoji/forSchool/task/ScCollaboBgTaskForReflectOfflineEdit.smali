.class public Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "ScCollaboBgTaskForReflectOfflineEdit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$Result;
    }
.end annotation


# instance fields
.field m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

.field m_editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

.field private m_removeMode:Z

.field private m_result:I

.field m_targetPageControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtPageController;",
            ">;"
        }
    .end annotation
.end field

.field m_waitingBoothID:Ljava/lang/String;

.field final m_waitingLocker:Ljava/lang/Object;

.field m_waitingModelProc:Lcom/metamoji/cm/CmTaskManager$IFinish;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 38
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_waitingLocker:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_removeMode:Z

    return-void
.end method

.method private processDispatchDirections(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {v0, p1}, Lcom/metamoji/ns/direction/NsDirectionManager;->isAttachedBooth(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 268
    new-instance v0, Lcom/metamoji/cm/ResetableEvent;

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/ResetableEvent;-><init>(ZZ)V

    .line 270
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v4

    new-instance v5, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$3;

    invoke-direct {v5, p0, p1, v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$3;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;Ljava/lang/String;Lcom/metamoji/cm/ResetableEvent;)V

    invoke-virtual {v4, v5, v3, v3}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 281
    invoke-virtual {v0}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 289
    :goto_0
    new-instance v4, Lcom/metamoji/cm/ResetableEvent;

    invoke-direct {v4, v1, v2}, Lcom/metamoji/cm/ResetableEvent;-><init>(ZZ)V

    .line 290
    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_waitingLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 291
    :try_start_0
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_waitingBoothID:Ljava/lang/String;

    .line 292
    new-instance v2, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$4;

    invoke-direct {v2, p0, v4}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$4;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;Lcom/metamoji/cm/ResetableEvent;)V

    iput-object v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_waitingModelProc:Lcom/metamoji/cm/CmTaskManager$IFinish;

    .line 298
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {v1, p1}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBooth(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v4}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V

    if-eqz v0, :cond_2

    .line 304
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$5;

    invoke-direct {v1, p0, p1, v4}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$5;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;Ljava/lang/String;Lcom/metamoji/cm/ResetableEvent;)V

    invoke-virtual {v0, v1, v3, v3}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 316
    invoke-virtual {v4}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V

    .line 318
    :cond_2
    const-string v0, "receiving finished. boothId = %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 298
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private processOneRestoredPageReceiveDirections(Lcom/metamoji/nt/NtPageController;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 207
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 211
    :cond_0
    const-string v2, "ScCollaboBgTaskForReflectOfflineEdit.processOneRestoredPageReceiveDirections %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->isCancelled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    .line 219
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 220
    invoke-direct {p0, v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->processDispatchDirections(Ljava/lang/String;)V

    .line 223
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 225
    invoke-static {v0}, Lcom/metamoji/nt/NtPageController;->getCommonLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-direct {p0, v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->processDispatchDirections(Ljava/lang/String;)V

    .line 231
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    .line 235
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 239
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_8

    .line 246
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 247
    const-string v2, "layerId"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 250
    invoke-direct {p0, v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->processDispatchDirections(Ljava/lang/String;)V

    .line 252
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    :cond_8
    return v1
.end method

.method private processOneRestoredPageReflectOfflineEdit(Lcom/metamoji/nt/NtPageController;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 325
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 329
    :cond_0
    const-string v0, "processOneRestoredPageReflectOfflineEdit.processOneRestoredPage"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->isCancelled()Z

    move-result v0

    const-string v1, "processOneRestoredPageReflectOfflineEdit.processOneRestoredPage: cancelled"

    if-eqz v0, :cond_1

    .line 332
    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 337
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->offlinePersonalLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 342
    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtLayerController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    if-nez v0, :cond_3

    goto/16 :goto_2

    .line 350
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6

    .line 351
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo()Ljava/util/Map;

    move-result-object v3

    .line 352
    const-string v6, "layerId"

    invoke-static {v3, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 353
    iget-boolean v6, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_removeMode:Z

    if-nez v6, :cond_4

    if-eqz v3, :cond_5

    .line 355
    const-string v6, "system:personal"

    invoke-virtual {p1, v6, v3}, Lcom/metamoji/nt/NtPageController;->layerIndexForType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 357
    invoke-virtual {p1, v6}, Lcom/metamoji/nt/NtPageController;->getLayer(I)Lcom/metamoji/nt/NtLayerController;

    move-result-object v6

    .line 358
    invoke-virtual {v6, v2}, Lcom/metamoji/nt/NtLayerController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    .line 360
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->elementCount()I

    move-result v7

    if-lez v7, :cond_4

    .line 361
    invoke-virtual {v0, v6, v4}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->transferAllElementsToUnitController(Lcom/metamoji/un/draw2/unit/DrUnUnitController;Lcom/metamoji/df/controller/EditContext;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v2, v5

    :cond_5
    move v5, v2

    goto :goto_0

    :cond_6
    move-object v3, v4

    :goto_0
    if-eqz v5, :cond_7

    .line 378
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->removeOfflinePersonalLayer()V

    if-eqz v3, :cond_8

    .line 380
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$6;

    invoke-direct {v2, p0, p1, v3}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$6;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;Lcom/metamoji/nt/NtPageController;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 388
    :cond_7
    const-string v0, "processOneRestoredPageReflectOfflineEdit.processOneRestoredPage: failed"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 392
    :cond_8
    :goto_1
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 393
    new-instance v2, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$7;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$7;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v0, v2, v4, v4}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 403
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 404
    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 4

    .line 414
    const-string v0, "processOneRestoredPageReflectOfflineEdit.cancel()"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 415
    invoke-super {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->cancel()Z

    move-result v0

    .line 416
    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_waitingLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 417
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_waitingModelProc:Lcom/metamoji/cm/CmTaskManager$IFinish;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 419
    iput-object v3, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_waitingBoothID:Ljava/lang/String;

    .line 420
    iput-object v3, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_waitingModelProc:Lcom/metamoji/cm/CmTaskManager$IFinish;

    .line 421
    invoke-interface {v2}, Lcom/metamoji/cm/CmTaskManager$IFinish;->finish()V

    .line 423
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 425
    iput v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_result:I

    return v0

    :catchall_0
    move-exception v0

    .line 423
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public connectionDisconnected()V
    .locals 1

    .line 452
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->cancel()Z

    const/4 v0, 0x2

    .line 453
    iput v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_result:I

    return-void
.end method

.method public getResult()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_result:I

    return v0
.end method

.method public logDataDoneAtBoothId(Ljava/lang/String;)V
    .locals 2

    .line 434
    const-string v0, "processOneRestoredPageReflectOfflineEdit, logDataDoneAtBoothId %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_waitingLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_waitingBoothID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 438
    iget-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_waitingModelProc:Lcom/metamoji/cm/CmTaskManager$IFinish;

    .line 439
    iput-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_waitingBoothID:Ljava/lang/String;

    .line 440
    iput-object v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_waitingModelProc:Lcom/metamoji/cm/CmTaskManager$IFinish;

    move-object v1, p1

    .line 442
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 444
    invoke-interface {v1}, Lcom/metamoji/cm/CmTaskManager$IFinish;->finish()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 442
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method processOnePageReflectOfflineEdit(Lcom/metamoji/nt/NtPageController;)V
    .locals 3

    .line 139
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ScCollaboBgTaskForReflectOfflineEdit.processOnePage: receive data of page %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 145
    :try_start_0
    new-instance v1, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$1;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runModalOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/controller/ControllerContext;

    .line 168
    const-string v2, "ScCollaboBgTaskForReflectOfflineEdit.processOnePage: restoreTemporary finished"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 170
    iget-boolean v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_removeMode:Z

    if-nez v2, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 173
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->processOneRestoredPageReceiveDirections(Lcom/metamoji/nt/NtPageController;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 181
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->processOneRestoredPageReflectOfflineEdit(Lcom/metamoji/nt/NtPageController;)V

    .line 185
    :cond_1
    new-instance v2, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit$2;-><init>(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/controller/ControllerContext;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->runModalOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 196
    const-string p1, "ScCollaboBgTaskForReflectOfflineEdit.processOnePage: turnInTemporary finished"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 198
    :catchall_0
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->cancel()Z

    return-void
.end method

.method public setRemoveMode(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_removeMode:Z

    return-void
.end method

.method public setTargetPageControllers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtPageController;",
            ">;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_targetPageControllers:Ljava/util/List;

    return-void
.end method

.method protected taskExec()V
    .locals 14

    .line 64
    const-string v0, "ScCollaboBgTaskForReflectOfflineEdit.taskExec: end"

    const/4 v1, 0x0

    iput v1, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_result:I

    .line 66
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_0
    return-void

    .line 76
    :cond_1
    const-string v4, "ScCollaboBgTaskForReflectOfflineEdit.taskExec: start"

    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v4

    .line 80
    iget-boolean v5, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_removeMode:Z

    if-eqz v5, :cond_2

    .line 81
    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DELETING_OFFLINE_EDIT:I

    invoke-virtual {v4, v5}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    goto :goto_1

    .line 83
    :cond_2
    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_REFLECTING_OFFLINE_EDIT:I

    invoke-virtual {v4, v5}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    :goto_1
    const/4 v5, 0x1

    .line 85
    invoke-virtual {v4, v5}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 87
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v6

    .line 88
    invoke-virtual {v6, v5}, Lcom/metamoji/ns/NsCollaboManager;->setLogModeProgressDisabled(Z)V

    .line 90
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/nt/NtDocument;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v5

    .line 91
    invoke-virtual {v5, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->setBgTaskForReflectOfflineEdit(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;)V

    const-wide/16 v7, 0x1f4

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 93
    :try_start_0
    iput-object v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    .line 94
    iput-object v5, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    const/4 v2, 0x0

    .line 96
    invoke-virtual {v4, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setProgress(F)V

    .line 97
    iget-object v2, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_targetPageControllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v11, v1

    :goto_2
    if-ge v11, v2, :cond_5

    .line 99
    iget-object v12, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_targetPageControllers:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/metamoji/nt/NtPageController;

    .line 100
    invoke-virtual {p0, v12}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->processOnePageReflectOfflineEdit(Lcom/metamoji/nt/NtPageController;)V

    .line 101
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v12

    if-nez v12, :cond_3

    .line 102
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->connectionDisconnected()V

    .line 104
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->isCancelled()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 105
    const-string v2, "ScCollaboBgTaskForReflectOfflineEdit.taskExec cancelled"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v11, 0x1

    int-to-float v12, v11

    int-to-float v13, v2

    div-float/2addr v12, v13

    .line 109
    invoke-virtual {v4, v12}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setProgress(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 112
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 113
    invoke-virtual {v3, v1}, Lcom/metamoji/nt/NtNoteController;->setIsOfflineEditMode(Z)V

    .line 115
    :cond_6
    invoke-virtual {v5, v10}, Lcom/metamoji/ns/direction/NsDirectionManager;->setBgTaskForReflectOfflineEdit(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;)V

    .line 117
    iput-object v10, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    .line 118
    iput-object v10, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 121
    invoke-virtual {v4, v9}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setProgress(F)V

    .line 122
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_7

    .line 124
    :try_start_1
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    :catch_0
    :cond_7
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v6, v1}, Lcom/metamoji/ns/NsCollaboManager;->setLogModeProgressDisabled(Z)V

    return-void

    :catchall_0
    move-exception v2

    .line 112
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_8

    .line 113
    invoke-virtual {v3, v1}, Lcom/metamoji/nt/NtNoteController;->setIsOfflineEditMode(Z)V

    .line 115
    :cond_8
    invoke-virtual {v5, v10}, Lcom/metamoji/ns/direction/NsDirectionManager;->setBgTaskForReflectOfflineEdit(Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;)V

    .line 117
    iput-object v10, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    .line 118
    iput-object v10, p0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 121
    invoke-virtual {v4, v9}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setProgress(F)V

    .line 122
    invoke-virtual {p0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_9

    .line 124
    :try_start_2
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 129
    :catch_1
    :cond_9
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v6, v1}, Lcom/metamoji/ns/NsCollaboManager;->setLogModeProgressDisabled(Z)V

    .line 132
    throw v2
.end method
