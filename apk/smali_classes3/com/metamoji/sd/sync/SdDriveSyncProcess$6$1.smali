.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 831
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

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

    .line 831
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 833
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$docId:Ljava/lang/String;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 839
    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$metaValue:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v2}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 841
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 842
    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v5, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagNameListWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 843
    sget-object v6, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 846
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "contentsUpdateUserId"

    const-string v6, "contentsCreateUserId"

    const-string v7, "optionsRevision"

    const-string v8, "optionsUpdate"

    const-string v10, "contentsRevision"

    const-string v11, "contentsUpdate"

    const-string/jumbo v12, "tagsRevision"

    const-string/jumbo v13, "tagsUpdate"

    const-string/jumbo v14, "titleRevision"

    const-string/jumbo v15, "titleUpdate"

    const/16 v16, 0x0

    const-string/jumbo v9, "title"

    move/from16 v17, v4

    const-string/jumbo v4, "tags"

    move-object/from16 v18, v3

    const-string v3, "deleteFlag"

    move-object/from16 v19, v5

    const-string v5, "options"

    move-object/from16 v20, v6

    const-string v6, "contentsAttribute"

    move-object/from16 v21, v7

    if-eqz v17, :cond_f

    if-eqz v2, :cond_a

    .line 848
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-nez v3, :cond_a

    .line 854
    new-instance v3, Ljava/io/File;

    const/16 v17, 0x0

    iget-object v7, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    move-object/from16 v22, v8

    iget-object v8, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v8, v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$docId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 856
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 859
    :cond_1
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 861
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTitle(Ljava/lang/String;)V

    .line 862
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdate(Ljava/util/Date;)V

    .line 863
    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleRevision(Ljava/lang/String;)V

    .line 864
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdateFlag(Ljava/lang/Boolean;)V

    .line 866
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdate(Ljava/util/Date;)V

    .line 867
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsRevision(Ljava/lang/String;)V

    .line 868
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdateFlag(Ljava/lang/Boolean;)V

    .line 870
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdate(Ljava/util/Date;)V

    .line 871
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsRevision(Ljava/lang/String;)V

    .line 872
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 873
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateFlag(Ljava/lang/Boolean;)V

    .line 875
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 876
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsAttribute(Ljava/lang/Integer;)V

    goto :goto_1

    .line 878
    :cond_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsAttribute(Ljava/lang/Integer;)V

    .line 882
    :goto_1
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v7

    goto :goto_2

    :cond_3
    move/from16 v7, v17

    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setOptions(Ljava/lang/Integer;)V

    .line 883
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsOrigin(Ljava/lang/Integer;)V

    move-object/from16 v7, v22

    .line 884
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdate(Ljava/util/Date;)V

    move-object/from16 v8, v21

    .line 885
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsRevision(Ljava/lang/String;)V

    .line 886
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdateFlag(Ljava/lang/Boolean;)V

    .line 889
    invoke-static {v1}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptionsRelatedInfo(Lcom/metamoji/sd/entities/SdMODocument;)V

    move-object/from16 v4, v20

    .line 892
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreateUserId(Ljava/lang/String;)V

    move-object/from16 v4, v19

    .line 893
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateUserId(Ljava/lang/String;)V

    .line 895
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 896
    iget-object v6, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v6, v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v7, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v6, v5, v7}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_3

    .line 899
    :cond_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 900
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 902
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v7, v18

    .line 903
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    :goto_5
    move-object/from16 v18, v7

    goto :goto_4

    .line 907
    :cond_5
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_5

    .line 910
    :cond_6
    sget-object v8, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v4, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 914
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 915
    iget-object v6, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v6, v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    new-instance v7, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-direct {v7, v1, v4}, Lcom/metamoji/sd/entities/SdMODocumentTag;-><init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v6, v7, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_6

    .line 918
    :cond_8
    invoke-static {v5}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsOrigin(Ljava/lang/String;)V

    .line 919
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v1, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 922
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v1

    if-nez v1, :cond_9

    .line 925
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$xmlSearchData:Ljava/lang/String;

    if-eqz v1, :cond_25

    .line 926
    new-instance v1, Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    invoke-direct {v1}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;-><init>()V

    .line 927
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$docId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->setId(Ljava/lang/String;)V

    .line 928
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$xmlSearchData:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v3, v1, v5, v4}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 929
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v1, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto/16 :goto_13

    .line 932
    :cond_9
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$xmlSearchData:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v3, v1, v5, v4}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 933
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v1, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto/16 :goto_13

    :cond_a
    const/16 v17, 0x0

    .line 938
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    invoke-static {v3}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->-$$Nest$fgetm_driveId(Lcom/metamoji/sd/sync/SdDriveSyncProcess;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$docId:Ljava/lang/String;

    move/from16 v5, v17

    invoke-static {v3, v4, v5}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->deleteRecordingsForDocumentId(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 941
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 942
    iget-object v5, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v6, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v6, v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v5, v4, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_7

    .line 946
    :cond_b
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v1, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 949
    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$docId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 951
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 955
    :cond_c
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getThumbnailCacheById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOThumbnailCache;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 958
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v5, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$docId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsRevision()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsUpdate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/metamoji/sd/SdDriveDocumentManager;->thumbnailPathWithDocId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 960
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 961
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 963
    :cond_d
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v1, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteThumbnailCache(Lcom/metamoji/sd/entities/SdMOThumbnailCache;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 967
    :cond_e
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentRoomById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentRoom;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 969
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v1, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto/16 :goto_13

    :cond_f
    move-object v7, v8

    move-object/from16 v23, v18

    move-object/from16 v24, v19

    move-object/from16 v25, v20

    .line 974
    iget-object v8, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v8, v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$newId:Lcom/metamoji/sd/SdValue;

    move-object/from16 v22, v7

    iget-object v7, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    move-object/from16 v18, v5

    iget-object v5, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v7, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->generateDocumentId(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    .line 976
    iget-object v5, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$newId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v5}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_28

    .line 980
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 982
    new-instance v7, Lcom/metamoji/sd/entities/SdMODocument;

    invoke-direct {v7}, Lcom/metamoji/sd/entities/SdMODocument;-><init>()V

    .line 983
    iget-object v8, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v8, v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$newId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v8}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/metamoji/sd/entities/SdMODocument;->setId(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/metamoji/sd/SdUtils;->makeDuplicatedDocumentTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/metamoji/sd/entities/SdMODocument;->setTitle(Ljava/lang/String;)V

    .line 985
    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdate(Ljava/util/Date;)V

    .line 986
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdateFlag(Ljava/lang/Boolean;)V

    .line 987
    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdate(Ljava/util/Date;)V

    .line 988
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdateFlag(Ljava/lang/Boolean;)V

    .line 990
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsMimeType(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsCreate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreate(Ljava/util/Date;)V

    .line 992
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdate(Ljava/util/Date;)V

    .line 993
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateFlag(Ljava/lang/Boolean;)V

    .line 994
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsAttribute()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsAttribute(Ljava/lang/Integer;)V

    .line 997
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_10

    .line 998
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setCopyFrom(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setCopyRevision(Ljava/lang/String;)V

    .line 1003
    :cond_10
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setOptions(Ljava/lang/Integer;)V

    const/16 v17, 0x0

    .line 1004
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsOrigin(Ljava/lang/Integer;)V

    .line 1005
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getOptionsUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdate(Ljava/util/Date;)V

    .line 1006
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdateFlag(Ljava/lang/Boolean;)V

    .line 1009
    invoke-static {v7}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptionsRelatedInfo(Lcom/metamoji/sd/entities/SdMODocument;)V

    .line 1012
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getLocalOptions()Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x1

    invoke-static {v5, v8}, Lcom/metamoji/sd/SdUtils;->putOffBitFlag(Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setLocalOptions(Ljava/lang/Integer;)V

    .line 1015
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getLocalOptions()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setLocalOptions(Ljava/lang/Integer;)V

    .line 1018
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdateUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreateUserId(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsUpdateUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateUserId(Ljava/lang/String;)V

    .line 1021
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v5}, Lcom/metamoji/sd/entities/SdMODocument;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 1023
    iget-object v5, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v8, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v8, v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v5, v7, v8}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 1024
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v5

    invoke-interface {v5}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/sd/entities/SdMODocumentTag;

    move-object/from16 v20, v5

    .line 1025
    iget-object v5, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    move-object/from16 v26, v8

    new-instance v8, Lcom/metamoji/sd/entities/SdMODocumentTag;

    move-object/from16 v27, v6

    invoke-virtual/range {v26 .. v26}, Lcom/metamoji/sd/entities/SdMODocumentTag;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v7, v6}, Lcom/metamoji/sd/entities/SdMODocumentTag;-><init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v6, v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v5, v8, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    move-object/from16 v5, v20

    move-object/from16 v6, v27

    goto :goto_8

    :cond_11
    move-object/from16 v27, v6

    .line 1029
    iget-object v5, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v6, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v6, v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$docId:Ljava/lang/String;

    iget-object v7, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v5, v6, v7}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v5

    .line 1030
    iget-object v6, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v6, v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v7, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$newId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v7}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v8, v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v6, v7, v8}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v6

    if-nez v6, :cond_13

    if-eqz v5, :cond_12

    .line 1034
    new-instance v6, Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    invoke-direct {v6}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;-><init>()V

    .line 1035
    iget-object v7, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$newId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v7}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->setId(Ljava/lang/String;)V

    .line 1036
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->getData()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v20, v10

    const/4 v10, 0x1

    invoke-static {v7, v6, v10, v8}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 1037
    iget-object v7, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v8, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v8, v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v7, v6, v8}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_a

    :cond_12
    move-object/from16 v20, v10

    goto :goto_a

    :cond_13
    move-object/from16 v20, v10

    .line 1040
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->getData()Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    :cond_14
    move-object/from16 v8, v16

    :goto_9
    const/4 v10, 0x1

    invoke-static {v7, v6, v10, v8}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 1041
    iget-object v7, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v8, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v8, v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v7, v6, v8}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 1045
    :goto_a
    iget-object v6, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v6, v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v7, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$docId:Ljava/lang/String;

    iget-object v8, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v8, v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v6, v7, v8}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentRoomById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentRoom;

    move-result-object v6

    if-eqz v6, :cond_15

    .line 1048
    new-instance v7, Lcom/metamoji/sd/entities/SdMODocumentRoom;

    invoke-direct {v7}, Lcom/metamoji/sd/entities/SdMODocumentRoom;-><init>()V

    .line 1049
    iget-object v8, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v8, v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$newId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v8}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setId(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->getRoomId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setRoomId(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->getCompanyId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setCompanyId(Ljava/lang/String;)V

    .line 1052
    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->getLastSequence()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setLastSequence(Ljava/lang/String;)V

    .line 1053
    iget-object v8, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v8, v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v10, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v10, v10, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v8, v7, v10}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 1057
    :cond_15
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdateFlag(Ljava/lang/Boolean;)V

    .line 1058
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdateFlag(Ljava/lang/Boolean;)V

    .line 1059
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateFlag(Ljava/lang/Boolean;)V

    .line 1060
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v7}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdateFlag(Ljava/lang/Boolean;)V

    if-eqz v2, :cond_23

    .line 1064
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 1068
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 1069
    iget-object v7, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v8, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v8, v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v7, v4, v8}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_b

    :cond_16
    if-eqz v5, :cond_17

    .line 1073
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v5, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 1077
    :cond_17
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v1, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 1080
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getThumbnailCacheById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOThumbnailCache;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 1083
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v5, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$docId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsRevision()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsUpdate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v4, v5, v7, v8}, Lcom/metamoji/sd/SdDriveDocumentManager;->thumbnailPathWithDocId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1086
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1088
    :cond_18
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v1, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteThumbnailCache(Lcom/metamoji/sd/entities/SdMOThumbnailCache;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_19
    if-eqz v6, :cond_24

    .line 1093
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v6, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto/16 :goto_12

    .line 1097
    :cond_1a
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1099
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTitle(Ljava/lang/String;)V

    .line 1100
    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdate(Ljava/util/Date;)V

    .line 1101
    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleRevision(Ljava/lang/String;)V

    .line 1103
    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdate(Ljava/util/Date;)V

    .line 1104
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsRevision(Ljava/lang/String;)V

    .line 1106
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdate(Ljava/util/Date;)V

    move-object/from16 v4, v20

    .line 1107
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsRevision(Ljava/lang/String;)V

    move-object/from16 v4, v27

    .line 1109
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1b

    .line 1110
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsAttribute(Ljava/lang/Integer;)V

    const/16 v17, 0x0

    goto :goto_c

    :cond_1b
    const/16 v17, 0x0

    .line 1112
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsAttribute(Ljava/lang/Integer;)V

    :goto_c
    move-object/from16 v4, v18

    .line 1116
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1c

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v7

    goto :goto_d

    :cond_1c
    move/from16 v7, v17

    :goto_d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setOptions(Ljava/lang/Integer;)V

    .line 1117
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsOrigin(Ljava/lang/Integer;)V

    move-object/from16 v7, v22

    .line 1118
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdate(Ljava/util/Date;)V

    move-object/from16 v8, v21

    .line 1119
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsRevision(Ljava/lang/String;)V

    .line 1120
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdateFlag(Ljava/lang/Boolean;)V

    .line 1123
    invoke-static {v1}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptionsRelatedInfo(Lcom/metamoji/sd/entities/SdMODocument;)V

    move-object/from16 v4, v25

    .line 1126
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreateUserId(Ljava/lang/String;)V

    move-object/from16 v4, v24

    .line 1127
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateUserId(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 1130
    iget-object v7, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v8, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v8, v8, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v7, v6, v8}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_e

    .line 1133
    :cond_1d
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1134
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v8, v23

    .line 1137
    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    :goto_10
    move-object/from16 v23, v8

    goto :goto_f

    .line 1141
    :cond_1e
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    goto :goto_10

    .line 1144
    :cond_1f
    sget-object v9, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v4, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1148
    :cond_20
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1149
    iget-object v7, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v7, v7, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    new-instance v8, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-direct {v8, v1, v4}, Lcom/metamoji/sd/entities/SdMODocumentTag;-><init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v7, v8, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_11

    .line 1152
    :cond_21
    invoke-static {v6}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsOrigin(Ljava/lang/String;)V

    .line 1153
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v1, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    if-nez v5, :cond_22

    .line 1156
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$xmlSearchData:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 1157
    new-instance v1, Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    invoke-direct {v1}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;-><init>()V

    .line 1158
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$docId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->setId(Ljava/lang/String;)V

    .line 1159
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$xmlSearchData:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v3, v1, v5, v4}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 1160
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v1, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_12

    .line 1163
    :cond_22
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$xmlSearchData:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v1, v5, v4, v3}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 1164
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v5, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_12

    .line 1168
    :cond_23
    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v1, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 1172
    :cond_24
    :goto_12
    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$docId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1173
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v5, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$newId:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v5}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_25
    :goto_13
    if-eqz v2, :cond_26

    .line 1183
    iget-object v1, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$docId:Ljava/lang/String;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getPoolDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPoolDocument;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 1185
    iget-object v2, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deletePoolDocument(Lcom/metamoji/sd/entities/SdMOPoolDocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_26
    return-object v16

    .line 1177
    :cond_27
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "can not move contents file."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 977
    :cond_28
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "can not generate document id."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 836
    :cond_29
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "document not found"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method
