.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doMergeTagDefWithData(Lorg/json/JSONArray;)Z
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

    .line 2793
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iput-object p2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$data:Lorg/json/JSONArray;

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

    .line 2793
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2795
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagOrderByDefaultId(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTagOrder;

    move-result-object v5

    .line 2796
    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMOTagOrder;->getTagOrder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2797
    iget-object v2, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagNameListWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v2

    .line 2800
    invoke-static {v2, v0}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 2802
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v4, v2

    .line 2803
    :goto_0
    iget-object v6, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    const-string/jumbo v7, "tagName"

    if-ge v4, v6, :cond_0

    .line 2804
    iget-object v6, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2808
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2809
    iget-object v4, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v8, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v0, v8}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagsByIds(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/entities/SdMOTag;

    .line 2810
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMOTag;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2813
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2816
    :goto_2
    iget-object v4, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 2817
    iget-object v4, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$data:Lorg/json/JSONArray;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2818
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2819
    const-string v9, "deleteFlag"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2821
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/sd/entities/SdMOTag;

    if-eqz v4, :cond_2

    if-eqz v8, :cond_2

    .line 2825
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMOTag;->getUpdateFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2826
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2832
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/metamoji/sd/entities/SdMOTag;

    .line 2833
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOTag;->getName()Ljava/lang/String;

    move-result-object v4

    .line 2835
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v8, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v4, v8}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderByName(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_6

    .line 2839
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOFolder;->getAbsPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 2840
    invoke-static {v8}, Lcom/metamoji/sd/SdUtils;->removeLast(Ljava/util/List;)V

    .line 2843
    :cond_4
    iget-object v9, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOFolder;->getAbsPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->-$$Nest$sfgetNUMBER_OF_MANAGEDOBJECT_PROCESSED_AT_SAVE()J

    move-result-wide v14

    iget-object v11, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    move-object/from16 v16, v11

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFoldersUnder(Ljava/lang/String;ZJJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v9

    .line 2845
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 2846
    iget-object v10, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v11, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$1;

    invoke-direct {v11, v1, v9}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$1;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;Ljava/util/List;)V

    invoke-virtual {v10, v11}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 2858
    :cond_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    int-to-long v9, v9

    invoke-static {}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->-$$Nest$sfgetNUMBER_OF_MANAGEDOBJECT_PROCESSED_AT_SAVE()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_4

    .line 2863
    iget-object v9, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v10, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$2;

    invoke-direct {v10, v1, v0, v8}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$2;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;Lcom/metamoji/sd/entities/SdMOFolder;Ljava/util/List;)V

    invoke-virtual {v9, v10}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 2881
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v8, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v4, v8}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderByName(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v0

    goto :goto_4

    .line 2886
    :cond_6
    iget-object v8, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-static {}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->-$$Nest$sfgetNUMBER_OF_MANAGEDOBJECT_PROCESSED_AT_SAVE()J

    move-result-wide v12

    iget-object v14, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    const-wide/16 v10, 0x0

    move-object v9, v4

    invoke-virtual/range {v8 .. v14}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentsWithoutDeletedByTagName(Ljava/lang/String;JJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 2888
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 2889
    iget-object v8, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v9, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$3;

    invoke-direct {v9, v1, v0, v4}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$3;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 2905
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v8, v0

    invoke-static {}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->-$$Nest$sfgetNUMBER_OF_MANAGEDOBJECT_PROCESSED_AT_SAVE()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-gez v0, :cond_6

    .line 2911
    iget-object v8, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$4;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;Lcom/metamoji/sd/entities/SdMOTag;Ljava/util/List;Ljava/lang/String;Lcom/metamoji/sd/entities/SdMOTagOrder;)V

    invoke-virtual {v8, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2925
    :cond_8
    iget-object v0, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;

    invoke-direct {v2, v1, v6, v3, v5}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$15$5;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$15;Ljava/util/HashMap;Ljava/util/List;Lcom/metamoji/sd/entities/SdMOTagOrder;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method
