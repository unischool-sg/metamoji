.class Lcom/metamoji/sd/SdDriveDocumentManager$15;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager;->setTagToDocument(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
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

.field final synthetic val$docId:Ljava/lang/String;

.field final synthetic val$err:Lcom/metamoji/sd/SdValue;

.field final synthetic val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

.field final synthetic val$nowDate:Ljava/util/Date;

.field final synthetic val$tagNames:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdDriveContentsMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/lang/String;Lcom/metamoji/sd/SdValue;Ljava/util/List;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3383
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iput-object p3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p4, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$docId:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$err:Lcom/metamoji/sd/SdValue;

    iput-object p6, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$tagNames:Ljava/util/List;

    iput-object p7, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$nowDate:Ljava/util/Date;

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

    .line 3383
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$15;->call()Ljava/lang/Void;

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

    .line 3387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3388
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagNameListWithoutDeleted(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3389
    sget-object v3, Lcom/metamoji/sd/SdUtils;->NULL_OBJECT:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3393
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v3, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/sd/SdDriveDocumentManager$15$1;-><init>(Lcom/metamoji/sd/SdDriveDocumentManager$15;Ljava/util/HashMap;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 3437
    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "[SdDriveDocumentManager] :: ERROR setTagToDocument:%s"

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3438
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$15;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1
.end method
