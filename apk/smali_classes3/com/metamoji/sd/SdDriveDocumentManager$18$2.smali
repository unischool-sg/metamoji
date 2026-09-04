.class Lcom/metamoji/sd/SdDriveDocumentManager$18$2;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$18;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

.field final synthetic val$moFolder:Lcom/metamoji/sd/entities/SdMOFolder;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$18;Lcom/metamoji/sd/entities/SdMOFolder;)V
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

    .line 3762
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->val$moFolder:Lcom/metamoji/sd/entities/SdMOFolder;

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

    .line 3762
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3765
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->val$moFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOFolder;->getAbsPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3766
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->removeLast(Ljava/util/List;)V

    .line 3768
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->val$moFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOFolder;->getRevision()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3772
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v1, :cond_0

    .line 3769
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->val$moFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_0

    .line 3771
    :cond_0
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->val$moFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdate(Ljava/util/Date;)V

    .line 3772
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->val$moFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 3773
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->val$moFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 3774
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->val$moFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 3778
    :goto_0
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolder2ById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3779
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3780
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v0, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderNamesWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 3781
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3783
    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrder(Ljava/lang/String;)V

    .line 3784
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdate(Ljava/util/Date;)V

    .line 3785
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdateFlag(Ljava/lang/Boolean;)V

    .line 3786
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$18$2;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$18;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$18;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
