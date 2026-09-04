.class public Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentService;
.super Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;
.source "DmSyncEventFireIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method public afterProcess()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 1

    .line 31
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0
.end method

.method public beforeProcess()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 1

    .line 16
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0
.end method

.method protected getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public processOne()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 4

    .line 22
    const-string v0, "dm.event.key"

    invoke-virtual {p0, v0}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentService;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, "dm.event.param.key"

    invoke-virtual {p0, v1}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentService;->getHashMapExtra(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 24
    const-string v2, "sync event fire:%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    const-string v2, "ProcessOne"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3, v1}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentService;->sendBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 26
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0
.end method
