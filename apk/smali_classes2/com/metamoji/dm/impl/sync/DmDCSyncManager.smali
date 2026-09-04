.class public Lcom/metamoji/dm/impl/sync/DmDCSyncManager;
.super Ljava/lang/Object;
.source "DmDCSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;,
        Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService;,
        Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentServiceController;
    }
.end annotation


# static fields
.field private static final LIBRARYITEMINDEX_SYNC_DIR:Ljava/lang/String; = "noteanytime/libraryitems_index_sa/"

.field private static final LIBRARYITEM_SYNC_DIR:Ljava/lang/String; = "noteanytime/libraryitems_sa/"

.field private static final SHAREDDRIVE_SYNC_DIR:Ljava/lang/String; = "noteanytime/shareddrive/"

.field public static final SYNC_MODE_FLG_ISAUTOMATIC:I

.field public static final SYNC_MODE_FLG_ISDOWNLOAD:I

.field public static final SYNC_MODE_FLG_ISUPLOAD:I

.field public static final SYNC_MODE_FLG_ITEM_DOWNLOAD:I

.field public static final SYNC_MODE_FLG_ITEM_UPLOAD:I

.field public static final SYNC_MODE_FLG_NONE:I

.field public static final SYNC_MODE_FLG_PRIVATEDRIVE:I

.field public static final SYNC_MODE_FLG_SELECTEDDRIVE:I

.field public static final SYNC_MODE_FLG_SHAREDDRIVES:I

.field public static final SYNC_MODE_STOPPED:I

.field public static _errorOccurred:Z

.field private static _instance:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

.field public static final _lockObject:Ljava/lang/Object;

.field private static _stopSync:Z


# instance fields
.field private volatile runningode:I


# direct methods
.method static bridge synthetic -$$Nest$fgetrunningode(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->runningode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputrunningode(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->runningode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckHomeCollectionExists(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->checkHomeCollectionExists(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetUnsynedUserItemCount(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getUnsynedUserItemCount()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misTargetSyncMode(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isTargetSyncMode(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfget_stopSync()Z
    .locals 1

    sget-boolean v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->_stopSync:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfput_stopSync(Z)V
    .locals 0

    sput-boolean p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->_stopSync:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smcloneWithContext(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;
    .locals 0

    invoke-static {p0, p1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->cloneWithContext(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smcreateSyncUserInfoBaseSync(I)Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;
    .locals 0

    invoke-static {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->createSyncUserInfoBaseSync(I)Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smuse2ndLibrarySync(I)Z
    .locals 0

    invoke-static {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->use2ndLibrarySync(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 54
    const-string v0, "00000001"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_ISAUTOMATIC:I

    .line 55
    const-string v0, "00000010"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_ISDOWNLOAD:I

    .line 56
    const-string v0, "00000100"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_ISUPLOAD:I

    .line 57
    const-string v0, "00001000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_SHAREDDRIVES:I

    .line 58
    const-string v0, "00010000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_SELECTEDDRIVE:I

    .line 59
    const-string v0, "00100000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_PRIVATEDRIVE:I

    .line 60
    const-string v0, "01000000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_ITEM_DOWNLOAD:I

    .line 61
    const-string v0, "10000000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_ITEM_UPLOAD:I

    const/4 v0, 0x0

    .line 74
    sput-boolean v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->_errorOccurred:Z

    .line 76
    sput-boolean v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->_stopSync:Z

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->_lockObject:Ljava/lang/Object;

    .line 170
    new-instance v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;-><init>()V

    sput-object v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->_instance:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->runningode:I

    return-void
.end method

.method private V2ItemDownloadSyncMode()I
    .locals 1

    .line 993
    sget v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_ITEM_DOWNLOAD:I

    return v0
.end method

.method private V2ItemUploadSyncMode()I
    .locals 1

    .line 998
    sget v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_ITEM_UPLOAD:I

    return v0
.end method

.method private checkHomeCollectionExists(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)Z
    .locals 1

    .line 377
    new-instance v0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;-><init>()V

    .line 378
    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->init(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V

    .line 380
    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->checkHomeCollectionExists()Z

    move-result p1

    return p1
.end method

.method private static cloneWithContext(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;
    .locals 2

    .line 384
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->clone()Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;

    move-result-object p0

    .line 385
    invoke-virtual {p0}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 387
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->setUserHomeUrl(Ljava/lang/String;)V

    return-object p0
.end method

.method private static createSyncUserInfoBaseSync(I)Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;
    .locals 12

    .line 392
    new-instance v0, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;-><init>()V

    .line 393
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    .line 395
    monitor-enter v0

    .line 396
    :try_start_0
    new-instance v2, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;

    invoke-direct {v2}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;-><init>()V

    .line 400
    new-instance v3, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    invoke-direct {v3}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;-><init>()V

    .line 401
    sget v4, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_ISAUTOMATIC:I

    and-int v5, p0, v4

    if-eq v5, v4, :cond_0

    sget-object v5, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialog:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithoutLoginDialog:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    .line 402
    :goto_0
    invoke-virtual {v3, v5}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->updateUserInfoCacheSync(Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_c

    .line 403
    iget v6, v3, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-eqz v6, :cond_1

    goto/16 :goto_6

    .line 417
    :cond_1
    check-cast v3, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;

    .line 418
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v6

    .line 420
    iget-object v7, v3, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->userId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->setUserId(Ljava/lang/String;)V

    .line 421
    iget-object v7, v6, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 422
    iget-object v6, v6, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->setPassword(Ljava/lang/String;)V

    goto :goto_1

    .line 424
    :cond_2
    iget-object v6, v6, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->setPassword(Ljava/lang/String;)V

    .line 426
    :goto_1
    iget-object v6, v3, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->appAuthKey:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->setApplicationAuthKey(Ljava/lang/String;)V

    .line 427
    iget-object v6, v3, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->homeDir:Ljava/lang/String;

    .line 428
    invoke-static {v6}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isValidHomeDir(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 429
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 430
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 432
    :cond_3
    invoke-virtual {v2, v6}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->setServerUrl(Ljava/lang/String;)V

    .line 433
    iget-object v3, v3, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->key:Ljava/lang/Number;

    invoke-virtual {v2, v3}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->setKey(Ljava/lang/Number;)V

    .line 435
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->clear()V

    .line 439
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v3

    .line 440
    iget-object v6, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userLockToken:Ljava/lang/String;

    if-nez v6, :cond_5

    .line 442
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->generateRandomId()Ljava/lang/String;

    move-result-object v6

    .line 444
    :cond_5
    new-instance v7, Lcom/metamoji/cs/dc/params/CsLockUserParam;

    invoke-direct {v7}, Lcom/metamoji/cs/dc/params/CsLockUserParam;-><init>()V

    .line 445
    iput-object v6, v7, Lcom/metamoji/cs/dc/params/CsLockUserParam;->lockToken:Ljava/lang/String;

    .line 446
    new-instance v8, Lcom/metamoji/cs/dc/CsLockUserExecutor;

    invoke-direct {v8, v7}, Lcom/metamoji/cs/dc/CsLockUserExecutor;-><init>(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)V

    .line 447
    invoke-virtual {v0, v8}, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->pushExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V

    and-int v7, p0, v4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v7, v4, :cond_6

    move v7, v8

    goto :goto_2

    :cond_6
    move v7, v9

    .line 448
    :goto_2
    invoke-virtual {v0, v7, v9}, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeWithState(ZZ)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 450
    iget v10, v7, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-eqz v10, :cond_7

    iget v10, v7, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v11, 0x8e

    if-eq v10, v11, :cond_7

    goto :goto_5

    .line 475
    :cond_7
    instance-of p0, v7, Lcom/metamoji/cs/dc/response/CsLockUserResponse;

    if-eqz p0, :cond_9

    .line 476
    check-cast v7, Lcom/metamoji/cs/dc/response/CsLockUserResponse;

    iget-boolean p0, v7, Lcom/metamoji/cs/dc/response/CsLockUserResponse;->needRecovery:Z

    if-eqz p0, :cond_8

    iget-boolean p0, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->completeRecovery:Z

    if-nez p0, :cond_8

    goto :goto_3

    :cond_8
    move v8, v9

    :goto_3
    iput-boolean v8, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->needRecovery:Z

    goto :goto_4

    .line 478
    :cond_9
    iput-boolean v9, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->needRecovery:Z

    .line 481
    :goto_4
    invoke-virtual {v2, v6}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->setUserLockToken(Ljava/lang/String;)V

    .line 482
    iput-object v6, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userLockToken:Ljava/lang/String;

    .line 483
    invoke-virtual {v1, v3}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    .line 485
    monitor-exit v0

    return-object v2

    :cond_a
    :goto_5
    and-int/2addr p0, v4

    if-eq p0, v4, :cond_b

    .line 452
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$3;

    invoke-direct {v1, v7}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$3;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    invoke-virtual {p0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 459
    :cond_b
    monitor-exit v0

    return-object v5

    :cond_c
    :goto_6
    and-int/2addr p0, v4

    if-eq p0, v4, :cond_d

    .line 405
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p0

    new-instance v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$2;

    invoke-direct {v1, v3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$2;-><init>(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    invoke-virtual {p0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 415
    :cond_d
    monitor-exit v0

    return-object v5

    :catchall_0
    move-exception p0

    .line 486
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;
    .locals 1

    .line 173
    sget-object v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->_instance:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    return-object v0
.end method

.method private getUnsynedUserItemCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isPermittedNetwork(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z
    .locals 1

    .line 700
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 701
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 702
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 706
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isTargetSyncMode(I)Z
    .locals 1

    .line 1003
    iget v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->runningode:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static isValidHomeDir(Ljava/lang/String;)Z
    .locals 2

    .line 492
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 495
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method private startSyncWithType(ILjava/lang/String;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)Z
    .locals 2

    .line 206
    :try_start_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;-><init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;ILjava/lang/String;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 363
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private syncModeAsAllSync()I
    .locals 2

    .line 965
    sget v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_PRIVATEDRIVE:I

    sget v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_SHAREDDRIVES:I

    or-int/2addr v0, v1

    .line 968
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->V2ItemDownloadSyncMode()I

    move-result v1

    or-int/2addr v0, v1

    .line 969
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->V2ItemUploadSyncMode()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private syncModeAsDownloadV2Sync()I
    .locals 2

    .line 975
    sget v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_PRIVATEDRIVE:I

    sget v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_SHAREDDRIVES:I

    or-int/2addr v0, v1

    sget v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_ITEM_DOWNLOAD:I

    or-int/2addr v0, v1

    return v0
.end method

.method private syncModeAsLocalSync()I
    .locals 2

    .line 984
    sget v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_PRIVATEDRIVE:I

    .line 986
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->V2ItemDownloadSyncMode()I

    move-result v1

    or-int/2addr v0, v1

    .line 987
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->V2ItemUploadSyncMode()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static use2ndLibrarySync(I)Z
    .locals 2

    .line 1011
    sget v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_ITEM_DOWNLOAD:I

    and-int v1, p0, v0

    if-eq v1, v0, :cond_1

    sget v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_ITEM_UPLOAD:I

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public GetLibrarySyncCount()I
    .locals 1

    .line 530
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getUnsynedUserItemCount()I

    move-result v0

    return v0
.end method

.method public canSync()Z
    .locals 2

    .line 623
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$9;

    invoke-direct {v1, p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$9;-><init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public checkAndRunAutoSync(ZLjava/lang/String;)V
    .locals 2

    .line 648
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$10;-><init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getRunningSyncMode()I
    .locals 1

    .line 565
    iget v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->runningode:I

    return v0
.end method

.method public handleConnectivityChange(Z)V
    .locals 0

    .line 725
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->reset()V

    return-void
.end method

.method public isPermittedNetwork()Z
    .locals 2

    .line 690
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getRunningSyncMode()I

    move-result v0

    .line 692
    sget v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_ISAUTOMATIC:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 695
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 696
    invoke-static {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isPermittedNetwork(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    move-result v0

    return v0
.end method

.method public isProcessing()Z
    .locals 2

    .line 503
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$5;

    invoke-direct {v1, p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$5;-><init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isProcessingAsAutomatic()Z
    .locals 2

    .line 686
    iget v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->runningode:I

    sget v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_ISAUTOMATIC:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public putEventHandler(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/dm/fw/sync/DmIntentServiceEventParams;",
            ">;)V"
        }
    .end annotation

    .line 187
    invoke-static {}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->getInstance()Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->putEventHandler(Ljava/lang/String;Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method

.method public removeEventHandler(Ljava/lang/String;)V
    .locals 1

    .line 195
    invoke-static {}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->getInstance()Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->removeEventHandler(Ljava/lang/String;)V

    return-void
.end method

.method public resetAllSyncInfo()V
    .locals 2

    .line 714
    sget-object v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 715
    :try_start_0
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryContentsSyncDataManager;->disconnectAndResetAllSyncInfo()Z

    .line 716
    invoke-static {}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->getInstance()Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/dm/impl/metadata/DmLibraryIndexXMLSyncDataManager;->disconnectAndResetAllSyncInfo()Z

    .line 717
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized sharedDriveSyncStartWithDrives(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 834
    :try_start_0
    new-instance v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;-><init>()V

    const/4 v1, 0x5

    .line 835
    iput v1, v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->driveEntrySyncMode:I

    .line 836
    iput-object p1, v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->specifiedIds:Ljava/util/ArrayList;

    .line 837
    sget p1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_SHAREDDRIVES:I

    const/4 v1, 0x0

    .line 838
    invoke-direct {p0, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startSyncWithType(ILjava/lang/String;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public startAllSharedDriveSyncWithAdditionOnlyOption()Z
    .locals 3

    .line 775
    const-string v0, "start automatic shared drive sync required..."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 776
    new-instance v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;-><init>()V

    const/4 v1, 0x1

    .line 777
    iput v1, v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->driveEntrySyncMode:I

    .line 778
    sget v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_SHAREDDRIVES:I

    const/4 v2, 0x0

    .line 779
    invoke-direct {p0, v1, v2, v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startSyncWithType(ILjava/lang/String;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)Z

    move-result v0

    return v0
.end method

.method public startAllSharedDriveSyncWithGroupIdOption(Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 802
    const-string v0, "start automatic shared drive sync required..."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 803
    new-instance v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;-><init>()V

    const/4 v1, 0x4

    .line 804
    iput v1, v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->driveEntrySyncMode:I

    .line 805
    iput-object p1, v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->groupIds:Ljava/util/ArrayList;

    .line 806
    sget p1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_SHAREDDRIVES:I

    const/4 v1, 0x0

    .line 807
    invoke-direct {p0, p1, v1, v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startSyncWithType(ILjava/lang/String;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)Z

    move-result p1

    return p1
.end method

.method public startAllSharedDriveSyncWithToDisplayOnlyOption()Z
    .locals 3

    .line 788
    const-string v0, "start automatic shared drive sync required..."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 789
    new-instance v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;-><init>()V

    const/4 v1, 0x3

    .line 790
    iput v1, v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->driveEntrySyncMode:I

    .line 791
    sget v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_SHAREDDRIVES:I

    const/4 v2, 0x0

    .line 792
    invoke-direct {p0, v1, v2, v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startSyncWithType(ILjava/lang/String;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized startAutoSyncForChanges()Z
    .locals 7

    monitor-enter p0

    .line 893
    :try_start_0
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->isKeepSyncCancel()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 894
    monitor-exit p0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 897
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->toDoSync(Z)Z

    move-result v0

    .line 900
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 901
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v3

    .line 902
    invoke-virtual {v3}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveAll()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 903
    invoke-virtual {v5}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 904
    invoke-virtual {v6, v1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->needSyncFlag(Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 905
    invoke-virtual {v5}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 909
    :cond_2
    sget v3, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_ISAUTOMATIC:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    .line 911
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 913
    new-instance v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;-><init>()V

    .line 914
    iput v4, v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->driveEntrySyncMode:I

    .line 915
    iput-object v2, v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->specifiedIds:Ljava/util/ArrayList;

    .line 916
    sget v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_PRIVATEDRIVE:I

    sget v2, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_SHAREDDRIVES:I

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    .line 918
    invoke-direct {p0, v1, v5, v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startSyncWithType(ILjava/lang/String;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_3
    if-eqz v0, :cond_4

    .line 922
    :try_start_2
    sget v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_PRIVATEDRIVE:I

    or-int/2addr v0, v3

    .line 924
    invoke-direct {p0, v0, v5, v5}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startSyncWithType(ILjava/lang/String;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 926
    :cond_4
    :try_start_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 928
    new-instance v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;-><init>()V

    .line 929
    iput v4, v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->driveEntrySyncMode:I

    .line 930
    iput-object v2, v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->specifiedIds:Ljava/util/ArrayList;

    .line 931
    sget v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_SHAREDDRIVES:I

    or-int/2addr v1, v3

    .line 933
    invoke-direct {p0, v1, v5, v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startSyncWithType(ILjava/lang/String;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    .line 935
    :cond_5
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public declared-synchronized startAutoSyncForUpdates(Z)Z
    .locals 7

    monitor-enter p0

    .line 846
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 847
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 848
    invoke-virtual {v1, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v3

    .line 850
    invoke-virtual {v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->checkUpdate()Z

    move-result v3

    .line 853
    invoke-virtual {v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveAll()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 854
    invoke-virtual {v5}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isHidden()Z

    move-result v6

    if-nez v6, :cond_0

    .line 855
    invoke-virtual {v5}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 856
    invoke-virtual {v6}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->checkUpdate()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 857
    invoke-virtual {v5}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 862
    :cond_1
    new-instance v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;

    invoke-direct {v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;-><init>()V

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 864
    sget v3, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_PRIVATEDRIVE:I

    if-eqz p1, :cond_3

    .line 867
    sget v5, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_SHAREDDRIVES:I

    or-int/2addr v3, v5

    const/4 v5, 0x1

    .line 868
    iput v5, v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->driveEntrySyncMode:I

    goto :goto_1

    :cond_2
    move v3, v4

    .line 871
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 873
    sget v5, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_SELECTEDDRIVE:I

    or-int/2addr v3, v5

    const/4 v5, 0x2

    .line 874
    iput v5, v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->driveEntrySyncMode:I

    .line 875
    iput-object v0, v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->specifiedIds:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    const/4 p1, 0x5

    .line 877
    iput p1, v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;->driveEntrySyncMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-nez v3, :cond_5

    .line 881
    monitor-exit p0

    return v4

    .line 884
    :cond_5
    :try_start_1
    invoke-direct {p0, v3, v2, v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startSyncWithType(ILjava/lang/String;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized startDownloadV2Sync()Z
    .locals 2

    monitor-enter p0

    .line 956
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->syncModeAsDownloadV2Sync()I

    move-result v0

    const/4 v1, 0x0

    .line 957
    invoke-direct {p0, v0, v1, v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startSyncWithType(ILjava/lang/String;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startFullSync()Z
    .locals 2

    .line 737
    const-string v0, "start fullsync required..."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 738
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->syncModeAsAllSync()I

    move-result v0

    const/4 v1, 0x0

    .line 739
    invoke-direct {p0, v0, v1, v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startSyncWithType(ILjava/lang/String;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized startLocalAutoSync()Z
    .locals 2

    monitor-enter p0

    .line 826
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->syncModeAsLocalSync()I

    move-result v0

    sget v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_ISAUTOMATIC:I

    or-int/2addr v0, v1

    const/4 v1, 0x0

    .line 827
    invoke-direct {p0, v0, v1, v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startSyncWithType(ILjava/lang/String;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized startLocalSync()Z
    .locals 2

    monitor-enter p0

    .line 816
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->syncModeAsLocalSync()I

    move-result v0

    const/4 v1, 0x0

    .line 817
    invoke-direct {p0, v0, v1, v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startSyncWithType(ILjava/lang/String;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized startLoginSync()V
    .locals 1

    monitor-enter p0

    .line 944
    :try_start_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->startMigration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startDownloadV2Sync()Z

    goto :goto_0

    .line 948
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startFullSync()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startSelectedDriveSync()Z
    .locals 3

    .line 748
    const-string v0, "start selected drive sync required..."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 749
    sget v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_SELECTEDDRIVE:I

    .line 750
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 751
    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->toDoSync(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    sget v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_PRIVATEDRIVE:I

    or-int/2addr v0, v1

    .line 754
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startSyncWithType(ILjava/lang/String;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)Z

    move-result v0

    return v0
.end method

.method public startSharedDriveAutoSync(Ljava/lang/String;)Z
    .locals 2

    .line 764
    const-string v0, "start automatic shared drive sync required..."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 765
    sget v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_ISAUTOMATIC:I

    sget v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_SELECTEDDRIVE:I

    or-int/2addr v0, v1

    const/4 v1, 0x0

    .line 766
    invoke-direct {p0, v0, p1, v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startSyncWithType(ILjava/lang/String;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)Z

    move-result p1

    return p1
.end method

.method public stopSync()V
    .locals 1

    .line 515
    const-string v0, "sync stop required...."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 516
    invoke-static {}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->getInstance()Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->stopServices()V

    const/4 v0, 0x1

    .line 517
    sput-boolean v0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->_stopSync:Z

    return-void
.end method

.method public toDoDriveSync(Ljava/lang/String;)Z
    .locals 2

    .line 606
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$8;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$8;-><init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public toDoSync(Z)Z
    .locals 2

    .line 543
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$6;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$6;-><init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public toDoUploadSync(Z)Z
    .locals 2

    .line 580
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$7;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$7;-><init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
