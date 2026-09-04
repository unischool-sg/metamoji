.class public Lcom/metamoji/mazec/purchase/util/CmTaskManager;
.super Ljava/lang/Object;
.source "CmTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncVoidTask;,
        Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;,
        Lcom/metamoji/mazec/purchase/util/CmTaskManager$IOnIdleProcess;
    }
.end annotation


# static fields
.field private static _instance:Lcom/metamoji/mazec/purchase/util/CmTaskManager;


# instance fields
.field private _activity:Landroidx/fragment/app/FragmentActivity;

.field private _handler:Landroid/os/Handler;

.field private _uiThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->_uiThread:Ljava/lang/Thread;

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->_handler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;
    .locals 1

    .line 77
    sget-object v0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->_instance:Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    return-object v0
.end method

.method public static initialize()V
    .locals 1

    .line 57
    sget-object v0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->_instance:Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    invoke-direct {v0}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;-><init>()V

    sput-object v0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->_instance:Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    :cond_0
    return-void
.end method

.method public static terminate()V
    .locals 1

    .line 66
    sget-object v0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->_instance:Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 67
    sput-object v0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->_instance:Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    :cond_0
    return-void
.end method


# virtual methods
.method public getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 84
    invoke-static {}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->getInstance()Lcom/metamoji/mazec/purchase/util/CmTaskManager;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->_handler:Landroid/os/Handler;

    return-object v0
.end method

.method public isUIThread()Z
    .locals 2

    .line 91
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->_uiThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
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

    .line 118
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->_uiThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 120
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 122
    :cond_0
    new-instance v0, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;-><init>(Lcom/metamoji/mazec/purchase/util/CmTaskManager;Ljava/util/concurrent/Callable;)V

    .line 123
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->_handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    invoke-virtual {v0}, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncTask;->await()Ljava/lang/Object;

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

    .line 100
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->_uiThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 102
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 104
    :cond_0
    new-instance v0, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncVoidTask;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncVoidTask;-><init>(Lcom/metamoji/mazec/purchase/util/CmTaskManager;Ljava/lang/Runnable;)V

    .line 105
    iget-object p1, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->_handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    invoke-virtual {v0}, Lcom/metamoji/mazec/purchase/util/CmTaskManager$SyncVoidTask;->await()Ljava/lang/Object;

    return-void
.end method

.method public runOnUIThreadAsync(Ljava/lang/Runnable;)V
    .locals 2

    .line 162
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->_uiThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 164
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->_handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
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

    .line 150
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->runOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 152
    invoke-static {p1}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public safeRunOnUIThread(Ljava/lang/Runnable;)Z
    .locals 0

    .line 135
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 138
    invoke-static {p1}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z
    .locals 0

    .line 176
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 179
    invoke-static {p1}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->_handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 188
    invoke-static {p1}, Lcom/metamoji/mazec/purchase/util/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setActivity(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    const-string v0, "CmTaskManager#setActivity:%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/mazec/purchase/util/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iput-object p1, p0, Lcom/metamoji/mazec/purchase/util/CmTaskManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
