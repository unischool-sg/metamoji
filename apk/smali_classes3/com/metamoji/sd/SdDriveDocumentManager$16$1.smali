.class Lcom/metamoji/sd/SdDriveDocumentManager$16$1;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$16;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$16;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3496
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

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

    .line 3496
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3499
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$16;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$16;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagCountWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)J

    move-result-wide v0

    .line 3502
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$16;->val$tag:Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->isAvailableTagName(Ljava/lang/String;)Z

    move-result v2

    .line 3508
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 3503
    iget-object v0, v3, Lcom/metamoji/sd/SdDriveDocumentManager$16;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->InvalidTagNameError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v4

    .line 3508
    :cond_0
    iget-object v2, v3, Lcom/metamoji/sd/SdDriveDocumentManager$16;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$16;->val$tag:Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$16;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagByName(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTag;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3510
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOTag;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3511
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$16;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->TagAlreadyExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v4

    :cond_1
    const-wide/16 v5, 0x1

    add-long/2addr v0, v5

    const-wide/16 v5, 0x2710

    cmp-long v0, v0, v5

    .line 3521
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    if-lez v0, :cond_2

    .line 3517
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$16;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->TagCountLimitError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v4

    .line 3521
    :cond_2
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$16;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$16;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagNameListWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 3523
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3524
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3525
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$16;->val$tag:Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3527
    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    const v3, 0xfa00

    if-le v1, v3, :cond_3

    .line 3528
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$16;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->TagOrderTooLong:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 3537
    :cond_3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    if-nez v2, :cond_4

    .line 3539
    new-instance v2, Lcom/metamoji/sd/entities/SdMOTag;

    invoke-direct {v2}, Lcom/metamoji/sd/entities/SdMOTag;-><init>()V

    .line 3541
    :cond_4
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$16;->val$tag:Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMOTag;->setName(Ljava/lang/String;)V

    .line 3542
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$16;->val$tag:Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMOTag;->setColor(Ljava/lang/Integer;)V

    .line 3543
    invoke-virtual {v2, v1}, Lcom/metamoji/sd/entities/SdMOTag;->setUpdate(Ljava/util/Date;)V

    .line 3544
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMOTag;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 3545
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMOTag;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 3547
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$16;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$16;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v2, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createOrUpdateTag(Lcom/metamoji/sd/entities/SdMOTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3550
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$16;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$16;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagOrderByDefaultId(Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTagOrder;

    move-result-object v2

    .line 3551
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOTagOrder;->getTagOrder()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 3552
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$16;->val$tag:Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    invoke-virtual {v5}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3555
    invoke-static {v0, v3}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3557
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setTagOrder(Ljava/lang/String;)V

    .line 3558
    invoke-virtual {v2, v1}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setUpdate(Ljava/util/Date;)V

    .line 3559
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/entities/SdMOTagOrder;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 3561
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$16;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$16;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateTagOrder(Lcom/metamoji/sd/entities/SdMOTagOrder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    return-object v4

    :catch_0
    move-exception v0

    .line 3532
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 3533
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$16$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$16;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$16;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->TagOrderTooLong:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v4
.end method
