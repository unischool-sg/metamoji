.class Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;
.super Ljava/lang/Object;
.source "CmBackgroundTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/metamoji/cm/CmTaskManager$ICancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cm/CmBackgroundTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BGTask"
.end annotation


# instance fields
.field _cancellable:Lcom/metamoji/cm/CmTaskManager$ICancellable;

.field _completed:Lcom/metamoji/cm/CmTaskManager$IOnCompleted;

.field _ex:Ljava/lang/Throwable;

.field _runnable:Ljava/lang/Runnable;

.field _taskManager:Lcom/metamoji/cm/CmBackgroundTaskManager;

.field final synthetic this$0:Lcom/metamoji/cm/CmBackgroundTaskManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/cm/CmBackgroundTaskManager;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;Lcom/metamoji/cm/CmBackgroundTaskManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;-><init>(Lcom/metamoji/cm/CmBackgroundTaskManager;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;Lcom/metamoji/cm/CmBackgroundTaskManager;)V

    .line 52
    iput-object p3, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_cancellable:Lcom/metamoji/cm/CmTaskManager$ICancellable;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cm/CmBackgroundTaskManager;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;Lcom/metamoji/cm/CmBackgroundTaskManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->this$0:Lcom/metamoji/cm/CmBackgroundTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_runnable:Ljava/lang/Runnable;

    .line 37
    iput-object p3, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_completed:Lcom/metamoji/cm/CmTaskManager$IOnCompleted;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_cancellable:Lcom/metamoji/cm/CmTaskManager$ICancellable;

    .line 39
    iput-object p4, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_taskManager:Lcom/metamoji/cm/CmBackgroundTaskManager;

    .line 40
    iput-object p1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_ex:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_cancellable:Lcom/metamoji/cm/CmTaskManager$ICancellable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 111
    :cond_0
    invoke-interface {v0, p1}, Lcom/metamoji/cm/CmTaskManager$ICancellable;->cancel(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isCancellable(Ljava/lang/String;)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_cancellable:Lcom/metamoji/cm/CmTaskManager$ICancellable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 97
    :cond_0
    invoke-interface {v0, p1}, Lcom/metamoji/cm/CmTaskManager$ICancellable;->isCancellable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public run()V
    .locals 6

    .line 60
    const-string v0, "CmBackgroundTaskManager-IOnCompleted caught an exception."

    iget-object v1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->this$0:Lcom/metamoji/cm/CmBackgroundTaskManager;

    iget-object v1, v1, Lcom/metamoji/cm/CmBackgroundTaskManager;->_bgThread:Ljava/lang/Thread;

    const/4 v2, 0x0

    .line 62
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_taskManager:Lcom/metamoji/cm/CmBackgroundTaskManager;

    invoke-static {v3, p0}, Lcom/metamoji/cm/CmBackgroundTaskManager;->-$$Nest$mtaskBegining(Lcom/metamoji/cm/CmBackgroundTaskManager;Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)V

    .line 63
    iget-object v3, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->this$0:Lcom/metamoji/cm/CmBackgroundTaskManager;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/cm/CmBackgroundTaskManager;->_bgThread:Ljava/lang/Thread;

    .line 64
    iput-object v2, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_ex:Ljava/lang/Throwable;

    .line 65
    iget-object v3, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_runnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 73
    :try_start_1
    iget-object v3, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_completed:Lcom/metamoji/cm/CmTaskManager$IOnCompleted;

    if-eqz v3, :cond_0

    .line 74
    iget-object v4, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_ex:Ljava/lang/Throwable;

    invoke-interface {v3, v4}, Lcom/metamoji/cm/CmTaskManager$IOnCompleted;->onCompleted(Ljava/lang/Throwable;)V

    .line 75
    iput-object v2, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_ex:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_taskManager:Lcom/metamoji/cm/CmBackgroundTaskManager;

    invoke-static {v0, p0}, Lcom/metamoji/cm/CmBackgroundTaskManager;->-$$Nest$mtaskFinished(Lcom/metamoji/cm/CmBackgroundTaskManager;Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)V

    .line 81
    iget-object v0, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->this$0:Lcom/metamoji/cm/CmBackgroundTaskManager;

    iput-object v1, v0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_bgThread:Ljava/lang/Thread;

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 78
    :try_start_2
    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 80
    iget-object v2, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_taskManager:Lcom/metamoji/cm/CmBackgroundTaskManager;

    invoke-static {v2, p0}, Lcom/metamoji/cm/CmBackgroundTaskManager;->-$$Nest$mtaskFinished(Lcom/metamoji/cm/CmBackgroundTaskManager;Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)V

    .line 81
    iget-object v2, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->this$0:Lcom/metamoji/cm/CmBackgroundTaskManager;

    iput-object v1, v2, Lcom/metamoji/cm/CmBackgroundTaskManager;->_bgThread:Ljava/lang/Thread;

    .line 82
    throw v0

    :catchall_2
    move-exception v3

    .line 67
    :try_start_3
    iput-object v3, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_ex:Ljava/lang/Throwable;

    .line 68
    iget-object v4, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_completed:Lcom/metamoji/cm/CmTaskManager$IOnCompleted;

    if-nez v4, :cond_1

    .line 69
    const-string v4, "CmBackgroundTaskManager caught an exception and it will not be handled."

    invoke-static {v3, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 73
    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_completed:Lcom/metamoji/cm/CmTaskManager$IOnCompleted;

    if-eqz v3, :cond_0

    .line 74
    iget-object v4, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_ex:Ljava/lang/Throwable;

    invoke-interface {v3, v4}, Lcom/metamoji/cm/CmTaskManager$IOnCompleted;->onCompleted(Ljava/lang/Throwable;)V

    .line 75
    iput-object v2, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_ex:Ljava/lang/Throwable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v2

    .line 78
    :try_start_5
    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_0

    :goto_1
    return-void

    :catchall_4
    move-exception v0

    .line 80
    iget-object v2, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_taskManager:Lcom/metamoji/cm/CmBackgroundTaskManager;

    invoke-static {v2, p0}, Lcom/metamoji/cm/CmBackgroundTaskManager;->-$$Nest$mtaskFinished(Lcom/metamoji/cm/CmBackgroundTaskManager;Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)V

    .line 81
    iget-object v2, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->this$0:Lcom/metamoji/cm/CmBackgroundTaskManager;

    iput-object v1, v2, Lcom/metamoji/cm/CmBackgroundTaskManager;->_bgThread:Ljava/lang/Thread;

    .line 82
    throw v0

    :catchall_5
    move-exception v3

    .line 73
    :try_start_6
    iget-object v4, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_completed:Lcom/metamoji/cm/CmTaskManager$IOnCompleted;

    if-eqz v4, :cond_2

    .line 74
    iget-object v5, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_ex:Ljava/lang/Throwable;

    invoke-interface {v4, v5}, Lcom/metamoji/cm/CmTaskManager$IOnCompleted;->onCompleted(Ljava/lang/Throwable;)V

    .line 75
    iput-object v2, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_ex:Ljava/lang/Throwable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 80
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_taskManager:Lcom/metamoji/cm/CmBackgroundTaskManager;

    invoke-static {v0, p0}, Lcom/metamoji/cm/CmBackgroundTaskManager;->-$$Nest$mtaskFinished(Lcom/metamoji/cm/CmBackgroundTaskManager;Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)V

    .line 81
    iget-object v0, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->this$0:Lcom/metamoji/cm/CmBackgroundTaskManager;

    iput-object v1, v0, Lcom/metamoji/cm/CmBackgroundTaskManager;->_bgThread:Ljava/lang/Thread;

    goto :goto_3

    :catchall_6
    move-exception v2

    .line 78
    :try_start_7
    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_2

    .line 83
    :goto_3
    throw v3

    :catchall_7
    move-exception v0

    .line 80
    iget-object v2, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->_taskManager:Lcom/metamoji/cm/CmBackgroundTaskManager;

    invoke-static {v2, p0}, Lcom/metamoji/cm/CmBackgroundTaskManager;->-$$Nest$mtaskFinished(Lcom/metamoji/cm/CmBackgroundTaskManager;Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)V

    .line 81
    iget-object v2, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->this$0:Lcom/metamoji/cm/CmBackgroundTaskManager;

    iput-object v1, v2, Lcom/metamoji/cm/CmBackgroundTaskManager;->_bgThread:Ljava/lang/Thread;

    .line 82
    throw v0
.end method
