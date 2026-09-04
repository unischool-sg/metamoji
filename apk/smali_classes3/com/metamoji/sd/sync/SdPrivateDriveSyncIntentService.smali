.class public Lcom/metamoji/sd/sync/SdPrivateDriveSyncIntentService;
.super Lcom/metamoji/sd/sync/SdSyncIntentService;
.source "SdPrivateDriveSyncIntentService.java"


# instance fields
.field private _name:Ljava/lang/String;

.field private _privateId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/metamoji/sd/sync/SdSyncIntentService;-><init>()V

    .line 7
    const-string v0, "SdPrivateDriveSyncIntentService"

    iput-object v0, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncIntentService;->_name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncIntentService;->_privateId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createSyncProcess()Lcom/metamoji/sd/sync/SdSyncProcess;
    .locals 2

    .line 30
    new-instance v0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;

    const-string v1, "mmjsd.sync.extparam.key.privateId"

    invoke-virtual {p0, v1}, Lcom/metamoji/sd/sync/SdPrivateDriveSyncIntentService;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/metamoji/sd/sync/SdPrivateDriveSyncProcess;-><init>(Lcom/metamoji/sd/sync/SdSyncIntentService;Ljava/lang/String;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncIntentService;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncIntentService;->_privateId:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncIntentService;->_name:Ljava/lang/String;

    return-void
.end method

.method public setPrivateId(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdPrivateDriveSyncIntentService;->_privateId:Ljava/lang/String;

    return-void
.end method
