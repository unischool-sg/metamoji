.class Lcom/metamoji/sd/sync/SdDriveSyncProcess$1$1;
.super Ljava/lang/Object;
.source "SdDriveSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;

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

    .line 312
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1$1;->call()Ljava/lang/Void;

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

    .line 314
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;->val$moMgr:Lcom/metamoji/sd/SdDriveMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;->this$0:Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    invoke-static {v1}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;->-$$Nest$fgetm_driveId(Lcom/metamoji/sd/sync/SdDriveSyncProcess;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdDriveMOManager;->getDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMODrive;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 316
    const-string v0, "drive not found"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;->val$hasErr:Lcom/metamoji/sd/SdValue;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1

    .line 320
    :cond_0
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;->val$responce:Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;

    iget-object v2, v2, Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;->homeDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMODrive;->setHomeDir(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;->val$responce:Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;

    iget-object v2, v2, Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;->maintenanceText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMODrive;->setMaintenanceText(Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;->val$moMgr:Lcom/metamoji/sd/SdDriveMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdDriveSyncProcess$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdDriveMOManager;->updateDrive(Lcom/metamoji/sd/entities/SdMODrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    return-object v1
.end method
