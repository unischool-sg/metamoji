.class Lcom/metamoji/sd/SdDriveDocumentManager$24;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager;->moveFolderFrom(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
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

.field final synthetic val$nowDate:Ljava/util/Date;

.field final synthetic val$toParentChildrenOrder:Ljava/util/List;

.field final synthetic val$toParentTags:Ljava/util/List;

.field final synthetic val$withMoveDocuments:Z


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager;Ljava/util/List;Ljava/util/List;Lcom/metamoji/sd/SdValue;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/util/Date;Ljava/util/List;Z)V
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
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5029
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$fromTags:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$toParentTags:Ljava/util/List;

    iput-object p4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$err:Lcom/metamoji/sd/SdValue;

    iput-object p5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p7, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$nowDate:Ljava/util/Date;

    iput-object p8, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$toParentChildrenOrder:Ljava/util/List;

    iput-boolean p9, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$withMoveDocuments:Z

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

    .line 5029
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$24;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 5031
    const-string v6, "[SdDriveDocumentManager] :: ERROR moveFolderFrom:%s"

    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$fromTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5033
    new-instance v7, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$fromTags:Ljava/util/List;

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5034
    invoke-static {v7}, Lcom/metamoji/sd/SdUtils;->removeLast(Ljava/util/List;)V

    .line 5036
    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$toParentTags:Ljava/util/List;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5037
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5039
    iget-object v2, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$fromTags:Ljava/util/List;

    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    .line 5040
    invoke-static {v7}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 5041
    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$toParentTags:Ljava/util/List;

    invoke-static {v4}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 5042
    invoke-static {v3}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 5044
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v16, 0x0

    if-eqz v8, :cond_0

    .line 5045
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->CopyFolderAlreadyExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v16

    .line 5050
    :cond_0
    iget-object v8, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v10, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v8, v9, v10}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v17

    if-eqz v17, :cond_13

    .line 5051
    invoke-virtual/range {v17 .. v17}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_7

    .line 5057
    :cond_1
    iget-object v8, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v10, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v8, v2, v10}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolder2ById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 5058
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_6

    .line 5064
    :cond_2
    iget-object v8, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v10, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v8, v4, v10}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolder2ById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 5065
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_5

    .line 5071
    :cond_3
    iget-object v8, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$toParentTags:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5072
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->TagAlreadyExistInParentError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v16

    .line 5078
    :cond_4
    iget-object v8, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    const-wide/16 v13, 0x1

    iget-object v15, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {v8 .. v15}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFoldersWithoutDeletedUnder(Ljava/lang/String;ZJJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 5079
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 5080
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/entities/SdMOFolder;

    .line 5081
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOFolder;->getDepth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v8, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$fromTags:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int v10, v0, v8

    .line 5085
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v10

    const/16 v8, 0xc8

    if-le v0, v8, :cond_6

    .line 5086
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->FolderDepthLimitError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v16

    .line 5090
    :cond_6
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v10, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$toParentTags:Ljava/util/List;

    iget-object v11, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v10, v11}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderNamesWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 5093
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le v0, v8, :cond_7

    .line 5094
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->FolderSiblingLimitError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v16

    .line 5099
    :cond_7
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v8, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$toParentTags:Ljava/util/List;

    iget-object v10, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v9, v8, v10}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderCountWithoutDeletedUnder(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-lez v0, :cond_8

    .line 5101
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->TagAlreadyExistInParentError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v16

    .line 5106
    :cond_8
    :try_start_0
    iget-object v8, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v0, Lcom/metamoji/sd/SdDriveDocumentManager$24$1;

    move-object v10, v2

    move-object v2, v5

    move-object v5, v4

    move-object/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/sd/SdDriveDocumentManager$24$1;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$24;Ljava/lang/String;Ljava/util/List;Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/entities/SdMOFolder;)V

    invoke-virtual {v8, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_4

    .line 5152
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$err:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v16

    :cond_9
    move-wide v11, v12

    .line 5159
    :goto_0
    iget-object v8, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    const-wide/16 v13, 0x3e8

    iget-object v15, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    move-object v0, v10

    const/4 v10, 0x1

    invoke-virtual/range {v8 .. v15}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFoldersWithoutDeletedUnder(Ljava/lang/String;ZJJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v3

    .line 5161
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/16 v8, 0x3e8

    if-nez v5, :cond_a

    :goto_1
    move v2, v8

    goto :goto_2

    .line 5166
    :cond_a
    :try_start_1
    iget-object v5, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v10, Lcom/metamoji/sd/SdDriveDocumentManager$24$2;

    invoke-direct {v10, v1, v3, v2, v9}, Lcom/metamoji/sd/SdDriveDocumentManager$24$2;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$24;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_3

    .line 5203
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v8, :cond_10

    goto :goto_1

    .line 5212
    :cond_b
    :goto_2
    iget-object v8, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    const-wide/16 v13, 0x3e8

    iget-object v15, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-virtual/range {v8 .. v15}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFoldersWithoutDeletedUnder(Ljava/lang/String;ZJJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v3

    .line 5214
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_c

    goto :goto_3

    .line 5219
    :cond_c
    :try_start_2
    iget-object v5, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v8, Lcom/metamoji/sd/SdDriveDocumentManager$24$3;

    invoke-direct {v8, v1, v3}, Lcom/metamoji/sd/SdDriveDocumentManager$24$3;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$24;Ljava/util/List;)V

    invoke-virtual {v5, v8}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 5242
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v2, :cond_b

    .line 5248
    :goto_3
    :try_start_3
    iget-object v3, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v5, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;

    invoke-direct {v5, v1, v4, v7, v0}, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$24;Lcom/metamoji/sd/entities/SdMOFolder;Ljava/util/List;Lcom/metamoji/sd/entities/SdMOFolder;)V

    invoke-virtual {v3, v5}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 5278
    iget-boolean v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$withMoveDocuments:Z

    if-eqz v0, :cond_f

    .line 5281
    :cond_d
    iget-object v7, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v8, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$fromTags:Ljava/util/List;

    const-wide/16 v11, 0x3e8

    iget-object v13, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    const-wide/16 v9, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentsWithoutDeletedUnder(Ljava/util/List;JJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 5283
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_e

    goto :goto_4

    .line 5288
    :cond_e
    :try_start_4
    iget-object v3, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v4, Lcom/metamoji/sd/SdDriveDocumentManager$24$5;

    invoke-direct {v4, v1, v0}, Lcom/metamoji/sd/SdDriveDocumentManager$24$5;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$24;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 5325
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_d

    goto :goto_4

    :catch_0
    move-exception v0

    .line 5319
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5320
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    :cond_f
    :goto_4
    return-object v16

    :catch_1
    move-exception v0

    .line 5273
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5274
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v16

    :catch_2
    move-exception v0

    .line 5237
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5238
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v16

    :cond_10
    const-wide/16 v13, 0x3e8

    add-long/2addr v11, v13

    move-object v10, v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    .line 5198
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5199
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v16

    :catch_4
    move-exception v0

    .line 5147
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5148
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v16

    .line 5066
    :cond_11
    :goto_5
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->FolderNotExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v16

    .line 5059
    :cond_12
    :goto_6
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->FolderNotExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v16

    .line 5052
    :cond_13
    :goto_7
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->FolderNotExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v16
.end method
