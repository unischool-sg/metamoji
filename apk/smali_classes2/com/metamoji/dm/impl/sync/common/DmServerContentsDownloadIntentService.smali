.class public abstract Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;
.super Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;
.source "DmServerContentsDownloadIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method public afterProcess()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 1

    .line 226
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0
.end method

.method public beforeProcess()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 1

    .line 25
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0
.end method

.method protected generateClientId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 261
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    move-result-object p1

    .line 262
    invoke-interface {p1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->generateClientId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getClientIdFromServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 268
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    move-result-object v0

    .line 269
    invoke-interface {v0, p1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->getClientIdFromServerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected isSyncTargetClient(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected isUpdatedClientDocument(Ljava/lang/String;)Z
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    move-result-object v0

    .line 276
    invoke-interface {v0, p1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->containsNewSyncInfo(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 277
    invoke-interface {v0, p1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->containsUpdateSyncInfo(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public processOne()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 7

    .line 35
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->getEntityId()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->getAccessUtils()Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    move-result-object v1

    .line 38
    const-string v2, "mmjdm.sync.fw.extparam.key.deadProperties"

    invoke-virtual {p0, v2}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->getHashMapExtra(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 39
    invoke-virtual {v1, v0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->getServerIdForResourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-virtual {v1, v3}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->isTemporaryServerId(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 43
    invoke-virtual {v1, v3, v2}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->isTemporaryServerId(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v1, v0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->deleteFromServer(Ljava/lang/String;)Z

    .line 50
    :cond_0
    const-string v0, "%s is temporary Id skipped."

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->sendServerContentDownloadSkippedMessage(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    move-result-object v1

    .line 57
    invoke-interface {v1, v2}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->getLastSyncedRevisionFromServerDeadProperties(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 58
    sget-object v4, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    .line 62
    invoke-virtual {p0, v3}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->getClientIdFromServerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v2, :cond_2

    .line 66
    const-string v0, "Not downloaded because server resource\'s update-time is not available"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, v5}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->sendServerContentDownloadSkippedMessage(Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0

    :cond_2
    if-eqz v5, :cond_9

    .line 72
    invoke-interface {v1, v5}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->hasContentsData(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 74
    invoke-virtual {p0, v5}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->isSyncTargetClient(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 76
    const-string v0, "client id:%s is not target. skip next..."

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0

    .line 80
    :cond_3
    invoke-virtual {p0, v5}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->lockClientId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 82
    const-string v0, "Unable to lock client ID"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, v5}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->sendServerContentDownloadSkippedMessage(Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0

    .line 90
    :cond_4
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->isUpdatedClientDocument(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 93
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    invoke-virtual {p0, v5}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->unlockClientId(Ljava/lang/String;)V

    return-object v0

    .line 96
    :cond_5
    :try_start_1
    invoke-interface {v1, v5}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->containsDeleteSyncInfo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 98
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-virtual {p0, v5}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->unlockClientId(Ljava/lang/String;)V

    return-object v0

    .line 104
    :cond_6
    :try_start_2
    invoke-interface {v1, v5}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->getLastSyncedRevisionFromClient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 110
    invoke-virtual {p0, v5}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->sendServerContentDownloadStartMessage(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v5, v0}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->downloadUpdate(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    move-result-object v0

    .line 114
    sget-object v2, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v2, :cond_7

    .line 119
    :try_start_3
    invoke-interface {v1, v5}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->setEndToServerDownloadStatus(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    :try_start_4
    invoke-virtual {p0, v5}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->sendServerContentDownloadEndMessage(Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
    invoke-virtual {p0, v5}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->unlockClientId(Ljava/lang/String;)V

    return-object v0

    .line 123
    :catch_0
    :try_start_5
    invoke-virtual {p0, v5}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->sendServerContentDownloadSkippedMessage(Ljava/lang/String;)V

    .line 124
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FatalStopError:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 141
    invoke-virtual {p0, v5}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->unlockClientId(Ljava/lang/String;)V

    return-object v0

    .line 131
    :cond_7
    :try_start_6
    invoke-virtual {p0, v5}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->sendServerContentDownloadSkippedMessage(Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 141
    invoke-virtual {p0, v5}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->unlockClientId(Ljava/lang/String;)V

    return-object v0

    :cond_8
    invoke-virtual {p0, v5}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->unlockClientId(Ljava/lang/String;)V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v5}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->unlockClientId(Ljava/lang/String;)V

    .line 142
    throw v0

    .line 149
    :cond_9
    invoke-interface {v1, v3}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->isDeleteSyncServerId(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 152
    invoke-interface {v1, v3}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->getDeleteSyncClientIdFromServerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 157
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0

    .line 162
    :cond_a
    invoke-virtual {p0, v0}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->generateClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {p0, v2}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->sendServerContentDownloadStartMessage(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, v2, v0}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->downloadNew(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    move-result-object v0

    .line 165
    sget-object v3, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    if-ne v0, v3, :cond_b

    .line 169
    :try_start_7
    invoke-interface {v1, v2}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->setEndToServerDownloadStatus(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 176
    invoke-virtual {p0, v2}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->sendServerContentDownloadEndMessage(Ljava/lang/String;)V

    return-object v0

    .line 173
    :catch_1
    invoke-virtual {p0, v2}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->sendServerContentDownloadSkippedMessage(Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FatalStopError:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0

    .line 180
    :cond_b
    invoke-virtual {p0, v2}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->sendServerContentDownloadSkippedMessage(Ljava/lang/String;)V

    return-object v0

    .line 188
    :cond_c
    invoke-virtual {p0, v0}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->generateClientId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {p0, v2}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->sendServerContentDownloadStartMessage(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0, v2, v0}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->downloadNew(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    move-result-object v0

    .line 191
    sget-object v3, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    if-ne v0, v3, :cond_d

    .line 195
    :try_start_8
    invoke-interface {v1, v2}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->setEndToServerDownloadStatus(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 202
    invoke-virtual {p0, v2}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->sendServerContentDownloadEndMessage(Ljava/lang/String;)V

    return-object v0

    .line 199
    :catch_2
    invoke-virtual {p0, v2}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->sendServerContentDownloadSkippedMessage(Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FatalStopError:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0

    .line 206
    :cond_d
    invoke-virtual {p0, v2}, Lcom/metamoji/dm/impl/sync/common/DmServerContentsDownloadIntentService;->sendServerContentDownloadSkippedMessage(Ljava/lang/String;)V

    return-object v0
.end method

.method protected abstract sendServerContentDownloadEndMessage(Ljava/lang/String;)V
.end method

.method protected abstract sendServerContentDownloadSkippedMessage(Ljava/lang/String;)V
.end method

.method protected abstract sendServerContentDownloadStartMessage(Ljava/lang/String;)V
.end method
