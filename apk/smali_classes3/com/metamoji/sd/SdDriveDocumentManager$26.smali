.class Lcom/metamoji/sd/SdDriveDocumentManager$26;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager;->copyFolderFrom(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
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

.field final synthetic val$withCopyDocuments:Z


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

    .line 5724
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$fromTags:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$toParentTags:Ljava/util/List;

    iput-object p4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$err:Lcom/metamoji/sd/SdValue;

    iput-object p5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p7, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$nowDate:Ljava/util/Date;

    iput-object p8, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$toParentChildrenOrder:Ljava/util/List;

    iput-boolean p9, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$withCopyDocuments:Z

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

    .line 5724
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$26;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 5726
    const-string v6, "[SdDriveDocumentManager] :: ERROR copyFolderFrom:%s"

    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$fromTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5728
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$fromTags:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5729
    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->removeLast(Ljava/util/List;)V

    .line 5731
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$toParentTags:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5732
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5734
    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$fromTags:Ljava/util/List;

    invoke-static {v4}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 5735
    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 5736
    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$toParentTags:Ljava/util/List;

    invoke-static {v4}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 5737
    invoke-static {v3}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .line 5739
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v15, 0x0

    if-eqz v7, :cond_0

    .line 5740
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->CopyFolderAlreadyExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v15

    .line 5745
    :cond_0
    iget-object v7, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v9, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v7, v8, v9}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v16

    if-eqz v16, :cond_12

    .line 5746
    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_5

    .line 5752
    :cond_1
    iget-object v7, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v9, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v7, v2, v9}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolder2ById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 5753
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    .line 5759
    :cond_2
    iget-object v2, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v7, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v4, v7}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolder2ById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 5760
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_3

    .line 5766
    :cond_3
    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$toParentTags:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5767
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->TagAlreadyExistInParentError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v15

    .line 5773
    :cond_4
    iget-object v7, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    const-wide/16 v12, 0x1

    iget-object v14, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v7 .. v14}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFoldersWithoutDeletedUnder(Ljava/lang/String;ZJJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 5774
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x0

    if-lez v4, :cond_5

    .line 5775
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/entities/SdMOFolder;

    .line 5776
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOFolder;->getDepth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$fromTags:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int v7, v0, v4

    .line 5780
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v7

    const/16 v4, 0xc8

    if-le v0, v4, :cond_6

    .line 5781
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->FolderDepthLimitError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v15

    .line 5785
    :cond_6
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v7, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$toParentTags:Ljava/util/List;

    iget-object v9, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v7, v9}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderNamesWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 5788
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le v0, v4, :cond_7

    .line 5789
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->FolderSiblingLimitError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v15

    .line 5794
    :cond_7
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$toParentTags:Ljava/util/List;

    iget-object v7, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v8, v4, v7}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderCountWithoutDeletedUnder(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-lez v0, :cond_8

    .line 5796
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->TagAlreadyExistInParentError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v15

    .line 5800
    :cond_8
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderCountWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)J

    move-result-wide v9

    .line 5801
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v8, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderCountWithoutDeletedUnder(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)J

    move-result-wide v13

    const-wide/16 v17, 0x1

    add-long v9, v9, v17

    add-long/2addr v9, v13

    const-wide/16 v17, 0x3e8

    cmp-long v0, v9, v17

    if-lez v0, :cond_9

    .line 5805
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->FolderCountLimitError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v15

    .line 5810
    :cond_9
    :try_start_0
    iget-object v7, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v0, Lcom/metamoji/sd/SdDriveDocumentManager$26$1;

    move-object v4, v5

    move-object v5, v2

    move-object v2, v4

    move-object/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/sd/SdDriveDocumentManager$26$1;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$26;Ljava/lang/String;Ljava/util/List;Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/entities/SdMOFolder;)V

    invoke-virtual {v7, v0}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5856
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$err:Lcom/metamoji/sd/SdValue;

    invoke-virtual {v0}, Lcom/metamoji/sd/SdValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    return-object v15

    :cond_a
    move-wide v10, v11

    .line 5863
    :goto_0
    iget-object v7, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    const-wide/16 v12, 0x3e8

    iget-object v14, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    const/4 v9, 0x1

    invoke-virtual/range {v7 .. v14}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFoldersWithoutDeletedUnder(Ljava/lang/String;ZJJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 5865
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x3e8

    if-nez v3, :cond_b

    goto :goto_1

    .line 5870
    :cond_b
    :try_start_1
    iget-object v3, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v5, Lcom/metamoji/sd/SdDriveDocumentManager$26$2;

    invoke-direct {v5, v1, v0, v2, v8}, Lcom/metamoji/sd/SdDriveDocumentManager$26$2;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$26;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 5907
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_f

    .line 5914
    :goto_1
    iget-boolean v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$withCopyDocuments:Z

    if-eqz v0, :cond_e

    .line 5917
    :cond_c
    iget-object v7, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v8, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$fromTags:Ljava/util/List;

    const-wide/16 v11, 0x3e8

    iget-object v13, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    const-wide/16 v9, 0x0

    invoke-virtual/range {v7 .. v13}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentsWithoutDeletedUnder(Ljava/util/List;JJLcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 5919
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_d

    goto :goto_2

    .line 5924
    :cond_d
    :try_start_2
    iget-object v2, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v3, Lcom/metamoji/sd/SdDriveDocumentManager$26$3;

    invoke-direct {v3, v1, v0}, Lcom/metamoji/sd/SdDriveDocumentManager$26$3;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$26;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5961
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_c

    goto :goto_2

    :catch_0
    move-exception v0

    .line 5955
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5956
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    :cond_e
    :goto_2
    return-object v15

    :cond_f
    add-long v10, v10, v17

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5902
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5903
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v15

    :catch_2
    move-exception v0

    .line 5851
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5852
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v15

    .line 5761
    :cond_10
    :goto_3
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->FolderNotExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v15

    .line 5754
    :cond_11
    :goto_4
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->FolderNotExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v15

    .line 5747
    :cond_12
    :goto_5
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->FolderNotExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v15
.end method
