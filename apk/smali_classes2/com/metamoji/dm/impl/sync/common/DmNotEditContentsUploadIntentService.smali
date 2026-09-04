.class public abstract Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;
.super Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;
.source "DmNotEditContentsUploadIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method public afterProcess()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 1

    .line 182
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0
.end method

.method public beforeProcess()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 1

    .line 27
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0
.end method

.method protected isSyncTargetClient(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public processOne()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 8

    .line 37
    const-string v0, "/"

    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->getEntityId()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->getAccessUtils()Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    move-result-object v2

    .line 40
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    move-result-object v3

    .line 42
    invoke-virtual {p0, v1}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->isSyncTargetClient(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 44
    const-string v0, "client id:%s is not target. skip next..."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0

    .line 49
    :cond_0
    invoke-virtual {p0, v1}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->lockClientId(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 51
    const-string v0, "Unable to lock client ID"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0

    .line 57
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->prepareRequest()Lcom/metamoji/network/NwWebDAVRequest;

    move-result-object v4

    .line 59
    invoke-interface {v3, v1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->hasContentsData(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 61
    const-string v0, "Not updated because client document does not exist"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 62
    invoke-interface {v3, v1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->deleteSyncStatus(Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {p0, v1}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->unlockClientId(Ljava/lang/String;)V

    return-object v0

    .line 66
    :cond_2
    :try_start_1
    invoke-interface {v3, v1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->containsDeleteSyncInfo(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 67
    invoke-interface {v3, v1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->containsNewSyncInfo(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 68
    invoke-interface {v3, v1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->containsUpdateSyncInfo(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_2

    .line 74
    :cond_3
    invoke-interface {v3, v1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->getServerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {v2}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->getServerUrl()Ljava/lang/String;

    move-result-object v6

    .line 77
    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    invoke-static {v0}, Lcom/metamoji/dm/fw/DmUtils;->getUrlEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/metamoji/network/NwWebDAVRequest;->head(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVHeaderResult;

    move-result-object v4

    .line 87
    invoke-interface {v4}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result v4

    const/16 v6, 0x194

    if-eq v4, v6, :cond_5

    .line 89
    const-string v0, "server not modified."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_5
    invoke-static {}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->isRecovery()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 99
    const-string v4, "Processing document upload in recovery mode : %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p0, v1}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->sendOneContentUploadStartMessage(Ljava/lang/String;)V

    .line 102
    invoke-interface {v3, v1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->getLastSyncedRevisionFromClient(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    .line 108
    invoke-virtual {v2, v1, v5}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->generateLastSyncedRevision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {p0, v1, v4}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->reserveLastSyncedRevision(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    move-result-object v2

    .line 110
    sget-object v5, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    if-eq v2, v5, :cond_6

    .line 112
    const-string v0, "Failed to save lastSyncedRevision for {0} in recovery mode"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    invoke-virtual {p0, v1}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->unlockClientId(Ljava/lang/String;)V

    return-object v2

    .line 118
    :cond_6
    :try_start_2
    invoke-virtual {p0, v1, v0, v4}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->uploadNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    move-result-object v0

    .line 119
    sget-object v2, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    if-eq v0, v2, :cond_7

    .line 121
    const-string v2, "Failed to upload %s in recovery mode"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {p0, v1}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->sendOneContentUploadSkippedMessage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    invoke-virtual {p0, v1}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->unlockClientId(Ljava/lang/String;)V

    return-object v0

    .line 126
    :cond_7
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->sendOneContentUploadEndMessage(Ljava/lang/String;)V

    .line 127
    invoke-interface {v3, v1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->setEndToNewSyncStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :cond_8
    invoke-virtual {p0, v1}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->sendNotEditContentUploadStartMessage(Ljava/lang/String;)V

    .line 135
    new-instance v0, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService$1;

    invoke-direct {v0, p0, v3, v1}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService$1;-><init>(Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    :try_start_4
    invoke-interface {v3, v0}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->executeTrans(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    .line 149
    sget-object v2, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    if-eq v0, v2, :cond_9

    .line 151
    const-string v2, "DmNotEditDocumentSyncManager#ProcessOne finished. transProcessResult = %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    invoke-virtual {p0, v1}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->unlockClientId(Ljava/lang/String;)V

    return-object v0

    .line 154
    :cond_9
    :try_start_5
    invoke-interface {v3, v1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->setEndToDownloadDeleteSyncStatus(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 162
    :try_start_6
    invoke-virtual {p0, v1}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->sendNotEditContentUploadRemovedMessage(Ljava/lang/String;)V

    .line 166
    :goto_1
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 171
    invoke-virtual {p0, v1}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->unlockClientId(Ljava/lang/String;)V

    return-object v0

    .line 158
    :catch_0
    :try_start_7
    invoke-virtual {p0, v1}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->sendNotEditContentUploadSkippedMessage(Ljava/lang/String;)V

    .line 159
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FatalStopError:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 171
    invoke-virtual {p0, v1}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->unlockClientId(Ljava/lang/String;)V

    return-object v0

    .line 70
    :cond_a
    :goto_2
    :try_start_8
    invoke-virtual {p0, v1}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->sendNotEditContentUploadEndMessage(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 171
    invoke-virtual {p0, v1}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->unlockClientId(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->unlockClientId(Ljava/lang/String;)V

    .line 172
    throw v0
.end method

.method protected abstract sendNotEditContentUploadEndMessage(Ljava/lang/String;)V
.end method

.method protected abstract sendNotEditContentUploadRemovedMessage(Ljava/lang/String;)V
.end method

.method protected abstract sendNotEditContentUploadSkippedMessage(Ljava/lang/String;)V
.end method

.method protected abstract sendNotEditContentUploadStartMessage(Ljava/lang/String;)V
.end method

.method protected abstract sendOneContentUploadEndMessage(Ljava/lang/String;)V
.end method

.method protected abstract sendOneContentUploadSkippedMessage(Ljava/lang/String;)V
.end method

.method protected abstract sendOneContentUploadStartMessage(Ljava/lang/String;)V
.end method
