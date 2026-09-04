.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$16$1;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3005
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;

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

    .line 3005
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3007
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;->val$data:Lorg/json/JSONObject;

    const-string/jumbo v1, "tagOrder"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3008
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;->val$data:Lorg/json/JSONObject;

    const-string/jumbo v2, "revision"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3009
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;->val$data:Lorg/json/JSONObject;

    const-string v3, "lastUpdate"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v2

    .line 3012
    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagOrderByDefaultId(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTagOrder;

    move-result-object v3

    .line 3014
    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMOTagOrder;->getUpdateFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3017
    iget-object v4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagNameListWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v4

    .line 3018
    invoke-static {v4, v0}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3019
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 3021
    invoke-virtual {v3, v0}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setTagOrder(Ljava/lang/String;)V

    .line 3022
    invoke-virtual {v3, v0}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setTagOrderOrigin(Ljava/lang/String;)V

    .line 3023
    invoke-virtual {v3, v2}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setUpdate(Ljava/util/Date;)V

    .line 3024
    invoke-virtual {v3, v1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setRevision(Ljava/lang/String;)V

    .line 3025
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$16;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateTagOrder(Lcom/metamoji/sd/entities/SdMOTagOrder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
