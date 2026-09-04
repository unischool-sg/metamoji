.class Lcom/metamoji/sd/sync/SdAllSyncProcess$2;
.super Ljava/lang/Object;
.source "SdAllSyncProcess.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdAllSyncProcess;->doGetDriveList()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/sd/SdBlock<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/sd/sync/SdAllSyncProcess;

.field final synthetic val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

.field final synthetic val$discardedNames:Ljava/util/List;

.field final synthetic val$dmgr:Lcom/metamoji/dvm/DvmDriveManager;

.field final synthetic val$driveIds:Ljava/util/ArrayList;

.field final synthetic val$driveInfoMap:Ljava/util/HashMap;

.field final synthetic val$hideOrNotChangeIds:Ljava/util/ArrayList;

.field final synthetic val$initializedIds:Ljava/util/ArrayList;

.field final synthetic val$moMgr:Lcom/metamoji/sd/SdDriveMOManager;

.field final synthetic val$result:Lcom/metamoji/sd/SdValue;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdAllSyncProcess;Lcom/metamoji/sd/SdDriveMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/util/ArrayList;Lcom/metamoji/dvm/DvmDriveManager;Ljava/util/List;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/metamoji/sd/SdValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
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

    .line 239
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->this$0:Lcom/metamoji/sd/sync/SdAllSyncProcess;

    iput-object p2, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$moMgr:Lcom/metamoji/sd/SdDriveMOManager;

    iput-object p3, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p4, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$driveIds:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$dmgr:Lcom/metamoji/dvm/DvmDriveManager;

    iput-object p6, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$discardedNames:Ljava/util/List;

    iput-object p7, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$driveInfoMap:Ljava/util/HashMap;

    iput-object p8, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$hideOrNotChangeIds:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$initializedIds:Ljava/util/ArrayList;

    iput-object p10, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$result:Lcom/metamoji/sd/SdValue;

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

    .line 239
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$moMgr:Lcom/metamoji/sd/SdDriveMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveIdAll(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 243
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 244
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$driveIds:Ljava/util/ArrayList;

    invoke-interface {v3, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 245
    new-instance v6, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$driveIds:Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 246
    invoke-interface {v6, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 247
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$driveIds:Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 248
    invoke-interface {v5, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 249
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 250
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v1, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/sd/sync/SdAllSyncProcess$2$1;-><init>(Lcom/metamoji/sd/sync/SdAllSyncProcess$2;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 333
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 334
    iget-object v3, v2, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$dmgr:Lcom/metamoji/dvm/DvmDriveManager;

    invoke-virtual {v3, v1}, Lcom/metamoji/dvm/DvmDriveManager;->discardDocumentManagerByDriveId(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, v2, Lcom/metamoji/sd/sync/SdAllSyncProcess$2;->val$result:Lcom/metamoji/sd/SdValue;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method
