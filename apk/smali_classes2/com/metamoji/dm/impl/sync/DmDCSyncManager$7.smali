.class Lcom/metamoji/dm/impl/sync/DmDCSyncManager$7;
.super Ljava/lang/Object;
.source "DmDCSyncManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->toDoUploadSync(Z)Z
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

    .line 580
    iput-object p1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$7;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    iput-boolean p2, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$7;->val$withoutSending:Z

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

    .line 584
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$7;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->canSync()Z

    move-result v0

    const/4 v1, 0x0

    .line 585
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_0

    return-object v1

    .line 589
    :cond_0
    invoke-static {}, Lcom/metamoji/sd/SdPrivateDriveManager;->getInstance()Lcom/metamoji/sd/SdPrivateDriveManager;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Lcom/metamoji/sd/SdPrivateDriveManager;->getCurrentPrivateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdPrivateDriveManager;->getDocumentManagerByPrivateId(Ljava/lang/String;)Lcom/metamoji/sd/SdPrivateDriveDocumentManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 592
    iget-boolean v2, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$7;->val$withoutSending:Z

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->needSyncFlag(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 593
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 580
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$7;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
