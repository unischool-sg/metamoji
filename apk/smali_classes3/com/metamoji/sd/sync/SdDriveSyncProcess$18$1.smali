.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$18$1;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3273
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;

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

    .line 3273
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3276
    :goto_0
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3277
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 3278
    const-string v2, "absPath"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3279
    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 3280
    const-string v3, "childrenOrder"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3281
    const-string v4, "childrenOrderRevision"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3282
    const-string v5, "childrenOrderUpdate"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v1

    .line 3284
    iget-object v5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v5, v6, v7}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolder2ById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3286
    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrderUpdateFlag()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3287
    iget-object v6, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;

    iget-object v6, v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v7, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v6, v2, v7}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderNamesWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v2

    .line 3288
    invoke-static {v3}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 3289
    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 3290
    invoke-virtual {v5, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrder(Ljava/lang/String;)V

    .line 3291
    invoke-virtual {v5, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderOrigin(Ljava/lang/String;)V

    .line 3292
    invoke-virtual {v5, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdate(Ljava/util/Date;)V

    .line 3293
    invoke-virtual {v5, v4}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderRevision(Ljava/lang/String;)V

    .line 3294
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v5, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
