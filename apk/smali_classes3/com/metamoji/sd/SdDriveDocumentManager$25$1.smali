.class Lcom/metamoji/sd/SdDriveDocumentManager$25$1;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$25;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

.field final synthetic val$fromName:Ljava/lang/String;

.field final synthetic val$moFromFolder:Lcom/metamoji/sd/entities/SdMOFolder;

.field final synthetic val$moParentFolder:Lcom/metamoji/sd/entities/SdMOFolder;

.field final synthetic val$parentTags:Ljava/util/List;

.field final synthetic val$toName:Ljava/lang/String;

.field final synthetic val$toPath:Ljava/lang/String;

.field final synthetic val$toTags:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$25;Ljava/lang/String;Ljava/util/List;Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/entities/SdMOFolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
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

    .line 5442
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$toPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$toTags:Ljava/util/List;

    iput-object p4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$moFromFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    iput-object p5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$moParentFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    iput-object p6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$fromName:Ljava/lang/String;

    iput-object p7, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$toName:Ljava/lang/String;

    iput-object p8, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$parentTags:Ljava/util/List;

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

    .line 5442
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5446
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$toPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5447
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5448
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->TagAlreadyExistsInSiblingError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 5454
    new-instance v0, Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-direct {v0}, Lcom/metamoji/sd/entities/SdMOFolder;-><init>()V

    .line 5455
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$toPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setAbsPath(Ljava/lang/String;)V

    .line 5458
    :cond_1
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$toTags:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5460
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$toTags:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/entities/SdMOFolder;->setDepth(Ljava/lang/Integer;)V

    .line 5461
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$moFromFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-virtual {v3}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrder(Ljava/lang/String;)V

    .line 5462
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdate(Ljava/util/Date;)V

    .line 5463
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdateFlag(Ljava/lang/Boolean;)V

    .line 5464
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdate(Ljava/util/Date;)V

    .line 5465
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdateFlag(Ljava/lang/Boolean;)V

    const/4 v3, 0x0

    .line 5466
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/entities/SdMOFolder;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 5467
    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setName(Ljava/lang/String;)V

    .line 5469
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createOrUpdateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 5471
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$moParentFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5473
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$fromName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 5478
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$toName:Ljava/lang/String;

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    .line 5475
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5476
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$fromName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5478
    :cond_2
    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5481
    :goto_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$parentTags:Ljava/util/List;

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderNamesWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v2

    .line 5482
    invoke-static {v2, v0}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 5484
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$moParentFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrder(Ljava/lang/String;)V

    .line 5485
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$moParentFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdate(Ljava/util/Date;)V

    .line 5486
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$moParentFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdateFlag(Ljava/lang/Boolean;)V

    .line 5487
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->val$moParentFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    return-object v1
.end method
