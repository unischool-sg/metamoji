.class Lcom/metamoji/sd/SdDriveDocumentManager$19$2;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$19;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

.field final synthetic val$moFolder:Lcom/metamoji/sd/entities/SdMOFolder;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$19;Lcom/metamoji/sd/entities/SdMOFolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4015
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->val$moFolder:Lcom/metamoji/sd/entities/SdMOFolder;

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

    .line 4015
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4018
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->val$moFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOFolder;->getAbsPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$beforeName:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$afterName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/metamoji/sd/SdUtils;->replaceTagFromTags(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4019
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 4021
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4024
    new-instance v2, Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-direct {v2}, Lcom/metamoji/sd/entities/SdMOFolder;-><init>()V

    .line 4027
    :cond_0
    invoke-virtual {v2, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setAbsPath(Ljava/lang/String;)V

    .line 4028
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->val$moFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrder(Ljava/lang/String;)V

    .line 4029
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setName(Ljava/lang/String;)V

    .line 4030
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setDepth(Ljava/lang/Integer;)V

    .line 4031
    const-string v0, ""

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderOrigin(Ljava/lang/String;)V

    .line 4032
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdate(Ljava/util/Date;)V

    .line 4033
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdateFlag(Ljava/lang/Boolean;)V

    .line 4034
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdate(Ljava/util/Date;)V

    .line 4035
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdateFlag(Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    .line 4036
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 4038
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createOrUpdateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 4040
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->val$moFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOFolder;->getAbsPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4041
    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->removeLast(Ljava/util/List;)V

    .line 4044
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v5, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolder2ById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 4045
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4046
    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v6, v6, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v5, v1, v6}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderNamesWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    .line 4048
    invoke-virtual {v4}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 4051
    iget-object v6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->val$moFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-virtual {v6}, Lcom/metamoji/sd/entities/SdMOFolder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 4053
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOFolder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 4055
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOFolder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4058
    :goto_0
    invoke-static {v1, v5}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 4060
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrder(Ljava/lang/String;)V

    .line 4061
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v4, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdate(Ljava/util/Date;)V

    .line 4062
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdateFlag(Ljava/lang/Boolean;)V

    .line 4063
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$19$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$19;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$19;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v4, v1}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
