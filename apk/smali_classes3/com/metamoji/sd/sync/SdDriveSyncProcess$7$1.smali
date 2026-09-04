.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1551
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

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

    .line 1551
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->call()Ljava/lang/Void;

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

    .line 1553
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1556
    const-string v0, "document not found"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 1557
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$hasError:Lcom/metamoji/sd/SdValue;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1

    .line 1561
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1592
    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    if-eqz v2, :cond_4

    .line 1564
    iget-object v2, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    invoke-static {v2}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->-$$Nest$fgetm_driveId(Lcom/metamoji/sd/sync/SdDriveSyncProcess;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$docId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->deleteRecordingsForDocumentId(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1567
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 1568
    iget-object v4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v5, v5, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v3, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_0

    .line 1572
    :cond_1
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 1575
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$docId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1576
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1577
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1581
    :cond_2
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$docId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getThumbnailCacheById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOThumbnailCache;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1584
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$docId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsRevision()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsUpdate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->thumbnailPathWithDocId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1586
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1587
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1589
    :cond_3
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteThumbnailCache(Lcom/metamoji/sd/entities/SdMOThumbnailCache;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_2

    .line 1592
    :cond_4
    iget-boolean v2, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$registeredFromV2:Z

    .line 1598
    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    if-eqz v2, :cond_5

    .line 1594
    iget-object v2, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$revision:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsRevision(Ljava/lang/String;)V

    .line 1596
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateFlag(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 1598
    :cond_5
    iget-object v2, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$revision:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 1601
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$revision:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsRevision(Ljava/lang/String;)V

    .line 1605
    :cond_6
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdateFlag(Ljava/lang/Boolean;)V

    .line 1606
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateFlag(Ljava/lang/Boolean;)V

    .line 1607
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setOptionsUpdateFlag(Ljava/lang/Boolean;)V

    .line 1611
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getLocalOptions()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/metamoji/sd/SdUtils;->putOffBitFlag(Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setLocalOptions(Ljava/lang/Integer;)V

    .line 1613
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$7;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_7
    :goto_2
    return-object v1
.end method
