.class Lcom/metamoji/dvm/DvmDriveManager$1;
.super Ljava/lang/Object;
.source "DvmDriveManager.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dvm/DvmDriveManager;->clearDrive(Ljava/lang/String;ZLcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
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
.field final synthetic this$0:Lcom/metamoji/dvm/DvmDriveManager;

.field final synthetic val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

.field final synthetic val$ddmgr:Lcom/metamoji/sd/SdDriveDocumentManager;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$errorValue:Lcom/metamoji/sd/SdValue;


# direct methods
.method constructor <init>(Lcom/metamoji/dvm/DvmDriveManager;Lcom/metamoji/sd/SdManagedObjectContext;Ljava/lang/String;Lcom/metamoji/sd/SdDriveDocumentManager;Lcom/metamoji/sd/SdValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/metamoji/dvm/DvmDriveManager$1;->this$0:Lcom/metamoji/dvm/DvmDriveManager;

    iput-object p2, p0, Lcom/metamoji/dvm/DvmDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p3, p0, Lcom/metamoji/dvm/DvmDriveManager$1;->val$driveId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/dvm/DvmDriveManager$1;->val$ddmgr:Lcom/metamoji/sd/SdDriveDocumentManager;

    iput-object p5, p0, Lcom/metamoji/dvm/DvmDriveManager$1;->val$errorValue:Lcom/metamoji/sd/SdValue;

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

    .line 272
    invoke-virtual {p0}, Lcom/metamoji/dvm/DvmDriveManager$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v1, Lcom/metamoji/dvm/DvmDriveManager$1$1;

    invoke-direct {v1, p0}, Lcom/metamoji/dvm/DvmDriveManager$1$1;-><init>(Lcom/metamoji/dvm/DvmDriveManager$1;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager$1;->val$ddmgr:Lcom/metamoji/sd/SdDriveDocumentManager;

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveDocumentManager;->getManagedObjectContextManager()Lcom/metamoji/sd/SdDriveContentsMOCManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/sd/SdDriveContentsMOCManager;->discard()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager$1;->val$errorValue:Lcom/metamoji/sd/SdValue;

    new-instance v1, Lcom/metamoji/sd/SdError;

    sget-object v2, Lcom/metamoji/dvm/DvmErrCode;->DataSaveFailedError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
