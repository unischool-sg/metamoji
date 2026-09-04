.class Lcom/metamoji/sd/SdDriveDocumentManager$11$1;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$11;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$11;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2642
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

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

    .line 2642
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2646
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$11;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v0

    .line 2649
    sget-object v1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$mode:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    const-wide/16 v3, 0x0

    const-string v5, "lastaccess"

    const/4 v6, 0x0

    if-ne v1, v2, :cond_10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2653
    new-instance v8, Lcom/metamoji/sd/entities/SdMODocument;

    invoke-direct {v8}, Lcom/metamoji/sd/entities/SdMODocument;-><init>()V

    .line 2655
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v7, v0, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$nowDate:Ljava/util/Date;

    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v9, v0, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$docId:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/metamoji/sd/entities/SdMOUtils;->initializeMODocument(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    move v7, v2

    move-object v0, v8

    goto :goto_0

    :cond_0
    move v7, v1

    .line 2659
    :goto_0
    iget-object v8, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v8, v8, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string v9, "mimeType"

    invoke-interface {v8, v9}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 2660
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 2661
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsMimeType(Ljava/lang/String;)V

    .line 2665
    :cond_1
    iget-object v8, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v8, v8, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string/jumbo v9, "title"

    invoke-interface {v8, v9}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 2666
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 2667
    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/metamoji/sd/entities/SdMODocument;->setTitle(Ljava/lang/String;)V

    .line 2669
    iget-object v8, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v8, v8, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0, v8}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdate(Ljava/util/Date;)V

    .line 2670
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdateFlag(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 2672
    :cond_2
    iget-object v8, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v8, v8, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$docId:Ljava/lang/String;

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "closeDocument - title is null. documentId=%s"

    invoke-static {v9, v8}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2677
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2678
    iget-object v9, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v9, v9, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string/jumbo v10, "tags"

    invoke-interface {v9, v10}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 2679
    instance-of v10, v9, Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    .line 2682
    check-cast v9, Ljava/util/ArrayList;

    .line 2683
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 2684
    check-cast v10, Ljava/lang/String;

    .line 2685
    iget-object v11, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v11, v11, Lcom/metamoji/sd/SdDriveDocumentManager$11;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v11, v11, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v12, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v12, v12, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v11, v10, v12}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagByName(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTag;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 2686
    invoke-virtual {v11}, Lcom/metamoji/sd/entities/SdMOTag;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_4

    goto :goto_2

    .line 2690
    :cond_4
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2694
    :cond_5
    iget-object v9, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v9, v9, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0, v9}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdate(Ljava/util/Date;)V

    .line 2695
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/metamoji/sd/entities/SdMODocument;->setTagsUpdateFlag(Ljava/lang/Boolean;)V

    move v9, v2

    goto :goto_3

    .line 2697
    :cond_6
    iget-object v9, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v9, v9, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$docId:Ljava/lang/String;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "closeDocument - tags is null. documentId=%s"

    invoke-static {v10, v9}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v9, v1

    .line 2701
    :goto_3
    iget-object v10, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v10, v10, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string v11, "create"

    invoke-interface {v10, v11}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 2702
    invoke-static {v10, v3, v4}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/metamoji/dm/fw/DmUtils;->dateFromNumber(D)Ljava/util/Date;

    move-result-object v10

    if-nez v10, :cond_7

    .line 2704
    iget-object v10, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v10, v10, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    iget-object v12, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-wide v12, v12, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$nowDateAsNumber:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2705
    iget-object v10, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v10, v10, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0, v10}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreate(Ljava/util/Date;)V

    goto :goto_4

    .line 2707
    :cond_7
    invoke-virtual {v0, v10}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsCreate(Ljava/util/Date;)V

    .line 2711
    :goto_4
    iget-object v10, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v10, v10, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    iget-object v11, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-wide v11, v11, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$nowDateAsNumber:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const-string/jumbo v12, "update"

    invoke-interface {v10, v12, v11}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2712
    iget-object v10, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v10, v10, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0, v10}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdate(Ljava/util/Date;)V

    .line 2713
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateFlag(Ljava/lang/Boolean;)V

    .line 2714
    iget-object v10, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v10, v10, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsAttribute()Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/metamoji/sd/SdUtils;->contentsAttributeFromEditor(Lcom/metamoji/dvm/fw/IDvmDocumentEditor;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsAttribute(Ljava/lang/Integer;)V

    .line 2717
    iget-object v10, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v10, v10, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    invoke-interface {v10, v5}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 2718
    invoke-static {v10, v3, v4}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/metamoji/dm/fw/DmUtils;->dateFromNumber(D)Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2720
    invoke-virtual {v0, v3}, Lcom/metamoji/sd/entities/SdMODocument;->setLastAccess(Ljava/util/Date;)V

    .line 2723
    :cond_8
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    invoke-interface {v3, v5, v6}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2725
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setDeleteFlag(Ljava/lang/Boolean;)V

    if-eqz v7, :cond_9

    .line 2729
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$11;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_6

    :cond_9
    if-eqz v9, :cond_a

    .line 2733
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 2734
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$11;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v3, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_5

    .line 2737
    :cond_a
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$11;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :goto_6
    if-eqz v9, :cond_b

    .line 2742
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2743
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$11;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    new-instance v5, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-direct {v5, v0, v3}, Lcom/metamoji/sd/entities/SdMODocumentTag;-><init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v5, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_7

    .line 2751
    :cond_b
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$11;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$docId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2759
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$nowDate:Ljava/util/Date;

    if-eqz v7, :cond_c

    goto :goto_8

    :cond_c
    const/4 v2, 0x2

    :goto_8
    invoke-static {v1, v0, v2, v6}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 2760
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$11;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createOrUpdateDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 2764
    :cond_d
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string v1, "collaboRoomId"

    invoke-interface {v0, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 2766
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string v2, "collaboCompanyId"

    invoke-interface {v1, v2}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2767
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    const-string v3, "collaboLastSequence"

    invoke-interface {v2, v3}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->numToString(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    .line 2769
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$11;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$docId:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentRoomById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentRoom;

    move-result-object v3

    if-nez v3, :cond_f

    .line 2771
    new-instance v3, Lcom/metamoji/sd/entities/SdMODocumentRoom;

    invoke-direct {v3}, Lcom/metamoji/sd/entities/SdMODocumentRoom;-><init>()V

    .line 2772
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$docId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setId(Ljava/lang/String;)V

    .line 2773
    invoke-virtual {v3, v0}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setRoomId(Ljava/lang/String;)V

    if-nez v1, :cond_e

    .line 2774
    const-string v1, ""

    :cond_e
    invoke-virtual {v3, v1}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setCompanyId(Ljava/lang/String;)V

    .line 2775
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$11;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 2778
    :cond_f
    invoke-virtual {v3, v0}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setRoomId(Ljava/lang/String;)V

    .line 2780
    invoke-virtual {v3, v2}, Lcom/metamoji/sd/entities/SdMODocumentRoom;->setLastSequence(Ljava/lang/String;)V

    .line 2781
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$11;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v3, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_9

    :cond_10
    if-nez v0, :cond_11

    return-object v6

    .line 2791
    :cond_11
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$11$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$11;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$11;->val$editor:Lcom/metamoji/dvm/fw/IDvmDocumentEditor;

    invoke-interface {v1, v5}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->metaDataForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2792
    invoke-static {v1, v3, v4}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/metamoji/dm/fw/DmUtils;->dateFromNumber(D)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 2794
    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMODocument;->setLastAccess(Ljava/util/Date;)V

    :cond_12
    :goto_9
    return-object v6
.end method
