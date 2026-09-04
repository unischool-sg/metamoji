.class Lcom/metamoji/dvm/DvmDriveManager$5$1;
.super Ljava/lang/Object;
.source "DvmDriveManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dvm/DvmDriveManager$5;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/dvm/DvmDriveManager$5;


# direct methods
.method constructor <init>(Lcom/metamoji/dvm/DvmDriveManager$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 435
    iput-object p1, p0, Lcom/metamoji/dvm/DvmDriveManager$5$1;->this$1:Lcom/metamoji/dvm/DvmDriveManager$5;

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

    .line 435
    invoke-virtual {p0}, Lcom/metamoji/dvm/DvmDriveManager$5$1;->call()Ljava/lang/Void;

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

    .line 437
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager$5$1;->this$1:Lcom/metamoji/dvm/DvmDriveManager$5;

    iget-object v0, v0, Lcom/metamoji/dvm/DvmDriveManager$5;->this$0:Lcom/metamoji/dvm/DvmDriveManager;

    iget-object v0, v0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveMOManager;

    iget-object v1, p0, Lcom/metamoji/dvm/DvmDriveManager$5$1;->this$1:Lcom/metamoji/dvm/DvmDriveManager$5;

    iget-object v1, v1, Lcom/metamoji/dvm/DvmDriveManager$5;->val$driveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/dvm/DvmDriveManager$5$1;->this$1:Lcom/metamoji/dvm/DvmDriveManager$5;

    iget-object v2, v2, Lcom/metamoji/dvm/DvmDriveManager$5;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODrive;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager$5$1;->this$1:Lcom/metamoji/dvm/DvmDriveManager$5;

    iget-object v0, v0, Lcom/metamoji/dvm/DvmDriveManager$5;->val$hasError:Lcom/metamoji/sd/SdValue;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1

    .line 442
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODrive;->getStatus()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 443
    iget-object v3, p0, Lcom/metamoji/dvm/DvmDriveManager$5$1;->this$1:Lcom/metamoji/dvm/DvmDriveManager$5;

    iget v3, v3, Lcom/metamoji/dvm/DvmDriveManager$5;->val$flags:I

    and-int/2addr v3, v2

    sub-int/2addr v2, v3

    .line 444
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMODrive;->setStatus(Ljava/lang/Integer;)V

    .line 445
    iget-object v2, p0, Lcom/metamoji/dvm/DvmDriveManager$5$1;->this$1:Lcom/metamoji/dvm/DvmDriveManager$5;

    iget-object v2, v2, Lcom/metamoji/dvm/DvmDriveManager$5;->this$0:Lcom/metamoji/dvm/DvmDriveManager;

    iget-object v2, v2, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveMOManager;

    iget-object v3, p0, Lcom/metamoji/dvm/DvmDriveManager$5$1;->this$1:Lcom/metamoji/dvm/DvmDriveManager$5;

    iget-object v3, v3, Lcom/metamoji/dvm/DvmDriveManager$5;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdDriveMOManager;->updateDrive(Lcom/metamoji/sd/entities/SdMODrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    return-object v1
.end method
