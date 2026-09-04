.class Lcom/metamoji/sd/SdDriveDocumentManager$6$1;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$6;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$6;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1538
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

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

    .line 1538
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->call()Ljava/lang/Void;

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

    .line 1542
    new-instance v1, Lcom/metamoji/sd/entities/SdMODocument;

    invoke-direct {v1}, Lcom/metamoji/sd/entities/SdMODocument;-><init>()V

    .line 1543
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$nowDate:Ljava/util/Date;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$newDocIdFinal:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$newTitleFinal:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsMimeType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsAttribute()Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/metamoji/sd/entities/SdMOUtils;->initializeMODocument(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1544
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$6;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 1546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1548
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$moFromDocument:Lcom/metamoji/sd/entities/SdMODocument;

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

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

    .line 1549
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$6;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    new-instance v5, Lcom/metamoji/sd/entities/SdMODocumentTag;

    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMODocumentTag;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lcom/metamoji/sd/entities/SdMODocumentTag;-><init>(Lcom/metamoji/sd/entities/SdMODocument;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v5, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 1550
    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMODocumentTag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1553
    :cond_0
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$6;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$newDocIdFinal:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v1

    .line 1562
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 1555
    iget-object v1, v2, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$moFromSearchData:Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    if-eqz v1, :cond_3

    .line 1556
    new-instance v1, Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    invoke-direct {v1}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;-><init>()V

    .line 1557
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$newDocIdFinal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->setId(Ljava/lang/String;)V

    .line 1558
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$nowDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$moFromSearchData:Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v1, v4, v5}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 1559
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$6;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_2

    .line 1562
    :cond_1
    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$nowDate:Ljava/util/Date;

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$moFromSearchData:Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$moFromSearchData:Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMODocumentSearchData;->getData()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_1
    invoke-static {v2, v1, v4, v5}, Lcom/metamoji/sd/entities/SdMOUtils;->setSearchData(Ljava/util/Date;Lcom/metamoji/sd/entities/SdMODocumentSearchData;ILjava/lang/String;)V

    .line 1563
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$6;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 1566
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$6;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$newDocIdFinal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1567
    new-instance v2, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;

    invoke-direct {v2}, Lcom/metamoji/nt/doceditor/NtDocumentEditorForQuickEdit;-><init>()V

    .line 1569
    :try_start_0
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$newDocIdFinal:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$6;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v5}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v2, v4, v5, v6, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->openStateFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    .line 1570
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$nowDate:Ljava/util/Date;

    invoke-static {v1}, Lcom/metamoji/dm/fw/DmUtils;->dateAsNumber(Ljava/util/Date;)D

    move-result-wide v4

    .line 1572
    const-string/jumbo v1, "title"

    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$6$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$6;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$6;->val$newTitleFinal:Ljava/lang/String;

    invoke-interface {v2, v1, v6}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1574
    const-string v1, "create"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v1, v6}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1576
    const-string/jumbo v1, "update"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1578
    const-string/jumbo v1, "tags"

    invoke-interface {v2, v1, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->setMetaData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1581
    sget-object v0, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v2, v0}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    return-object v3

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/metamoji/dm/DmDocumentManagerCloseMode;->Save:Lcom/metamoji/dm/DmDocumentManagerCloseMode;

    invoke-interface {v2, v1}, Lcom/metamoji/dvm/fw/IDvmDocumentEditor;->closeInMode(Lcom/metamoji/dm/DmDocumentManagerCloseMode;)V

    .line 1583
    throw v0
.end method
