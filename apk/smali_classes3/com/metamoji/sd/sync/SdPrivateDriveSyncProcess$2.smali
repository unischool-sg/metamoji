.class Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;
.super Ljava/lang/Object;
.source "SdPrivateDriveSyncProcess.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->internalUpdateDriveSyncLastRevision(Ljava/lang/String;)Z
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
.field final synthetic this$0:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;

.field final synthetic val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

.field final synthetic val$hasError:Lcom/metamoji/sd/SdValue;

.field final synthetic val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

.field final synthetic val$syncLastRevision:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;Lcom/metamoji/sd/SdPrivateDriveMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdValue;Ljava/lang/String;)V
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

    .line 238
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;->this$0:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;

    iput-object p2, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iput-object p3, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p4, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;->val$hasError:Lcom/metamoji/sd/SdValue;

    iput-object p5, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;->val$syncLastRevision:Ljava/lang/String;

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

    .line 238
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;->call()Ljava/lang/Void;

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

    .line 240
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;->val$moMgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;->this$0:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;

    invoke-static {v1}, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->-$$Nest$fgetm_privateId(Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;->val$hasError:Lcom/metamoji/sd/SdValue;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v3, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2$1;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2$1;-><init>(Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$2;Lcom/metamoji/sd/entities/SdMOPrivateDrive;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-object v1
.end method
