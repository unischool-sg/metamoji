.class Lcom/metamoji/sd/SdPrivateDriveManager$6;
.super Ljava/lang/Object;
.source "SdPrivateDriveManager.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdPrivateDriveManager;->mergeMergingPrivateDrive()V
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
.field final synthetic this$0:Lcom/metamoji/sd/SdPrivateDriveManager;

.field final synthetic val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdPrivateDriveManager;Lcom/metamoji/sd/SdManagedObjectContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 651
    iput-object p1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager;

    iput-object p2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

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

    .line 651
    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveManager$6;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getMergingPrivateDriveAll(Lcom/metamoji/sd/SdManagedObjectContext;)Ljava/util/List;

    move-result-object v0

    .line 655
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;

    .line 656
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    move-result-object v2

    .line 658
    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager;

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;->getDestId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/metamoji/sd/SdPrivateDriveManager;->-$$Nest$mdoMergePrivateDrive(Lcom/metamoji/sd/SdPrivateDriveManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 660
    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$6;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v4, Lcom/metamoji/sd/SdPrivateDriveManager$6$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/metamoji/sd/SdPrivateDriveManager$6$1;-><init>(Lcom/metamoji/sd/SdPrivateDriveManager$6;Lcom/metamoji/sd/entities/SdMOPrivateDrive;Lcom/metamoji/sd/entities/SdMOMergingPrivateDrive;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
