.class Lcom/metamoji/ns/direction/NsDirectionManager$38;
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

    .line 2433
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$38;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$38;->val$boothId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2436
    const-string v0, "NsDirectionManager.logModeChanged: call dispatchDirections"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 2439
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$38;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-static {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$mdispatchDirections(Lcom/metamoji/ns/direction/NsDirectionManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2441
    const-string v1, "NsDirectionManager.logModeChanged: error in dispatchDirections."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2444
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$38;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_bgTaskForReceiveAllDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2445
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$38;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-virtual {v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->bgTaskForReceiveAllData()Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2447
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$38;->val$boothId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/ns/task/NsCollaboBgTaskForReceiveAllData;->logDataDoneAtBoothId(Ljava/lang/String;)V

    .line 2449
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
