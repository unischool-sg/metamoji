.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 613
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

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

    .line 613
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$fromChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 624
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    invoke-static {v1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->-$$Nest$fgetm_driveId(Lcom/metamoji/sd/sync/SdDriveSyncProcess;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$docId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->deleteRecordingsForDocumentId(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 627
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 628
    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v4, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$fromChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v2, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_0

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$fromChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 635
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$docId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 637
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$fromChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getThumbnailCacheById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOThumbnailCache;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 644
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$docId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsRevision()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/metamoji/sd/SdDriveDocumentManager;->thumbnailPathWithDocId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 647
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 649
    :cond_2
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$fromChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteThumbnailCache(Lcom/metamoji/sd/entities/SdMOThumbnailCache;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 653
    :cond_3
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$fromChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentRoomById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentRoom;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 655
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$4;->val$fromChildContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_4
    const/4 v0, 0x0

    return-object v0

    .line 620
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "document not found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
