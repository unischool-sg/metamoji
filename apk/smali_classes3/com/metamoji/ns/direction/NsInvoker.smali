.class public abstract Lcom/metamoji/ns/direction/NsInvoker;
.super Ljava/lang/Object;
.source "NsInvoker.java"


# instance fields
.field protected mAlive:Z

.field protected mExecutor:Ljava/util/concurrent/ExecutorService;

.field protected final mLock:Ljava/lang/Object;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/metamoji/cm/CmThreadFactory;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ns/direction/NsInvoker;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/metamoji/ns/direction/NsInvoker;->mAlive:Z

    .line 31
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsInvoker;->mName:Ljava/lang/String;

    .line 32
    invoke-static {p2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ns/direction/NsInvoker;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsInvoker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 49
    :try_start_0
    iput-boolean v1, p0, Lcom/metamoji/ns/direction/NsInvoker;->mAlive:Z

    .line 50
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsInvoker;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    .line 51
    iput-object v2, p0, Lcom/metamoji/ns/direction/NsInvoker;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 55
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 57
    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-interface {v1, v2, v3, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 61
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 62
    const-string v1, "NsInvoker.dispose"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 52
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public abstract invoke(Ljava/lang/Runnable;)Z
.end method
