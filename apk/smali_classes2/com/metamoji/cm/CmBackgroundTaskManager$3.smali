.class Lcom/metamoji/cm/CmBackgroundTaskManager$3;
.super Ljava/lang/Object;
.source "CmBackgroundTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cm/CmBackgroundTaskManager;->requestTaskEx(Ljava/lang/Runnable;JLcom/metamoji/cm/CmTaskManager$IOnCompleted;)Ljava/util/concurrent/ScheduledFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cm/CmBackgroundTaskManager;

.field final synthetic val$completed:Lcom/metamoji/cm/CmTaskManager$IOnCompleted;

.field final synthetic val$runnable:Ljava/lang/Runnable;

.field final synthetic val$task:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/CmBackgroundTaskManager;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 431
    iput-object p1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$3;->this$0:Lcom/metamoji/cm/CmBackgroundTaskManager;

    iput-object p2, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$3;->val$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$3;->val$completed:Lcom/metamoji/cm/CmTaskManager$IOnCompleted;

    iput-object p4, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$3;->val$task:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 434
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 435
    monitor-enter v0

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$3;->this$0:Lcom/metamoji/cm/CmBackgroundTaskManager;

    iget-object v1, v1, Lcom/metamoji/cm/CmBackgroundTaskManager;->_currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    iget-object v2, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$3;->this$0:Lcom/metamoji/cm/CmBackgroundTaskManager;

    if-eqz v1, :cond_0

    .line 438
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$3;->val$runnable:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$3;->val$completed:Lcom/metamoji/cm/CmTaskManager$IOnCompleted;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5, v3}, Lcom/metamoji/cm/CmBackgroundTaskManager;->requestTaskEx(Ljava/lang/Runnable;JLcom/metamoji/cm/CmTaskManager$IOnCompleted;)Ljava/util/concurrent/ScheduledFuture;

    .line 439
    monitor-exit v0

    return-void

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$3;->val$task:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    iput-object v1, v2, Lcom/metamoji/cm/CmBackgroundTaskManager;->_currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    .line 442
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    iget-object v0, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$3;->val$task:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->run()V

    return-void

    :catchall_0
    move-exception v1

    .line 442
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
