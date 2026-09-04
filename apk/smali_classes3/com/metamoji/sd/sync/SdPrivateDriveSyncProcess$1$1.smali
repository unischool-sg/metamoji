.class Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1$1;
.super Ljava/lang/Object;
.source "SdPrivateDriveSyncProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;->call()Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;


# direct methods
.method constructor <init>(Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;

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

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1$1;->call()Ljava/lang/Void;

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

    .line 75
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;->val$momgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v1, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;

    iget-object v1, v1, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;->this$0:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;

    invoke-static {v1}, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;->-$$Nest$fgetm_privateId(Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->getPrivateDriveById(Ljava/lang/String;Lcom/metamoji/sd/SdManagedObjectContext;)Lcom/metamoji/sd/entities/SdMOPrivateDrive;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 77
    const-string v0, "drive not found"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;->val$hasErr:Lcom/metamoji/sd/SdValue;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1

    .line 83
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getDriveId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->getDriveId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;->val$responce:Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;

    iget-object v3, v3, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->driveId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    const-string v0, "drive id not match"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;

    iget-object v0, v0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;->val$hasErr:Lcom/metamoji/sd/SdValue;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/SdValue;->setValue(Ljava/lang/Object;)V

    return-object v1

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;->val$responce:Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;

    iget-object v2, v2, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->driveId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setDriveId(Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;->val$responce:Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;

    iget-object v2, v2, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->homeDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setHomeDir(Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;->val$responce:Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;

    iget-object v2, v2, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->maintenanceText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/sd/entities/SdMOPrivateDrive;->setMaintenanceText(Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;

    iget-object v2, v2, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;->val$momgr:Lcom/metamoji/sd/SdPrivateDriveMOManager;

    iget-object v3, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1$1;->this$1:Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;

    iget-object v3, v3, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess$1;->val$childContext:Lcom/metamoji/sd/SdManagedObjectContext;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/sd/SdPrivateDriveMOManager;->updatePrivateDrive(Lcom/metamoji/sd/entities/SdMOPrivateDrive;Lcom/metamoji/sd/SdManagedObjectContext;)V

    return-object v1
.end method
