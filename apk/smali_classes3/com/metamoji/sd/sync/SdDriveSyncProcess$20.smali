.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess;->doMergeDocumentInfoFromPool()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/sd/SdBlock<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

.field final synthetic val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

.field final synthetic val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 3789
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iput-object p2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

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

    .line 3789
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3791
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getPoolDocumentIdAll(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 3793
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 3798
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 3799
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagNameListWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3800
    sget-object v4, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v8, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3804
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 3805
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentSearchDataIdsByIds(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3806
    sget-object v4, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3809
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    .line 3810
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v6, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getPoolDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPoolDocument;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 3816
    :cond_3
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v1, v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->lockDocument(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 3820
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, p0

    :try_start_1
    invoke-direct/range {v3 .. v8}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20$1;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;Lcom/metamoji/sd/entities/SdMOPoolDocument;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4116
    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v1, v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v4, p0

    :goto_3
    iget-object v1, v4, Lcom/metamoji/sd/sync/SdDriveSyncProcess$20;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->m_driveDocumentManager:Lcom/metamoji/sd/SdDriveDocumentManager;

    invoke-virtual {v1, v6}, Lcom/metamoji/sd/SdDriveDocumentManager;->unlockDocument(Ljava/lang/String;)V

    .line 4117
    throw v0

    :cond_5
    move-object v4, p0

    return-object v2
.end method
