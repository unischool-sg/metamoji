.class public Lcom/metamoji/cm/CmTaskManager;
.super Ljava/lang/Object;
.source "CmTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;,
        Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;,
        Lcom/metamoji/cm/CmTaskManager$SyncVoidTask;,
        Lcom/metamoji/cm/CmTaskManager$SyncTask;,
        Lcom/metamoji/cm/CmTaskManager$ICancellable;,
        Lcom/metamoji/cm/CmTaskManager$IOnCompleted;,
        Lcom/metamoji/cm/CmTaskManager$ModalInfo;,
        Lcom/metamoji/cm/CmTaskManager$FinishModal;,
        Lcom/metamoji/cm/CmTaskManager$IModal;,
        Lcom/metamoji/cm/CmTaskManager$IFinish;,
        Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static _instance:Lcom/metamoji/cm/CmTaskManager;


# instance fields
.field private _alive:Z

.field private _appLowMemory:Lcom/metamoji/cm/ICmAppLowMemory;

.field private _backgroundTaskManager:Lcom/metamoji/cm/CmBackgroundTaskManager;

.field private _backgroundTaskTick:J

.field private _busy:I

.field private _handler:Landroid/os/Handler;

.field private _holdWaitScreen:Z

.field private final _idleInterval:J

.field private _lastAccessed:J

.field private final _onIdles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;",
            ">;"
        }
    .end annotation
.end field

.field private _suppressWaitScreen:I

.field private _uiThread:Ljava/lang/Thread;

.field private final _waitDefaultScreenDelay:J

.field private _waitScreen:Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;

.field private _waitScreenDelay:J

.field private final _watchInterval:J

.field private final _watchIntervalFrequent:J

.field private _watcher:Ljava/lang/Thread;

.field private _watcherRunnable:Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;


# direct methods
.method static bridge synthetic -$$Nest$fget_alive(Lcom/metamoji/cm/CmTaskManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/cm/CmTaskManager;->_alive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_backgroundTaskTick(Lcom/metamoji/cm/CmTaskManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/cm/CmTaskManager;->_backgroundTaskTick:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fget_holdWaitScreen(Lcom/metamoji/cm/CmTaskManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/cm/CmTaskManager;->_holdWaitScreen:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_onIdles(Lcom/metamoji/cm/CmTaskManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/cm/CmTaskManager;->_onIdles:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_suppressWaitScreen(Lcom/metamoji/cm/CmTaskManager;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/cm/CmTaskManager;->_suppressWaitScreen:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_waitScreen(Lcom/metamoji/cm/CmTaskManager;)Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/cm/CmTaskManager;->_waitScreen:Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_waitScreenDelay(Lcom/metamoji/cm/CmTaskManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/metamoji/cm/CmTaskManager;->_waitScreenDelay:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fput_alive(Lcom/metamoji/cm/CmTaskManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/cm/CmTaskManager;->_alive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_holdWaitScreen(Lcom/metamoji/cm/CmTaskManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/cm/CmTaskManager;->_holdWaitScreen:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_waitScreenDelay(Lcom/metamoji/cm/CmTaskManager;J)V
    .locals 0

    iput-wide p1, p0, Lcom/metamoji/cm/CmTaskManager;->_waitScreenDelay:J

    return-void
.end method

.method static bridge synthetic -$$Nest$m_isIdling(Lcom/metamoji/cm/CmTaskManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/cm/CmTaskManager;->_isIdling()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monIdle(Lcom/metamoji/cm/CmTaskManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/cm/CmTaskManager;->onIdle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfput_instance(Lcom/metamoji/cm/CmTaskManager;)V
    .locals 0

    sput-object p0, Lcom/metamoji/cm/CmTaskManager;->_instance:Lcom/metamoji/cm/CmTaskManager;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xbb8

    .line 21
    iput-wide v0, p0, Lcom/metamoji/cm/CmTaskManager;->_idleInterval:J

    const-wide/16 v0, 0x1f4

    .line 22
    iput-wide v0, p0, Lcom/metamoji/cm/CmTaskManager;->_watchInterval:J

    const-wide/16 v0, 0x64

    .line 23
    iput-wide v0, p0, Lcom/metamoji/cm/CmTaskManager;->_watchIntervalFrequent:J

    const-wide/16 v0, 0x9c4

    .line 24
    iput-wide v0, p0, Lcom/metamoji/cm/CmTaskManager;->_waitDefaultScreenDelay:J

    const-wide/16 v2, -0x1

    .line 34
    iput-wide v2, p0, Lcom/metamoji/cm/CmTaskManager;->_backgroundTaskTick:J

    const/4 v2, 0x0

    .line 35
    iput v2, p0, Lcom/metamoji/cm/CmTaskManager;->_suppressWaitScreen:I

    .line 36
    iput-boolean v2, p0, Lcom/metamoji/cm/CmTaskManager;->_holdWaitScreen:Z

    .line 37
    iput-wide v0, p0, Lcom/metamoji/cm/CmTaskManager;->_waitScreenDelay:J

    .line 181
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cm/CmTaskManager;->_uiThread:Ljava/lang/Thread;

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/cm/CmTaskManager;->_lastAccessed:J

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, p0, Lcom/metamoji/cm/CmTaskManager;->_alive:Z

    .line 185
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cm/CmTaskManager;->_handler:Landroid/os/Handler;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cm/CmTaskManager;->_onIdles:Ljava/util/List;

    .line 187
    new-instance v0, Lcom/metamoji/cm/CmBackgroundTaskManager;

    invoke-direct {v0}, Lcom/metamoji/cm/CmBackgroundTaskManager;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cm/CmTaskManager;->_backgroundTaskManager:Lcom/metamoji/cm/CmBackgroundTaskManager;

    .line 190
    new-instance v0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;

    invoke-direct {v0, p0}, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;-><init>(Lcom/metamoji/cm/CmTaskManager;)V

    iput-object v0, p0, Lcom/metamoji/cm/CmTaskManager;->_watcherRunnable:Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;

    .line 191
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager;->_watcherRunnable:Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;

    const-string v2, "CmTaskManager.Watcher"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/metamoji/cm/CmTaskManager;->_watcher:Ljava/lang/Thread;

    .line 192
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private _isIdling()Z
    .locals 4

    .line 377
    monitor-enter p0

    .line 378
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->isBusy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/metamoji/cm/CmTaskManager;->_lastAccessed:J

    sub-long/2addr v0, v2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 379
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/metamoji/cm/CmTaskManager;
    .locals 1

    .line 226
    sget-object v0, Lcom/metamoji/cm/CmTaskManager;->_instance:Lcom/metamoji/cm/CmTaskManager;

    return-object v0
.end method

.method public static initialize(Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;Lcom/metamoji/cm/ICmAppLowMemory;)V
    .locals 1

    .line 200
    sget-object v0, Lcom/metamoji/cm/CmTaskManager;->_instance:Lcom/metamoji/cm/CmTaskManager;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/metamoji/cm/CmTaskManager;

    invoke-direct {v0}, Lcom/metamoji/cm/CmTaskManager;-><init>()V

    sput-object v0, Lcom/metamoji/cm/CmTaskManager;->_instance:Lcom/metamoji/cm/CmTaskManager;

    .line 202
    iput-object p0, v0, Lcom/metamoji/cm/CmTaskManager;->_waitScreen:Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;

    .line 203
    iput-object p1, v0, Lcom/metamoji/cm/CmTaskManager;->_appLowMemory:Lcom/metamoji/cm/ICmAppLowMemory;

    :cond_0
    return-void
.end method

.method private onIdle()V
    .locals 3

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager;->_onIdles:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 299
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager;->_onIdles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->touch()V

    .line 301
    monitor-exit v0

    return-void

    .line 303
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 307
    new-instance v2, Lcom/metamoji/cm/CmTaskManager$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/metamoji/cm/CmTaskManager$1;-><init>(Lcom/metamoji/cm/CmTaskManager;J)V

    invoke-virtual {p0, v2}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    .line 303
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 339
    const-string v1, "onIdle could not be started."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static terminate()V
    .locals 2

    .line 211
    sget-object v0, Lcom/metamoji/cm/CmTaskManager;->_instance:Lcom/metamoji/cm/CmTaskManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 212
    iput-boolean v1, v0, Lcom/metamoji/cm/CmTaskManager;->_alive:Z

    .line 213
    iget-object v0, v0, Lcom/metamoji/cm/CmTaskManager;->_backgroundTaskManager:Lcom/metamoji/cm/CmBackgroundTaskManager;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmBackgroundTaskManager;->terminate()V

    .line 214
    sget-object v0, Lcom/metamoji/cm/CmTaskManager;->_instance:Lcom/metamoji/cm/CmTaskManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/metamoji/cm/CmTaskManager;->_waitScreen:Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;

    .line 216
    sput-object v1, Lcom/metamoji/cm/CmTaskManager;->_instance:Lcom/metamoji/cm/CmTaskManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnIdleListener(Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager;->_onIdles:Ljava/util/List;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager;->_onIdles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method backgroundTaskBegining()V
    .locals 2

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/cm/CmTaskManager;->_lastAccessed:J

    iput-wide v0, p0, Lcom/metamoji/cm/CmTaskManager;->_backgroundTaskTick:J

    return-void
.end method

.method backgroundTaskFinished()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 426
    iput-wide v0, p0, Lcom/metamoji/cm/CmTaskManager;->_backgroundTaskTick:J

    const/4 v0, 0x0

    .line 427
    iput-boolean v0, p0, Lcom/metamoji/cm/CmTaskManager;->_holdWaitScreen:Z

    return-void
.end method

.method public cancelAndEnsureRunOnBackground(Ljava/lang/String;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    .locals 1

    .line 670
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->getBackgroundTaskManager()Lcom/metamoji/cm/CmBackgroundTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/metamoji/cm/CmBackgroundTaskManager;->cancelAndRunOnBackground(Ljava/lang/String;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    :try_end_0
    .catch Lcom/metamoji/cm/CmBackgroundTaskManager$CmTaskBusyException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 672
    :catch_0
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->getBackgroundTaskManager()Lcom/metamoji/cm/CmBackgroundTaskManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Lcom/metamoji/cm/CmBackgroundTaskManager;->ensureBeginTask(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public cancelAndRunOnBackground(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 642
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->getBackgroundTaskManager()Lcom/metamoji/cm/CmBackgroundTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/metamoji/cm/CmBackgroundTaskManager;->cancelAndRunOnBackground(Ljava/lang/String;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public cancelAndRunOnBackground(Ljava/lang/String;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    .locals 1

    .line 620
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->getBackgroundTaskManager()Lcom/metamoji/cm/CmBackgroundTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/metamoji/cm/CmBackgroundTaskManager;->cancelAndRunOnBackground(Ljava/lang/String;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public cancelAndRunOnBackground(Ljava/lang/String;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    .locals 2

    .line 631
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->getBackgroundTaskManager()Lcom/metamoji/cm/CmBackgroundTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/metamoji/cm/CmBackgroundTaskManager;->cancelAndRunOnBackground(Ljava/lang/String;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public ensureRunOnBackground(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 658
    invoke-virtual {p0, p1, v0, v0}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    .locals 1

    .line 654
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->getBackgroundTaskManager()Lcom/metamoji/cm/CmBackgroundTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/cm/CmBackgroundTaskManager;->ensureBeginTask(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public getBackgroundTaskManager()Lcom/metamoji/cm/CmBackgroundTaskManager;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager;->_backgroundTaskManager:Lcom/metamoji/cm/CmBackgroundTaskManager;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 233
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/cm/CmTaskManager;->_handler:Landroid/os/Handler;

    return-object v0
.end method

.method public invokeWaitScreenNow()V
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager;->_watcherRunnable:Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->invokeWaitScreen()V

    return-void
.end method

.method public isBackgroundThread()Z
    .locals 1

    .line 441
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->getBackgroundTaskManager()Lcom/metamoji/cm/CmBackgroundTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmBackgroundTaskManager;->isBackgroundThread()Z

    move-result v0

    return v0
.end method

.method public isBusy()Z
    .locals 2

    .line 349
    monitor-enter p0

    .line 350
    :try_start_0
    iget v0, p0, Lcom/metamoji/cm/CmTaskManager;->_busy:I

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->getBackgroundTaskManager()Lcom/metamoji/cm/CmBackgroundTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmBackgroundTaskManager;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 354
    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    .line 351
    iput-wide v0, p0, Lcom/metamoji/cm/CmTaskManager;->_waitScreenDelay:J

    const/4 v0, 0x1

    .line 352
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 355
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isIdleOrCancellable(Ljava/lang/String;)Z
    .locals 1

    .line 363
    monitor-enter p0

    .line 364
    :try_start_0
    iget v0, p0, Lcom/metamoji/cm/CmTaskManager;->_busy:I

    if-lez v0, :cond_0

    const/4 p1, 0x0

    .line 365
    monitor-exit p0

    return p1

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->getBackgroundTaskManager()Lcom/metamoji/cm/CmBackgroundTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmBackgroundTaskManager;->isIdleOrCancellable(Ljava/lang/String;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 368
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isUIThread()Z
    .locals 2

    .line 434
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager;->_uiThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeOnIdleListener(Lcom/metamoji/cm/CmTaskManager$IOnIdleProcess;)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager;->_onIdles:Ljava/util/List;

    monitor-enter v0

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager;->_onIdles:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 263
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestRunOnBackground(Ljava/lang/Runnable;)Ljava/util/concurrent/ScheduledFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 825
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->getBackgroundTaskManager()Lcom/metamoji/cm/CmBackgroundTaskManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/metamoji/cm/CmBackgroundTaskManager;->requestTask(Ljava/lang/Runnable;JLcom/metamoji/cm/CmTaskManager$IOnCompleted;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public requestRunOnBackground(Ljava/lang/Runnable;JLcom/metamoji/cm/CmTaskManager$IOnCompleted;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
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

    .line 842
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->getBackgroundTaskManager()Lcom/metamoji/cm/CmBackgroundTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/metamoji/cm/CmBackgroundTaskManager;->requestTask(Ljava/lang/Runnable;JLcom/metamoji/cm/CmTaskManager$IOnCompleted;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public requestRunOnBackgroundEx(Ljava/lang/Runnable;JLcom/metamoji/cm/CmTaskManager$IOnCompleted;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
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

    .line 855
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->getBackgroundTaskManager()Lcom/metamoji/cm/CmBackgroundTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/metamoji/cm/CmBackgroundTaskManager;->requestTaskEx(Ljava/lang/Runnable;JLcom/metamoji/cm/CmTaskManager$IOnCompleted;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public revokeWaitScreenNow()V
    .locals 1

    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Lcom/metamoji/cm/CmTaskManager;->_holdWaitScreen:Z

    return-void
.end method

.method public runModalOnBackground(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 695
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 699
    new-instance v0, Lcom/metamoji/cm/CmTaskManager$ModalInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmTaskManager$ModalInfo;-><init>(Lcom/metamoji/cm/CmTaskManager-IA;)V

    .line 700
    new-instance v2, Lcom/metamoji/cm/CmTaskManager$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/metamoji/cm/CmTaskManager$2;-><init>(Lcom/metamoji/cm/CmTaskManager;Lcom/metamoji/cm/CmTaskManager$ModalInfo;Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0, v2, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 714
    iget-object p1, v0, Lcom/metamoji/cm/CmTaskManager$ModalInfo;->e:Ljava/lang/Throwable;

    if-nez p1, :cond_0

    .line 718
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager$ModalInfo;->await()V

    .line 719
    iget-object p1, v0, Lcom/metamoji/cm/CmTaskManager$ModalInfo;->result:Ljava/lang/Object;

    return-object p1

    .line 715
    :cond_0
    iget-object p1, v0, Lcom/metamoji/cm/CmTaskManager$ModalInfo;->e:Ljava/lang/Throwable;

    throw p1

    .line 696
    :cond_1
    new-instance p1, Ljava/lang/IllegalThreadStateException;

    const-string v0, "runModalOnBackground called from ui thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public runModalOnBackground(Ljava/lang/Runnable;)Z
    .locals 3

    .line 730
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 734
    new-instance v0, Lcom/metamoji/cm/CmTaskManager$ModalInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmTaskManager$ModalInfo;-><init>(Lcom/metamoji/cm/CmTaskManager-IA;)V

    .line 735
    new-instance v2, Lcom/metamoji/cm/CmTaskManager$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/cm/CmTaskManager$3;-><init>(Lcom/metamoji/cm/CmTaskManager;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ModalInfo;)V

    invoke-virtual {p0, v2, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 750
    iget-object p1, v0, Lcom/metamoji/cm/CmTaskManager$ModalInfo;->e:Ljava/lang/Throwable;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return v1

    .line 755
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager$ModalInfo;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 757
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return v1

    .line 731
    :cond_1
    new-instance p1, Ljava/lang/IllegalThreadStateException;

    const-string v0, "runModalOnBackground called from ui thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public runModalUntilFinishedOnBackground(Lcom/metamoji/cm/CmTaskManager$IModal;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/metamoji/cm/CmTaskManager$IModal<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 786
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 789
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->isBackgroundThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 793
    new-instance v0, Lcom/metamoji/cm/CmTaskManager$FinishModal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmTaskManager$FinishModal;-><init>(Lcom/metamoji/cm/CmTaskManager-IA;)V

    .line 794
    new-instance v2, Lcom/metamoji/cm/CmTaskManager$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/metamoji/cm/CmTaskManager$4;-><init>(Lcom/metamoji/cm/CmTaskManager;Lcom/metamoji/cm/CmTaskManager$FinishModal;Lcom/metamoji/cm/CmTaskManager$IModal;)V

    invoke-virtual {p0, v2, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 806
    iget-object p1, v0, Lcom/metamoji/cm/CmTaskManager$FinishModal;->e:Ljava/lang/Throwable;

    if-nez p1, :cond_0

    .line 810
    iget-object p1, v0, Lcom/metamoji/cm/CmTaskManager$FinishModal;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 811
    iget-object p1, v0, Lcom/metamoji/cm/CmTaskManager$FinishModal;->result:Ljava/lang/Object;

    return-object p1

    .line 807
    :cond_0
    iget-object p1, v0, Lcom/metamoji/cm/CmTaskManager$FinishModal;->e:Ljava/lang/Throwable;

    throw p1

    .line 790
    :cond_1
    new-instance p1, Ljava/lang/IllegalThreadStateException;

    const-string v0, "runModalOnBackground called from taskManager thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 787
    :cond_2
    new-instance p1, Ljava/lang/IllegalThreadStateException;

    const-string v0, "runModalOnBackground called from ui thread."

    invoke-direct {p1, v0}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public runOnBackground(Ljava/lang/Runnable;)V
    .locals 2

    .line 570
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->getBackgroundTaskManager()Lcom/metamoji/cm/CmBackgroundTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/metamoji/cm/CmBackgroundTaskManager;->beginTask(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public runOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    .locals 1

    .line 591
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->getBackgroundTaskManager()Lcom/metamoji/cm/CmBackgroundTaskManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/cm/CmBackgroundTaskManager;->beginTask(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public runOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    .locals 2

    .line 580
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->getBackgroundTaskManager()Lcom/metamoji/cm/CmBackgroundTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/metamoji/cm/CmBackgroundTaskManager;->beginTask(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void
.end method

.method public runOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 490
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager;->_uiThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 492
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 494
    :cond_0
    new-instance v0, Lcom/metamoji/cm/CmTaskManager$SyncTask;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/cm/CmTaskManager$SyncTask;-><init>(Lcom/metamoji/cm/CmTaskManager;Ljava/util/concurrent/Callable;)V

    .line 495
    iget-object p1, p0, Lcom/metamoji/cm/CmTaskManager;->_handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 496
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager$SyncTask;->await()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public runOnUIThread(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 472
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager;->_uiThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 474
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 476
    :cond_0
    new-instance v0, Lcom/metamoji/cm/CmTaskManager$SyncVoidTask;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/cm/CmTaskManager$SyncVoidTask;-><init>(Lcom/metamoji/cm/CmTaskManager;Ljava/lang/Runnable;)V

    .line 477
    iget-object p1, p0, Lcom/metamoji/cm/CmTaskManager;->_handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 478
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager$SyncVoidTask;->await()Ljava/lang/Object;

    return-void
.end method

.method public runOnUIThreadAsync(Ljava/lang/Runnable;)V
    .locals 2

    .line 534
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager;->_uiThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 536
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager;->_handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public safeRunOnBackground(Ljava/lang/Runnable;)Z
    .locals 2

    const/4 v0, 0x0

    .line 601
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/metamoji/cm/CmBackgroundTaskManager$CmTaskBusyException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 606
    const-string v1, "safeRunOnBackground error."

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :catch_0
    return v0
.end method

.method public safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 522
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 524
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public safeRunOnUIThread(Ljava/lang/Runnable;)Z
    .locals 0

    .line 507
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 510
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z
    .locals 0

    .line 548
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 551
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 558
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager;->_handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 560
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setBusy(Z)V
    .locals 2

    .line 389
    monitor-enter p0

    .line 393
    iget v0, p0, Lcom/metamoji/cm/CmTaskManager;->_busy:I

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 391
    :try_start_0
    iput v0, p0, Lcom/metamoji/cm/CmTaskManager;->_busy:I

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 393
    iput v0, p0, Lcom/metamoji/cm/CmTaskManager;->_busy:I

    if-gez v0, :cond_1

    const/4 p1, 0x0

    .line 396
    iput p1, p0, Lcom/metamoji/cm/CmTaskManager;->_busy:I

    .line 400
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/cm/CmTaskManager;->_lastAccessed:J

    .line 401
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setWaitScreen(Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/metamoji/cm/CmTaskManager;->_waitScreen:Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;

    return-void
.end method

.method public suppressWaitScreen(Z)V
    .locals 1

    .line 452
    iget v0, p0, Lcom/metamoji/cm/CmTaskManager;->_suppressWaitScreen:I

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 450
    iput v0, p0, Lcom/metamoji/cm/CmTaskManager;->_suppressWaitScreen:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 452
    iput v0, p0, Lcom/metamoji/cm/CmTaskManager;->_suppressWaitScreen:I

    if-nez v0, :cond_1

    .line 453
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->isBackgroundThread()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 454
    invoke-virtual {p0}, Lcom/metamoji/cm/CmTaskManager;->backgroundTaskBegining()V

    :cond_1
    return-void
.end method

.method public touch()V
    .locals 2

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/cm/CmTaskManager;->_lastAccessed:J

    return-void
.end method
