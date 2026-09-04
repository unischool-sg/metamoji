.class Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10$1;
.super Ljava/lang/Object;
.source "DmDCSyncManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;


# direct methods
.method constructor <init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 656
    iput-object p1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10$1;->this$1:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 656
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10$1;->this$1:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;

    iget-boolean v0, v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;->val$isStart:Z

    .line 663
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10$1;->this$1:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startLocalAutoSync()Z

    goto :goto_0

    .line 663
    :cond_0
    iget-object v0, v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->canSync()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10$1;->this$1:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;

    iget-object v0, v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;->val$driveId:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/dvm/DvmUtil;->sdDocumentManager(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    .line 666
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    .line 667
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10$1;->this$1:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;

    iget-object v0, v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startAutoSyncForChanges()Z

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
