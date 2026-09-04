.class Lcom/metamoji/sd/SdDriveDocumentManager$22;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager;->deleteFolder(Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
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

.field final synthetic val$absPath:Ljava/lang/String;

.field final synthetic val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

.field final synthetic val$err:Lcom/metamoji/sd/SdValue;

.field final synthetic val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

.field final synthetic val$nowDate:Ljava/util/Date;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/lang/String;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/util/Date;)V
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

    .line 4809
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$22;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$22;->val$absPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$22;->val$err:Lcom/metamoji/sd/SdValue;

    iput-object p4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$22;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$22;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$22;->val$nowDate:Ljava/util/Date;

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

    .line 4809
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$22;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4812
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$22;->val$absPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4813
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 4815
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 4817
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$22;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->FolderDeleteError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v2

    .line 4821
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$22;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$22;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4823
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 4830
    :cond_1
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$22;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOFolder;->getAbsPath()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v8, 0x3e8

    iget-object v10, p0, Lcom/metamoji/sd/SdDriveDocumentManager$22;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFoldersWithoutDeletedUnder(Ljava/lang/String;ZJJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    .line 4832
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "[SdDriveDocumentManager] :: ERROR deleteFolder:%s"

    if-nez v3, :cond_2

    goto :goto_0

    .line 4837
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$22;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v5, Lcom/metamoji/sd/SdDriveDocumentManager$22$1;

    invoke-direct {v5, p0, v1}, Lcom/metamoji/sd/SdDriveDocumentManager$22$1;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$22;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4860
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x3e8

    if-ge v1, v3, :cond_1

    .line 4866
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$22;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v3, Lcom/metamoji/sd/SdDriveDocumentManager$22$2;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/sd/SdDriveDocumentManager$22$2;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$22;Lcom/metamoji/sd/entities/SdMOFolder;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 4896
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4897
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$22;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v2

    :catch_1
    move-exception v0

    .line 4855
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4856
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$22;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v2

    .line 4824
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$22;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->FolderNotExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v2
.end method
