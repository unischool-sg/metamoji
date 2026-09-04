.class Lcom/metamoji/sd/SdDriveDocumentManager$18;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager;->deleteTags(Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
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

.field final synthetic val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

.field final synthetic val$nowDate:Ljava/util/Date;

.field final synthetic val$tagNames:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/List;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/util/Date;Lcom/metamoji/sd/SdValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3710
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$tagNames:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$nowDate:Ljava/util/Date;

    iput-object p6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$err:Lcom/metamoji/sd/SdValue;

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

    .line 3710
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$18;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 3714
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$tagNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 3719
    iget-object v2, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v5, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderWithoutDeletedByName(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v2

    :goto_1
    const/16 v11, 0x3e8

    .line 3721
    const-string v12, "[SdDriveDocumentManager] :: ERROR deleteTags:%s"

    if-eqz v2, :cond_2

    .line 3726
    :cond_0
    iget-object v13, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOFolder;->getAbsPath()Ljava/lang/String;

    move-result-object v14

    const-wide/16 v18, 0x3e8

    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v20, v4

    invoke-virtual/range {v13 .. v20}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFoldersWithoutDeletedUnder(Ljava/lang/String;ZJJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v4

    .line 3728
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 3733
    :cond_1
    :try_start_0
    iget-object v6, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v7, Lcom/metamoji/sd/SdDriveDocumentManager$18$1;

    invoke-direct {v7, v1, v4}, Lcom/metamoji/sd/SdDriveDocumentManager$18$1;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$18;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3756
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v11, :cond_0

    .line 3762
    :goto_2
    :try_start_1
    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v6, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;

    invoke-direct {v6, v1, v2}, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$18;Lcom/metamoji/sd/entities/SdMOFolder;)V

    invoke-virtual {v4, v6}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3797
    iget-object v2, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v5, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderWithoutDeletedByName(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3792
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3793
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v4, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v4}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v3

    :catch_1
    move-exception v0

    .line 3751
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3752
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v4, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v4}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v3

    .line 3802
    :cond_2
    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    const-wide/16 v8, 0x3e8

    iget-object v10, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    const-wide/16 v6, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentsWithoutDeletedByTagName(Ljava/lang/String;JJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v2

    .line 3804
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    .line 3809
    :cond_3
    :try_start_2
    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v6, Lcom/metamoji/sd/SdDriveDocumentManager$18$3;

    invoke-direct {v6, v1, v2, v5}, Lcom/metamoji/sd/SdDriveDocumentManager$18$3;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$18;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_3

    .line 3831
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v11, :cond_2

    .line 3837
    :goto_3
    iget-object v2, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v5, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagByName(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTag;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3838
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOTag;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    .line 3844
    :cond_4
    :try_start_3
    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v5, Lcom/metamoji/sd/SdDriveDocumentManager$18$4;

    invoke-direct {v5, v1, v2}, Lcom/metamoji/sd/SdDriveDocumentManager$18$4;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$18;Lcom/metamoji/sd/entities/SdMOTag;)V

    invoke-virtual {v4, v5}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .line 3871
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3872
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v4, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v4}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v3

    .line 3839
    :cond_5
    :goto_4
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v4, Lcom/metamoji/dvm/DvmErrCode;->TagNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v4}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v3

    :catch_3
    move-exception v0

    .line 3826
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3827
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v4, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v4}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    :cond_6
    return-object v3
.end method
