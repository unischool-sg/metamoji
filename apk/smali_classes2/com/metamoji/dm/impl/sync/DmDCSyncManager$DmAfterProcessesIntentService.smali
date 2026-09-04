.class public Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService;
.super Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;
.source "DmDCSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/dm/impl/sync/DmDCSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DmAfterProcessesIntentService"
.end annotation


# instance fields
.field private volatile waitForEnd:Z


# direct methods
.method static bridge synthetic -$$Nest$fputwaitForEnd(Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService;->waitForEnd:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService;->waitForEnd:Z

    return-void
.end method


# virtual methods
.method public afterProcess()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 1

    .line 160
    invoke-static {}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->getInstance()Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->init()V

    .line 161
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0
.end method

.method public beforeProcess()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 1

    .line 105
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

    .line 112
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$fgetrunningode(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;)I

    move-result v0

    .line 113
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v2

    .line 115
    invoke-static {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$smuse2ndLibrarySync(I)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$sfget_stopSync()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->needRecovery:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->_errorOccurred:Z

    if-nez v0, :cond_0

    .line 119
    iput-boolean v3, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->completeRecovery:Z

    .line 124
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->lastSyncedTime:Ljava/util/Date;

    .line 126
    invoke-virtual {v1, v2}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    .line 128
    iput-boolean v3, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService;->waitForEnd:Z

    .line 129
    new-instance v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;-><init>()V

    .line 131
    new-instance v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService$1;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService$1;-><init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService;Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;)V

    .line 146
    sget-object v2, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithoutLoginDialog:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->unlockUser(Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    .line 147
    :catch_0
    :goto_0
    iget-boolean v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService;->waitForEnd:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0xa

    .line 149
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :cond_1
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0
.end method
