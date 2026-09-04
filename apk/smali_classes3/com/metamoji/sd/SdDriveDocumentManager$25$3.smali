.class Lcom/metamoji/sd/SdDriveDocumentManager$25$3;
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

.field final synthetic val$moFolders:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$25;Ljava/util/List;)V
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

    .line 5565
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$3;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$3;->val$moFolders:Ljava/util/List;

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

    .line 5565
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$25$3;->call()Ljava/lang/Void;

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

    .line 5568
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$3;->val$moFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sd/entities/SdMOFolder;

    .line 5569
    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOFolder;->getRevision()Ljava/lang/String;

    move-result-object v2

    .line 5572
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$3;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

    if-nez v2, :cond_0

    .line 5570
    iget-object v2, v3, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$3;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->deleteFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_0

    .line 5572
    :cond_0
    iget-object v2, v3, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdate(Ljava/util/Date;)V

    const/4 v2, 0x1

    .line 5573
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/sd/entities/SdMOFolder;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 5574
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 5575
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$3;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$25$3;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$25;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$25;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
