.class Lcom/metamoji/sd/SdDriveDocumentManager$21$1;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$21;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$21;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4658
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

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

    .line 4658
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->call()Ljava/lang/Void;

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

    .line 4660
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$bean:Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getAbsPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4661
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 4662
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    .line 4727
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sub-int/2addr v2, v3

    .line 4662
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4663
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4664
    invoke-static {v3}, Lcom/metamoji/sd/SdUtils;->removeLast(Ljava/util/List;)V

    .line 4666
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v5, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderCountWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)J

    move-result-wide v5

    .line 4669
    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->isAvailableTagName(Ljava/lang/String;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 4670
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->InvalidTagNameError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v8

    .line 4675
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 4681
    iget-object v9, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    if-eqz v7, :cond_1

    .line 4676
    iget-object v0, v9, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->TagAlreadyExistInParentError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v8

    .line 4681
    :cond_1
    iget-object v7, v9, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-static {v3}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v10, v10, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v7, v9, v10}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolder2ById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 4683
    invoke-virtual {v7}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    goto/16 :goto_0

    .line 4689
    :cond_2
    iget-object v9, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v9, v9, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v10, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v10, v10, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v9, v1, v10}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 4690
    invoke-virtual {v9}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_3

    .line 4691
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->TagAlreadyExistsInSiblingError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v8

    :cond_3
    const-wide/16 v10, 0x1

    add-long/2addr v5, v10

    const-wide/16 v10, 0x3e8

    cmp-long v5, v5, v10

    if-lez v5, :cond_4

    .line 4697
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->FolderCountLimitError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v8

    .line 4702
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 4707
    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    const/16 v10, 0xc8

    if-le v5, v10, :cond_5

    .line 4703
    iget-object v0, v6, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->FolderDepthLimitError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v8

    .line 4707
    :cond_5
    iget-object v5, v6, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v5, v3, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderNamesWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v3

    .line 4710
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v10, :cond_6

    .line 4711
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->FolderSiblingLimitError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v8

    :cond_6
    if-nez v9, :cond_7

    .line 4717
    new-instance v9, Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-direct {v9}, Lcom/metamoji/sd/entities/SdMOFolder;-><init>()V

    .line 4718
    invoke-virtual {v9, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setAbsPath(Ljava/lang/String;)V

    .line 4721
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setDepth(Ljava/lang/Integer;)V

    .line 4722
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$bean:Lcom/metamoji/dvm/fw/bean/DvmFolderBean;

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmFolderBean;->getChildrenOrder()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrder(Ljava/lang/String;)V

    .line 4723
    const-string v0, ""

    invoke-virtual {v9, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderOrigin(Ljava/lang/String;)V

    .line 4724
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v9, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdate(Ljava/util/Date;)V

    const/4 v0, 0x0

    .line 4725
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdateFlag(Ljava/lang/Boolean;)V

    .line 4726
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v9, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdate(Ljava/util/Date;)V

    .line 4727
    invoke-virtual {v9, v4}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 4728
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 4729
    invoke-virtual {v9, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setName(Ljava/lang/String;)V

    .line 4731
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v9, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createOrUpdateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 4734
    invoke-virtual {v7}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4737
    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4738
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4740
    invoke-static {v3, v1}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4742
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrder(Ljava/lang/String;)V

    .line 4743
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v7, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdate(Ljava/util/Date;)V

    .line 4744
    invoke-virtual {v7, v4}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdateFlag(Ljava/lang/Boolean;)V

    .line 4746
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v7, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    return-object v8

    .line 4684
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$21$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$21;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$21;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->ParentFolderNotExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v8
.end method
