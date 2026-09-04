.class Lcom/metamoji/ns/direction/NsDirectionManager$5;
.super Ljava/lang/Object;
.source "NsDirectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/direction/NsDirectionManager;->detachBoothViolently(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

.field final synthetic val$boothID:Ljava/lang/String;

.field final synthetic val$onCompleted:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/metamoji/ns/direction/NsDirectionManager;Ljava/lang/String;Ljava/lang/Runnable;)V
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

    .line 466
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$5;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iput-object p2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$5;->val$boothID:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ns/direction/NsDirectionManager$5;->val$onCompleted:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$5;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v0, v0, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    monitor-enter v0

    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$5;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachBoothRequestingDic:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$5;->val$boothID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$5;->this$0:Lcom/metamoji/ns/direction/NsDirectionManager;

    iget-object v1, v1, Lcom/metamoji/ns/direction/NsDirectionManager;->m_attachedBoothSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/metamoji/ns/direction/NsDirectionManager$5;->val$boothID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 473
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$5;->val$boothID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->detachBooth(Ljava/lang/String;)Ljava/lang/String;

    .line 475
    const-string v0, "NsDirectionManager.detachBoothViolently: Detached %s"

    iget-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionManager$5;->val$boothID:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionManager$5;->val$onCompleted:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 477
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 473
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
