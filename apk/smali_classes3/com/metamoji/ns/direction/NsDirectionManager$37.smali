.class Lcom/metamoji/ns/direction/NsDirectionManager$37;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->collaboDirectionReceived(Ljava/lang/String;Ljava/lang/String;[BLcom/metamoji/ns/direction/NsDirectionReceiveInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$data:[B

.field final synthetic val$receiveInfo:Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 2359
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$37;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$37;->val$receiveInfo:Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    iput-object p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$37;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2362
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$37;->val$receiveInfo:Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;->boothId:Ljava/lang/String;

    .line 2366
    :try_start_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/ns/NsCollaboManager;->isAcceptingBooth(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2393
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionManager$37$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ns/direction/NsDirectionManager$37$1;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$37;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 2372
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$37;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$37;->val$data:[B

    iget-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$37;->val$receiveInfo:Lcom/metamoji/ns/direction/NsDirectionReceiveInfo;

    invoke-static {v1, v2, v3}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$mextractDirectionData(Lcom/metamoji/ns/direction/NsDirectionManager;[BLcom/metamoji/ns/direction/NsDirectionReceiveInfo;)Lcom/metamoji/ns/direction/NsReceivedDirection;

    move-result-object v1

    .line 2374
    invoke-virtual {v1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->targetHandlerID()Ljava/lang/String;

    move-result-object v2

    .line 2377
    iget-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$37;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v3, v3, Lcom/metamoji/ns/direction/NsDirectionManager;->m_lastHandlerID:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$37;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v3, v3, Lcom/metamoji/ns/direction/NsDirectionManager;->m_lastHandlerID:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$37;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v3, v3, Lcom/metamoji/ns/direction/NsDirectionManager;->m_lastBoothID:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$37;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v3, v3, Lcom/metamoji/ns/direction/NsDirectionManager;->m_lastBoothID:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 2382
    :goto_1
    iget-object v4, p0, Lcom/metamoji/ns/direction/NsDirectionManager$37;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object v2, v4, Lcom/metamoji/ns/direction/NsDirectionManager;->m_lastHandlerID:Ljava/lang/String;

    .line 2383
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$37;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object v0, v2, Lcom/metamoji/ns/direction/NsDirectionManager;->m_lastBoothID:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 2386
    const-string v2, "NsDirectionManager.collaboDirectionReceived() / call dispatchDirections"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 2387
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$37;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-static {v2}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$mdispatchDirections(Lcom/metamoji/ns/direction/NsDirectionManager;)V

    .line 2389
    :cond_4
    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$37;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    invoke-static {v2, v1}, Lcom/metamoji/ns/direction/NsDirectionManager;->-$$Nest$mpushReceivedDirection(Lcom/metamoji/ns/direction/NsDirectionManager;Lcom/metamoji/ns/direction/NsReceivedDirection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2393
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/direction/NsDirectionManager$37$1;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ns/direction/NsDirectionManager$37$1;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$37;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ns/direction/NsDirectionManager$37$1;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/ns/direction/NsDirectionManager$37$1;-><init>(Lcom/metamoji/ns/direction/NsDirectionManager$37;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 2405
    throw v1
.end method
