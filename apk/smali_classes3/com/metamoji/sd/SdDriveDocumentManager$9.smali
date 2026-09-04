.class Lcom/metamoji/sd/SdDriveDocumentManager$9;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager;->moveDocument(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
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
.field final synthetic this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

.field final synthetic val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

.field final synthetic val$docIds:Ljava/util/List;

.field final synthetic val$err:Lcom/metamoji/sd/SdValue;

.field final synthetic val$fromTags:Ljava/util/List;

.field final synthetic val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

.field final synthetic val$nowDate:Ljava/util/Date;

.field final synthetic val$toTags:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/util/List;Ljava/util/List;Lcom/metamoji/sd/SdValue;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
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

    .line 2294
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$fromTags:Ljava/util/List;

    iput-object p4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$toTags:Ljava/util/List;

    iput-object p6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$docIds:Ljava/util/List;

    iput-object p7, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$err:Lcom/metamoji/sd/SdValue;

    iput-object p8, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$nowDate:Ljava/util/Date;

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

    .line 2294
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$9;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2296
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$fromTags:Ljava/util/List;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderNamesWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 2297
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$toTags:Ljava/util/List;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderNamesWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    .line 2299
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2300
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagNameListWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2301
    sget-object v5, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2304
    :cond_0
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$docIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2305
    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v7, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v6, v4, v7}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v4

    if-nez v4, :cond_2

    .line 2308
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v5

    .line 2312
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2314
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMODocument;->getTags()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v7

    invoke-interface {v7}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/sd/entities/SdMODocumentTag;

    .line 2315
    invoke-virtual {v8}, Lcom/metamoji/sd/entities/SdMODocumentTag;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2318
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$toTags:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2319
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 2322
    iget-object v9, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$fromTags:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2323
    sget-object v11, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2327
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2328
    sget-object v11, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2332
    :cond_5
    iget-object v9, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$toTags:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2333
    sget-object v11, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-interface {v8, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2336
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2337
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_5

    .line 2340
    :cond_7
    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_5

    .line 2343
    :cond_8
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2347
    :cond_9
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMODocument;->getOptions()Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x4

    invoke-static {v4, v6}, Lcom/metamoji/sd/SdUtils;->isOnBitFlag(Ljava/lang/Integer;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2349
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$toTags:Ljava/util/List;

    invoke-static {v4, v1, v7}, Lcom/metamoji/sd/SdUtils;->exsitsDocumentOnFolder(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 2350
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->MoveDocumentToFolderError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v5

    .line 2354
    :cond_a
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$fromTags:Ljava/util/List;

    invoke-static {v4, v0, v7}, Lcom/metamoji/sd/SdUtils;->exsitsDocumentOnFolder(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2355
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->MoveDocumentToFolderError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v5

    .line 2362
    :cond_b
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v3, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/metamoji/sd/SdDriveDocumentManager$9$1;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$9;Ljava/util/List;Ljava/util/HashMap;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    .line 2426
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[SdDriveDocumentManager] :: ERROR moveDocument:%s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2427
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$9;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v5
.end method
