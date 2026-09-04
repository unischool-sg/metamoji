.class Lcom/metamoji/sd/SdPrivateDriveManager$5;
.super Lcom/metamoji/sd/SdParameterizedBlock;
.source "SdPrivateDriveManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdPrivateDriveManager;->clearnupDiscardedPrivateDrives()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/sd/SdParameterizedBlock<",
        "Ljava/lang/Void;",
        "Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/sd/SdPrivateDriveManager;

.field final synthetic val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdPrivateDriveManager;Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V
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

    .line 579
    iput-object p1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$5;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager;

    iput-object p3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$5;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

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

    .line 579
    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveManager$5;->call()Ljava/lang/Void;

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

    .line 581
    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveManager$5;->getArgument()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;

    .line 582
    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$5;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager;

    iget-object v1, v1, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$5;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->deleteDiscardedPrivateDrive(Lcom/metamoji/sd/entities/SdMODiscardedPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    const/4 v0, 0x0

    return-object v0
.end method
