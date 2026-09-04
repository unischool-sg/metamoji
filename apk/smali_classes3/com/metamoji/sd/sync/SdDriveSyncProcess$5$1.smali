.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 669
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;

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

    .line 669
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 673
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 674
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->val$fromChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

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

    .line 675
    sget-object v3, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 678
    :cond_0
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->val$docId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->val$fromChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 685
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->val$docId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 687
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 690
    :cond_1
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->val$metaHolder:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v2}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 692
    const-string/jumbo v3, "tags"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 694
    const-string/jumbo v4, "title"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTitle(Ljava/lang/String;)V

    .line 695
    const-string/jumbo v4, "titleUpdate"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdate(Ljava/util/Date;)V

    .line 696
    const-string/jumbo v4, "titleRevision"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleRevision(Ljava/lang/String;)V

    .line 697
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdateFlag(Ljava/lang/Boolean;)V

    .line 699
    const-string/jumbo v4, "tagsUpdate"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdate(Ljava/util/Date;)V

    .line 700
    const-string/jumbo v4, "tagsRevision"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsRevision(Ljava/lang/String;)V

    .line 701
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdateFlag(Ljava/lang/Boolean;)V

    .line 703
    const-string v4, "contentsUpdate"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdate(Ljava/util/Date;)V

    .line 704
    const-string v4, "contentsRevision"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsRevision(Ljava/lang/String;)V

    .line 705
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 706
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateFlag(Ljava/lang/Boolean;)V

    .line 708
    const-string v4, "contentsAttribute"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 709
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsAttribute(Ljava/lang/Integer;)V

    goto :goto_1

    .line 711
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsAttribute(Ljava/lang/Integer;)V

    .line 715
    :goto_1
    const-string v4, "options"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v6

    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setOptions(Ljava/lang/Integer;)V

    .line 716
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsOrigin(Ljava/lang/Integer;)V

    .line 717
    const-string v4, "optionsUpdate"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/metamoji/sd/SdUtils;->timeToDate(J)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdate(Ljava/util/Date;)V

    .line 718
    const-string v4, "optionsRevision"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsRevision(Ljava/lang/String;)V

    .line 719
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdateFlag(Ljava/lang/Boolean;)V

    .line 722
    invoke-static {v1}, Lcom/metamoji/sd/entities/SdMOUtils;->setOptionsRelatedInfo(Lcom/metamoji/sd/entities/SdMODocument;)V

    .line 725
    const-string v4, "contentsCreateUserId"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreateUserId(Ljava/lang/String;)V

    .line 726
    const-string v4, "contentsUpdateUserId"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateUserId(Ljava/lang/String;)V

    .line 728
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 729
    iget-object v5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v6, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;

    iget-object v6, v6, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->val$fromChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v5, v4, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_2

    .line 732
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 733
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 735
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 736
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    .line 740
    :cond_5
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    .line 743
    :cond_6
    sget-object v6, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 747
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 748
    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    new-instance v5, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-direct {v5, v1, v2}, Lcom/metamoji/sd/entities/SdMODocumentTag;-><init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->val$fromChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v5, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_4

    .line 751
    :cond_8
    invoke-static {v4}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsOrigin(Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$5;->val$fromChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    const/4 v0, 0x0

    return-object v0

    .line 681
    :cond_9
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "document not found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
