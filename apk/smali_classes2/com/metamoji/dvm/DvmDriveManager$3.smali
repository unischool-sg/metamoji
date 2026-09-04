.class Lcom/metamoji/dvm/DvmDriveManager$3;
.super Lcom/metamoji/sd/SdParameterizedBlock;
.source "DvmDriveManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dvm/DvmDriveManager;->clearnupDiscardedDrives()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/sd/SdParameterizedBlock<",
        "Ljava/lang/Void;",
        "Lcom/metamoji/sd/entities/SdMODiscardedDrive;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/dvm/DvmDriveManager;

.field final synthetic val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;


# direct methods
.method constructor <init>(Lcom/metamoji/dvm/DvmDriveManager;Lcom/metamoji/sd/entities/SdMODiscardedDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 355
    iput-object p1, p0, Lcom/metamoji/dvm/DvmDriveManager$3;->this$0:Lcom/metamoji/dvm/DvmDriveManager;

    iput-object p3, p0, Lcom/metamoji/dvm/DvmDriveManager$3;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-direct {p0, p2}, Lcom/metamoji/sd/SdParameterizedBlock;-><init>(Ljava/lang/Object;)V

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

    .line 355
    invoke-virtual {p0}, Lcom/metamoji/dvm/DvmDriveManager$3;->call()Ljava/lang/Void;

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

    .line 357
    invoke-virtual {p0}, Lcom/metamoji/dvm/DvmDriveManager$3;->getArgument()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/entities/SdMODiscardedDrive;

    .line 358
    iget-object v1, p0, Lcom/metamoji/dvm/DvmDriveManager$3;->this$0:Lcom/metamoji/dvm/DvmDriveManager;

    iget-object v1, v1, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveMOManager;

    iget-object v2, p0, Lcom/metamoji/dvm/DvmDriveManager$3;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdDriveMOManager;->deleteDiscardedDrive(Lcom/metamoji/sd/entities/SdMODiscardedDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    const/4 v0, 0x0

    return-object v0
.end method
