.class Lcom/metamoji/cm/CmBackgroundTaskManager$2;
.super Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;
.source "CmBackgroundTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cm/CmBackgroundTaskManager;->ensureBeginTask(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/cm/CmBackgroundTaskManager;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/CmBackgroundTaskManager;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;Lcom/metamoji/cm/CmBackgroundTaskManager;)V
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

    .line 341
    iput-object p1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$2;->this$0:Lcom/metamoji/cm/CmBackgroundTaskManager;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;-><init>(Lcom/metamoji/cm/CmBackgroundTaskManager;Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;Lcom/metamoji/cm/CmBackgroundTaskManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 344
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 345
    monitor-enter v0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$2;->this$0:Lcom/metamoji/cm/CmBackgroundTaskManager;

    iput-object p0, v1, Lcom/metamoji/cm/CmBackgroundTaskManager;->_currentTask:Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;

    .line 347
    iget-object v1, p0, Lcom/metamoji/cm/CmBackgroundTaskManager$2;->this$0:Lcom/metamoji/cm/CmBackgroundTaskManager;

    iget v2, v1, Lcom/metamoji/cm/CmBackgroundTaskManager;->_waitingCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/metamoji/cm/CmBackgroundTaskManager;->_waitingCount:I

    .line 348
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-super {p0}, Lcom/metamoji/cm/CmBackgroundTaskManager$BGTask;->run()V

    return-void

    :catchall_0
    move-exception v1

    .line 348
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
