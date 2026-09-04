.class public Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;
.super Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.source "NsCollaboBgTaskForGetShareViewListSubTaskShareCollect.java"


# static fields
.field private static mExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final mExecutorLock:Ljava/lang/Object;


# instance fields
.field public isCompleted:Z

.field public shareDocListJson:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;->mExecutorLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    return-void
.end method


# virtual methods
.method public doInBackground()V
    .locals 2

    .line 42
    invoke-static {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;->registerTask(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;->m_taskId:I

    .line 46
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager;->mThreadFactory:Lcom/metamoji/cm/CmThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 47
    new-instance v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 3

    .line 84
    invoke-super {p0, p1, p2}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->onCompleted(ZLjava/lang/Throwable;)V

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[GetShareViewList SubTask : Share Collect] --- task Completed! isSuccess : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;->isCancelled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 88
    iput-boolean v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;->isCompleted:Z

    .line 92
    sget-object p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;->mExecutorLock:Ljava/lang/Object;

    monitor-enter p1

    .line 93
    :try_start_0
    sget-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x0

    .line 94
    sput-object v1, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 95
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 97
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 99
    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-interface {v0, v1, v2, p1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 100
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 103
    :catch_0
    const-string p1, "NsCollaboBgTaskForGetShareViewListSubTaskShareCollect.onCompleted"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 104
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void

    :catchall_0
    move-exception p2

    .line 95
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method protected taskExec()V
    .locals 2

    .line 70
    const-string v0, "[GetShareViewList SubTask : Share Collect] --- task Start! ---"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getChangedShareNoteInfoListInJsonString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskForGetShareViewListSubTaskShareCollect;->shareDocListJson:Ljava/lang/String;

    return-void
.end method
