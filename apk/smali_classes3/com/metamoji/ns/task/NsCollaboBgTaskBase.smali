.class public abstract Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
.super Ljava/lang/Object;
.source "NsCollaboBgTaskBase.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final s_taskArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/metamoji/ns/task/NsCollaboBgTaskBase;",
            ">;"
        }
    .end annotation
.end field

.field static s_taskId:I


# instance fields
.field public cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

.field public dispMessage:Z

.field m_afterAction:Lcom/metamoji/ns/INsCollaboAction;

.field m_cancelled:Z

.field m_dcUserInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

.field m_dcUserInfoWaiting:Z

.field private final m_lockObject:Ljava/lang/Object;

.field m_mcheckResult:Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

.field m_taskId:I

.field protected m_uiGuard:Z

.field m_waitView:Lcom/metamoji/ns/ui/NsCollaboWaitView;


# direct methods
.method public static synthetic $r8$lambda$IOaqgHWgK6zzwgO-F4t_jvoZg_A(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->lambda$isMaintenanceDCServer$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$NzEUpvdNjEKFNQnm693s9lczxG0(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->lambda$getCabinetUserInfo$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$bsDZz1OKwOnx124HQdkuxT5JAvY(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->lambda$getCabinetUserInfo$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$qHBYd93dukG4qad1NpH4sl-meVU(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->lambda$onCompleted$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$rUuMWcvIpLFez4IKTWxjmcfiklU(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->lambda$doInBackground$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$uEQES7o7HdG_KKxm1kfTsh68NFo(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->lambda$getCabinetUserInfo$5(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->s_taskArray:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_lockObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_cancelled:Z

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_mcheckResult:Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    .line 56
    iput-boolean v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_dcUserInfoWaiting:Z

    .line 57
    iput-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_dcUserInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    .line 64
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_afterAction:Lcom/metamoji/ns/INsCollaboAction;

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->dispMessage:Z

    .line 66
    iput-boolean p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_uiGuard:Z

    return-void
.end method

.method public static getTask(I)Lcom/metamoji/ns/task/NsCollaboBgTaskBase;
    .locals 1

    .line 382
    sget-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->s_taskArray:Ljava/util/HashMap;

    monitor-enter v0

    .line 383
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 384
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$doInBackground$0()V
    .locals 2

    .line 84
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboWaitView;

    invoke-direct {v0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_waitView:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    .line 85
    iget-boolean v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->dispMessage:Z

    iput-boolean v1, v0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_displayView:Z

    .line 86
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_waitView:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    iget v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_taskId:I

    iput v1, v0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_taskId:I

    .line 87
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_waitView:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    iget-boolean v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_uiGuard:Z

    iput-boolean v1, v0, Lcom/metamoji/ns/ui/NsCollaboWaitView;->m_uiGuard:Z

    .line 88
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_waitView:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->show()V

    return-void
.end method

.method private synthetic lambda$getCabinetUserInfo$4()V
    .locals 1

    .line 248
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_dcUserInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    return-void
.end method

.method private synthetic lambda$getCabinetUserInfo$5(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 245
    iget p1, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez p1, :cond_0

    .line 247
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 p1, 0x0

    .line 253
    iput-boolean p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_dcUserInfoWaiting:Z

    return-void
.end method

.method private synthetic lambda$getCabinetUserInfo$6()V
    .locals 3

    .line 243
    invoke-static {}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->getInstance()Lcom/metamoji/nt/cabinet/user/CabinetUserManager;

    move-result-object v0

    .line 244
    new-instance v1, Lcom/metamoji/ns/task/NsCollaboBgTaskBase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    sget-object v2, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialogIfRegisterd:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->UpdateUserInfoCacheAsync(Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)V

    return-void
.end method

.method private synthetic lambda$isMaintenanceDCServer$2()V
    .locals 2

    .line 191
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;-><init>(Z)V

    .line 192
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetMaitenanceInfoWitParams(Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;)Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_mcheckResult:Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    return-void
.end method

.method static synthetic lambda$isMaintenanceDCServer$3(Ljava/util/concurrent/CountDownLatch;Z)V
    .locals 0

    .line 217
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$onCompleted$1()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_waitView:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->hide()V

    return-void
.end method

.method static registerTask(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)I
    .locals 4

    .line 355
    sget-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->s_taskArray:Ljava/util/HashMap;

    monitor-enter v0

    .line 356
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 358
    sget-object v3, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->s_taskArray:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    .line 363
    :cond_1
    sget v1, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->s_taskId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->s_taskId:I

    .line 364
    sget-object v2, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->s_taskArray:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->s_taskId:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 366
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static unregisterTask(I)V
    .locals 1

    .line 373
    sget-object v0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->s_taskArray:Ljava/util/HashMap;

    monitor-enter v0

    .line 374
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public cancel()Z
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-boolean v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_cancelled:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 123
    iput-boolean v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_cancelled:Z

    .line 126
    iget-object v2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->cancellableConnection:Lcom/metamoji/ns/service/NsCollaboURLConnection;

    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {v2}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->connectionCancel()V

    .line 130
    :cond_0
    monitor-exit v0

    return v1

    .line 132
    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected checkServerVersion()Z
    .locals 6

    .line 283
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->initialize()V

    .line 284
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    const/4 v1, 0x3

    .line 286
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->isSupportedProtocolVersion(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 291
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v1, v3, :cond_1

    return v2

    .line 296
    :cond_1
    new-instance v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetServletInfo;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetServletInfo;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    .line 300
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v3

    .line 302
    invoke-virtual {v3}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 304
    iget-object v3, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    iput-object v3, v1, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetServletInfo;->companyId:Ljava/lang/String;

    .line 310
    :cond_2
    :try_start_0
    invoke-virtual {v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetServletInfo;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    if-nez v1, :cond_3

    return v3

    .line 320
    :cond_3
    const-string/jumbo v4, "serverProtocolVersion"

    invoke-static {v1, v4}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 321
    const-string v5, "clientDirectionVersion"

    invoke-static {v1, v5}, Lcom/metamoji/ns/NsCollaboManager;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    .line 323
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/metamoji/ns/NsCollaboManager;->checkProtocolVersion(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 325
    sget v0, Lcom/metamoji/noteanytime/R$string;->Share_Version_Error_Protocol:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return v3

    .line 328
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/NsCollaboManager;->checkDirectionVersion(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 330
    sget v0, Lcom/metamoji/noteanytime/R$string;->Share_Version_Error_Direction:I

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return v3

    :cond_5
    return v2

    :catch_0
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[MMJNsCollaboBgTaskBase] MMJNsCollaboURLConnectionForGetServletInfo Failed. : %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public doInBackground()V
    .locals 2

    .line 80
    invoke-static {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->registerTask(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_taskId:I

    .line 83
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ns/task/NsCollaboBgTaskBase$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 91
    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase$1;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    invoke-static {v0}, Lcom/metamoji/ns/NsCollaboManager;->runOnBackground(Lcom/metamoji/ns/NsCollaboManager$SafeRunnable;)V

    return-void
.end method

.method public getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;
    .locals 3

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_dcUserInfoWaiting:Z

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_dcUserInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    .line 242
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/task/NsCollaboBgTaskBase$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 257
    :cond_0
    iget-boolean v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_dcUserInfoWaiting:Z

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x64

    .line 259
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :catch_0
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_dcUserInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    .line 269
    iput-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_dcUserInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    return-object v1
.end method

.method public getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_waitView:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-boolean v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_cancelled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 168
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected isMaintenanceDCServer()Z
    .locals 5

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_mcheckResult:Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    .line 190
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/task/NsCollaboBgTaskBase$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_mcheckResult:Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-wide/16 v3, 0x64

    .line 197
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :catch_0
    invoke-virtual {p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 207
    :cond_1
    iput-object v0, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_mcheckResult:Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    .line 210
    iget-boolean v0, v1, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->isUnderMaintenance:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    .line 215
    :cond_2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 216
    iget-object v1, v1, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->maintMessage:Ljava/lang/String;

    new-instance v3, Lcom/metamoji/ns/task/NsCollaboBgTaskBase$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v1, v3}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    .line 221
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return v2
.end method

.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 1

    .line 142
    iget p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_taskId:I

    invoke-static {p2}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->unregisterTask(I)V

    .line 145
    iget-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_waitView:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    if-eqz p2, :cond_0

    .line 146
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    const/4 p2, 0x0

    .line 147
    iput-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_waitView:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    .line 151
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_afterAction:Lcom/metamoji/ns/INsCollaboAction;

    if-eqz p2, :cond_1

    xor-int/lit8 p1, p1, 0x1

    .line 152
    invoke-interface {p2, p1}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    :cond_1
    return-void
.end method

.method public setAfterAction(Lcom/metamoji/ns/INsCollaboAction;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_afterAction:Lcom/metamoji/ns/INsCollaboAction;

    return-void
.end method

.method public setWaitView(Lcom/metamoji/ns/ui/NsCollaboWaitView;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->m_waitView:Lcom/metamoji/ns/ui/NsCollaboWaitView;

    return-void
.end method

.method protected abstract taskExec()V
.end method
