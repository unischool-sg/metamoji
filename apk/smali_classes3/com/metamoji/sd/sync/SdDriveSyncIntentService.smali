.class public Lcom/metamoji/sd/sync/SdDriveSyncIntentService;
.super Lcom/metamoji/sd/sync/SdSyncIntentService;
.source "SdDriveSyncIntentService.java"


# instance fields
.field private _driveId:Ljava/lang/String;

.field private _name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/metamoji/sd/sync/SdSyncIntentService;-><init>()V

    .line 7
    const-string v0, "SdDriveSyncIntentService"

    iput-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncIntentService;->_name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncIntentService;->_driveId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createSyncProcess()Lcom/metamoji/sd/sync/SdSyncProcess;
    .locals 3

    .line 30
    new-instance v0, Lcom/metamoji/sd/sync/SdDriveSyncProcess;

    const-string v1, "mmjsd.sync.extparam.key.driveId"

    invoke-virtual {p0, v1}, Lcom/metamoji/sd/sync/SdDriveSyncIntentService;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/metamoji/sd/sync/SdDriveSyncProcess;-><init>(Lcom/metamoji/sd/sync/SdSyncIntentService;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncIntentService;->_driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdDriveSyncIntentService;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncIntentService;->_driveId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdDriveSyncIntentService;->_name:Ljava/lang/String;

    return-void
.end method
