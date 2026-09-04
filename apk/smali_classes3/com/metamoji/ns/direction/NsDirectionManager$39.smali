.class Lcom/metamoji/ns/direction/NsDirectionManager$39;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->logModeChanged(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboHandler$CollaboLogModeStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$boothId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2462
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$39;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$39;->val$boothId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2465
    const-string v0, "NsDirectionManager.logModeChanged: call dispatchDirections"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 2468
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$39;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-static {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$mdispatchDirections(Lcom/metamoji/ns/direction/NsDirectionManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2470
    const-string v1, "NsDirectionManager.logModeChanged: error in dispatchDirections."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2473
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$39;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReflectOfflineEditLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2474
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$39;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->bgTaskForReflectOfflineEdit()Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2476
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$39;->val$boothId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForReflectOfflineEdit;->logDataDoneAtBoothId(Ljava/lang/String;)V

    .line 2478
    :cond_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
