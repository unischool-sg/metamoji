.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$2;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

.field final synthetic val$moFolder:Lcom/metamoji/sd/entities/SdMOFolder;

.field final synthetic val$parentTags:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;Lcom/metamoji/sd/entities/SdMOFolder;Ljava/util/List;)V
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

    .line 2863
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$2;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iput-object p2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$2;->val$moFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    iput-object p3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$2;->val$parentTags:Ljava/util/List;

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

    .line 2863
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$2;->call()Ljava/lang/Void;

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

    .line 2866
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$2;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$2;->val$moFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$2;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 2869
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$2;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$2;->val$parentTags:Ljava/util/List;

    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$2;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolder2ById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2870
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2871
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$2;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$2;->val$parentTags:Ljava/util/List;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$2;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderNamesWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    .line 2872
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 2873
    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrder(Ljava/lang/String;)V

    .line 2874
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$2;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$2;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
