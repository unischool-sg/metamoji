.class Lcom/metamoji/sd/SdDriveDocumentManager$25;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager;->renameFolder(Ljava/util/List;Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
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

.field final synthetic val$err:Lcom/metamoji/sd/SdValue;

.field final synthetic val$fromTags:Ljava/util/List;

.field final synthetic val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$nowDate:Ljava/util/Date;

.field final synthetic val$withMoveDocuments:Z


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/List;Ljava/lang/String;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdValue;Ljava/util/Date;Z)V
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

    .line 5392
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$fromTags:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$err:Lcom/metamoji/sd/SdValue;

    iput-object p7, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$nowDate:Ljava/util/Date;

    iput-boolean p8, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$withMoveDocuments:Z

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

    .line 5392
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$25;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 5395
    const-string v9, "[SdDriveDocumentManager] :: ERROR renameFolder:%s"

    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$fromTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 5396
    iget-object v7, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$name:Ljava/lang/String;

    .line 5398
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$fromTags:Ljava/util/List;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5399
    invoke-static {v8}, Lcom/metamoji/sd/SdUtils;->removeLast(Ljava/util/List;)V

    .line 5400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5401
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5403
    iget-object v2, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$fromTags:Ljava/util/List;

    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    .line 5404
    invoke-static {v8}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 5405
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 5408
    iget-object v5, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v10, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v5, v11, v10}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v5

    const/16 v18, 0x0

    if-eqz v5, :cond_f

    .line 5409
    invoke-virtual {v5}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_6

    .line 5415
    :cond_0
    iget-object v10, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v12, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v10, v2, v12}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolder2ById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 5416
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    goto/16 :goto_5

    .line 5422
    :cond_1
    iget-object v10, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v12, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v10, v7, v12}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagByName(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTag;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 5423
    invoke-virtual {v10}, Lcom/metamoji/sd/entities/SdMOTag;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_2

    goto/16 :goto_4

    .line 5429
    :cond_2
    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 5430
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->TagAlreadyExistInParentError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v18

    .line 5435
    :cond_3
    iget-object v10, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    new-instance v12, Ljava/util/ArrayList;

    new-array v3, v3, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v3, v13

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v10, v11, v12, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderCountWithoutDeletedUnder(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-lez v3, :cond_4

    .line 5437
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->TagAlreadyExistInParentError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v18

    .line 5442
    :cond_4
    :try_start_0
    iget-object v10, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    move-object v3, v0

    new-instance v0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;

    move-object/from16 v19, v5

    move-object v5, v2

    move-object v2, v4

    move-object/from16 v4, v19

    invoke-direct/range {v0 .. v8}, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$25;Ljava/lang/String;Ljava/util/List;Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/entities/SdMOFolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v10, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_4

    .line 5498
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$err:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v18

    :cond_5
    move-wide v13, v14

    .line 5505
    :goto_0
    iget-object v10, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    const-wide/16 v15, 0x3e8

    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    const/4 v12, 0x1

    move-object/from16 v17, v0

    invoke-virtual/range {v10 .. v17}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFoldersWithoutDeletedUnder(Ljava/lang/String;ZJJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 5507
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v6, 0x3e8

    if-nez v3, :cond_6

    goto :goto_1

    .line 5512
    :cond_6
    :try_start_1
    iget-object v3, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v10, Lcom/metamoji/sd/SdDriveDocumentManager$25$2;

    invoke-direct {v10, v1, v0, v2, v11}, Lcom/metamoji/sd/SdDriveDocumentManager$25$2;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$25;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 5549
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_c

    .line 5558
    :cond_7
    :goto_1
    iget-object v10, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    const-wide/16 v15, 0x3e8

    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v17, v0

    invoke-virtual/range {v10 .. v17}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFoldersWithoutDeletedUnder(Ljava/lang/String;ZJJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 5560
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    .line 5565
    :cond_8
    :try_start_2
    iget-object v2, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v3, Lcom/metamoji/sd/SdDriveDocumentManager$25$3;

    invoke-direct {v3, v1, v0}, Lcom/metamoji/sd/SdDriveDocumentManager$25$3;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$25;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5588
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_7

    .line 5594
    :goto_2
    :try_start_3
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v2, Lcom/metamoji/sd/SdDriveDocumentManager$25$4;

    invoke-direct {v2, v1, v4, v8, v5}, Lcom/metamoji/sd/SdDriveDocumentManager$25$4;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$25;Lcom/metamoji/sd/entities/SdMOFolder;Ljava/util/List;Lcom/metamoji/sd/entities/SdMOFolder;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 5624
    iget-boolean v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$withMoveDocuments:Z

    if-eqz v0, :cond_b

    .line 5627
    :cond_9
    iget-object v10, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v11, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$fromTags:Ljava/util/List;

    const-wide/16 v14, 0x3e8

    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    const-wide/16 v12, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentsWithoutDeletedUnder(Ljava/util/List;JJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 5629
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    .line 5634
    :cond_a
    :try_start_4
    iget-object v2, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v3, Lcom/metamoji/sd/SdDriveDocumentManager$25$5;

    invoke-direct {v3, v1, v0, v7}, Lcom/metamoji/sd/SdDriveDocumentManager$25$5;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$25;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 5668
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v6, :cond_9

    goto :goto_3

    :catch_0
    move-exception v0

    .line 5662
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5663
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    :cond_b
    :goto_3
    return-object v18

    :catch_1
    move-exception v0

    .line 5619
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5620
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v18

    :catch_2
    move-exception v0

    .line 5583
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5584
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v18

    :cond_c
    const-wide/16 v15, 0x3e8

    add-long/2addr v13, v15

    goto/16 :goto_0

    :catch_3
    move-exception v0

    .line 5544
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5545
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v18

    :catch_4
    move-exception v0

    .line 5493
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5494
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v18

    .line 5424
    :cond_d
    :goto_4
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->TagNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v18

    .line 5417
    :cond_e
    :goto_5
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->FolderNotExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v18

    .line 5410
    :cond_f
    :goto_6
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->FolderNotExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v18
.end method
