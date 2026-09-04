.class Lcom/metamoji/sd/SdPrivateDriveManager$3$1;
.super Ljava/lang/Object;
.source "SdPrivateDriveManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/SdPrivateDriveManager$3;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/SdPrivateDriveManager$3;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/SdPrivateDriveManager$3;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 395
    iput-object p1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$3$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$3;

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

    .line 395
    invoke-virtual {p0}, Lcom/metamoji/sd/SdPrivateDriveManager$3$1;->call()Ljava/lang/Void;

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

    .line 397
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$3$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$3;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager$3;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/SdPrivateDriveManager$3$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$3;

    iget-object v1, v1, Lcom/metamoji/sd/SdPrivateDriveManager$3;->val$privateId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$3$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$3;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$3;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/metamoji/sd/SdPrivateDriveManager$3$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$3;

    iget-object v0, v0, Lcom/metamoji/sd/SdPrivateDriveManager$3;->val$hasError:Lcom/metamoji/sd/SdValue;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1

    .line 402
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getStatus()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 403
    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$3$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$3;

    iget v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$3;->val$flags:I

    or-int/2addr v2, v3

    .line 404
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setStatus(Ljava/lang/Integer;)V

    .line 405
    iget-object v2, p0, Lcom/metamoji/sd/SdPrivateDriveManager$3$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$3;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager$3;->this$0:Lcom/metamoji/sd/SdPrivateDriveManager;

    iget-object v2, v2, Lcom/metamoji/sd/SdPrivateDriveManager;->m_managedObjectManager:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/SdPrivateDriveManager$3$1;->this$1:Lcom/metamoji/sd/SdPrivateDriveManager$3;

    iget-object v3, v3, Lcom/metamoji/sd/SdPrivateDriveManager$3;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->updatePrivateDrive(Lcom/metamoji/sd/entities/SdMOPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    return-object v1
.end method
