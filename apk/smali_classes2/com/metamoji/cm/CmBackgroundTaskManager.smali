.class public Lcom/metamoji/cm/CmBackgroundTaskManager;
.super Ljava/lang/Object;
.source "CmBackgroundTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;,
        Lcom/metamoji/cm/CmBackgroundTaskManager$CmTaskBusyException;
    }
.end annotation


# static fields
.field static _instance:Lcom/metamoji/cm/CmBackgroundTaskManager;

.field static final _threadFactory:Lcom/metamoji/cm/CmThreadFactory;


# instance fields
.field _bgThread:Ljava/lang/Thread;

.field _currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

.field _executor:Ljava/util/concurrent/ScheduledExecutorService;

.field _waitingCount:I


# direct methods
.method static bridge synthetic -$$Nest$mtaskBegining(Lcom/metamoji/cm/CmBackgroundTaskManager;Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/cm/CmBackgroundTaskManager;->taskBegining(Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtaskFinished(Lcom/metamoji/cm/CmBackgroundTaskManager;Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/cm/CmBackgroundTaskManager;->taskFinished(Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 120
    new-instance v0, Lcom/metamoji/cm/CmThreadFactory;

    const-string v1, "TaskManager"

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_threadFactory:Lcom/metamoji/cm/CmThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    const/4 v0, 0x1

    .line 127
    sget-object v1, Lcom/metamoji/cm/CmBackgroundTaskManager;->_threadFactory:Lcom/metamoji/cm/CmThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_executor:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_waitingCount:I

    return-void
.end method

.method private popTask(Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)V
    .locals 1

    .line 256
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    monitor-enter v0

    .line 257
    :try_start_0
    iput-object p1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    .line 258
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private pushTask(Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;
    .locals 2

    .line 244
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    monitor-enter v0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    .line 246
    iput-object p1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    .line 247
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 248
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private runSynchronous(Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)V
    .locals 2

    .line 262
    invoke-direct {p0, p1}, Lcom/metamoji/cm/CmBackgroundTaskManager;->pushTask(Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    move-result-object v0

    .line 263
    invoke-virtual {p1}, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->run()V

    .line 264
    invoke-direct {p0, v0}, Lcom/metamoji/cm/CmBackgroundTaskManager;->popTask(Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)V

    .line 265
    iget-object v0, p1, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_ex:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    return-void

    .line 266
    :cond_0
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "exception caught in a sub-task."

    iget-object p1, p1, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_ex:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private runSynchronous(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    .locals 6

    .line 277
    new-instance v0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    move-object v5, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;-><init>(Lcom/metamoji/cm/CmBackgroundTaskManager;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;Lcom/metamoji/cm/CmBackgroundTaskManager;)V

    invoke-direct {p0, v0}, Lcom/metamoji/cm/CmBackgroundTaskManager;->runSynchronous(Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)V

    return-void
.end method

.method private taskBegining(Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)V
    .locals 0

    .line 392
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    .line 393
    invoke-virtual {p1}, Lcom/metamoji/cm/CmTaskManager;->backgroundTaskBegining()V

    return-void
.end method

.method private taskFinished(Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)V
    .locals 2

    .line 401
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 402
    monitor-enter v0

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    .line 404
    iput-object p1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    .line 406
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->backgroundTaskFinished()V

    return-void

    :catchall_0
    move-exception p1

    .line 406
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public beginTask(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    .locals 8

    if-eqz p1, :cond_2

    .line 303
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    .line 304
    monitor-enter v1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 306
    :try_start_1
    invoke-virtual {p0}, Lcom/metamoji/cm/CmBackgroundTaskManager;->isBackgroundThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/cm/CmBackgroundTaskManager;->runSynchronous(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void

    .line 307
    :cond_0
    :try_start_2
    const-string p1, "task rejected."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 308
    new-instance p1, Lcom/metamoji/cm/CmBackgroundTaskManager$CmTaskBusyException;

    invoke-direct {p1}, Lcom/metamoji/cm/CmBackgroundTaskManager$CmTaskBusyException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto :goto_1

    .line 313
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 314
    new-instance v2, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v7, p0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    :try_start_4
    invoke-direct/range {v2 .. v7}, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;-><init>(Lcom/metamoji/cm/CmBackgroundTaskManager;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;Lcom/metamoji/cm/CmBackgroundTaskManager;)V

    iput-object v2, v3, Lcom/metamoji/cm/CmBackgroundTaskManager;->_currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    .line 315
    iget-object p1, v3, Lcom/metamoji/cm/CmBackgroundTaskManager;->_executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 316
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    move-object v3, p0

    :goto_0
    move-object p1, v0

    .line 318
    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_0

    :cond_2
    move-object v3, p0

    .line 300
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public cancel(Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)Z
    .locals 4

    .line 215
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 217
    monitor-exit v0

    return v2

    .line 219
    :cond_0
    invoke-virtual {v1, p1}, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->isCancellable(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 220
    monitor-exit v0

    return v3

    .line 222
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :try_start_1
    new-instance v0, Lcom/metamoji/cm/CmBackgroundTaskManager$1;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/cm/CmBackgroundTaskManager$1;-><init>(Lcom/metamoji/cm/CmBackgroundTaskManager;Ljava/util/concurrent/CountDownLatch;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2, p2}, Lcom/metamoji/cm/CmBackgroundTaskManager;->cancelAndRunOnBackground(Ljava/lang/String;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    :try_end_1
    .catch Lcom/metamoji/cm/CmBackgroundTaskManager$CmTaskBusyException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    return v3

    :catchall_0
    move-exception p1

    .line 222
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public cancelAndRunOnBackground(Ljava/lang/String;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    .locals 2

    .line 192
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v1, p1}, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->cancel(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 196
    const-string p1, "request for background task was accepted."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 197
    iput-object p1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    .line 200
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {p0, p2, p3, p4}, Lcom/metamoji/cm/CmBackgroundTaskManager;->beginTask(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void

    :catchall_0
    move-exception p1

    .line 200
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public ensureBeginTask(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    .locals 8

    if-eqz p1, :cond_2

    .line 336
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    .line 337
    monitor-enter v1

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 339
    :try_start_1
    invoke-virtual {p0}, Lcom/metamoji/cm/CmBackgroundTaskManager;->isBackgroundThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget p2, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_waitingCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_waitingCount:I

    .line 341
    new-instance p2, Lcom/metamoji/cm/CmBackgroundTaskManager$2;

    invoke-direct {p2, p0, p1, p3, p0}, Lcom/metamoji/cm/CmBackgroundTaskManager$2;-><init>(Lcom/metamoji/cm/CmBackgroundTaskManager;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;Lcom/metamoji/cm/CmBackgroundTaskManager;)V

    .line 352
    iget-object p1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 353
    monitor-exit v1

    return-void

    .line 362
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/cm/CmBackgroundTaskManager;->runSynchronous(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto :goto_1

    .line 357
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 358
    new-instance v2, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v7, p0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    :try_start_3
    invoke-direct/range {v2 .. v7}, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;-><init>(Lcom/metamoji/cm/CmBackgroundTaskManager;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;Lcom/metamoji/cm/CmBackgroundTaskManager;)V

    iput-object v2, v3, Lcom/metamoji/cm/CmBackgroundTaskManager;->_currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    .line 359
    iget-object p1, v3, Lcom/metamoji/cm/CmBackgroundTaskManager;->_executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 360
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    move-object v3, p0

    :goto_0
    move-object p1, v0

    .line 362
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_0

    :cond_2
    move-object v3, p0

    .line 333
    new-instance p1, Ljava/security/InvalidParameterException;

    invoke-direct {p1}, Ljava/security/InvalidParameterException;-><init>()V

    throw p1
.end method

.method public initialize()V
    .locals 1

    .line 135
    new-instance v0, Lcom/metamoji/cm/CmBackgroundTaskManager;

    invoke-direct {v0}, Lcom/metamoji/cm/CmBackgroundTaskManager;-><init>()V

    sput-object v0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_instance:Lcom/metamoji/cm/CmBackgroundTaskManager;

    return-void
.end method

.method public isBackgroundThread()Z
    .locals 3

    .line 181
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_bgThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBusy()Z
    .locals 3

    .line 151
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    monitor-enter v0

    .line 152
    :try_start_0
    iget v1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_waitingCount:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_bgThread:Ljava/lang/Thread;

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 153
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isIdleOrCancellable(Ljava/lang/String;)Z
    .locals 2

    .line 162
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    monitor-enter v0

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/cm/CmBackgroundTaskManager;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    invoke-virtual {v1, p1}, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->isCancellable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 164
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestTask(Ljava/lang/Runnable;JLcom/metamoji/cm/CmTaskManager$IOnCompleted;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Lcom/metamoji/cm/CmTaskManager$IOnCompleted;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 415
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 416
    monitor-enter v0

    .line 417
    :try_start_0
    new-instance v1, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    invoke-direct {v1, p0, p1, p4, p0}, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;-><init>(Lcom/metamoji/cm/CmBackgroundTaskManager;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;Lcom/metamoji/cm/CmBackgroundTaskManager;)V

    .line 418
    iget-object p1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_executor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 419
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestTaskEx(Ljava/lang/Runnable;JLcom/metamoji/cm/CmTaskManager$IOnCompleted;)Ljava/util/concurrent/ScheduledFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Lcom/metamoji/cm/CmTaskManager$IOnCompleted;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 428
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 429
    monitor-enter v0

    .line 430
    :try_start_0
    new-instance v1, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    invoke-direct {v1, p0, p1, p4, p0}, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;-><init>(Lcom/metamoji/cm/CmBackgroundTaskManager;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;Lcom/metamoji/cm/CmBackgroundTaskManager;)V

    .line 431
    iget-object v2, p0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/metamoji/cm/CmBackgroundTaskManager$3;

    invoke-direct {v3, p0, p1, p4, v1}, Lcom/metamoji/cm/CmBackgroundTaskManager$3;-><init>(Lcom/metamoji/cm/CmBackgroundTaskManager;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, p2, p3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 446
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public terminate()V
    .locals 1

    .line 142
    sget-object v0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_instance:Lcom/metamoji/cm/CmBackgroundTaskManager;

    iget-object v0, v0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 143
    sput-object v0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_instance:Lcom/metamoji/cm/CmBackgroundTaskManager;

    return-void
.end method
