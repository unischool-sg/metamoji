.class Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2$1;
.super Ljava/lang/Object;
.source "SdPrivateDriveSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;

.field final synthetic val$moPrivateDrive:Lcom/metamoji/sd/entities/SdMOPrivateDrive;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;Lcom/metamoji/sd/entities/SdMOPrivateDrive;)V
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

    .line 247
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;

    iput-object p2, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2$1;->val$moPrivateDrive:Lcom/metamoji/sd/entities/SdMOPrivateDrive;

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

    .line 247
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2$1;->call()Ljava/lang/Void;

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

    .line 249
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2$1;->val$moPrivateDrive:Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;->val$syncLastRevision:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setLastUpdateRevision(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2$1;->val$moPrivateDrive:Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2$1;->this$1:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->updatePrivateDrive(Lcom/metamoji/sd/entities/SdMOPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    const/4 v0, 0x0

    return-object v0
.end method
