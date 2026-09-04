.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$13$1;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess$13;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$13;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$13;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2525
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$13$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$13;

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

    .line 2525
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$13$1;->call()Ljava/lang/Void;

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

    .line 2527
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$13$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$13;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$13;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$13$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$13;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$13;->val$docIds:Ljava/util/List;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$13$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$13;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$13;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentsByIds(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 2529
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sd/entities/SdMODocument;

    .line 2531
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getTagsRevision()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2532
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsRevision(Ljava/lang/String;)V

    .line 2536
    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdateFlag(Ljava/lang/Boolean;)V

    .line 2537
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$13$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$13;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$13;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$13$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$13;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$13;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
