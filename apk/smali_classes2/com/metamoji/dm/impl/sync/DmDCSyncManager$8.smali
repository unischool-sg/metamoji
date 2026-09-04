.class Lcom/metamoji/dm/impl/sync/DmDCSyncManager$8;
.super Ljava/lang/Object;
.source "DmDCSyncManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->toDoDriveSync(Ljava/lang/String;)Z
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

.field final synthetic val$driveId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;Ljava/lang/String;)V
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

    .line 606
    iput-object p1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$8;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    iput-object p2, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$8;->val$driveId:Ljava/lang/String;

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

    .line 609
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$8;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->canSync()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 610
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 612
    :cond_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$8;->val$driveId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDocumentManagerByDriveId(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v0

    .line 613
    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->hasChangedContents(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    .line 606
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$8;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
