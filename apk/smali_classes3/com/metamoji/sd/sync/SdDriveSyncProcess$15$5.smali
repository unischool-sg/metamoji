.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;
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

.field final synthetic val$moTagMap:Ljava/util/HashMap;

.field final synthetic val$moTagOrder:Lcom/metamoji/sd/entities/SdMOTagOrder;

.field final synthetic val$tagsOfOrder:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;Ljava/util/HashMap;Ljava/util/List;Lcom/metamoji/sd/entities/SdMOTagOrder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 2925
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iput-object p2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->val$moTagMap:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->val$tagsOfOrder:Ljava/util/List;

    iput-object p4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->val$moTagOrder:Lcom/metamoji/sd/entities/SdMOTagOrder;

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

    .line 2925
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 2928
    :goto_0
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2929
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2930
    const-string/jumbo v3, "tagName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2931
    const-string v4, "deleteFlag"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2932
    const-string v5, "color"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2933
    const-string/jumbo v6, "revision"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2934
    const-string v7, "lastUpdate"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v2

    .line 2936
    iget-object v7, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->val$moTagMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/sd/entities/SdMOTag;

    if-nez v4, :cond_1

    if-eqz v7, :cond_0

    .line 2940
    invoke-virtual {v7}, Lcom/metamoji/sd/entities/SdMOTag;->getUpdateFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2941
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/metamoji/sd/entities/SdMOTag;->setColor(Ljava/lang/Integer;)V

    .line 2942
    invoke-virtual {v7, v2}, Lcom/metamoji/sd/entities/SdMOTag;->setUpdate(Ljava/util/Date;)V

    .line 2943
    invoke-virtual {v7, v6}, Lcom/metamoji/sd/entities/SdMOTag;->setRevision(Ljava/lang/String;)V

    .line 2944
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v7, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateTag(Lcom/metamoji/sd/entities/SdMOTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_1

    .line 2947
    :cond_0
    new-instance v4, Lcom/metamoji/sd/entities/SdMOTag;

    invoke-direct {v4}, Lcom/metamoji/sd/entities/SdMOTag;-><init>()V

    .line 2948
    invoke-virtual {v4, v3}, Lcom/metamoji/sd/entities/SdMOTag;->setName(Ljava/lang/String;)V

    .line 2949
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/sd/entities/SdMOTag;->setColor(Ljava/lang/Integer;)V

    .line 2950
    invoke-virtual {v4, v2}, Lcom/metamoji/sd/entities/SdMOTag;->setUpdate(Ljava/util/Date;)V

    .line 2951
    invoke-virtual {v4, v6}, Lcom/metamoji/sd/entities/SdMOTag;->setRevision(Ljava/lang/String;)V

    .line 2952
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v2}, Lcom/metamoji/sd/entities/SdMOTag;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 2953
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v2}, Lcom/metamoji/sd/entities/SdMOTag;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 2954
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v4, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createTag(Lcom/metamoji/sd/entities/SdMOTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 2956
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->val$tagsOfOrder:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2957
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->val$tagsOfOrder:Ljava/util/List;

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2963
    :cond_2
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->val$moTagOrder:Lcom/metamoji/sd/entities/SdMOTagOrder;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->val$tagsOfOrder:Ljava/util/List;

    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setTagOrder(Ljava/lang/String;)V

    .line 2964
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->val$moTagOrder:Lcom/metamoji/sd/entities/SdMOTagOrder;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateTagOrder(Lcom/metamoji/sd/entities/SdMOTagOrder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    const/4 v0, 0x0

    return-object v0
.end method
