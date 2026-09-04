.class Lcom/metamoji/sd/SdDriveDocumentManager$1$1;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$1;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$1;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 506
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$1$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$1;

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

    .line 506
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$1$1;->call()Ljava/lang/Void;

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

    .line 508
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$1$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$1;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$1;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$1$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$1;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$1;->val$docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$1$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$1;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getDocumentById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODocument;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 510
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODocument;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 515
    :cond_0
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$1$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$1;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setTitle(Ljava/lang/String;)V

    .line 516
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$1$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$1;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$1;->val$nowDate:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdate(Ljava/util/Date;)V

    const/4 v2, 0x1

    .line 517
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMODocument;->setTitleUpdateFlag(Ljava/lang/Boolean;)V

    .line 519
    iget-object v2, p0, Lcom/metamoji/sd/SdDriveDocumentManager$1$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$1;

    iget-object v2, v2, Lcom/metamoji/sd/SdDriveDocumentManager$1;->val$moMgr:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$1$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$1;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateDocument(Lcom/metamoji/sd/entities/SdMODocument;Lcom/metamoji/sd/SdManagedObjectContext;)V

    return-object v1

    .line 511
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$1$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$1;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$1;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v2, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v2, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1
.end method
