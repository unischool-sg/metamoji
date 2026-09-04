.class public Lcom/metamoji/sd/sync/SdAllSyncIntentService;
.super Lcom/metamoji/sd/sync/SdSyncIntentService;
.source "SdAllSyncIntentService.java"


# instance fields
.field private _name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/metamoji/sd/sync/SdSyncIntentService;-><init>()V

    .line 8
    const-string v0, "SdSyncIntentService"

    iput-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncIntentService;->_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createSyncProcess()Lcom/metamoji/sd/sync/SdSyncProcess;
    .locals 4

    .line 22
    const-string v0, "mmjsd.sync.extparam.key.driveEntrySyncMode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/sd/sync/SdAllSyncIntentService;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 24
    const-string v1, "mmjsd.sync.extparam.key.specifiedIds"

    invoke-virtual {p0, v1}, Lcom/metamoji/sd/sync/SdAllSyncIntentService;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 26
    const-string v2, "mmjsd.sync.extparam.key.groupIds"

    invoke-virtual {p0, v2}, Lcom/metamoji/sd/sync/SdAllSyncIntentService;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 27
    new-instance v3, Lcom/metamoji/sd/sync/SdAllSyncProcess;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/metamoji/sd/sync/SdAllSyncProcess;-><init>(Lcom/metamoji/sd/sync/SdSyncIntentService;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/metamoji/sd/sync/SdAllSyncIntentService;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/metamoji/sd/sync/SdAllSyncIntentService;->_name:Ljava/lang/String;

    return-void
.end method
