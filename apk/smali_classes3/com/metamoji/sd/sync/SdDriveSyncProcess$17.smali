.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doMergeFolderDefWithData(Lorg/json/JSONArray;)Z
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
.field final synthetic this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

.field final synthetic val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

.field final synthetic val$data:Lorg/json/JSONArray;

.field final synthetic val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Lorg/json/JSONArray;)V
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

    .line 3062
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iput-object p2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$data:Lorg/json/JSONArray;

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

    .line 3062
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3066
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3067
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagNameListWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3068
    sget-object v3, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3071
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3072
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 3074
    :goto_1
    iget-object v4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 3075
    iget-object v4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 3076
    const-string v5, "absPath"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 3078
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_3

    .line 3083
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3084
    invoke-static {v7}, Lcom/metamoji/sd/SdUtils;->removeLast(Ljava/util/List;)V

    .line 3085
    invoke-static {v6}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 3086
    invoke-static {v7}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 3088
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 3089
    const-string/jumbo v11, "tags"

    invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3090
    const-string v6, "parentTags"

    invoke-interface {v10, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3091
    invoke-interface {v10, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3092
    const-string v5, "parentAbsPath"

    invoke-interface {v10, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3093
    const-string v5, "deleteFlag"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    invoke-interface {v10, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3094
    const-string/jumbo v5, "revision"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3095
    const-string v5, "lastUpdate"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v4

    invoke-interface {v10, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3097
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3099
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3100
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 3101
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3106
    :cond_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3107
    iget-object v4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v2, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFoldersByIds(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/entities/SdMOFolder;

    .line 3108
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMOFolder;->getAbsPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 3112
    :cond_5
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolder2ById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v2

    .line 3113
    const-string v4, ""

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3115
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;

    invoke-direct {v4, p0, v1, v3, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v2, v4}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-object v5
.end method
