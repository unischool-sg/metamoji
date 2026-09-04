.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$9$1;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess$9;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$9;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$9;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2317
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$9$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$9;

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

    .line 2317
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$9$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2319
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$9$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$9;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$9$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$9;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagOrderByDefaultId(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTagOrder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2326
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOTagOrder;->getRevision()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2327
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setRevision(Ljava/lang/String;)V

    .line 2330
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 2331
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$9$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$9;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$9$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$9;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateTagOrder(Lcom/metamoji/sd/entities/SdMOTagOrder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    const/4 v0, 0x0

    return-object v0

    .line 2322
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Default tag order not found."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
