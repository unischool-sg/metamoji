.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

.field final synthetic val$moFolderMap:Ljava/util/HashMap;

.field final synthetic val$normalizedData:Ljava/util/ArrayList;

.field final synthetic val$tagCheckMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
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

    .line 3115
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iput-object p2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->val$normalizedData:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->val$moFolderMap:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->val$tagCheckMap:Ljava/util/HashMap;

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

    .line 3115
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3119
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->val$normalizedData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 3120
    const-string v2, "absPath"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3121
    const-string v3, "parentAbsPath"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3122
    const-string/jumbo v4, "tags"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3123
    const-string v5, "parentTags"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 3124
    const-string v6, "deleteFlag"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 3125
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3126
    const-string v8, "lastUpdate"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Date;

    .line 3127
    const-string/jumbo v9, "revision"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3129
    iget-object v9, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->val$moFolderMap:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/sd/entities/SdMOFolder;

    .line 3130
    iget-object v10, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->val$moFolderMap:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/sd/entities/SdMOFolder;

    if-eqz v6, :cond_1

    if-eqz v9, :cond_0

    .line 3133
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMOFolder;->getUpdateFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3134
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v6, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v6, v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v4, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderCountWithoutDeletedByTags(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v1, v6, v10

    if-nez v1, :cond_0

    .line 3138
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->val$moFolderMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3139
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v9, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3142
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v5, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderNamesWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    .line 3143
    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 3144
    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrder(Ljava/lang/String;)V

    .line 3145
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v3, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto/16 :goto_0

    :cond_1
    if-nez v9, :cond_6

    if-eqz v3, :cond_0

    .line 3151
    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_0

    .line 3156
    :cond_2
    invoke-static {v7}, Lcom/metamoji/sd/SdUtils;->isAvailableTagName(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_0

    .line 3161
    :cond_3
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_0

    .line 3166
    :cond_4
    iget-object v6, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->val$tagCheckMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_0

    .line 3170
    :cond_5
    new-instance v6, Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-direct {v6}, Lcom/metamoji/sd/entities/SdMOFolder;-><init>()V

    .line 3171
    invoke-virtual {v6, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setAbsPath(Ljava/lang/String;)V

    .line 3172
    invoke-virtual {v6, v7}, Lcom/metamoji/sd/entities/SdMOFolder;->setName(Ljava/lang/String;)V

    .line 3173
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/metamoji/sd/entities/SdMOFolder;->setDepth(Ljava/lang/Integer;)V

    .line 3174
    const-string v4, ""

    invoke-virtual {v6, v4}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrder(Ljava/lang/String;)V

    .line 3175
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v4}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdate(Ljava/util/Date;)V

    .line 3176
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v4}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdateFlag(Ljava/lang/Boolean;)V

    .line 3177
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v4}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 3178
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v4}, Lcom/metamoji/sd/entities/SdMOFolder;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 3179
    invoke-virtual {v6, v8}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdate(Ljava/util/Date;)V

    .line 3180
    invoke-virtual {v6, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setRevision(Ljava/lang/String;)V

    .line 3182
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v6, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3183
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->val$moFolderMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3186
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v5, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderNamesWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    .line 3187
    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 3188
    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrder(Ljava/lang/String;)V

    .line 3189
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v3, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto/16 :goto_0

    .line 3191
    :cond_6
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMOFolder;->getUpdateFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3192
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v3, :cond_0

    .line 3194
    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_0

    .line 3199
    :cond_7
    invoke-static {v7}, Lcom/metamoji/sd/SdUtils;->isAvailableTagName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 3204
    :cond_8
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_0

    .line 3209
    :cond_9
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->val$tagCheckMap:Ljava/util/HashMap;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    .line 3213
    :cond_a
    invoke-virtual {v9, v8}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdate(Ljava/util/Date;)V

    .line 3214
    invoke-virtual {v9, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setRevision(Ljava/lang/String;)V

    .line 3215
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 3217
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v9, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3220
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v5, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderNamesWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    .line 3221
    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 3222
    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrder(Ljava/lang/String;)V

    .line 3223
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v3, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto/16 :goto_0

    .line 3226
    :cond_b
    invoke-virtual {v9, v8}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdate(Ljava/util/Date;)V

    .line 3227
    invoke-virtual {v9, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setRevision(Ljava/lang/String;)V

    .line 3228
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$17;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v9, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method
