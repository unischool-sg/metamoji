.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$23;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Lcom/metamoji/sd/SdBlock;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess;->internalUpdateDriveSyncLastRevision(Ljava/lang/String;)Z
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
.field final synthetic this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

.field final synthetic val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

.field final synthetic val$hasError:Lcom/metamoji/sd/SdValue;

.field final synthetic val$moMgr:Lcom/metamoji/sd/SdDriveMOManager;

.field final synthetic val$syncLastRevision:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess;Lcom/metamoji/sd/SdDriveMOManager;Lcom/metamoji/sd/SdManagedObjectContext;Lcom/metamoji/sd/SdValue;Ljava/lang/String;)V
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

    .line 4288
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$23;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    iput-object p2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$23;->val$moMgr:Lcom/metamoji/sd/SdDriveMOManager;

    iput-object p3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$23;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    iput-object p4, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$23;->val$hasError:Lcom/metamoji/sd/SdValue;

    iput-object p5, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$23;->val$syncLastRevision:Ljava/lang/String;

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

    .line 4288
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$23;->call()Ljava/lang/Void;

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

    .line 4290
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$23;->val$moMgr:Lcom/metamoji/sd/SdDriveMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$23;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    invoke-static {v1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->-$$Nest$fgetm_driveId(Lcom/metamoji/sd/sync/SdDriveSyncProcess;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$23;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODrive;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4293
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$23;->val$hasError:Lcom/metamoji/sd/SdValue;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1

    .line 4297
    :cond_0
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$23;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    new-instance v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$23$1;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$23$1;-><init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$23;Lcom/metamoji/sd/entities/SdMODrive;)V

    invoke-virtual {v2, v3}, Lcom/metamoji/sd/SdManagedObjectContext;->callInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    return-object v1
.end method
