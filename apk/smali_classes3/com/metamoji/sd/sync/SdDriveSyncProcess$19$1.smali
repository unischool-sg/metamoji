.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

.field final synthetic val$moDocumentMap:Ljava/util/HashMap;

.field final synthetic val$moPoolDocumentMap:Ljava/util/HashMap;

.field final synthetic val$searchDataExistsMap:Ljava/util/HashMap;

.field final synthetic val$tagCheckMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3375
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iput-object p2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->val$moPoolDocumentMap:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->val$moDocumentMap:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->val$searchDataExistsMap:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->val$tagCheckMap:Ljava/util/HashMap;

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

    .line 3375
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 47
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3379
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$lockedRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "companyId"

    const-string/jumbo v4, "roomId"

    const-string v5, "optionsRevision"

    const-string v6, "options"

    const-string/jumbo v7, "tagsRevision"

    const-string/jumbo v8, "tagsUpdate"

    const-string/jumbo v9, "tags"

    const-string/jumbo v10, "title"

    const-string/jumbo v11, "titleRevision"

    const-string/jumbo v12, "titleUpdate"

    const-string v13, "contentsRevision"

    const-string v14, "contentsMimeType"

    const-string v15, "contentsUpdate"

    move-object/from16 v16, v1

    const-string v1, "contentsCreate"

    move/from16 v17, v2

    const-string v2, "deleteFlag"

    const-string v0, "id"

    move-object/from16 v18, v3

    const-string v3, "optionsUpdate"

    move-object/from16 v19, v4

    const-string v4, "hasSearchData"

    move-object/from16 v20, v5

    const-string v5, "contentsAttribute"

    move-object/from16 v21, v3

    if-eqz v17, :cond_27

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Lorg/json/JSONObject;

    .line 3380
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3381
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3382
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v1

    .line 3383
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v15

    .line 3384
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3385
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3386
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v12

    .line 3387
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3388
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3389
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3390
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v8

    .line 3391
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3392
    invoke-static {v9}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 3393
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 3394
    :goto_1
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_2
    move/from16 v17, v2

    const/4 v2, 0x0

    .line 3395
    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v2, v21

    .line 3396
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    goto :goto_3

    :cond_2
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v2

    :goto_3
    move-object/from16 v21, v20

    move/from16 v20, v6

    move-object/from16 v6, v21

    move/from16 v21, v4

    const/4 v4, 0x0

    .line 3397
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move/from16 v24, v5

    move-object/from16 v5, v19

    .line 3398
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    .line 3399
    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v9

    .line 3400
    const-string v9, "lastSequence"

    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v25, v9

    .line 3401
    const-string v9, "contentsCreateUserId"

    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v26, v5

    .line 3402
    const-string v5, "contentsUpdateUserId"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    if-eqz v21, :cond_3

    .line 3405
    iget-object v5, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$xmlDir:Ljava/io/File;

    if-eqz v5, :cond_3

    .line 3406
    new-instance v5, Ljava/io/File;

    move-object/from16 v21, v3

    iget-object v3, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$xmlDir:Ljava/io/File;

    move-object/from16 v27, v9

    const-string v9, "%s_search.xml"

    move-object/from16 v28, v6

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3407
    invoke-static {v5}, Lcom/metamoji/sd/SdUtils;->readFileAsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_3
    move-object/from16 v21, v3

    move-object/from16 v28, v6

    move-object/from16 v27, v9

    const/4 v3, 0x0

    .line 3410
    :goto_4
    iget-object v5, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->val$moPoolDocumentMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/sd/entities/SdMOPoolDocument;

    if-eqz v5, :cond_4

    .line 3413
    iget-object v6, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->val$moPoolDocumentMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3414
    iget-object v6, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v6, v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v9, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v9, v9, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v6, v5, v9}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deletePoolDocument(Lcom/metamoji/sd/entities/SdMOPoolDocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3417
    :cond_4
    iget-object v5, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->val$moDocumentMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/sd/entities/SdMODocument;

    if-eqz v17, :cond_a

    if-eqz v5, :cond_26

    .line 3421
    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdateFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_26

    .line 3424
    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    invoke-static {v1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->-$$Nest$fgetm_driveId(Lcom/metamoji/sd/sync/SdDriveSyncProcess;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->deleteRecordingsForDocumentId(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3426
    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->val$moDocumentMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3429
    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 3430
    iget-object v3, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v6, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v6, v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v2, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_5

    .line 3434
    :cond_5
    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->val$searchDataExistsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3435
    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 3437
    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3442
    :cond_6
    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v5, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3445
    new-instance v1, Ljava/io/File;

    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3446
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3447
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3451
    :cond_7
    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getThumbnailCacheById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOThumbnailCache;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 3454
    new-instance v2, Ljava/io/File;

    iget-object v3, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsRevision()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsUpdate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v0, v5, v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->thumbnailPathWithDocId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3456
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3457
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3459
    :cond_8
    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteThumbnailCache(Lcom/metamoji/sd/entities/SdMOThumbnailCache;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3463
    :cond_9
    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentRoomById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentRoom;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 3465
    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto/16 :goto_13

    :cond_a
    const/4 v6, 0x1

    if-nez v5, :cond_13

    .line 3471
    new-instance v5, Lcom/metamoji/sd/entities/SdMODocument;

    invoke-direct {v5}, Lcom/metamoji/sd/entities/SdMODocument;-><init>()V

    .line 3472
    invoke-virtual {v5, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setId(Ljava/lang/String;)V

    .line 3473
    invoke-virtual {v5, v10}, Lcom/metamoji/sd/entities/SdMODocument;->setTitle(Ljava/lang/String;)V

    .line 3474
    invoke-virtual {v5, v12}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdate(Ljava/util/Date;)V

    .line 3475
    invoke-virtual {v5, v11}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleRevision(Ljava/lang/String;)V

    .line 3476
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v9}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdateFlag(Ljava/lang/Boolean;)V

    .line 3477
    invoke-virtual {v5, v8}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdate(Ljava/util/Date;)V

    .line 3478
    invoke-virtual {v5, v7}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsRevision(Ljava/lang/String;)V

    .line 3479
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v7}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdateFlag(Ljava/lang/Boolean;)V

    .line 3480
    invoke-virtual {v5, v14}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsMimeType(Ljava/lang/String;)V

    .line 3481
    invoke-virtual {v5, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreate(Ljava/util/Date;)V

    .line 3482
    invoke-virtual {v5, v15}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdate(Ljava/util/Date;)V

    .line 3483
    invoke-virtual {v5, v13}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsRevision(Ljava/lang/String;)V

    .line 3484
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateFlag(Ljava/lang/Boolean;)V

    .line 3485
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 3486
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsAttribute(Ljava/lang/Integer;)V

    .line 3488
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setOptions(Ljava/lang/Integer;)V

    .line 3489
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsOrigin(Ljava/lang/Integer;)V

    .line 3490
    invoke-virtual {v5, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdate(Ljava/util/Date;)V

    move-object/from16 v9, v28

    .line 3491
    invoke-virtual {v5, v9}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsRevision(Ljava/lang/String;)V

    const/16 v22, 0x0

    .line 3492
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdateFlag(Ljava/lang/Boolean;)V

    .line 3495
    invoke-static {v5}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptionsRelatedInfo(Lcom/metamoji/sd/entities/SdMODocument;)V

    .line 3497
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setLocalOptions(Ljava/lang/Integer;)V

    move-object/from16 v1, v27

    .line 3500
    invoke-virtual {v5, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreateUserId(Ljava/lang/String;)V

    move-object/from16 v1, v21

    .line 3501
    invoke-virtual {v5, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateUserId(Ljava/lang/String;)V

    .line 3503
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3504
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3506
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3507
    iget-object v9, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->val$tagCheckMap:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    goto :goto_6

    .line 3511
    :cond_b
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_6

    .line 3514
    :cond_c
    sget-object v9, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3515
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3518
    :cond_d
    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsOrigin(Ljava/lang/String;)V

    .line 3519
    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v7, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v5, v7}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3521
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3522
    iget-object v7, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    new-instance v8, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-direct {v8, v5, v2}, Lcom/metamoji/sd/entities/SdMODocumentTag;-><init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V

    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v7, v8, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_7

    .line 3526
    :cond_e
    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->val$searchDataExistsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3527
    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v1

    .line 3528
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v1, v6, v3}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 3529
    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_8

    :cond_f
    if-eqz v3, :cond_10

    .line 3532
    new-instance v1, Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    invoke-direct {v1}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;-><init>()V

    .line 3533
    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->setId(Ljava/lang/String;)V

    .line 3534
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v1, v6, v3}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 3535
    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_10
    :goto_8
    if-eqz v26, :cond_26

    .line 3540
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_26

    .line 3541
    new-instance v1, Lcom/metamoji/sd/entities/SdMODocumentRoom;

    invoke-direct {v1}, Lcom/metamoji/sd/entities/SdMODocumentRoom;-><init>()V

    .line 3542
    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setId(Ljava/lang/String;)V

    move-object/from16 v0, v26

    .line 3543
    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setRoomId(Ljava/lang/String;)V

    if-nez v18, :cond_11

    .line 3544
    const-string v9, ""

    goto :goto_9

    :cond_11
    move-object/from16 v9, v18

    :goto_9
    invoke-virtual {v1, v9}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setCompanyId(Ljava/lang/String;)V

    if-eqz v25, :cond_12

    .line 3546
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_12

    move-object/from16 v0, v25

    .line 3547
    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setLastSequence(Ljava/lang/String;)V

    .line 3550
    :cond_12
    iget-object v0, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto/16 :goto_13

    :cond_13
    move-object/from16 v6, v21

    move-object/from16 v21, v3

    move-object v3, v6

    move-object/from16 v29, v25

    move-object/from16 v6, v27

    move-object/from16 v9, v28

    .line 3553
    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-nez v23, :cond_26

    .line 3555
    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getTitleUpdateFlag()Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-nez v23, :cond_14

    .line 3557
    invoke-virtual {v5, v10}, Lcom/metamoji/sd/entities/SdMODocument;->setTitle(Ljava/lang/String;)V

    .line 3558
    invoke-virtual {v5, v12}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdate(Ljava/util/Date;)V

    .line 3559
    invoke-virtual {v5, v11}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleRevision(Ljava/lang/String;)V

    const/4 v10, 0x1

    goto :goto_a

    :cond_14
    const/4 v10, 0x0

    .line 3562
    :goto_a
    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getOptionsUpdateFlag()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_15

    .line 3564
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/metamoji/sd/entities/SdMODocument;->setOptions(Ljava/lang/Integer;)V

    .line 3565
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsOrigin(Ljava/lang/Integer;)V

    .line 3566
    invoke-virtual {v5, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdate(Ljava/util/Date;)V

    .line 3567
    invoke-virtual {v5, v9}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsRevision(Ljava/lang/String;)V

    .line 3570
    invoke-static {v5}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptionsRelatedInfo(Lcom/metamoji/sd/entities/SdMODocument;)V

    const/4 v10, 0x1

    .line 3573
    :cond_15
    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getTagsUpdateFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 3575
    invoke-virtual {v5, v8}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdate(Ljava/util/Date;)V

    .line 3576
    invoke-virtual {v5, v7}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsRevision(Ljava/lang/String;)V

    .line 3578
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3579
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3581
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3582
    iget-object v10, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->val$tagCheckMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    goto :goto_b

    .line 3586
    :cond_16
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_17

    goto :goto_b

    .line 3589
    :cond_17
    sget-object v10, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3590
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 3593
    :cond_18
    invoke-static {v7}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsOrigin(Ljava/lang/String;)V

    .line 3596
    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v7

    invoke-interface {v7}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 3597
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocumentTag;->getName()Ljava/lang/String;

    move-result-object v9

    .line 3598
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 3599
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 3601
    :cond_19
    iget-object v9, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v9, v9, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v10, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v10, v10, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v9, v8, v10}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_c

    .line 3606
    :cond_1a
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3607
    iget-object v8, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v8, v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    new-instance v9, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-direct {v9, v5, v7}, Lcom/metamoji/sd/entities/SdMODocumentTag;-><init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V

    iget-object v7, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v8, v9, v7}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_d

    :cond_1b
    const/4 v10, 0x1

    .line 3611
    :cond_1c
    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdateFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_25

    .line 3612
    new-instance v2, Ljava/io/File;

    iget-object v7, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v7, v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3614
    iget-object v7, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    .line 3615
    invoke-virtual {v7}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->isPrivate()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 3616
    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/metamoji/sd/SdUtils;->isOnBitFlag(Ljava/lang/Integer;I)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 3617
    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 3618
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1d

    const/16 v22, 0x1

    goto :goto_e

    :cond_1d
    const/16 v22, 0x0

    :goto_e
    if-eqz v22, :cond_1e

    .line 3621
    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    invoke-static {v1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->-$$Nest$fgetm_downloadIds(Lcom/metamoji/sd/sync/SdDriveSyncProcess;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 3622
    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    invoke-static {v1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->-$$Nest$fgetm_downloadIds(Lcom/metamoji/sd/sync/SdDriveSyncProcess;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    .line 3627
    :cond_1e
    invoke-virtual {v5, v6}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreateUserId(Ljava/lang/String;)V

    .line 3628
    invoke-virtual {v5, v3}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateUserId(Ljava/lang/String;)V

    .line 3630
    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 3632
    invoke-virtual {v5, v14}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsMimeType(Ljava/lang/String;)V

    .line 3633
    invoke-virtual {v5, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreate(Ljava/util/Date;)V

    .line 3634
    invoke-virtual {v5, v15}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdate(Ljava/util/Date;)V

    .line 3635
    invoke-virtual {v5, v13}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsRevision(Ljava/lang/String;)V

    .line 3636
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsAttribute(Ljava/lang/Integer;)V

    .line 3639
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3640
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3644
    :cond_1f
    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->val$searchDataExistsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3645
    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v1

    .line 3646
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const/4 v3, 0x2

    move-object/from16 v6, v21

    invoke-static {v2, v1, v3, v6}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 3647
    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_f

    :cond_20
    move-object/from16 v6, v21

    if-eqz v6, :cond_21

    .line 3650
    new-instance v1, Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    invoke-direct {v1}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;-><init>()V

    .line 3651
    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->setId(Ljava/lang/String;)V

    .line 3652
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const/4 v3, 0x2

    invoke-static {v2, v1, v3, v6}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 3653
    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_21
    :goto_f
    if-eqz v26, :cond_24

    .line 3658
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_24

    .line 3659
    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentRoomById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentRoom;

    move-result-object v1

    if-nez v1, :cond_23

    .line 3661
    new-instance v1, Lcom/metamoji/sd/entities/SdMODocumentRoom;

    invoke-direct {v1}, Lcom/metamoji/sd/entities/SdMODocumentRoom;-><init>()V

    .line 3662
    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setId(Ljava/lang/String;)V

    move-object/from16 v0, v26

    .line 3663
    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setRoomId(Ljava/lang/String;)V

    if-nez v18, :cond_22

    .line 3664
    const-string v9, ""

    goto :goto_10

    :cond_22
    move-object/from16 v9, v18

    :goto_10
    invoke-virtual {v1, v9}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setCompanyId(Ljava/lang/String;)V

    .line 3665
    iget-object v0, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_23
    move-object/from16 v0, v29

    if-eqz v0, :cond_24

    .line 3668
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_24

    .line 3669
    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setLastSequence(Ljava/lang/String;)V

    .line 3670
    iget-object v0, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_24
    const/4 v6, 0x1

    goto :goto_12

    :cond_25
    :goto_11
    move v6, v10

    :goto_12
    if-eqz v6, :cond_26

    .line 3679
    iget-object v0, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v5, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_26
    :goto_13
    move-object v0, v4

    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_27
    move-object/from16 v3, p0

    move-object/from16 v17, v6

    move-object v6, v5

    move-object v5, v9

    .line 3687
    iget-object v9, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v9, v9, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$notlockedRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_14
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v24, v9

    move-object/from16 v9, v16

    check-cast v9, Lorg/json/JSONObject;

    .line 3688
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3689
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 3690
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v25

    move-object/from16 v27, v0

    invoke-static/range {v25 .. v26}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v0

    .line 3691
    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v25

    move-object/from16 v28, v1

    invoke-static/range {v25 .. v26}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v1

    move-object/from16 v25, v2

    .line 3692
    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v26, v14

    .line 3693
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3694
    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v29

    move-object/from16 v31, v12

    invoke-static/range {v29 .. v30}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v12

    move-object/from16 v29, v13

    .line 3695
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v30, v11

    .line 3696
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v32, v10

    .line 3697
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3698
    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v33

    move-object/from16 v35, v5

    invoke-static/range {v33 .. v34}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v5

    move-object/from16 v33, v8

    .line 3699
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3700
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_28

    const/16 v34, 0x0

    goto :goto_15

    :cond_28
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v34

    .line 3701
    :goto_15
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_29

    const/16 v36, 0x0

    goto :goto_16

    :cond_29
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    :goto_16
    move-object/from16 v22, v17

    move-object/from16 v17, v4

    move-object/from16 v4, v22

    move-object/from16 v22, v6

    const/4 v6, 0x0

    .line 3702
    invoke-virtual {v9, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v37

    move-object/from16 v6, v21

    .line 3703
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2a

    new-instance v21, Ljava/util/Date;

    invoke-direct/range {v21 .. v21}, Ljava/util/Date;-><init>()V

    goto :goto_17

    :cond_2a
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v21

    :goto_17
    move-object/from16 v38, v4

    move-object/from16 v39, v15

    move-object/from16 v4, v21

    move-object/from16 v21, v6

    move-object/from16 v6, v20

    move-object/from16 v20, v7

    const/4 v7, 0x0

    .line 3704
    invoke-virtual {v9, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v40, v6

    move-object/from16 v6, v19

    move-object/from16 v19, v4

    .line 3705
    invoke-virtual {v9, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v41, v6

    move-object/from16 v6, v18

    move-object/from16 v18, v4

    .line 3706
    invoke-virtual {v9, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v42, v6

    .line 3707
    const-string v6, "lastSequence"

    invoke-virtual {v9, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v43, v6

    .line 3708
    const-string v6, "contentsCreateUserId"

    invoke-virtual {v9, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v44, v6

    .line 3709
    const-string v6, "contentsUpdateUserId"

    invoke-virtual {v9, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p0

    if-eqz v36, :cond_2b

    .line 3712
    iget-object v9, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v9, v9, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$xmlDir:Ljava/io/File;

    if-eqz v9, :cond_2b

    .line 3713
    new-instance v9, Ljava/io/File;

    move-object/from16 v36, v6

    iget-object v6, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v6, v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$xmlDir:Ljava/io/File;

    move-object/from16 v45, v4

    const-string v4, "%s_search.xml"

    move-object/from16 v46, v15

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v4, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3714
    invoke-static {v9}, Lcom/metamoji/sd/SdUtils;->readFileAsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    goto :goto_18

    :cond_2b
    move-object/from16 v45, v4

    move-object/from16 v36, v6

    move-object/from16 v46, v15

    const/4 v4, 0x0

    .line 3717
    :goto_18
    iget-object v6, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->val$moPoolDocumentMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/sd/entities/SdMOPoolDocument;

    if-nez v6, :cond_2c

    .line 3720
    new-instance v6, Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-direct {v6}, Lcom/metamoji/sd/entities/SdMOPoolDocument;-><init>()V

    .line 3721
    invoke-virtual {v6, v3}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setId(Ljava/lang/String;)V

    .line 3724
    :cond_2c
    invoke-virtual {v6, v11}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setTitle(Ljava/lang/String;)V

    .line 3725
    invoke-virtual {v6, v12}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setTitleUpdate(Ljava/util/Date;)V

    .line 3726
    invoke-virtual {v6, v13}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setTitleRevision(Ljava/lang/String;)V

    .line 3727
    invoke-virtual {v6, v10}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setTags(Ljava/lang/String;)V

    .line 3728
    invoke-virtual {v6, v5}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setTagsUpdate(Ljava/util/Date;)V

    .line 3729
    invoke-virtual {v6, v8}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setTagsRevision(Ljava/lang/String;)V

    .line 3730
    invoke-virtual {v6, v2}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setContentsMimeType(Ljava/lang/String;)V

    .line 3731
    invoke-virtual {v6, v0}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setContentsCreate(Ljava/util/Date;)V

    .line 3732
    invoke-virtual {v6, v1}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setContentsUpdate(Ljava/util/Date;)V

    .line 3733
    invoke-virtual {v6, v14}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setContentsRevision(Ljava/lang/String;)V

    if-nez v16, :cond_2d

    .line 3734
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_19

    :cond_2d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_19
    invoke-virtual {v6, v0}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 3735
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setContentsAttribute(Ljava/lang/Integer;)V

    .line 3736
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setOptions(Ljava/lang/Integer;)V

    move-object/from16 v0, v46

    .line 3737
    invoke-virtual {v6, v0}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setOptionsRevision(Ljava/lang/String;)V

    move-object/from16 v0, v19

    .line 3738
    invoke-virtual {v6, v0}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setOptionsUpdate(Ljava/util/Date;)V

    move-object/from16 v0, v18

    .line 3739
    invoke-virtual {v6, v0}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setRoomId(Ljava/lang/String;)V

    move-object/from16 v0, v45

    .line 3740
    invoke-virtual {v6, v0}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setCompanyId(Ljava/lang/String;)V

    move-object/from16 v0, v44

    .line 3741
    invoke-virtual {v6, v0}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setContentsCreateUserId(Ljava/lang/String;)V

    move-object/from16 v0, v36

    .line 3742
    invoke-virtual {v6, v0}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setContentsUpdateUserId(Ljava/lang/String;)V

    .line 3743
    invoke-virtual {v6, v4}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setSearchData(Ljava/lang/String;)V

    move-object/from16 v0, v43

    .line 3744
    invoke-virtual {v6, v0}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->setLastSequence(Ljava/lang/String;)V

    .line 3746
    iget-object v0, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v6, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createOrUpdatePoolDocument(Lcom/metamoji/sd/entities/SdMOPoolDocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    move-object v3, v7

    move-object/from16 v4, v17

    move-object/from16 v7, v20

    move-object/from16 v6, v22

    move-object/from16 v9, v24

    move-object/from16 v2, v25

    move-object/from16 v14, v26

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v13, v29

    move-object/from16 v11, v30

    move-object/from16 v12, v31

    move-object/from16 v10, v32

    move-object/from16 v8, v33

    move-object/from16 v5, v35

    move-object/from16 v17, v38

    move-object/from16 v15, v39

    move-object/from16 v20, v40

    move-object/from16 v19, v41

    move-object/from16 v18, v42

    goto/16 :goto_14

    :cond_2e
    move-object v7, v3

    const/16 v23, 0x0

    return-object v23
.end method
