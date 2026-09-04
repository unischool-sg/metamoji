.class Lcom/metamoji/sd/SdDriveDocumentManager$24$4;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$24;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$24;

.field final synthetic val$fromParentTags:Ljava/util/List;

.field final synthetic val$moFromFolder:Lcom/metamoji/sd/entities/SdMOFolder;

.field final synthetic val$moFromParentFolder:Lcom/metamoji/sd/entities/SdMOFolder;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$24;Lcom/metamoji/sd/entities/SdMOFolder;Ljava/util/List;Lcom/metamoji/sd/entities/SdMOFolder;)V
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

    .line 5248
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$24;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->val$moFromFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->val$fromParentTags:Ljava/util/List;

    iput-object p4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->val$moFromParentFolder:Lcom/metamoji/sd/entities/SdMOFolder;

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

    .line 5248
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 5251
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->val$moFromFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOFolder;->getRevision()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 5255
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_0

    .line 5252
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$24;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->val$moFromFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$24;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_0

    .line 5254
    :cond_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->val$moFromFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$24;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdate(Ljava/util/Date;)V

    .line 5255
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->val$moFromFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 5256
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->val$moFromFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 5257
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$24;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->val$moFromFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$24;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 5261
    :goto_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$24;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->val$fromParentTags:Ljava/util/List;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$24;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v2, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderNamesWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 5262
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->val$moFromParentFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-virtual {v2}, Lcom/metamoji/sd/entities/SdMOFolder;->getChildrenOrder()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->tagsFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 5264
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->val$moFromParentFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrder(Ljava/lang/String;)V

    .line 5265
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->val$moFromParentFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$24;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdate(Ljava/util/Date;)V

    .line 5266
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->val$moFromParentFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdateFlag(Ljava/lang/Boolean;)V

    .line 5267
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$24;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->val$moFromParentFolder:Lcom/metamoji/sd/entities/SdMOFolder;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$24$4;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$24;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$24;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    const/4 v0, 0x0

    return-object v0
.end method
