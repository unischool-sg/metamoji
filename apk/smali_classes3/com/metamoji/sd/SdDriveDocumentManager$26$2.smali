.class Lcom/metamoji/sd/SdDriveDocumentManager$26$2;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$26;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$26;

.field final synthetic val$fromPath:Ljava/lang/String;

.field final synthetic val$moFolders:Ljava/util/List;

.field final synthetic val$toPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$26;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 5870
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$26;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$2;->val$moFolders:Ljava/util/List;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$2;->val$toPath:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$2;->val$fromPath:Ljava/lang/String;

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

    .line 5870
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$26$2;->call()Ljava/lang/Void;

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

    .line 5873
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$2;->val$moFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sd/entities/SdMOFolder;

    .line 5874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$2;->val$toPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOFolder;->getAbsPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$2;->val$fromPath:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5875
    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 5877
    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$26;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$26;

    iget-object v5, v5, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v4, v2, v5}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolderById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v4

    if-nez v4, :cond_0

    .line 5881
    new-instance v4, Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-direct {v4}, Lcom/metamoji/sd/entities/SdMOFolder;-><init>()V

    .line 5882
    invoke-virtual {v4, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setAbsPath(Ljava/lang/String;)V

    .line 5885
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setDepth(Ljava/lang/Integer;)V

    .line 5886
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrder(Ljava/lang/String;)V

    .line 5887
    const-string v1, ""

    invoke-virtual {v4, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderOrigin(Ljava/lang/String;)V

    .line 5888
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$26;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v4, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdate(Ljava/util/Date;)V

    const/4 v1, 0x1

    .line 5889
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdateFlag(Ljava/lang/Boolean;)V

    .line 5890
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setName(Ljava/lang/String;)V

    .line 5891
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$26;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v4, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdate(Ljava/util/Date;)V

    .line 5892
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdateFlag(Ljava/lang/Boolean;)V

    const/4 v1, 0x0

    .line 5893
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 5895
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$26;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$26$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$26;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$26;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v4, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->createOrUpdateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
