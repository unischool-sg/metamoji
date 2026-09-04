.class Lcom/metamoji/sd/SdPrivateDriveManager$6$1;
.super Ljava/lang/Object;
.source "SdPrivateDriveManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdPrivateDriveManager$6;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdPrivateDriveManager$6;

.field final synthetic val$moMerging:Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;

.field final synthetic val$moPrivateDrive:Lcom/metamoji/sd/entities/SdMOPrivateDrive;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdPrivateDriveManager$6;Lcom/metamoji/sd/entities/SdMOPrivateDrive;Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 660
    iput-object p1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$6;

    iput-object p2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6$1;->val$moPrivateDrive:Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    iput-object p3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6$1;->val$moMerging:Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;

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

    .line 660
    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveManager$6$1;->call()Ljava/lang/Void;

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

    .line 662
    new-instance v0, Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;

    invoke-direct {v0}, Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;-><init>()V

    .line 663
    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6$1;->val$moPrivateDrive:Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;->setId(Ljava/lang/String;)V

    .line 664
    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$6;

    iget-object v1, v1, Lcom/metamoji/sd/SdPrivateDriveManager$6;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager;

    iget-object v1, v1, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$6;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->createDiscardedPrivateDrive(Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 665
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$6;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager$6;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6$1;->val$moPrivateDrive:Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$6;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->deletePrivateDrive(Lcom/metamoji/sd/entities/SdMOPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    .line 666
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$6;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager$6;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6$1;->val$moMerging:Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;

    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$6;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->deleteMergingPrivateDrive(Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    const/4 v0, 0x0

    return-object v0
.end method
