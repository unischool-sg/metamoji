.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$8$1;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2265
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$8$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;

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

    .line 2265
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$8$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2267
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$8$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$8$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;->val$tagNames:Ljava/util/List;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$8$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagsByIds(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 2268
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sd/entities/SdMOTag;

    .line 2269
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOTag;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2271
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$8$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$8$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteTag(Lcom/metamoji/sd/entities/SdMOTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_0

    .line 2274
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOTag;->getRevision()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2275
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMOTag;->setRevision(Ljava/lang/String;)V

    .line 2278
    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMOTag;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 2279
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$8$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$8$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$8;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateTag(Lcom/metamoji/sd/entities/SdMOTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
