.class Lcom/metamoji/dm/impl/sync/DmDCSyncManager$6;
.super Ljava/lang/Object;
.source "DmDCSyncManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->toDoSync(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

.field final synthetic val$withoutSending:Z


# direct methods
.method constructor <init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;Z)V
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

    .line 543
    iput-object p1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$6;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    iput-boolean p2, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$6;->val$withoutSending:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 547
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v0

    .line 548
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getCurrentPrivateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdPrivateDriveManager;->getDocumentManagerByPrivateId(Ljava/lang/String;)Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 550
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 551
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->clearNeedSyncFlag()V

    .line 552
    iget-boolean v2, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$6;->val$withoutSending:Z

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->needSyncFlag(Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 553
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$6;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    invoke-static {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$mgetUnsynedUserItemCount(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;)I

    move-result v0

    if-lez v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 543
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$6;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
