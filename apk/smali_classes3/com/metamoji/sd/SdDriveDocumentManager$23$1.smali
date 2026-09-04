.class Lcom/metamoji/sd/SdDriveDocumentManager$23$1;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$23;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$23;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$23;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4953
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$23$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$23;

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

    .line 4953
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$23$1;->call()Ljava/lang/Void;

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

    .line 4956
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$23$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$23;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$23;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$23$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$23;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$23;->val$parentTags:Ljava/util/List;

    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$23$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$23;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$23;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getFolder2ById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOFolder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4957
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOFolder;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4962
    :cond_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$23$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$23;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$23;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$23$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$23;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$23;->val$parentTags:Ljava/util/List;

    iget-object v4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$23$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$23;

    iget-object v4, v4, Lcom/metamoji/sd/SdDriveDocumentManager$23;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getSubFolderNamesWithoutDeletedOnFolder(Ljava/util/List;Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v2

    .line 4963
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$23$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$23;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$23;->val$childrenOrder:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/metamoji/sd/SdUtils;->matchOrderWithTagList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 4965
    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->pathFromTags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrder(Ljava/lang/String;)V

    .line 4966
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$23$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$23;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$23;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdate(Ljava/util/Date;)V

    const/4 v2, 0x1

    .line 4967
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOFolder;->setChildrenOrderUpdateFlag(Ljava/lang/Boolean;)V

    .line 4968
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$23$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$23;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$23;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$23$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$23;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$23;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateFolder(Lcom/metamoji/sd/entities/SdMOFolder;Lcom/metamoji/sd/SdManagedObjectContext;)V

    return-object v1

    .line 4958
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$23$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$23;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$23;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->ParentFolderNotExistsError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1
.end method
