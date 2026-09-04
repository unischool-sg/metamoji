.class Lcom/metamoji/sd/SdDriveDocumentManager$19;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager;->reNameTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
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

.field final synthetic val$afterName:Ljava/lang/String;

.field final synthetic val$beforeName:Ljava/lang/String;

.field final synthetic val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

.field final synthetic val$color:Ljava/lang/Integer;

.field final synthetic val$err:Lcom/metamoji/sd/SdValue;

.field final synthetic val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

.field final synthetic val$nowDate:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/lang/String;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdDriveContentsMOManager;Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/lang/Integer;Ljava/util/Date;)V
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

    .line 3932
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$afterName:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$err:Lcom/metamoji/sd/SdValue;

    iput-object p4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$beforeName:Ljava/lang/String;

    iput-object p6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p7, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$color:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$nowDate:Ljava/util/Date;

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

    .line 3932
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$19;->call()Ljava/lang/Void;

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

    .line 3936
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$afterName:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->isAvailableTagName(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3937
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v3, Lcom/metamoji/sd/SdError;

    sget-object v4, Lcom/metamoji/dvm/DvmErrCode;->InvalidTagNameError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v3, v4}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v2

    .line 3941
    :cond_0
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$beforeName:Ljava/lang/String;

    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagByName(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTag;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3943
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOTag;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    .line 3949
    :cond_1
    :try_start_0
    iget-object v3, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v4, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;

    invoke-direct {v4, v1}, Lcom/metamoji/sd/SdDriveDocumentManager$19$1;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$19;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_6

    .line 4004
    iget-object v3, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$err:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v3}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v2

    .line 4009
    :cond_2
    iget-object v3, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$beforeName:Ljava/lang/String;

    iget-object v5, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderWithoutDeletedByName(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v3

    :goto_0
    const/16 v4, 0x3e8

    .line 4011
    const-string v5, "[SdDriveDocumentManager] :: ERROR reNameTag:%s"

    if-eqz v3, :cond_7

    .line 4015
    :try_start_1
    iget-object v6, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v7, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;

    invoke-direct {v7, v1, v3}, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$19;Lcom/metamoji/sd/entities/SdMOFolder;)V

    invoke-virtual {v6, v7}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_3

    const-wide/16 v6, 0x0

    move-wide v11, v6

    .line 4078
    :goto_1
    iget-object v8, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMOFolder;->getAbsPath()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v13, 0x3e8

    iget-object v15, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    const/4 v10, 0x1

    invoke-virtual/range {v8 .. v15}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFoldersWithoutDeletedUnder(Ljava/lang/String;ZJJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v6

    .line 4080
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 4085
    :cond_3
    :try_start_2
    iget-object v7, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v8, Lcom/metamoji/sd/SdDriveDocumentManager$19$3;

    invoke-direct {v8, v1, v6}, Lcom/metamoji/sd/SdDriveDocumentManager$19$3;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$19;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4121
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v4, :cond_6

    .line 4130
    :cond_4
    :goto_2
    iget-object v13, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMOFolder;->getAbsPath()Ljava/lang/String;

    move-result-object v14

    const-wide/16 v18, 0x3e8

    iget-object v6, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v20, v6

    invoke-virtual/range {v13 .. v20}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFoldersWithoutDeletedUnder(Ljava/lang/String;ZJJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v6

    .line 4132
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_5

    goto :goto_3

    .line 4137
    :cond_5
    :try_start_3
    iget-object v7, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v8, Lcom/metamoji/sd/SdDriveDocumentManager$19$4;

    invoke-direct {v8, v1, v6}, Lcom/metamoji/sd/SdDriveDocumentManager$19$4;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$19;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 4160
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v4, :cond_4

    .line 4166
    :goto_3
    :try_start_4
    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v6, Lcom/metamoji/sd/SdDriveDocumentManager$19$5;

    invoke-direct {v6, v1, v3}, Lcom/metamoji/sd/SdDriveDocumentManager$19$5;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$19;Lcom/metamoji/sd/entities/SdMOFolder;)V

    invoke-virtual {v4, v6}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 4201
    iget-object v3, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$beforeName:Ljava/lang/String;

    iget-object v5, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderWithoutDeletedByName(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4196
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4197
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v3, Lcom/metamoji/sd/SdError;

    sget-object v4, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v3, v4}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v2

    :catch_1
    move-exception v0

    .line 4155
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4156
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v3, Lcom/metamoji/sd/SdError;

    sget-object v4, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v3, v4}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v2

    :cond_6
    const-wide/16 v6, 0x3e8

    add-long/2addr v11, v6

    goto/16 :goto_1

    :catch_2
    move-exception v0

    .line 4116
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4117
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v3, Lcom/metamoji/sd/SdError;

    sget-object v4, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v3, v4}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v2

    :catch_3
    move-exception v0

    .line 4070
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4071
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v3, Lcom/metamoji/sd/SdError;

    sget-object v4, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v3, v4}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v2

    .line 4206
    :cond_7
    iget-object v6, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v7, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$beforeName:Ljava/lang/String;

    const-wide/16 v10, 0x3e8

    iget-object v12, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    const-wide/16 v8, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentsWithoutDeletedByTagName(Ljava/lang/String;JJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v3

    .line 4208
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_8

    goto :goto_4

    .line 4213
    :cond_8
    :try_start_5
    iget-object v6, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v7, Lcom/metamoji/sd/SdDriveDocumentManager$19$6;

    invoke-direct {v7, v1, v3}, Lcom/metamoji/sd/SdDriveDocumentManager$19$6;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$19;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_5

    .line 4249
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v4, :cond_7

    .line 4255
    :goto_4
    :try_start_6
    iget-object v3, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v4, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;

    invoke-direct {v4, v1, v0}, Lcom/metamoji/sd/SdDriveDocumentManager$19$7;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$19;Lcom/metamoji/sd/entities/SdMOTag;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_4

    return-object v2

    :catch_4
    move-exception v0

    .line 4282
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4283
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v3, Lcom/metamoji/sd/SdError;

    sget-object v4, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v3, v4}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v2

    :catch_5
    move-exception v0

    .line 4244
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4245
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v3, Lcom/metamoji/sd/SdError;

    sget-object v4, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v3, v4}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v2

    :catch_6
    move-exception v0

    .line 3999
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "[SdDriveDocumentManager] :: ERROR reNameTag: %s"

    invoke-static {v3, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4000
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v3, Lcom/metamoji/sd/SdError;

    sget-object v4, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v3, v4}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v2

    .line 3944
    :cond_9
    :goto_5
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v3, Lcom/metamoji/sd/SdError;

    sget-object v4, Lcom/metamoji/dvm/DvmErrCode;->TagNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v3, v4}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v2
.end method
