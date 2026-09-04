.class Lcom/metamoji/sd/SdDriveDocumentManager$27$1;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$27;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$27;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 6342
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;

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

    .line 6342
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6347
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$27;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getThumbnailCacheById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOThumbnailCache;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6349
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$27;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$docId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsRevision()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->getContentsUpdate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->thumbnailPathWithDocId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 6351
    :cond_0
    new-instance v0, Lcom/metamoji/sd/entities/SdMOThumbnailCache;

    invoke-direct {v0}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;-><init>()V

    .line 6352
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$docId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->setDocumentId(Ljava/lang/String;)V

    move-object v2, v1

    .line 6354
    :goto_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$27;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$docId:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$contentsRevision:Ljava/lang/String;

    iget-object v7, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;

    iget-object v7, v7, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$contentsUpdate:Ljava/util/Date;

    invoke-virtual {v4, v5, v6, v7}, Lcom/metamoji/sd/SdDriveDocumentManager;->thumbnailPathWithDocId(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6355
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$contentsRevision:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->setContentsRevision(Ljava/lang/String;)V

    .line 6356
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$contentsUpdate:Ljava/util/Date;

    invoke-virtual {v0, v4}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->setContentsUpdate(Ljava/util/Date;)V

    .line 6357
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$data:[B

    if-nez v4, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v0, v4}, Lcom/metamoji/sd/entities/SdMOThumbnailCache;->setNothingFlag(Ljava/lang/Boolean;)V

    if-eqz v2, :cond_2

    .line 6360
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6361
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 6364
    :cond_2
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$data:[B

    if-eqz v2, :cond_3

    .line 6366
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$data:[B

    invoke-static {v2, v3}, Lcom/metamoji/sd/SdUtils;->writeBytesAsFile([BLjava/io/File;)V

    .line 6369
    :cond_3
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$27;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$27$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$27;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$27;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createOrUpdateThumbnailCache(Lcom/metamoji/sd/entities/SdMOThumbnailCache;Lcom/metamoji/sd/SdManagedObjectContext;)V

    return-object v1
.end method
