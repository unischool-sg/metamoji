.class Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;
.super Ljava/lang/Object;
.source "CmTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cm/CmTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitScreenWatcherRunnable"
.end annotation


# instance fields
.field private mRequestWaitScreen:Z

.field private final mWaitScreenLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/metamoji/cm/CmTaskManager;

.field wInterval:J


# direct methods
.method constructor <init>(Lcom/metamoji/cm/CmTaskManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->mWaitScreenLock:Ljava/lang/Object;

    const-wide/16 v0, 0x1f4

    .line 106
    iput-wide v0, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->wInterval:J

    const/4 p1, 0x0

    .line 107
    iput-boolean p1, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->mRequestWaitScreen:Z

    return-void
.end method

.method private showOrHideWaitScreen()Z
    .locals 7

    .line 139
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->mWaitScreenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-boolean v1, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->mRequestWaitScreen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v2, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    .line 141
    :try_start_1
    invoke-static {v2}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fget_holdWaitScreen(Lcom/metamoji/cm/CmTaskManager;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-static {v1}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fget_backgroundTaskTick(Lcom/metamoji/cm/CmTaskManager;)J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-static {v1}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fget_suppressWaitScreen(Lcom/metamoji/cm/CmTaskManager;)I

    move-result v1

    if-lez v1, :cond_3

    .line 142
    :cond_1
    iput-boolean v3, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->mRequestWaitScreen:Z

    const-wide/16 v1, 0x1f4

    .line 143
    iput-wide v1, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->wInterval:J

    .line 144
    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-static {v1}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fget_waitScreen(Lcom/metamoji/cm/CmTaskManager;)Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;

    move-result-object v1

    invoke-interface {v1}, Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;->end()V

    goto :goto_0

    .line 146
    :cond_2
    invoke-static {v2}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fget_backgroundTaskTick(Lcom/metamoji/cm/CmTaskManager;)J

    move-result-wide v1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-static {v1}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fget_suppressWaitScreen(Lcom/metamoji/cm/CmTaskManager;)I

    move-result v1

    if-nez v1, :cond_4

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-static {v3}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fget_backgroundTaskTick(Lcom/metamoji/cm/CmTaskManager;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-static {v3}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fget_waitScreenDelay(Lcom/metamoji/cm/CmTaskManager;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 148
    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    const-wide/16 v2, 0x9c4

    invoke-static {v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fput_waitScreenDelay(Lcom/metamoji/cm/CmTaskManager;J)V

    .line 149
    iput-boolean v6, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->mRequestWaitScreen:Z

    const-wide/16 v1, 0x64

    .line 150
    iput-wide v1, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->wInterval:J

    .line 151
    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-static {v1}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fget_waitScreen(Lcom/metamoji/cm/CmTaskManager;)Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;->start(Z)V

    .line 156
    :cond_3
    :goto_0
    monitor-exit v0

    return v6

    .line 154
    :cond_4
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    .line 156
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public invokeWaitScreen()V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->mWaitScreenLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-static {v1}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fget_suppressWaitScreen(Lcom/metamoji/cm/CmTaskManager;)I

    move-result v1

    if-nez v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    const-wide/16 v2, 0x9c4

    invoke-static {v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fput_waitScreenDelay(Lcom/metamoji/cm/CmTaskManager;J)V

    const/4 v1, 0x1

    .line 164
    iput-boolean v1, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->mRequestWaitScreen:Z

    .line 165
    iget-object v2, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-virtual {v2}, Lcom/metamoji/cm/CmTaskManager;->isBackgroundThread()Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-static {v2, v1}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fput_holdWaitScreen(Lcom/metamoji/cm/CmTaskManager;Z)V

    :cond_0
    const-wide/16 v2, 0x64

    .line 168
    iput-wide v2, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->wInterval:J

    .line 169
    iget-object v2, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-static {v2}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fget_waitScreen(Lcom/metamoji/cm/CmTaskManager;)Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/metamoji/cm/CmTaskManager$IWaitingScreen;->start(Z)V

    .line 171
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 2

    .line 114
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-static {v0}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fget_alive(Lcom/metamoji/cm/CmTaskManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :try_start_0
    iget-wide v0, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->wInterval:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 117
    invoke-direct {p0}, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->showOrHideWaitScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-static {v0}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$m_isIdling(Lcom/metamoji/cm/CmTaskManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    invoke-static {v0}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$monIdle(Lcom/metamoji/cm/CmTaskManager;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 129
    const-string v1, "watcher process caught an exception."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :catch_0
    const-string v0, "idle watcher was terminated."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 125
    invoke-static {v0}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$sfput_instance(Lcom/metamoji/cm/CmTaskManager;)V

    .line 126
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager$WaitScreenWatcherRunnable;->this$0:Lcom/metamoji/cm/CmTaskManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->-$$Nest$fput_alive(Lcom/metamoji/cm/CmTaskManager;Z)V

    :cond_1
    return-void
.end method
