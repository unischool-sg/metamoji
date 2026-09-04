.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForReceiveAllData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$Result;
    }
.end annotation


# instance fields
.field protected m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

.field protected m_editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

.field protected m_result:I

.field m_targetPageControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
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

    .line 49
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 39
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_waitingLocker:Ljava/lang/Object;

    return-void
.end method

.method private processOneRestoredPage(Lcom/metamoji/nt/NtPageController;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 191
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    .line 193
    const-string v1, "ReceiveAllData.processOneRestoredPage %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->processOneRestoredPageInner(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    const-string p1, "ReceiveAllData.processOneRestoredPage: cancelled"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 210
    :cond_1
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->processOneRestoredPageForSchool(Lcom/metamoji/nt/NtPageController;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return-void

    .line 217
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    .line 218
    new-instance v2, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$4;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;Lcom/metamoji/nt/NtPageController;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v1, v2, p1, p1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method private processOneRestoredPageForSchool(Lcom/metamoji/nt/NtPageController;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 327
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {v0}, Lcom/metamoji/nt/NtPageController;->getCommonLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->processOneRestoredPageInner(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 339
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfoList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPersonalLayerInfo()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 351
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 352
    const-string v2, "layerId"

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 355
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->processOneRestoredPageInner(Ljava/lang/String;)V

    .line 357
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public cancel()Z
    .locals 4

    .line 268
    const-string v0, "ReceiveAllData.cancel()"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 269
    invoke-super {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->cancel()Z

    move-result v0

    .line 270
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_waitingLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 271
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_waitingModelProc:Lcom/metamoji/cm/CmTaskManager$IFinish;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 273
    iput-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_waitingBoothID:Ljava/lang/String;

    .line 274
    iput-object v3, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_waitingModelProc:Lcom/metamoji/cm/CmTaskManager$IFinish;

    .line 275
    invoke-interface {v2}, Lcom/metamoji/cm/CmTaskManager$IFinish;->finish()V

    .line 276
    const-string v2, "ReceiveAllData.cancel / call finish()"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 278
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 279
    iput v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_result:I

    return v0

    :catchall_0
    move-exception v0

    .line 278
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public connectionDisconnected()V
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->cancel()Z

    const/4 v0, 0x2

    .line 307
    iput v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_result:I

    return-void
.end method

.method public getResult()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_result:I

    return v0
.end method

.method public logDataDoneAtBoothId(Ljava/lang/String;)V
    .locals 2

    .line 288
    const-string v0, "ReceiveAllData, logDataDoneAtBoothId %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_waitingLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_waitingBoothID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 292
    iget-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_waitingModelProc:Lcom/metamoji/cm/CmTaskManager$IFinish;

    .line 293
    iput-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_waitingBoothID:Ljava/lang/String;

    .line 294
    iput-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_waitingModelProc:Lcom/metamoji/cm/CmTaskManager$IFinish;

    move-object v1, p1

    .line 296
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 298
    invoke-interface {v1}, Lcom/metamoji/cm/CmTaskManager$IFinish;->finish()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 296
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 0

    .line 119
    invoke-super {p0, p1, p2}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->onCompleted(ZLjava/lang/Throwable;)V

    .line 122
    iget p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_result:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 123
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$1;

    invoke-direct {p2, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method processOnePage(Lcom/metamoji/nt/NtPageController;)V
    .locals 3

    .line 136
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ReceiveAllData.processOnePage: receive data of page %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 142
    :try_start_0
    new-instance v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$2;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$2;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;Lcom/metamoji/nt/NtPageController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runModalOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/controller/ControllerContext;

    .line 165
    const-string v2, "ReceiveAllData.processOnePage: restoreTemporary finished"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->processOneRestoredPage(Lcom/metamoji/nt/NtPageController;)V

    .line 170
    new-instance v2, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$3;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;Lcom/metamoji/nt/NtPageController;Lcom/metamoji/df/controller/ControllerContext;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->runModalOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 181
    const-string p1, "ReceiveAllData.processOnePage: turnInTemporary finished"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 183
    :catchall_0
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->cancel()Z

    return-void
.end method

.method protected processOneRestoredPageInner(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 231
    new-instance v0, Lcom/metamoji/cm/ResetableEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/ResetableEvent;-><init>(ZZ)V

    .line 232
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_waitingLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_0
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_waitingBoothID:Ljava/lang/String;

    .line 234
    new-instance v2, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$5;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$5;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;Lcom/metamoji/cm/ResetableEvent;)V

    iput-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_waitingModelProc:Lcom/metamoji/cm/CmTaskManager$IFinish;

    .line 240
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {v1, p1}, Lcom/metamoji/ns/direction/NsDirectionManager;->attachBooth(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V

    .line 243
    const-string v1, "ReceiveAllData.processOneRestoredPage page attached %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData$6;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;Ljava/lang/String;Lcom/metamoji/cm/ResetableEvent;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 258
    invoke-virtual {v0}, Lcom/metamoji/cm/ResetableEvent;->waitOne()V

    .line 259
    const-string v0, "ReceiveAllData.processOneRestoredPage page detached %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 240
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setTargetPageControllers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/nt/NtPageController;",
            ">;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_targetPageControllers:Ljava/util/ArrayList;

    return-void
.end method

.method protected taskExec()V
    .locals 13

    .line 61
    const-string v0, "ReceiveAllData.taskExec: end"

    const/4 v1, 0x0

    iput v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_result:I

    .line 63
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 68
    :cond_0
    const-string v3, "ReceiveAllData.taskExec: start"

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v3

    .line 72
    sget v4, Lcom/metamoji/noteanytime/R$string;->Share_Receiving_Other_Page_Data:I

    invoke-virtual {v3, v4}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    const/4 v4, 0x1

    .line 73
    invoke-virtual {v3, v4}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 75
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v5

    .line 76
    invoke-virtual {v5, v4}, Lcom/metamoji/ns/NsCollaboManager;->setLogModeProgressDisabled(Z)V

    .line 78
    :try_start_0
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/nt/NtDocument;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v4

    .line 79
    iput-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    .line 80
    iput-object v4, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 81
    invoke-virtual {v4, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->setBgTaskForReceiveAllData(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    const-wide/16 v6, 0x1f4

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 83
    :try_start_1
    invoke-virtual {v3, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setProgress(F)V

    .line 84
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_targetPageControllers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v10, v1

    :goto_0
    if-ge v10, v2, :cond_2

    .line 86
    iget-object v11, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_targetPageControllers:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/nt/NtPageController;

    .line 87
    invoke-virtual {p0, v11}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->processOnePage(Lcom/metamoji/nt/NtPageController;)V

    .line 88
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 89
    const-string v2, "ReceiveAllData.taskExec cancelled"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v10, v10, 0x1

    int-to-float v11, v10

    int-to-float v12, v2

    div-float/2addr v11, v12

    .line 93
    invoke-virtual {v3, v11}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setProgress(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v4, v9}, Lcom/metamoji/ns/direction/NsDirectionManager;->setBgTaskForReceiveAllData(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;)V

    .line 98
    iput-object v9, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    .line 99
    iput-object v9, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 102
    invoke-virtual {v3, v8}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setProgress(F)V

    .line 103
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->isCancelled()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v2, :cond_3

    .line 105
    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    :catch_0
    :cond_3
    :try_start_4
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 113
    invoke-virtual {v5, v1}, Lcom/metamoji/ns/NsCollaboManager;->setLogModeProgressDisabled(Z)V

    return-void

    :catchall_0
    move-exception v2

    .line 96
    :try_start_5
    invoke-virtual {v4, v9}, Lcom/metamoji/ns/direction/NsDirectionManager;->setBgTaskForReceiveAllData(Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;)V

    .line 98
    iput-object v9, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_editorViewController:Lcom/metamoji/nt/NtEditorWindowController;

    .line 99
    iput-object v9, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_directionManager:Lcom/metamoji/ns/direction/NsDirectionManager;

    .line 102
    invoke-virtual {v3, v8}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setProgress(F)V

    .line 103
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->isCancelled()Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v3, :cond_4

    .line 105
    :try_start_6
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 110
    :catch_1
    :cond_4
    :try_start_7
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 111
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    .line 113
    invoke-virtual {v5, v1}, Lcom/metamoji/ns/NsCollaboManager;->setLogModeProgressDisabled(Z)V

    .line 114
    throw v0
.end method

.method public unknownDataFound()V
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->cancel()Z

    const/4 v0, 0x3

    .line 315
    iput v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->m_result:I

    return-void
.end method
