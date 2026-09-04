.class Lcom/metamoji/sd/SdDriveDocumentManager$10$1;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$10;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$10;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2493
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

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

    .line 2493
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->call()Ljava/lang/Void;

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

    .line 2495
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2499
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1

    .line 2504
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getContentsRevision()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 2551
    :cond_1
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdate(Ljava/util/Date;)V

    const/4 v2, 0x1

    .line 2552
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/entities/SdMODocument;->setContentsUpdateFlag(Ljava/lang/Boolean;)V

    .line 2553
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 2554
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 2557
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$docId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2559
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto/16 :goto_2

    .line 2508
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 2509
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v3, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentTag(Lcom/metamoji/sd/entities/SdMODocumentTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_1

    .line 2513
    :cond_3
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$docId:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentSearchData;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2515
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v2, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentSearchData(Lcom/metamoji/sd/entities/SdMODocumentSearchData;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 2518
    :cond_4
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$docId:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentRoomById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocumentRoom;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2522
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v2, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocumentRoom(Lcom/metamoji/sd/entities/SdMODocumentRoom;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 2526
    :cond_5
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$10;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v2}, Lcom/metamoji/sd/SdDriveDocumentManager;->internalDriveId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$docId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->deleteRecordingsForDocumentId(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2529
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 2532
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$10;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$docId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdDriveDocumentManager;->contentsPathWithDocId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2533
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2534
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2538
    :cond_6
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$docId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getThumbnailCacheById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOThumbnailCache;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2541
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$10;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$docId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsRevision()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsUpdate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->thumbnailPathWithDocId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2543
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2544
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2546
    :cond_7
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$10$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$10;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$10;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteThumbnailCache(Lcom/metamoji/sd/entities/SdMOThumbnailCache;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_8
    :goto_2
    return-object v1
.end method
