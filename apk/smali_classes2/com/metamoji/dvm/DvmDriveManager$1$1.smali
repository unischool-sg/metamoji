.class Lcom/metamoji/dvm/DvmDriveManager$1$1;
.super Ljava/lang/Object;
.source "DvmDriveManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dvm/DvmDriveManager$1;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/dvm/DvmDriveManager$1;


# direct methods
.method constructor <init>(Lcom/metamoji/dvm/DvmDriveManager$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/metamoji/dvm/DvmDriveManager$1$1;->this$1:Lcom/metamoji/dvm/DvmDriveManager$1;

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

    .line 275
    invoke-virtual {p0}, Lcom/metamoji/dvm/DvmDriveManager$1$1;->call()Ljava/lang/Void;

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

    .line 277
    iget-object v0, p0, Lcom/metamoji/dvm/DvmDriveManager$1$1;->this$1:Lcom/metamoji/dvm/DvmDriveManager$1;

    iget-object v0, v0, Lcom/metamoji/dvm/DvmDriveManager$1;->this$0:Lcom/metamoji/dvm/DvmDriveManager;

    iget-object v0, v0, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveMOManager;

    iget-object v1, p0, Lcom/metamoji/dvm/DvmDriveManager$1$1;->this$1:Lcom/metamoji/dvm/DvmDriveManager$1;

    iget-object v1, v1, Lcom/metamoji/dvm/DvmDriveManager$1;->val$driveId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/dvm/DvmDriveManager$1$1;->this$1:Lcom/metamoji/dvm/DvmDriveManager$1;

    iget-object v2, v2, Lcom/metamoji/dvm/DvmDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODrive;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 281
    :cond_0
    new-instance v2, Lcom/metamoji/sd/entities/SdMODiscardedDrive;

    invoke-direct {v2}, Lcom/metamoji/sd/entities/SdMODiscardedDrive;-><init>()V

    .line 282
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODrive;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMODiscardedDrive;->setId(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMODrive;->getLocalCacheId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/entities/SdMODiscardedDrive;->setLocalCacheId(Ljava/lang/String;)V

    .line 284
    iget-object v3, p0, Lcom/metamoji/dvm/DvmDriveManager$1$1;->this$1:Lcom/metamoji/dvm/DvmDriveManager$1;

    iget-object v3, v3, Lcom/metamoji/dvm/DvmDriveManager$1;->this$0:Lcom/metamoji/dvm/DvmDriveManager;

    iget-object v3, v3, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveMOManager;

    iget-object v4, p0, Lcom/metamoji/dvm/DvmDriveManager$1$1;->this$1:Lcom/metamoji/dvm/DvmDriveManager$1;

    iget-object v4, v4, Lcom/metamoji/dvm/DvmDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v3, v2, v4}, Lcom/metamoji/sd/SdDriveMOManager;->createDiscardedDrive(Lcom/metamoji/sd/entities/SdMODiscardedDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 285
    iget-object v2, p0, Lcom/metamoji/dvm/DvmDriveManager$1$1;->this$1:Lcom/metamoji/dvm/DvmDriveManager$1;

    iget-object v2, v2, Lcom/metamoji/dvm/DvmDriveManager$1;->this$0:Lcom/metamoji/dvm/DvmDriveManager;

    iget-object v2, v2, Lcom/metamoji/dvm/DvmDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdDriveMOManager;

    iget-object v3, p0, Lcom/metamoji/dvm/DvmDriveManager$1$1;->this$1:Lcom/metamoji/dvm/DvmDriveManager$1;

    iget-object v3, v3, Lcom/metamoji/dvm/DvmDriveManager$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdDriveMOManager;->deleteDrive(Lcom/metamoji/sd/entities/SdMODrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    return-object v1
.end method
