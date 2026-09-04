.class public Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;
.super Ljava/lang/Object;
.source "CsDigitalCabinetUserManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$CsDisconnectFromServerResponse;,
        Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$DisconnectCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showUserAccountBiz(Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 1044
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "CabinetUserAccountBiz"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1048
    :cond_0
    new-instance v0, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;-><init>()V

    .line 1057
    invoke-virtual {v0, p0, v1}, Lcom/metamoji/ui/dialog/CabinetUserAccountBiz;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public changePasswordAsync(Lcom/metamoji/cs/dc/params/CsChangePasswordParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 2

    .line 176
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$2;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/params/CsChangePasswordParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public deleteDirectMessage(Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 2

    .line 792
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$10;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public disconnectFromServer()Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$CsDisconnectFromServerResponse;
    .locals 3

    .line 426
    new-instance v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$CsDisconnectFromServerResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$CsDisconnectFromServerResponse;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager-IA;)V

    .line 427
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v1

    .line 430
    invoke-virtual {v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isProcessing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, -0x65

    .line 431
    iput v1, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$CsDisconnectFromServerResponse;->errorCode:I

    return-object v0

    .line 436
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->stopSync()V

    .line 438
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v1

    .line 439
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->getDisconnectLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 440
    :try_start_0
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->removeUserInfo()V

    .line 441
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->clearSession()V

    .line 443
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 446
    invoke-static {v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->clearAllDrive(Z)V

    const/4 v1, 0x0

    .line 448
    iput v1, v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$CsDisconnectFromServerResponse;->errorCode:I

    return-object v0

    :catchall_0
    move-exception v0

    .line 443
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public disconnectFromServer(Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 0

    .line 413
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->disconnectFromServer()Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$CsDisconnectFromServerResponse;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 416
    invoke-interface {p2, p1}, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    :cond_0
    return-void
.end method

.method public getDirectMessage(Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 2

    .line 733
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9;

    invoke-direct {v1, p0, p1, p0, p2}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$9;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getUserAndSystemSettings(Lcom/metamoji/cs/dc/params/CsGetUserAndSystemInfoParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 2

    .line 497
    new-instance v0, Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;

    new-instance v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$7;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/params/CsGetUserAndSystemInfoParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    invoke-direct {v0, v1}, Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;-><init>(Ljava/util/concurrent/Callable;)V

    .line 507
    invoke-virtual {v0}, Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;->forceLoad()V

    return-void
.end method

.method public getUserAndSystemSettingsSync(Lcom/metamoji/cs/dc/params/CsGetUserAndSystemInfoParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 19

    .line 555
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 556
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    .line 558
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;

    invoke-direct {v2}, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;-><init>()V

    .line 559
    new-instance v3, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;

    const-string v4, "executeGetUserAndSystemInfo2WithParams"

    move-object/from16 v5, p1

    invoke-direct {v3, v4, v5}, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;-><init>(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)V

    .line 560
    invoke-virtual {v2, v3}, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->pushExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V

    .line 561
    iget v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeWithState(ILcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 562
    iget v2, v1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez v2, :cond_e

    .line 565
    move-object v2, v1

    check-cast v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;

    .line 566
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v3

    .line 568
    iget-object v4, v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->userInfo:Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;

    const/16 v5, 0x64

    if-eqz v4, :cond_d

    iget-object v4, v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->systemInfo:Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;

    if-nez v4, :cond_0

    goto/16 :goto_7

    .line 574
    :cond_0
    iget-object v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    iget-object v6, v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->userInfo:Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;

    iget-object v6, v6, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->userId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 575
    iput v5, v1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    return-object v1

    .line 579
    :cond_1
    iget-object v4, v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->userInfo:Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;

    iget-boolean v4, v4, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->isAdmin:Z

    iput-boolean v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isAdmin:Z

    .line 581
    iget-object v4, v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->userInfo:Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;

    iget-object v4, v4, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->userId:Ljava/lang/String;

    iput-object v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    .line 582
    iget-object v4, v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->userInfo:Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;

    iget-object v4, v4, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->name:Ljava/lang/String;

    iput-object v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    .line 583
    iget-object v4, v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->userInfo:Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;

    iget-object v4, v4, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->email:Ljava/lang/String;

    iput-object v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 585
    iget-object v4, v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->systemInfo:Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;

    iget-object v4, v4, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->dcplan:Ljava/lang/String;

    iput-object v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->dcPlanName:Ljava/lang/String;

    .line 586
    iget-object v4, v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->systemInfo:Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;

    iget-object v4, v4, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->userUsageDiskSpace:Ljava/lang/String;

    iput-object v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userUsageDiskSpace:Ljava/lang/String;

    .line 589
    iget-object v4, v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->systemInfo:Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;

    iget-object v4, v4, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->userActionInfo:Ljava/util/Map;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 591
    const-string v6, "autoSyncPeriod"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    goto :goto_0

    :cond_2
    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_3

    .line 596
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    iput-wide v6, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autoSyncIntervalForFree:D

    .line 599
    :cond_3
    iget-object v4, v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->systemInfo:Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;

    iget-object v4, v4, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->licenseInfo:Ljava/util/Map;

    iput-object v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->licenseInfoCache:Ljava/util/Map;

    .line 600
    iget-object v4, v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->systemInfo:Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;

    iget-object v4, v4, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->userActionInfo:Ljava/util/Map;

    iput-object v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userActionInfoCache:Ljava/util/Map;

    .line 601
    iget-object v4, v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->systemInfo:Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;

    iget-object v4, v4, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->serviceSettings:Ljava/util/Map;

    iput-object v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serviceSettings:Ljava/util/Map;

    .line 602
    const-string v4, "customize"

    invoke-virtual {v3, v4}, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->getServiceSetting(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->featureCustomizeSettings:Ljava/util/Map;

    .line 603
    iget-object v4, v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->systemInfo:Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;

    iget-object v4, v4, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->serverTime:Ljava/lang/Number;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/metamoji/dm/fw/DmUtils;->dateFromNumber(D)Ljava/util/Date;

    move-result-object v4

    iput-object v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->serverDate:Ljava/util/Date;

    .line 604
    iget-object v4, v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->systemInfo:Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;

    iget-boolean v4, v4, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->hasCRLicense:Z

    iput-boolean v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->hasCRLicense:Z

    .line 605
    iget-object v4, v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->systemInfo:Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;

    iget-boolean v4, v4, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->readOnlyUser:Z

    iput-boolean v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->readOnlyUser:Z

    .line 607
    iget-object v2, v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->systemInfo:Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;

    iget-object v2, v2, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfoResopnse;->currentGroupId:Ljava/lang/String;

    iput-object v2, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->currentGroupId:Ljava/lang/String;

    .line 611
    iput-object v5, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->expireDateStr:Ljava/lang/String;

    const/4 v2, 0x0

    .line 612
    iput-boolean v2, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isGold:Z

    const/4 v4, -0x1

    .line 613
    iput v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->remainingMonths:I

    .line 614
    iget-object v6, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->licenseInfoCache:Ljava/util/Map;

    const-string v7, ".anytimeservice.trial"

    const-string v8, ".goldservice.base1"

    if-eqz v6, :cond_a

    .line 616
    iget-object v6, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->licenseInfoCache:Ljava/util/Map;

    const-string v9, "licenselist"

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    move v9, v2

    .line 618
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-wide/16 v13, 0x0

    const-string v15, "expireDateVal"

    const-string v2, "expireDate"

    const-string v5, "licenseId"

    if-ge v9, v10, :cond_6

    .line 619
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 620
    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    const-wide v17, 0x408f400000000000L    # 1000.0

    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_4

    goto :goto_2

    .line 625
    :cond_4
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v9, 0x1

    .line 626
    iput-boolean v9, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isGold:Z

    .line 628
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 629
    invoke-static {v9}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->expireDateStr:Ljava/lang/String;

    .line 631
    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 632
    invoke-static {v9, v13, v14}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide v11

    div-double v11, v11, v17

    invoke-static {v11, v12}, Lcom/metamoji/dm/fw/DmUtils;->dateFromNumber(D)Ljava/util/Date;

    move-result-object v9

    .line 634
    const-string v11, "remainingMonths"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 635
    invoke-static {v10, v4}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v4

    iput v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->remainingMonths:I

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    const-wide v17, 0x408f400000000000L    # 1000.0

    const/4 v9, 0x0

    .line 641
    :goto_3
    iget-boolean v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isGold:Z

    if-nez v4, :cond_9

    const/4 v4, 0x0

    .line 642
    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_9

    .line 643
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 644
    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-nez v11, :cond_7

    goto :goto_5

    .line 649
    :cond_7
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 651
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 652
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->expireDateStr:Ljava/lang/String;

    .line 654
    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 655
    invoke-static {v2, v13, v14}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide v4

    div-double v4, v4, v17

    invoke-static {v4, v5}, Lcom/metamoji/dm/fw/DmUtils;->dateFromNumber(D)Ljava/util/Date;

    move-result-object v5

    goto :goto_6

    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    move-object v5, v9

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    .line 662
    :goto_6
    iput-object v5, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->expireDate:Ljava/util/Date;

    .line 663
    invoke-virtual {v0, v3}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    .line 666
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtFeatureManager;->notifyConditionChanged()V

    .line 671
    invoke-virtual {v3, v8}, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->hasLicense(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v3, v8}, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isLicenseValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 672
    :cond_b
    invoke-virtual {v3, v8}, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->hasLicense(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v3, v7}, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->hasLicense(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v3, v7}, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isLicenseValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 674
    :cond_c
    sget-wide v4, Lcom/metamoji/cs/dc/user/CsDCPremiumUserAutoSyncInterval;->INTERVAL60MIN:D

    iput-wide v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autoSyncInterval:D

    .line 675
    invoke-virtual {v0, v3}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    return-object v1

    .line 569
    :cond_d
    :goto_7
    iput v5, v1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    :cond_e
    return-object v1
.end method

.method public getUserInfo(Lcom/metamoji/cs/dc/params/CsGetUserInfoParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 2

    .line 322
    new-instance v0, Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;

    new-instance v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$5;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/params/CsGetUserInfoParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    invoke-direct {v0, v1}, Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;-><init>(Ljava/util/concurrent/Callable;)V

    .line 335
    invoke-virtual {v0}, Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;->forceLoad()V

    return-void
.end method

.method public getUserInfoSync(Lcom/metamoji/cs/dc/params/CsGetUserInfoParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 5

    .line 379
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v1

    .line 382
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;

    invoke-direct {v2}, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;-><init>()V

    .line 383
    new-instance v3, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;

    const-string v4, "executeGetUserInfoWithParams"

    invoke-direct {v3, v4, p1}, Lcom/metamoji/cs/dc/CsCloudServiceExecutor;-><init>(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)V

    .line 384
    invoke-virtual {v2, v3}, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->pushExecutor(Lcom/metamoji/cs/dc/ICsExecutor;)V

    .line 385
    iget p1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    invoke-virtual {v2, p1, p2}, Lcom/metamoji/cs/dc/CsCloudServiceStateMachine;->executeWithState(ILcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;

    if-eqz p1, :cond_0

    .line 386
    iget p2, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez p2, :cond_0

    .line 388
    move-object p2, p1

    check-cast p2, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;

    .line 391
    iget-object p2, p1, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->name:Ljava/lang/String;

    iput-object p2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->nickname:Ljava/lang/String;

    .line 392
    iget-object p2, p1, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->email:Ljava/lang/String;

    iput-object p2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    .line 393
    iget-object p2, p1, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->locale:Ljava/lang/String;

    iput-object p2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->locale:Ljava/lang/String;

    .line 394
    iget-object p2, p1, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;->timezone:Ljava/lang/String;

    iput-object p2, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->timezone:Ljava/lang/String;

    .line 395
    invoke-virtual {v0, v1}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->updateUserInfoForSettings(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    :cond_0
    return-object p1
.end method

.method public lockUser(Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 7

    .line 819
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->generateRandomId()Ljava/lang/String;

    move-result-object v2

    .line 820
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v4

    .line 822
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v6

    new-instance v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$11;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Ljava/lang/String;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    invoke-virtual {v6, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public openCabinetUserDialog(Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 2

    .line 693
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$8;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resetPassword(Lcom/metamoji/cs/dc/params/CsResetPasswordParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 2

    .line 458
    iget-object v0, p1, Lcom/metamoji/cs/dc/params/CsResetPasswordParam;->email:Ljava/lang/String;

    new-instance v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$6;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/params/CsResetPasswordParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    invoke-static {v0, v1}, Lcom/metamoji/ui/cabinet/user/CabinetUserUtils;->forgetPassword(Ljava/lang/String;Lcom/metamoji/ui/cabinet/user/CabinetUserUtils$OnSuccessListener;)V

    return-void
.end method

.method public signOut(Landroidx/fragment/app/FragmentActivity;)V
    .locals 3

    .line 964
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 965
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJID_INFO_DLG_SIGINOUT_BTN:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 966
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJID_SIGNOUT_ALERT_MSG:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 967
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJID_INFO_DLG_SIGINOUT_BTN:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$13;

    invoke-direct {v2, p0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$13;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 976
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 977
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$14;

    invoke-direct {v2, p0}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$14;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 983
    new-instance v1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v1, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 984
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "Disconnect_showMsgDialog"

    invoke-virtual {v1, p1, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public unlockUser(Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 7

    .line 922
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v4

    .line 923
    invoke-virtual {v4}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    iget-object v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userLockToken:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 926
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 935
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v6

    new-instance v0, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$12;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Ljava/lang/String;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    invoke-virtual {v6, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    move-object v5, p2

    if-eqz v5, :cond_2

    .line 928
    new-instance p1, Lcom/metamoji/cs/dc/response/CsUnlockUserResponse;

    invoke-direct {p1}, Lcom/metamoji/cs/dc/response/CsUnlockUserResponse;-><init>()V

    const/4 p2, 0x0

    .line 929
    iput p2, p1, Lcom/metamoji/cs/dc/response/CsUnlockUserResponse;->errorCode:I

    .line 930
    invoke-interface {v5, p1}, Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;->callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    :cond_2
    return-void
.end method

.method public updateUserInfoCache(Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)V
    .locals 2

    .line 74
    new-instance v0, Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;

    new-instance v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$1;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    invoke-direct {v0, v1}, Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;-><init>(Ljava/util/concurrent/Callable;)V

    .line 85
    invoke-virtual {v0}, Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;->forceLoad()V

    return-void
.end method

.method public updateUserInfoCacheSync(ILcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public updateUserInfoCacheSync(Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 1

    .line 96
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetUserAndSystemInfoParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsGetUserAndSystemInfoParam;-><init>()V

    .line 97
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->getUserAndSystemSettingsSync(Lcom/metamoji/cs/dc/params/CsGetUserAndSystemInfoParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 98
    iget v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    check-cast p1, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;

    iget-object p1, p1, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;->userInfo:Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public updateUserToServer(Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 2

    .line 219
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$3;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateUserToServerAndCache(Lcom/metamoji/cs/dc/user/CsDCUserInfo;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V
    .locals 2

    .line 265
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager$4;-><init>(Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;Lcom/metamoji/cs/dc/user/CsDCUserInfo;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
