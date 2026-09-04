.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

.field final synthetic val$searchDataExistsMap:Ljava/util/HashMap;

.field final synthetic val$tagCheckMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;Lcom/metamoji/sd/entities/SdMOPoolDocument;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
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

    .line 3820
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iput-object p2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    iput-object p3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$searchDataExistsMap:Ljava/util/HashMap;

    iput-object p5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$tagCheckMap:Ljava/util/HashMap;

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

    .line 3820
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3822
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v1

    .line 3823
    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getContentsCreate()Ljava/util/Date;

    move-result-object v2

    .line 3824
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getContentsUpdate()Ljava/util/Date;

    move-result-object v3

    .line 3825
    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getContentsMimeType()Ljava/lang/String;

    move-result-object v4

    .line 3826
    iget-object v5, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v5

    .line 3827
    iget-object v6, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getTitleUpdate()Ljava/util/Date;

    move-result-object v6

    .line 3828
    iget-object v7, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v7}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getTagsRevision()Ljava/lang/String;

    move-result-object v7

    .line 3829
    iget-object v8, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 3830
    iget-object v9, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getTags()Ljava/lang/String;

    move-result-object v9

    .line 3831
    iget-object v10, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v10}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getTagsUpdate()Ljava/util/Date;

    move-result-object v10

    .line 3832
    iget-object v11, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getTagsRevision()Ljava/lang/String;

    move-result-object v11

    .line 3833
    invoke-static {v9}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 3834
    iget-object v12, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v12}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getContentsAttribute()Ljava/lang/Integer;

    move-result-object v12

    .line 3835
    iget-object v13, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v13}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getOptions()Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 3836
    iget-object v14, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v14}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getOptionsUpdate()Ljava/util/Date;

    move-result-object v14

    .line 3837
    iget-object v15, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v15}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getOptionsRevision()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v1

    .line 3838
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getRoomId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v9

    .line 3839
    iget-object v9, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getCompanyId()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v18, v9

    .line 3840
    iget-object v9, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getLastSequence()Ljava/lang/String;

    move-result-object v9

    move/from16 v19, v13

    .line 3841
    iget-object v13, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v13}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getContentsCreateUserId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v9

    .line 3842
    iget-object v9, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getContentsUpdateUserId()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v21, v9

    .line 3843
    iget-object v9, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMOPoolDocument;->getSearchData()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v22, v9

    .line 3845
    iget-object v9, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v9, v9, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    move-object/from16 v23, v13

    iget-object v13, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    move-object/from16 v24, v15

    iget-object v15, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v15, v15, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v9, v13, v15}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v9

    .line 3847
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const-string v15, ""

    move/from16 v16, v13

    const/4 v13, 0x0

    if-eqz v16, :cond_6

    if-eqz v9, :cond_22

    .line 3849
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdateFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_22

    .line 3852
    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    invoke-static {v2}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->-$$Nest$fgetm_driveId(Lcom/metamoji/sd/sync/SdDriveSyncProcess;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    invoke-static {v2, v3, v13}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->deleteRecordingsForDocumentId(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3855
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 3856
    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v5, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v3, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_0

    .line 3860
    :cond_0
    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$searchDataExistsMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3861
    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3863
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v2, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3868
    :cond_1
    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v9, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3871
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3872
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3873
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3877
    :cond_2
    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getThumbnailCacheById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOThumbnailCache;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3880
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v5, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsRevision()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsUpdate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/metamoji/sd/SdDriveDocumentManager;->thumbnailPathWithDocId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3882
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3883
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3885
    :cond_3
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v2, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteThumbnailCache(Lcom/metamoji/sd/entities/SdMOThumbnailCache;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_4
    if-eqz v1, :cond_22

    .line 3889
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_22

    .line 3890
    new-instance v2, Lcom/metamoji/sd/entities/SdMODocumentRoom;

    invoke-direct {v2}, Lcom/metamoji/sd/entities/SdMODocumentRoom;-><init>()V

    .line 3891
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setId(Ljava/lang/String;)V

    .line 3892
    invoke-virtual {v2, v1}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setRoomId(Ljava/lang/String;)V

    if-nez v18, :cond_5

    move-object v9, v15

    goto :goto_1

    :cond_5
    move-object/from16 v9, v18

    .line 3893
    :goto_1
    invoke-virtual {v2, v9}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setCompanyId(Ljava/lang/String;)V

    .line 3894
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto/16 :goto_f

    :cond_6
    move/from16 v16, v13

    if-nez v9, :cond_f

    .line 3900
    new-instance v9, Lcom/metamoji/sd/entities/SdMODocument;

    invoke-direct {v9}, Lcom/metamoji/sd/entities/SdMODocument;-><init>()V

    .line 3901
    iget-object v13, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    invoke-virtual {v9, v13}, Lcom/metamoji/sd/entities/SdMODocument;->setId(Ljava/lang/String;)V

    .line 3902
    invoke-virtual {v9, v8}, Lcom/metamoji/sd/entities/SdMODocument;->setTitle(Ljava/lang/String;)V

    .line 3903
    invoke-virtual {v9, v6}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdate(Ljava/util/Date;)V

    .line 3904
    invoke-virtual {v9, v7}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleRevision(Ljava/lang/String;)V

    .line 3905
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v6}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdateFlag(Ljava/lang/Boolean;)V

    .line 3906
    invoke-virtual {v9, v10}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdate(Ljava/util/Date;)V

    .line 3907
    invoke-virtual {v9, v11}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsRevision(Ljava/lang/String;)V

    .line 3908
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v6}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdateFlag(Ljava/lang/Boolean;)V

    .line 3909
    invoke-virtual {v9, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsMimeType(Ljava/lang/String;)V

    .line 3910
    invoke-virtual {v9, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreate(Ljava/util/Date;)V

    .line 3911
    invoke-virtual {v9, v3}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdate(Ljava/util/Date;)V

    .line 3912
    invoke-virtual {v9, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsRevision(Ljava/lang/String;)V

    .line 3913
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateFlag(Ljava/lang/Boolean;)V

    .line 3914
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 3915
    invoke-virtual {v9, v12}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsAttribute(Ljava/lang/Integer;)V

    .line 3917
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setOptions(Ljava/lang/Integer;)V

    .line 3918
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsOrigin(Ljava/lang/Integer;)V

    .line 3919
    invoke-virtual {v9, v14}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdate(Ljava/util/Date;)V

    move-object/from16 v13, v24

    .line 3920
    invoke-virtual {v9, v13}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsRevision(Ljava/lang/String;)V

    .line 3921
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdateFlag(Ljava/lang/Boolean;)V

    .line 3924
    invoke-static {v9}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptionsRelatedInfo(Lcom/metamoji/sd/entities/SdMODocument;)V

    .line 3926
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setLocalOptions(Ljava/lang/Integer;)V

    move-object/from16 v2, v23

    .line 3929
    invoke-virtual {v9, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreateUserId(Ljava/lang/String;)V

    move-object/from16 v2, v21

    .line 3930
    invoke-virtual {v9, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateUserId(Ljava/lang/String;)V

    .line 3932
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3933
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3935
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3936
    iget-object v6, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$tagCheckMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_2

    .line 3940
    :cond_7
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    .line 3943
    :cond_8
    sget-object v6, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3944
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3947
    :cond_9
    invoke-static {v3}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsOrigin(Ljava/lang/String;)V

    .line 3948
    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v9, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3950
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3951
    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    new-instance v5, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-direct {v5, v9, v3}, Lcom/metamoji/sd/entities/SdMODocumentTag;-><init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v5, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_3

    .line 3955
    :cond_a
    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$searchDataExistsMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 3956
    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v2

    .line 3957
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-object/from16 v4, v22

    const/4 v5, 0x1

    invoke-static {v3, v2, v5, v4}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 3958
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v2, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_4

    :cond_b
    move-object/from16 v4, v22

    if-eqz v4, :cond_c

    .line 3961
    new-instance v2, Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    invoke-direct {v2}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;-><init>()V

    .line 3962
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->setId(Ljava/lang/String;)V

    .line 3963
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v5, 0x1

    invoke-static {v3, v2, v5, v4}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 3964
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v2, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_c
    :goto_4
    if-eqz v1, :cond_22

    .line 3969
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_22

    .line 3970
    new-instance v2, Lcom/metamoji/sd/entities/SdMODocumentRoom;

    invoke-direct {v2}, Lcom/metamoji/sd/entities/SdMODocumentRoom;-><init>()V

    .line 3971
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setId(Ljava/lang/String;)V

    .line 3972
    invoke-virtual {v2, v1}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setRoomId(Ljava/lang/String;)V

    if-nez v18, :cond_d

    move-object v9, v15

    goto :goto_5

    :cond_d
    move-object/from16 v9, v18

    .line 3973
    :goto_5
    invoke-virtual {v2, v9}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setCompanyId(Ljava/lang/String;)V

    if-eqz v20, :cond_e

    .line 3974
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    move-object/from16 v1, v20

    .line 3975
    invoke-virtual {v2, v1}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setLastSequence(Ljava/lang/String;)V

    .line 3977
    :cond_e
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto/16 :goto_f

    :cond_f
    move-object/from16 v26, v22

    move-object/from16 v13, v24

    const/16 v25, 0x1

    move-object/from16 v22, v1

    move-object/from16 v1, v21

    move-object/from16 v21, v20

    move-object/from16 v20, v15

    move-object/from16 v15, v23

    .line 3980
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-nez v23, :cond_22

    .line 3982
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMODocument;->getTitleUpdateFlag()Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-nez v23, :cond_10

    .line 3984
    invoke-virtual {v9, v8}, Lcom/metamoji/sd/entities/SdMODocument;->setTitle(Ljava/lang/String;)V

    .line 3985
    invoke-virtual {v9, v6}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdate(Ljava/util/Date;)V

    .line 3986
    invoke-virtual {v9, v7}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleRevision(Ljava/lang/String;)V

    move/from16 v6, v25

    goto :goto_6

    :cond_10
    move/from16 v6, v16

    .line 3989
    :goto_6
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMODocument;->getOptionsUpdateFlag()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_11

    .line 3991
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/metamoji/sd/entities/SdMODocument;->setOptions(Ljava/lang/Integer;)V

    .line 3992
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsOrigin(Ljava/lang/Integer;)V

    .line 3993
    invoke-virtual {v9, v14}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdate(Ljava/util/Date;)V

    .line 3994
    invoke-virtual {v9, v13}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsRevision(Ljava/lang/String;)V

    .line 3997
    invoke-static {v9}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptionsRelatedInfo(Lcom/metamoji/sd/entities/SdMODocument;)V

    move/from16 v6, v25

    .line 4000
    :cond_11
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMODocument;->getTagsUpdateFlag()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_18

    .line 4002
    invoke-virtual {v9, v10}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdate(Ljava/util/Date;)V

    .line 4003
    invoke-virtual {v9, v11}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsRevision(Ljava/lang/String;)V

    .line 4005
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 4006
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4008
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 4009
    iget-object v11, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$tagCheckMap:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    goto :goto_7

    .line 4013
    :cond_12
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    goto :goto_7

    .line 4016
    :cond_13
    sget-object v11, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v6, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4017
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 4020
    :cond_14
    invoke-static {v7}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsOrigin(Ljava/lang/String;)V

    .line 4023
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v7

    invoke-interface {v7}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 4024
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocumentTag;->getName()Ljava/lang/String;

    move-result-object v10

    .line 4025
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 4026
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 4028
    :cond_15
    iget-object v10, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v10, v10, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v11, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v11, v11, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v10, v8, v11}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_8

    .line 4033
    :cond_16
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 4034
    iget-object v8, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v8, v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    new-instance v10, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-direct {v10, v9, v7}, Lcom/metamoji/sd/entities/SdMODocumentTag;-><init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v8, v10, v7}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_9

    :cond_17
    move/from16 v6, v25

    .line 4038
    :cond_18
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdateFlag()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_21

    .line 4039
    new-instance v7, Ljava/io/File;

    iget-object v8, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v8, v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v8, v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v10, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4041
    iget-object v8, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v8, v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    .line 4042
    invoke-virtual {v8}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->isPrivate()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 4043
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x4

    invoke-static {v8, v10}, Lcom/metamoji/sd/SdUtils;->isOnBitFlag(Ljava/lang/Integer;I)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 4044
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    .line 4045
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_19

    move/from16 v13, v25

    goto :goto_a

    :cond_19
    move/from16 v13, v16

    :goto_a
    if-eqz v13, :cond_1a

    .line 4048
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    invoke-static {v1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->-$$Nest$fgetm_downloadIds(Lcom/metamoji/sd/sync/SdDriveSyncProcess;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 4049
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    invoke-static {v1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->-$$Nest$fgetm_downloadIds(Lcom/metamoji/sd/sync/SdDriveSyncProcess;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 4054
    :cond_1a
    invoke-virtual {v9, v15}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreateUserId(Ljava/lang/String;)V

    .line 4055
    invoke-virtual {v9, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateUserId(Ljava/lang/String;)V

    .line 4057
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 4058
    invoke-virtual {v9, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsMimeType(Ljava/lang/String;)V

    .line 4059
    invoke-virtual {v9, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreate(Ljava/util/Date;)V

    .line 4060
    invoke-virtual {v9, v3}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdate(Ljava/util/Date;)V

    .line 4061
    invoke-virtual {v9, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsRevision(Ljava/lang/String;)V

    .line 4062
    invoke-virtual {v9, v12}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsAttribute(Ljava/lang/Integer;)V

    .line 4065
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 4066
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 4070
    :cond_1b
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$searchDataExistsMap:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1c

    .line 4071
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v1

    .line 4072
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-object/from16 v4, v26

    invoke-static {v3, v1, v2, v4}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 4073
    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_b

    :cond_1c
    move-object/from16 v4, v26

    if-eqz v4, :cond_1d

    .line 4076
    new-instance v1, Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    invoke-direct {v1}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;-><init>()V

    .line 4077
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->setId(Ljava/lang/String;)V

    .line 4078
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3, v1, v2, v4}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 4079
    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_1d
    :goto_b
    if-eqz v22, :cond_20

    .line 4084
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_20

    .line 4085
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentRoomById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentRoom;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 4087
    new-instance v1, Lcom/metamoji/sd/entities/SdMODocumentRoom;

    invoke-direct {v1}, Lcom/metamoji/sd/entities/SdMODocumentRoom;-><init>()V

    .line 4088
    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$docId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setId(Ljava/lang/String;)V

    move-object/from16 v2, v22

    .line 4089
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setRoomId(Ljava/lang/String;)V

    if-nez v18, :cond_1e

    move-object/from16 v2, v20

    goto :goto_c

    :cond_1e
    move-object/from16 v2, v18

    .line 4090
    :goto_c
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setCompanyId(Ljava/lang/String;)V

    .line 4091
    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_1f
    if-eqz v21, :cond_20

    .line 4093
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_20

    move-object/from16 v2, v21

    .line 4094
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setLastSequence(Ljava/lang/String;)V

    .line 4095
    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_20
    move/from16 v13, v25

    goto :goto_e

    :cond_21
    :goto_d
    move v13, v6

    :goto_e
    if-eqz v13, :cond_22

    .line 4104
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v9, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 4110
    :cond_22
    :goto_f
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->val$moPoolDocument:Lcom/metamoji/sd/entities/SdMOPoolDocument;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deletePoolDocument(Lcom/metamoji/sd/entities/SdMOPoolDocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    const/4 v1, 0x0

    return-object v1
.end method
