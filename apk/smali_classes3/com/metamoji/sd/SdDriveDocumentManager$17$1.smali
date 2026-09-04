.class Lcom/metamoji/sd/SdDriveDocumentManager$17$1;
.super Ljava/lang/Object;
.source "SdDriveDocumentManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdDriveDocumentManager$17;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdDriveDocumentManager$17;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdDriveDocumentManager$17;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 3623
    iput-object p1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$17$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$17;

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

    .line 3623
    invoke-virtual {p0}, Lcom/metamoji/sd/SdDriveDocumentManager$17$1;->call()Ljava/lang/Void;

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

    .line 3627
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$17$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$17;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$17;->val$tag:Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/sd/SdUtils;->isAvailableTagName(Ljava/lang/String;)Z

    move-result v0

    .line 3633
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$17$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$17;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3628
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$17;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->InvalidTagNameError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v2

    .line 3633
    :cond_0
    iget-object v0, v1, Lcom/metamoji/sd/SdDriveDocumentManager$17;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$17$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$17;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$17;->val$tag:Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$17$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$17;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$17;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->getTagByName(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOTag;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3635
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOTag;->getDeleteFlag()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 3640
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 3642
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$17$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$17;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$17;->val$tag:Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/entities/SdMOTag;->setName(Ljava/lang/String;)V

    .line 3643
    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$17$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$17;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$17;->val$tag:Lcom/metamoji/dvm/fw/bean/DvmTagBean;

    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/bean/DvmTagBean;->getColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/metamoji/sd/entities/SdMOTag;->setColor(Ljava/lang/Integer;)V

    .line 3644
    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOTag;->setUpdate(Ljava/util/Date;)V

    .line 3645
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOTag;->setUpdateFlag(Ljava/lang/Boolean;)V

    .line 3646
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOTag;->setDeleteFlag(Ljava/lang/Boolean;)V

    .line 3648
    iget-object v1, p0, Lcom/metamoji/sd/SdDriveDocumentManager$17$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$17;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager$17;->this$0:Lcom/metamoji/sd/SdDriveDocumentManager;

    iget-object v1, v1, Lcom/metamoji/sd/SdDriveDocumentManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveContentsMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdDriveDocumentManager$17$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$17;

    iget-object v3, v3, Lcom/metamoji/sd/SdDriveDocumentManager$17;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v3}, Lcom/metamoji/sd/SdDriveContentsMOManager;->updateTag(Lcom/metamoji/sd/entities/SdMOTag;Lcom/metamoji/sd/SdManagedObjectContext;)V

    return-object v2

    .line 3636
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/metamoji/sd/SdDriveDocumentManager$17$1;->this$1:Lcom/metamoji/sd/SdDriveDocumentManager$17;

    iget-object v0, v0, Lcom/metamoji/sd/SdDriveDocumentManager$17;->val$err:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v3, Lcom/metamoji/dvm/DvmErrCode;->TagNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v3}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v2
.end method
