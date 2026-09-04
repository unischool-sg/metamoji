.class public Lcom/metamoji/cs/dc/CsCloudService;
.super Ljava/lang/Object;
.source "CsCloudService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cs/dc/CsCloudService$paramClass;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static m_client:Lcom/metamoji/cs/CsHttpClient;

.field private static m_disconnectLockObject:Ljava/lang/Object;

.field private static m_pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static bridge synthetic -$$Nest$sfgetm_client()Lcom/metamoji/cs/CsHttpClient;
    .locals 1

    sget-object v0, Lcom/metamoji/cs/dc/CsCloudService;->m_client:Lcom/metamoji/cs/CsHttpClient;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smprepareLoginResponse(Lcom/metamoji/cs/dc/response/CsLoginResponse;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/metamoji/cs/dc/CsCloudService;->prepareLoginResponse(Lcom/metamoji/cs/dc/response/CsLoginResponse;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smputResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 0

    invoke-static {p0, p1}, Lcom/metamoji/cs/dc/CsCloudService;->putResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    .line 54
    new-instance v0, Lcom/metamoji/cs/CsHttpClient;

    invoke-direct {v0}, Lcom/metamoji/cs/CsHttpClient;-><init>()V

    sput-object v0, Lcom/metamoji/cs/dc/CsCloudService;->m_client:Lcom/metamoji/cs/CsHttpClient;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/cs/dc/CsCloudService;->m_disconnectLockObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSession()V
    .locals 1

    .line 600
    sget-object v0, Lcom/metamoji/cs/dc/CsCloudService;->m_client:Lcom/metamoji/cs/CsHttpClient;

    invoke-virtual {v0}, Lcom/metamoji/cs/CsHttpClient;->clearSession()V

    .line 602
    invoke-static {}, Lcom/metamoji/sd/cs/SdHttpClient;->clearCookies()V

    return-void
.end method

.method public static executeAddApiLogWithParams(Lcom/metamoji/cs/dc/params/CsAddApiLogParam;)Lcom/metamoji/cs/dc/response/CsAddApiLogResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3167
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 3168
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsAddApiLogParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 3170
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$53;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$53;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 3187
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 3190
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsAddApiLogResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3192
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeAgreeEULAWithParams(Lcom/metamoji/cs/dc/params/CsAgreeEulaParam;)Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1041
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 1042
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsAgreeEulaParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 1044
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$17;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$17;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 1064
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 1067
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1069
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeChangePasswordWithParams(Lcom/metamoji/cs/dc/params/CsChangePasswordParam;)Lcom/metamoji/cs/dc/response/CsChangePasswordResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 759
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->PUT:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 760
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsChangePasswordParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 762
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$11;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$11;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 782
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 785
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsChangePasswordResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 787
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeClassRoomLoginWithParam(Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;)Lcom/metamoji/cs/dc/response/CsLoginResponse;
    .locals 9

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 251
    const-string p0, "executeGetClassRoomLoginInfoWithParam invalid parameter null..."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-object v1

    .line 256
    :cond_0
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;-><init>(Z)V

    .line 257
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetMaitenanceInfoWitParams(Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;)Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    move-result-object v0

    .line 258
    iget-boolean v3, v0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->isUnderMaintenance:Z

    if-eqz v3, :cond_1

    .line 259
    new-instance p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsLoginResponse;-><init>()V

    .line 260
    iput-boolean v2, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->isUnderMaintenance:Z

    .line 261
    iget-object v0, v0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->maintMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->maintMessage:Ljava/lang/String;

    const/16 v0, -0x66

    .line 262
    iput v0, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    return-object p0

    .line 273
    :cond_1
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;-><init>()V

    .line 274
    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;->coLoginId:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;->coLoginId:Ljava/lang/String;

    .line 275
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService;

    invoke-direct {v2}, Lcom/metamoji/cs/dc/CsCloudService;-><init>()V

    .line 276
    invoke-virtual {v2, v0}, Lcom/metamoji/cs/dc/CsCloudService;->ExecuteGetServerUrlWithParams(Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;)Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;

    move-result-object v0

    if-nez v0, :cond_2

    .line 280
    new-instance p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsLoginResponse;-><init>()V

    const/16 v0, -0x64

    .line 281
    iput v0, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    return-object p0

    .line 285
    :cond_2
    iget v2, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->errorCode:I

    if-eqz v2, :cond_3

    .line 286
    new-instance p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsLoginResponse;-><init>()V

    .line 287
    iget v0, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->errorCode:I

    iput v0, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    return-object p0

    .line 292
    :cond_3
    iget-boolean v2, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->isClassRoom:Z

    .line 298
    iget-object v6, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->serverUrl:Ljava/lang/String;

    .line 299
    iget-boolean v7, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->isOnPremise:Z

    .line 300
    iget-boolean v8, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->isClassRoom:Z

    .line 308
    sget-object v4, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 309
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;->stringify()Ljava/lang/String;

    move-result-object v5

    .line 311
    new-instance v3, Lcom/metamoji/cs/dc/CsCloudService$3;

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/cs/dc/CsCloudService$3;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 327
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 330
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 332
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static executeCreateClassBoxWithParams(Lcom/metamoji/cs/dc/params/CsCreateClassBoxParam;)Lcom/metamoji/cs/dc/response/CsCreateClassBoxResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3003
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 3004
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsCreateClassBoxParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 3006
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$49;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$49;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 3026
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 3029
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsCreateClassBoxResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3031
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeCreateDriveWithParams(Lcom/metamoji/cs/dc/params/CsCreateDriveParam;)Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2042
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2043
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsCreateDriveParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 2045
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$31;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$31;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 2064
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2067
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2069
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeCreateLinkWithParams(Lcom/metamoji/cs/dc/params/CsCreateLinkParam;)Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3209
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 3210
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsCreateLinkParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 3212
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$54;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$54;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 3232
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 3235
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3237
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeDeleteDirectMessageWithParams(Lcom/metamoji/cs/dc/params/CsDeleteDirectMessageParam;)Lcom/metamoji/cs/dc/response/CsDeleteDirectMessageResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 995
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->DELETE:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 996
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsDeleteDirectMessageParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 998
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$16;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$16;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 1018
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 1021
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsDeleteDirectMessageResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1023
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeDeleteDriveWithParams(Lcom/metamoji/cs/dc/params/CsDeleteDriveParam;)Lcom/metamoji/cs/dc/response/CsDeleteDriveResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2082
    :cond_0
    iget-object p0, p0, Lcom/metamoji/cs/dc/params/CsDeleteDriveParam;->driveId:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "/drives/%s/data"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2083
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->DELETE:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2085
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$32;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/cs/dc/CsCloudService$32;-><init>(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;)V

    .line 2102
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2105
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsDeleteDriveResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2107
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeDummyPurchaseLicenseWithParams(Lcom/metamoji/cs/dc/params/CsPurchaseParam;)Lcom/metamoji/cs/dc/response/CsPurchaseResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1184
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 1185
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsPurchaseParam;->getParamDic()Ljava/util/ArrayList;

    move-result-object p0

    .line 1187
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$20;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$20;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/util/ArrayList;)V

    .line 1208
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 1211
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsPurchaseResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1213
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeExcludeMemberFromDriveWithParams(Lcom/metamoji/cs/dc/params/CsExcludeMemberFromDriveParam;)Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2319
    :cond_0
    iget-object v1, p0, Lcom/metamoji/cs/dc/params/CsExcludeMemberFromDriveParam;->driveId:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "/drives/%s/members/users"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2320
    sget-object v2, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2321
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsExcludeMemberFromDriveParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 2323
    new-instance v3, Lcom/metamoji/cs/dc/CsCloudService$38;

    invoke-direct {v3, v1, v2, p0}, Lcom/metamoji/cs/dc/CsCloudService$38;-><init>(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 2340
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2343
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2345
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeGetAllGroupsWithParams(Lcom/metamoji/cs/dc/params/CsGetAllGroupsParam;)Lcom/metamoji/cs/dc/response/CsGetAllGroupsResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2364
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2365
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsGetAllGroupsParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 2367
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$39;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$39;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 2397
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2400
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsGetAllGroupsResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2402
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeGetAllUsersWithParams(Lcom/metamoji/cs/dc/params/CsGetAllUsersParam;)Lcom/metamoji/cs/dc/response/CsGetAllUsersResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2420
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2421
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsGetAllUsersParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 2423
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$40;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$40;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 2453
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2456
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsGetAllUsersResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2458
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeGetClassCodeWithParams(Lcom/metamoji/cs/dc/params/CsGetClassCodeParam;)Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3045
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 3046
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsGetClassCodeParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 3048
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$50;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$50;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 3068
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 3071
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3073
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeGetClassRoomLoginInfoWithParam(Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 350
    const-string p0, "executeGetClassRoomLoginInfoWithParam invalid parameter null..."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-object v0

    .line 355
    :cond_0
    new-instance v1, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;-><init>(Z)V

    .line 356
    invoke-static {v1}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetMaitenanceInfoWitParams(Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;)Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    move-result-object v1

    .line 357
    iget-boolean v3, v1, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->isUnderMaintenance:Z

    if-eqz v3, :cond_1

    .line 358
    new-instance p0, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;

    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;-><init>()V

    .line 359
    iput-boolean v2, p0, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;->isUnderMaintenance:Z

    .line 360
    iget-object v0, v1, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->maintMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;->maintMessage:Ljava/lang/String;

    const/16 v0, -0x66

    .line 361
    iput v0, p0, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;->errorCode:I

    return-object p0

    .line 366
    :cond_1
    new-instance v1, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;-><init>()V

    .line 367
    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;->coLoginId:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;->coLoginId:Ljava/lang/String;

    .line 368
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService;

    invoke-direct {v2}, Lcom/metamoji/cs/dc/CsCloudService;-><init>()V

    .line 369
    invoke-virtual {v2, v1}, Lcom/metamoji/cs/dc/CsCloudService;->ExecuteGetServerUrlWithParams(Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;)Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;

    move-result-object v1

    if-nez v1, :cond_2

    .line 373
    new-instance p0, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;

    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;-><init>()V

    const/16 v0, -0x64

    .line 374
    iput v0, p0, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;->errorCode:I

    return-object p0

    .line 378
    :cond_2
    iget v2, v1, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->errorCode:I

    if-eqz v2, :cond_3

    .line 379
    new-instance p0, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;

    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;-><init>()V

    .line 380
    iget v0, v1, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->errorCode:I

    iput v0, p0, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;->errorCode:I

    return-object p0

    .line 385
    :cond_3
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 386
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 388
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$4;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$4;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 408
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 411
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 413
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeGetClientFileWithParams(Lcom/metamoji/cs/dc/params/CsGetClientFileParam;)Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;
    .locals 2

    .line 2865
    sget-object v0, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2866
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsGetClientFileParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 2868
    new-instance v1, Lcom/metamoji/cs/dc/CsCloudService$46;

    invoke-direct {v1, v0, p0}, Lcom/metamoji/cs/dc/CsCloudService$46;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 2887
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2890
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2892
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static executeGetClientSettingsWithParams(Lcom/metamoji/cs/dc/params/CsGetClientSettingsParam;)Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;
    .locals 2

    .line 2754
    sget-object v0, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2755
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsGetClientSettingsParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 2757
    new-instance v1, Lcom/metamoji/cs/dc/CsCloudService$43;

    invoke-direct {v1, v0, p0}, Lcom/metamoji/cs/dc/CsCloudService$43;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 2779
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2782
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2784
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static executeGetCredentialWithParams(Lcom/metamoji/cs/dc/params/CsGetCredentialParam;)Lcom/metamoji/cs/dc/response/CsGetCredentialResponse;
    .locals 4

    .line 2585
    new-instance v0, Lcom/metamoji/cs/dc/response/CsGetCredentialResponse;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/response/CsGetCredentialResponse;-><init>()V

    .line 2587
    :try_start_0
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v1

    .line 2588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/metamoji/cs/CsCloudServiceContext;->getRootServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sso/requestcredential"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2589
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsGetCredentialParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 2590
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 2591
    new-instance v1, Lcom/metamoji/cs/CsHttpClient;

    invoke-direct {v1}, Lcom/metamoji/cs/CsHttpClient;-><init>()V

    .line 2593
    sget-object v3, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    invoke-virtual {v1, v2, v3, p0}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithURL(Ljava/net/URI;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object p0

    .line 2594
    invoke-static {p0, v0}, Lcom/metamoji/cs/dc/CsCloudService;->putResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 2596
    iget p0, v0, Lcom/metamoji/cs/dc/response/CsGetCredentialResponse;->errorCode:I

    if-nez p0, :cond_1

    .line 2597
    iget-object p0, v0, Lcom/metamoji/cs/dc/response/CsGetCredentialResponse;->bodyMessage:Ljava/util/HashMap;

    if-nez p0, :cond_0

    const/16 p0, -0x64

    .line 2599
    iput p0, v0, Lcom/metamoji/cs/dc/response/CsGetCredentialResponse;->errorCode:I

    return-object v0

    .line 2601
    :cond_0
    const-string v1, "userList"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 2602
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 2603
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 2604
    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->prepareLoginInfo(Ljava/util/Map;)Lcom/metamoji/cs/dc/user/CsLoginInfo;

    move-result-object p0

    iput-object p0, v0, Lcom/metamoji/cs/dc/response/CsGetCredentialResponse;->loginInfo:Lcom/metamoji/cs/dc/user/CsLoginInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 2609
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeGetDirectMessageWithParams(Lcom/metamoji/cs/dc/params/CsGetDirectMessageParam;)Lcom/metamoji/cs/dc/response/CsGetDirectMessageResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 948
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->GET:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 949
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsGetDirectMessageParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 951
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$15;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$15;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 972
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 975
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsGetDirectMessageResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 977
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeGetDriveEntryInfoWithParams(Lcom/metamoji/cs/dc/params/CsGetDriveEntryInfoParam;)Lcom/metamoji/cs/dc/response/CsGetDriveEntryInfoResponse;
    .locals 1

    .line 2714
    sget-object p0, Lcom/metamoji/cs/CsHttpClientMethod;->GET:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2716
    new-instance v0, Lcom/metamoji/cs/dc/CsCloudService$42;

    invoke-direct {v0, p0}, Lcom/metamoji/cs/dc/CsCloudService$42;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;)V

    .line 2738
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2741
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsGetDriveEntryInfoResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2743
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static executeGetDriveEntryWithParams(Lcom/metamoji/cs/dc/params/CsGetDriveEntryParam;)Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1922
    :cond_0
    sget-object p0, Lcom/metamoji/cs/CsHttpClientMethod;->GET:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 1924
    new-instance v1, Lcom/metamoji/cs/dc/CsCloudService$28;

    invoke-direct {v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$28;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;)V

    .line 1946
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 1949
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1951
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeGetDriveHomeWithParams(Lcom/metamoji/cs/dc/params/CsGetDriveHomeParam;)Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2000
    :cond_0
    iget-object p0, p0, Lcom/metamoji/cs/dc/params/CsGetDriveHomeParam;->driveId:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "/drives/%s/home"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2001
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->GET:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2003
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$30;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/cs/dc/CsCloudService$30;-><init>(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;)V

    .line 2023
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2026
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2028
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeGetDriveMemberListWithParams(Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;)Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2161
    :cond_0
    iget-object v1, p0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;->driveId:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "/drives/%s/allmembers2"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2163
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtFeature;->GetDetailedDriveMemberList:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/metamoji/cs/CsHttpClientMethod;->GET:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2164
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 2166
    new-instance v3, Lcom/metamoji/cs/dc/CsCloudService$34;

    invoke-direct {v3, v1, v2, p0}, Lcom/metamoji/cs/dc/CsCloudService$34;-><init>(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 2186
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2189
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2191
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static executeGetLoginInfoCore(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;
    .locals 5

    .line 2528
    new-instance v0, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;-><init>()V

    .line 2529
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2532
    :try_start_0
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v2

    .line 2533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/metamoji/cs/CsCloudServiceContext;->getRootServer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mpsroot/LoginServlet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2534
    new-instance v3, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;

    invoke-direct {v3}, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;-><init>()V

    .line 2535
    iput-object p1, v3, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;->auth:Ljava/lang/String;

    .line 2536
    const-string v4, "OIDC"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2537
    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->safeURLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;->encMailaddress:Ljava/lang/String;

    goto :goto_0

    .line 2539
    :cond_0
    invoke-static {p0}, Lcom/metamoji/cm/EncryptUtil;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;->encMailaddress:Ljava/lang/String;

    .line 2541
    :goto_0
    invoke-virtual {v3}, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 2542
    new-instance p1, Ljava/net/URI;

    invoke-direct {p1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 2543
    new-instance v2, Lcom/metamoji/cs/CsHttpClient;

    invoke-direct {v2}, Lcom/metamoji/cs/CsHttpClient;-><init>()V

    .line 2545
    new-instance v3, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;

    invoke-direct {v3}, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;-><init>()V

    .line 2546
    sget-object v4, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    invoke-virtual {v2, p1, v4, p0}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithURL(Ljava/net/URI;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object p0

    .line 2547
    invoke-static {p0, v3}, Lcom/metamoji/cs/dc/CsCloudService;->putResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 2549
    iget p0, v3, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->errorCode:I

    if-nez p0, :cond_3

    .line 2550
    iget-object p0, v3, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->bodyMessage:Ljava/util/HashMap;

    const/16 p1, -0x64

    if-nez p0, :cond_1

    .line 2552
    iput p1, v0, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->errorCode:I

    goto :goto_2

    .line 2555
    :cond_1
    const-string v2, "userList"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 2557
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 2558
    invoke-static {v3}, Lcom/metamoji/cs/dc/CsCloudService;->prepareLoginInfo(Ljava/util/Map;)Lcom/metamoji/cs/dc/user/CsLoginInfo;

    move-result-object v3

    .line 2559
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2563
    :cond_2
    const-string v2, "errorCode"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p1

    if-eqz p1, :cond_4

    .line 2567
    iput p1, v0, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->errorCode:I

    .line 2568
    const-string p1, "errorMessage"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->errorMessage:Ljava/lang/String;

    goto :goto_2

    .line 2572
    :cond_3
    iget p0, v3, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->errorCode:I

    iput p0, v0, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->errorCode:I

    .line 2573
    iget-object p0, v3, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->errorMessage:Ljava/lang/String;

    iput-object p0, v0, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->errorMessage:Ljava/lang/String;

    .line 2574
    iget p0, v3, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->httpStatusCode:I

    iput p0, v0, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->httpStatusCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 2577
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 2580
    :cond_4
    :goto_2
    iput-object v1, v0, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->list:Ljava/util/List;

    return-object v0
.end method

.method public static executeGetLoginInfoWithAccessCode(Ljava/lang/String;)Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;
    .locals 1

    .line 2524
    const-string v0, "OIDC"

    invoke-static {p0, v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetLoginInfoCore(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;

    move-result-object p0

    return-object p0
.end method

.method public static executeGetLoginInfoWithGoogleId(Ljava/lang/String;)Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;
    .locals 1

    .line 2519
    const-string v0, "AAD"

    invoke-static {p0, v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetLoginInfoCore(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;

    move-result-object p0

    return-object p0
.end method

.method public static executeGetMaitenanceInfoWitParams(Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;)Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;
    .locals 9

    .line 1433
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v0

    .line 1434
    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->isCheckMaint()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1435
    new-instance p0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    invoke-direct {p0, v2, v3}, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;-><init>(ZLjava/lang/String;)V

    const/16 v0, 0x194

    .line 1436
    iput v0, p0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->httpStatusCode:I

    const/16 v0, 0x6f

    .line 1437
    iput v0, p0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->errorCode:I

    return-object p0

    :cond_0
    const/16 v1, -0x64

    .line 1444
    :try_start_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1447
    invoke-virtual {v4}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v4

    .line 1448
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;->isForDCUser()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1449
    iget-object p0, v4, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->maintenanceCheckURL:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object p0, v3

    :goto_0
    if-eqz p0, :cond_2

    .line 1452
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    if-ge v4, v5, :cond_3

    .line 1459
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getRootServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "maintenance2_common.txt"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1463
    :cond_3
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1465
    new-instance v4, Lcom/metamoji/cs/CsHttpClient;

    const/16 v5, 0x1388

    invoke-direct {v4, v5}, Lcom/metamoji/cs/CsHttpClient;-><init>(I)V

    .line 1466
    sget-object v5, Lcom/metamoji/cs/CsHttpClientMethod;->GET:Lcom/metamoji/cs/CsHttpClientMethod;

    invoke-virtual {v4, v0, v5, v3}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithURL(Ljava/net/URI;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object v0

    const/4 v4, 0x1

    if-nez v0, :cond_4

    .line 1469
    const-string v0, "%s network error: message = null"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1471
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Network_Error:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1472
    new-instance v0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    invoke-direct {v0, v4, p0}, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;-><init>(ZLjava/lang/String;)V

    .line 1473
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->errorCode:I

    .line 1474
    iput-object p0, v0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->errorMessage:Ljava/lang/String;

    return-object v0

    .line 1478
    :cond_4
    iget p0, v0, Lcom/metamoji/cs/HttpClientResponseBean;->httpStatusCode:I

    const/16 v5, 0x197

    if-eq p0, v5, :cond_c

    iget p0, v0, Lcom/metamoji/cs/HttpClientResponseBean;->httpStatusCode:I

    if-nez p0, :cond_5

    goto/16 :goto_5

    .line 1491
    :cond_5
    invoke-virtual {v0}, Lcom/metamoji/cs/HttpClientResponseBean;->isSuccessStatusCode()Z

    move-result p0

    if-eqz p0, :cond_b

    .line 1493
    iget-object p0, v0, Lcom/metamoji/cs/HttpClientResponseBean;->body:Ljava/lang/String;

    if-nez p0, :cond_6

    .line 1497
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Network_Error:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    move v4, v2

    goto/16 :goto_4

    .line 1499
    :cond_6
    const-string v0, "\r\n|\r|\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1500
    aget-object v0, p0, v2

    const-string v5, "maintenance"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/nt/NtLocale;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1503
    array-length v5, p0

    move v6, v4

    :goto_2
    if-ge v6, v5, :cond_8

    .line 1505
    aget-object v7, p0, v6

    .line 1506
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1507
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v7, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1508
    const-string v0, "\\n"

    const-string v5, "\r\n"

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1509
    const-string v0, "maintenance text:%s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    move-object p0, v3

    :goto_3
    if-nez p0, :cond_a

    .line 1516
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/metamoji/noteanytime/R$string;->Server_Msg_UnderMaintenance:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 1521
    :cond_9
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/metamoji/noteanytime/R$string;->Server_Msg_UnderMaintenance:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1526
    :cond_a
    :goto_4
    new-instance v0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    invoke-direct {v0, v4, p0}, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;-><init>(ZLjava/lang/String;)V

    return-object v0

    .line 1528
    :cond_b
    new-instance p0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    invoke-direct {p0, v2, v3}, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;-><init>(ZLjava/lang/String;)V

    return-object p0

    .line 1479
    :cond_c
    :goto_5
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Network_Error:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1480
    new-instance v0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    invoke-direct {v0, v4, p0}, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;-><init>(ZLjava/lang/String;)V

    .line 1481
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->errorCode:I

    .line 1482
    iput-object p0, v0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->errorMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1540
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 1543
    new-instance p0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    invoke-direct {p0, v2, v3}, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;-><init>(ZLjava/lang/String;)V

    .line 1544
    iput v1, p0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->errorCode:I

    return-object p0
.end method

.method public static executeGetPrivateDriveHomeWithParams(Lcom/metamoji/cs/dc/params/CsGetPrivateDriveHomeParam;)Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;
    .locals 2

    .line 2663
    new-instance p0, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;-><init>(Z)V

    .line 2664
    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetMaitenanceInfoWitParams(Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;)Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    move-result-object p0

    .line 2665
    iget-boolean v0, p0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->isUnderMaintenance:Z

    if-eqz v0, :cond_0

    .line 2666
    new-instance v0, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;-><init>()V

    const/4 v1, 0x1

    .line 2667
    iput-boolean v1, v0, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->isUnderMaintenance:Z

    .line 2668
    iget-object p0, p0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->maintMessage:Ljava/lang/String;

    iput-object p0, v0, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->maintMessage:Ljava/lang/String;

    const/16 p0, -0x66

    .line 2669
    iput p0, v0, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->errorCode:I

    return-object v0

    .line 2674
    :cond_0
    sget-object p0, Lcom/metamoji/cs/CsHttpClientMethod;->GET:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2676
    new-instance v0, Lcom/metamoji/cs/dc/CsCloudService$41;

    invoke-direct {v0, p0}, Lcom/metamoji/cs/dc/CsCloudService$41;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;)V

    .line 2698
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2701
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2703
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static executeGetShareInfoWithParams(Lcom/metamoji/cs/dc/params/CsGetShareInfoParam;)Lcom/metamoji/cs/dc/response/CsGetShareInfoResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1280
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 1281
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsGetShareInfoParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 1283
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$22;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$22;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 1306
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 1309
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsGetShareInfoResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1311
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeGetStorageUsageWithParams(Lcom/metamoji/cs/dc/params/CsGetStorageUsageParam;)Lcom/metamoji/cs/dc/response/CsGetStorageUsageResponse;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1877
    :cond_0
    sget-object p0, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 1880
    new-instance v1, Lcom/metamoji/cs/dc/CsCloudService$27;

    invoke-direct {v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$27;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;)V

    .line 1901
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 1904
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsGetStorageUsageResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1906
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeGetUserAndSystemInfo2WithParams(Lcom/metamoji/cs/dc/params/CsGetUserAndSystemInfoParam;)Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 663
    const-string p0, "executeGetUserAndSystemInfo2WithParams invalid parameter null..."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-object v0

    .line 668
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->GET:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 669
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsGetUserAndSystemInfoParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 671
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$10;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$10;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 736
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 739
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 741
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeGetUserInfoWithParams(Lcom/metamoji/cs/dc/params/CsGetUserInfoParam;)Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 460
    const-string p0, "executeGetUserInfoWithParams invalid parameter null..."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-object v0

    .line 465
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->GET:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 466
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsGetUserInfoParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 468
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$6;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$6;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 496
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 499
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 501
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeGetUserNamesWithParams(Lcom/metamoji/cs/dc/params/CsGetUserNamesParam;)Lcom/metamoji/cs/dc/response/CsGetUserNamesResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2908
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2909
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsGetUserNamesParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 2911
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$47;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$47;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 2941
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2944
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsGetUserNamesResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2946
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeInkAmountSyncWithParams(Lcom/metamoji/cs/dc/params/CsInkAmountSyncParams;)Lcom/metamoji/cs/dc/response/CsInkAmountSyncResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1087
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 1088
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsInkAmountSyncParams;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 1090
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$18;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$18;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 1113
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 1116
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsInkAmountSyncResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1118
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeInviteToDriveWithParam(Lcom/metamoji/cs/dc/params/CsInviteToDriveParam;)Lcom/metamoji/cs/dc/response/CsInviteToDriveResponse;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2204
    :cond_0
    iget-object v1, p0, Lcom/metamoji/cs/dc/params/CsInviteToDriveParam;->driveId:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "/drives/%s/invite2"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2205
    sget-object v2, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2206
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsInviteToDriveParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 2208
    new-instance v3, Lcom/metamoji/cs/dc/CsCloudService$35;

    invoke-direct {v3, v1, v2, p0}, Lcom/metamoji/cs/dc/CsCloudService$35;-><init>(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 2227
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2230
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsInviteToDriveResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2232
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeJoinClassBoxWithParams(Lcom/metamoji/cs/dc/params/CsJoinClassBoxParam;)Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3087
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 3088
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsJoinClassBoxParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 3090
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$51;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$51;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 3109
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 3112
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3114
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeLockUserWithParams(Lcom/metamoji/cs/dc/params/CsLockUserParam;)Lcom/metamoji/cs/dc/response/CsLockUserResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 851
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 852
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsLockUserParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 854
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$13;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$13;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 879
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 882
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsLockUserResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 884
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static executeLogin(Lcom/metamoji/cs/dc/params/CsLoginParam;Ljava/lang/String;ZZ)Lcom/metamoji/cs/dc/response/CsLoginResponse;
    .locals 7

    .line 154
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 155
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsLoginParam;->stringify()Ljava/lang/String;

    move-result-object v2

    .line 157
    new-instance v0, Lcom/metamoji/cs/dc/CsCloudService$1;

    move-object v6, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/cs/dc/CsCloudService$1;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;Ljava/lang/String;ZZLcom/metamoji/cs/dc/params/CsLoginParam;)V

    .line 172
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 175
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 177
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static executeLoginWithLoginInfo(Lcom/metamoji/cs/dc/user/CsLoginInfo;)Lcom/metamoji/cs/dc/response/CsLoginResponse;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 188
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsLoginInfo;->serverUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsLoginInfo;->serverUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 191
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsLoginInfo;->serverUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/cs/CsCloudServiceContext;->setRestHost(Ljava/lang/String;)V

    .line 195
    :cond_1
    new-instance v1, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;-><init>(Z)V

    .line 196
    invoke-static {v1}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetMaitenanceInfoWitParams(Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;)Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    move-result-object v1

    .line 197
    iget-boolean v3, v1, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->isUnderMaintenance:Z

    if-eqz v3, :cond_2

    .line 198
    new-instance p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsLoginResponse;-><init>()V

    .line 199
    iput-boolean v2, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->isUnderMaintenance:Z

    .line 200
    iget-object v0, v1, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->maintMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->maintMessage:Ljava/lang/String;

    const/16 v0, -0x66

    .line 201
    iput v0, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    return-object p0

    .line 205
    :cond_2
    new-instance v1, Lcom/metamoji/cs/dc/params/CsLoginParam;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/params/CsLoginParam;-><init>()V

    .line 206
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsLoginInfo;->coLoginId:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/params/CsLoginParam;->coLoginId:Ljava/lang/String;

    .line 207
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsLoginInfo;->userId:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/params/CsLoginParam;->userId:Ljava/lang/String;

    .line 208
    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsLoginInfo;->qwd:Ljava/lang/String;

    iput-object v2, v1, Lcom/metamoji/cs/dc/params/CsLoginParam;->qwd:Ljava/lang/String;

    .line 211
    sget-object v2, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 212
    invoke-virtual {v1}, Lcom/metamoji/cs/dc/params/CsLoginParam;->stringify()Ljava/lang/String;

    move-result-object v1

    .line 214
    new-instance v3, Lcom/metamoji/cs/dc/CsCloudService$2;

    invoke-direct {v3, v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$2;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;Lcom/metamoji/cs/dc/user/CsLoginInfo;)V

    .line 229
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 232
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 234
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeLoginWithParam(Lcom/metamoji/cs/dc/params/CsLoginParam;)Lcom/metamoji/cs/dc/response/CsLoginResponse;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 75
    :cond_0
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;-><init>(Z)V

    .line 76
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetMaitenanceInfoWitParams(Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;)Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    move-result-object v0

    .line 77
    iget-boolean v2, v0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->isUnderMaintenance:Z

    if-eqz v2, :cond_1

    .line 78
    new-instance p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsLoginResponse;-><init>()V

    .line 79
    iput-boolean v1, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->isUnderMaintenance:Z

    .line 80
    iget-object v0, v0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->maintMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->maintMessage:Ljava/lang/String;

    const/16 v0, -0x66

    .line 81
    iput v0, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    return-object p0

    .line 90
    :cond_1
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/metamoji/cs/dc/params/CsLoginParam;->coLoginId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;->coLoginId:Ljava/lang/String;

    .line 92
    new-instance v1, Lcom/metamoji/cs/dc/CsCloudService;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/CsCloudService;-><init>()V

    .line 93
    invoke-virtual {v1, v0}, Lcom/metamoji/cs/dc/CsCloudService;->ExecuteGetServerUrlWithParams(Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;)Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;

    move-result-object v0

    if-nez v0, :cond_2

    .line 97
    new-instance p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsLoginResponse;-><init>()V

    const/16 v0, -0x64

    .line 98
    iput v0, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    return-object p0

    .line 102
    :cond_2
    iget v1, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->errorCode:I

    if-eqz v1, :cond_3

    .line 103
    new-instance p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsLoginResponse;-><init>()V

    .line 104
    iget v0, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->errorCode:I

    iput v0, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    return-object p0

    .line 109
    :cond_3
    iget-boolean v1, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->isClassRoom:Z

    .line 115
    iget-object v1, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->serverUrl:Ljava/lang/String;

    .line 116
    iget-boolean v2, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->isOnPremise:Z

    .line 117
    iget-boolean v0, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->isClassRoom:Z

    .line 124
    invoke-static {p0, v1, v2, v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeLogin(Lcom/metamoji/cs/dc/params/CsLoginParam;Ljava/lang/String;ZZ)Lcom/metamoji/cs/dc/response/CsLoginResponse;

    move-result-object p0

    return-object p0
.end method

.method public static executeLogoutWithParams(Lcom/metamoji/cs/dc/params/CsLogoutParam;)Lcom/metamoji/cs/dc/response/CsLogoutResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 424
    const-string p0, "executeLogoutWithParams invalid parameter null..."

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-object v0

    .line 429
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 430
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsLogoutParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 432
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$5;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$5;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 443
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 445
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsLogoutResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 447
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executePostCrashLogsWithParams(Lcom/metamoji/cs/dc/params/CsPostCrashLogsParam;)Lcom/metamoji/cs/dc/response/CsPostCrashLogsResponse;
    .locals 4

    .line 2630
    new-instance v0, Lcom/metamoji/cs/dc/response/CsPostCrashLogsResponse;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/response/CsPostCrashLogsResponse;-><init>()V

    .line 2632
    :try_start_0
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v1

    .line 2633
    new-instance v2, Lcom/metamoji/cs/CsHttpClient;

    invoke-direct {v2}, Lcom/metamoji/cs/CsHttpClient;-><init>()V

    .line 2634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/metamoji/cs/CsCloudServiceContext;->getRootServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "mpsroot/crashlog/upload"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2635
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 2636
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsPostCrashLogsParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 2638
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->GET:Lcom/metamoji/cs/CsHttpClientMethod;

    invoke-virtual {v2, v3, v1, p0}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithURL(Ljava/net/URI;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object p0

    .line 2639
    invoke-static {p0, v0}, Lcom/metamoji/cs/dc/CsCloudService;->putResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 2641
    iget p0, v0, Lcom/metamoji/cs/dc/response/CsPostCrashLogsResponse;->errorCode:I

    if-nez p0, :cond_1

    .line 2642
    iget-object p0, v0, Lcom/metamoji/cs/dc/response/CsPostCrashLogsResponse;->bodyMessage:Ljava/util/HashMap;

    const/16 v1, -0x64

    if-nez p0, :cond_0

    .line 2644
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsPostCrashLogsResponse;->errorCode:I

    return-object v0

    .line 2647
    :cond_0
    const-string v2, "errorCode"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 2651
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeProductLicenseSyncWithParams(Lcom/metamoji/cs/dc/params/CsProductLicenseSyncParam;)Lcom/metamoji/cs/dc/response/CsProductLicenseSyncResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1231
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 1232
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsProductLicenseSyncParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 1234
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$21;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$21;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 1257
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 1260
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsProductLicenseSyncResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1262
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executePurchaseLicenseWithParams(Lcom/metamoji/cs/dc/params/CsPurchaseParam;)Lcom/metamoji/cs/dc/response/CsPurchaseResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1136
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 1137
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsPurchaseParam;->getParamDic()Ljava/util/ArrayList;

    move-result-object p0

    .line 1139
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$19;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$19;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/util/ArrayList;)V

    .line 1160
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 1163
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsPurchaseResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1165
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeReInviteToDriveWithParam(Lcom/metamoji/cs/dc/params/CsReInviteToDriveParam;)Lcom/metamoji/cs/dc/response/CsReInviteToDriveResponse;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2245
    :cond_0
    iget-object v1, p0, Lcom/metamoji/cs/dc/params/CsReInviteToDriveParam;->driveId:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "/drives/%s/reinvite"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2246
    sget-object v2, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2247
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsReInviteToDriveParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 2249
    new-instance v3, Lcom/metamoji/cs/dc/CsCloudService$36;

    invoke-direct {v3, v1, v2, p0}, Lcom/metamoji/cs/dc/CsCloudService$36;-><init>(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 2263
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2266
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsReInviteToDriveResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2268
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeRegisterWithParams(Lcom/metamoji/cs/dc/params/CsRegisterParam;)Lcom/metamoji/cs/dc/response/CsRegisterResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 519
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 520
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsRegisterParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 522
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$7;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$7;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 545
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 548
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsRegisterResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 550
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeRenameDriveWithParams(Lcom/metamoji/cs/dc/params/CsRenameDriveParam;)Lcom/metamoji/cs/dc/response/CsRenameDriveResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2121
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2122
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsRenameDriveParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 2124
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$33;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$33;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 2141
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2144
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsRenameDriveResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2146
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeResetPasswordWithParams(Lcom/metamoji/cs/dc/params/CsResetPasswordParam;)Lcom/metamoji/cs/dc/response/CsResetPasswordResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 805
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 806
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsResetPasswordParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 808
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$12;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$12;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 828
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 831
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsResetPasswordResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 833
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeReverseLinkWithParams(Lcom/metamoji/cs/dc/params/CsReverseLinkParam;)Lcom/metamoji/cs/dc/response/CsReverseLinkResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3254
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 3255
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsReverseLinkParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 3257
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$55;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$55;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 3279
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 3282
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsReverseLinkResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3284
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeSetClientFileWithParams(Lcom/metamoji/cs/dc/params/CsSetClientFileParam;)Lcom/metamoji/cs/dc/response/CsSetClientFileResponse;
    .locals 2

    .line 2826
    sget-object v0, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2829
    new-instance v1, Lcom/metamoji/cs/dc/CsCloudService$45;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/cs/dc/CsCloudService$45;-><init>(Lcom/metamoji/cs/dc/params/CsSetClientFileParam;Lcom/metamoji/cs/CsHttpClientMethod;)V

    .line 2850
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2853
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsSetClientFileResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2855
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static executeSetClientSettingsWithParams(Lcom/metamoji/cs/dc/params/CsSetClientSettingsParam;)Lcom/metamoji/cs/dc/response/CsSetClientSettingsResponse;
    .locals 2

    .line 2794
    sget-object v0, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2795
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsSetClientSettingsParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 2797
    new-instance v1, Lcom/metamoji/cs/dc/CsCloudService$44;

    invoke-direct {v1, v0, p0}, Lcom/metamoji/cs/dc/CsCloudService$44;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 2811
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2814
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsSetClientSettingsResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2816
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static executeSimulationPurchaseWithParams(Lcom/metamoji/cs/dc/params/CsSimulationPurchaseParam;)Lcom/metamoji/cs/dc/response/CsSimulationPurchaseResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1329
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 1330
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsSimulationPurchaseParam;->getParamDic()Ljava/util/ArrayList;

    move-result-object p0

    .line 1332
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$23;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$23;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/util/ArrayList;)V

    .line 1355
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 1358
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsSimulationPurchaseResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1360
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeUnlockUserWithParams(Lcom/metamoji/cs/dc/params/CsUnlockUserParam;)Lcom/metamoji/cs/dc/response/CsUnlockUserResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 902
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 903
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsUnlockUserParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 905
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$14;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$14;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 925
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 928
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsUnlockUserResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 930
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeUnreferenceDriveWithParams(Lcom/metamoji/cs/dc/params/CsDeleteMemberToDriveParam;)Lcom/metamoji/cs/dc/response/CsDeleteMemberToDriveResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2281
    :cond_0
    iget-object p0, p0, Lcom/metamoji/cs/dc/params/CsDeleteMemberToDriveParam;->driveId:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "/drives/%s/members/own"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2282
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->DELETE:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2284
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$37;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/cs/dc/CsCloudService$37;-><init>(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;)V

    .line 2301
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2304
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsDeleteMemberToDriveResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2306
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeUpdateClassBoxInfoWithParams(Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam;)Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3128
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 3129
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 3131
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$52;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$52;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 3148
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 3151
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 3153
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeUpdateEntryHiddenWithParams(Lcom/metamoji/cs/dc/params/CsUpdateEntryHiddenParam;)Lcom/metamoji/cs/dc/response/CsUpdateEntryHiddenResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2962
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 2963
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsUpdateEntryHiddenParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 2965
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$48;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$48;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 2984
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 2987
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsUpdateEntryHiddenResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2989
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeUpdateMemberTypeWithParams(Lcom/metamoji/cs/dc/params/CsUpdateMemberTypeParams;)Lcom/metamoji/cs/dc/response/CsUpdateMemberTypeResponse;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1964
    :cond_0
    iget-object v1, p0, Lcom/metamoji/cs/dc/params/CsUpdateMemberTypeParams;->driveId:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "/drives/%s/members/type"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1965
    sget-object v2, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 1966
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsUpdateMemberTypeParams;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 1968
    new-instance v3, Lcom/metamoji/cs/dc/CsCloudService$29;

    invoke-direct {v3, v1, v2, p0}, Lcom/metamoji/cs/dc/CsCloudService$29;-><init>(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 1982
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 1985
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsUpdateMemberTypeResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1987
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeUpdateUserInfoWithParams(Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;)Lcom/metamoji/cs/dc/response/CsUpdateUserInfoResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 618
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->PUT:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 619
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 621
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$9;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$9;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 645
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 648
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsUpdateUserInfoResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 650
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 9

    const/4 v1, 0x0

    .line 1560
    :try_start_0
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 1561
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 1564
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isAppLicenseValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1570
    const-string v2, "mazec"

    invoke-virtual {v0, v2}, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->getServiceSetting(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1573
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v4, Lcom/metamoji/cs/dc/CsCloudService$24;

    invoke-direct {v4, v2}, Lcom/metamoji/cs/dc/CsCloudService$24;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1582
    :cond_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/metamoji/forSchool/ScSchoolManager;->updateSchoolUserLicense(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V

    goto :goto_0

    .line 1587
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$25;

    invoke-direct {v2}, Lcom/metamoji/cs/dc/CsCloudService$25;-><init>()V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1596
    :goto_0
    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithParams(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_17

    .line 1598
    :try_start_1
    iget v0, v2, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v3, 0x6a

    if-eq v0, v3, :cond_3

    iget v0, v2, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 v3, 0x7b

    if-ne v0, v3, :cond_17

    .line 1599
    :cond_3
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v4

    .line 1604
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->getDisconnectLockObject()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1605
    :try_start_2
    invoke-virtual {v4}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 1607
    iget v0, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v6, 0x4

    if-eq v0, v6, :cond_4

    goto/16 :goto_a

    .line 1612
    :cond_4
    iget-object v0, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_9

    .line 1615
    :cond_5
    iget-object v0, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_8

    .line 1618
    :cond_6
    iget-object v0, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_7

    .line 1622
    :cond_7
    iget-boolean v0, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autologin:Z

    if-eqz v0, :cond_8

    .line 1623
    iget-object v1, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    .line 1624
    iget-object v0, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    move-object v7, v0

    move-object v6, v1

    goto :goto_1

    :cond_8
    move-object v6, v1

    move-object v7, v6

    .line 1627
    :goto_1
    iget-object v0, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_9
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    iget-object v0, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    .line 1628
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_6

    .line 1634
    :cond_c
    new-instance v0, Lcom/metamoji/cs/dc/params/CsLoginParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsLoginParam;-><init>()V

    .line 1636
    iget-object v1, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsLoginParam;->coLoginId:Ljava/lang/String;

    .line 1637
    iget-object v1, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsLoginParam;->loginName:Ljava/lang/String;

    .line 1639
    iget-object v1, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsLoginParam;->userId:Ljava/lang/String;

    .line 1640
    iget-object v1, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    iget-object v1, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    goto :goto_3

    :cond_e
    :goto_2
    move-object v1, v6

    :goto_3
    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsLoginParam;->password:Ljava/lang/String;

    .line 1641
    iget-object v1, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    goto :goto_4

    :cond_f
    iget-object v1, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    goto :goto_5

    :cond_10
    :goto_4
    move-object v1, v7

    :goto_5
    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsLoginParam;->qwd:Ljava/lang/String;

    .line 1643
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeLoginWithParam(Lcom/metamoji/cs/dc/params/CsLoginParam;)Lcom/metamoji/cs/dc/response/CsLoginResponse;

    move-result-object v8

    .line 1644
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_17

    .line 1646
    :try_start_3
    iget v0, v8, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    if-nez v0, :cond_17

    .line 1648
    iget-boolean v0, v5, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->alreadyLogined:Z

    if-nez v0, :cond_11

    .line 1653
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v3, Lcom/metamoji/cs/dc/CsCloudService$26;

    invoke-direct/range {v3 .. v8}, Lcom/metamoji/cs/dc/CsCloudService$26;-><init>(Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;Lcom/metamoji/cs/dc/user/CsDCUserInfo;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cs/dc/response/CsLoginResponse;)V

    invoke-virtual {v0, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 1701
    :cond_11
    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithParams(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p0

    .line 1631
    :cond_12
    :goto_6
    :try_start_4
    monitor-exit v3

    return-object v2

    .line 1619
    :cond_13
    :goto_7
    monitor-exit v3

    return-object v2

    .line 1616
    :cond_14
    :goto_8
    monitor-exit v3

    return-object v2

    .line 1613
    :cond_15
    :goto_9
    monitor-exit v3

    return-object v2

    .line 1608
    :cond_16
    :goto_a
    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1644
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v1, v2

    goto :goto_b

    :cond_17
    return-object v2

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 1708
    :goto_b
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static executeWithParams(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 1

    .line 1767
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService$paramClass;->valueOf(Ljava/lang/String;)Lcom/metamoji/cs/dc/CsCloudService$paramClass;

    move-result-object v0

    .line 1768
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/CsCloudService$paramClass;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 1860
    :pswitch_1
    check-cast p0, Lcom/metamoji/cs/dc/params/CsReverseLinkParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeReverseLinkWithParams(Lcom/metamoji/cs/dc/params/CsReverseLinkParam;)Lcom/metamoji/cs/dc/response/CsReverseLinkResponse;

    move-result-object p0

    return-object p0

    .line 1858
    :pswitch_2
    check-cast p0, Lcom/metamoji/cs/dc/params/CsCreateLinkParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeCreateLinkWithParams(Lcom/metamoji/cs/dc/params/CsCreateLinkParam;)Lcom/metamoji/cs/dc/response/CsCreateLinkResponse;

    move-result-object p0

    return-object p0

    .line 1856
    :pswitch_3
    check-cast p0, Lcom/metamoji/cs/dc/params/CsAddApiLogParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeAddApiLogWithParams(Lcom/metamoji/cs/dc/params/CsAddApiLogParam;)Lcom/metamoji/cs/dc/response/CsAddApiLogResponse;

    move-result-object p0

    return-object p0

    .line 1854
    :pswitch_4
    check-cast p0, Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeClassRoomLoginWithParam(Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;)Lcom/metamoji/cs/dc/response/CsLoginResponse;

    move-result-object p0

    return-object p0

    .line 1852
    :pswitch_5
    check-cast p0, Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetClassRoomLoginInfoWithParam(Lcom/metamoji/cs/dc/params/CsGetClassRoomLoginInfoParam;)Lcom/metamoji/cs/dc/response/CsGetClassRoomLoginInfoResponse;

    move-result-object p0

    return-object p0

    .line 1850
    :pswitch_6
    check-cast p0, Lcom/metamoji/cs/dc/params/CsGetStorageUsageParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetStorageUsageWithParams(Lcom/metamoji/cs/dc/params/CsGetStorageUsageParam;)Lcom/metamoji/cs/dc/response/CsGetStorageUsageResponse;

    move-result-object p0

    return-object p0

    .line 1848
    :pswitch_7
    check-cast p0, Lcom/metamoji/cs/dc/params/CsGetAllUsersParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetAllUsersWithParams(Lcom/metamoji/cs/dc/params/CsGetAllUsersParam;)Lcom/metamoji/cs/dc/response/CsGetAllUsersResponse;

    move-result-object p0

    return-object p0

    .line 1846
    :pswitch_8
    check-cast p0, Lcom/metamoji/cs/dc/params/CsGetAllGroupsParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetAllGroupsWithParams(Lcom/metamoji/cs/dc/params/CsGetAllGroupsParam;)Lcom/metamoji/cs/dc/response/CsGetAllGroupsResponse;

    move-result-object p0

    return-object p0

    .line 1844
    :pswitch_9
    check-cast p0, Lcom/metamoji/cs/dc/params/CsUpdateMemberTypeParams;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeUpdateMemberTypeWithParams(Lcom/metamoji/cs/dc/params/CsUpdateMemberTypeParams;)Lcom/metamoji/cs/dc/response/CsUpdateMemberTypeResponse;

    move-result-object p0

    return-object p0

    .line 1842
    :pswitch_a
    check-cast p0, Lcom/metamoji/cs/dc/params/CsDeleteDriveParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeDeleteDriveWithParams(Lcom/metamoji/cs/dc/params/CsDeleteDriveParam;)Lcom/metamoji/cs/dc/response/CsDeleteDriveResponse;

    move-result-object p0

    return-object p0

    .line 1840
    :pswitch_b
    check-cast p0, Lcom/metamoji/cs/dc/params/CsCreateDriveParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeCreateDriveWithParams(Lcom/metamoji/cs/dc/params/CsCreateDriveParam;)Lcom/metamoji/cs/dc/response/CsCreateDriveResponse;

    move-result-object p0

    return-object p0

    .line 1838
    :pswitch_c
    check-cast p0, Lcom/metamoji/cs/dc/params/CsRenameDriveParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeRenameDriveWithParams(Lcom/metamoji/cs/dc/params/CsRenameDriveParam;)Lcom/metamoji/cs/dc/response/CsRenameDriveResponse;

    move-result-object p0

    return-object p0

    .line 1836
    :pswitch_d
    check-cast p0, Lcom/metamoji/cs/dc/params/CsDeleteMemberToDriveParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeUnreferenceDriveWithParams(Lcom/metamoji/cs/dc/params/CsDeleteMemberToDriveParam;)Lcom/metamoji/cs/dc/response/CsDeleteMemberToDriveResponse;

    move-result-object p0

    return-object p0

    .line 1834
    :pswitch_e
    check-cast p0, Lcom/metamoji/cs/dc/params/CsReInviteToDriveParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeReInviteToDriveWithParam(Lcom/metamoji/cs/dc/params/CsReInviteToDriveParam;)Lcom/metamoji/cs/dc/response/CsReInviteToDriveResponse;

    move-result-object p0

    return-object p0

    .line 1832
    :pswitch_f
    check-cast p0, Lcom/metamoji/cs/dc/params/CsInviteToDriveParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeInviteToDriveWithParam(Lcom/metamoji/cs/dc/params/CsInviteToDriveParam;)Lcom/metamoji/cs/dc/response/CsInviteToDriveResponse;

    move-result-object p0

    return-object p0

    .line 1830
    :pswitch_10
    check-cast p0, Lcom/metamoji/cs/dc/params/CsExcludeMemberFromDriveParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeExcludeMemberFromDriveWithParams(Lcom/metamoji/cs/dc/params/CsExcludeMemberFromDriveParam;)Lcom/metamoji/cs/dc/response/CsExcludeMemberFromDriveResponse;

    move-result-object p0

    return-object p0

    .line 1828
    :pswitch_11
    check-cast p0, Lcom/metamoji/cs/dc/params/CsGetShareInfoParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetShareInfoWithParams(Lcom/metamoji/cs/dc/params/CsGetShareInfoParam;)Lcom/metamoji/cs/dc/response/CsGetShareInfoResponse;

    move-result-object p0

    return-object p0

    .line 1826
    :pswitch_12
    check-cast p0, Lcom/metamoji/cs/dc/params/CsWithdrawParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithdrawWithParams(Lcom/metamoji/cs/dc/params/CsWithdrawParam;)Lcom/metamoji/cs/dc/response/CsWithdrawResponse;

    move-result-object p0

    return-object p0

    .line 1824
    :pswitch_13
    check-cast p0, Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeUpdateUserInfoWithParams(Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;)Lcom/metamoji/cs/dc/response/CsUpdateUserInfoResponse;

    move-result-object p0

    return-object p0

    .line 1822
    :pswitch_14
    check-cast p0, Lcom/metamoji/cs/dc/params/CsUnlockUserParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeUnlockUserWithParams(Lcom/metamoji/cs/dc/params/CsUnlockUserParam;)Lcom/metamoji/cs/dc/response/CsUnlockUserResponse;

    move-result-object p0

    return-object p0

    .line 1820
    :pswitch_15
    check-cast p0, Lcom/metamoji/cs/dc/params/CsResetPasswordParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeResetPasswordWithParams(Lcom/metamoji/cs/dc/params/CsResetPasswordParam;)Lcom/metamoji/cs/dc/response/CsResetPasswordResponse;

    move-result-object p0

    return-object p0

    .line 1818
    :pswitch_16
    check-cast p0, Lcom/metamoji/cs/dc/params/CsLoginParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeLoginWithParam(Lcom/metamoji/cs/dc/params/CsLoginParam;)Lcom/metamoji/cs/dc/response/CsLoginResponse;

    move-result-object p0

    return-object p0

    .line 1816
    :pswitch_17
    check-cast p0, Lcom/metamoji/cs/dc/params/CsLockUserParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeLockUserWithParams(Lcom/metamoji/cs/dc/params/CsLockUserParam;)Lcom/metamoji/cs/dc/response/CsLockUserResponse;

    move-result-object p0

    return-object p0

    .line 1770
    :pswitch_18
    check-cast p0, Lcom/metamoji/cs/dc/params/CsGetUserAndSystemInfoParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetUserAndSystemInfo2WithParams(Lcom/metamoji/cs/dc/params/CsGetUserAndSystemInfoParam;)Lcom/metamoji/cs/dc/response/CsGetUserAndSystemInfo2Response;

    move-result-object p0

    return-object p0

    .line 1814
    :pswitch_19
    check-cast p0, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetMaitenanceInfoWitParams(Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;)Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;

    move-result-object p0

    return-object p0

    .line 1812
    :pswitch_1a
    check-cast p0, Lcom/metamoji/cs/dc/params/CsGetDirectMessageParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetDirectMessageWithParams(Lcom/metamoji/cs/dc/params/CsGetDirectMessageParam;)Lcom/metamoji/cs/dc/response/CsGetDirectMessageResponse;

    move-result-object p0

    return-object p0

    .line 1810
    :pswitch_1b
    check-cast p0, Lcom/metamoji/cs/dc/params/CsDeleteDirectMessageParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeDeleteDirectMessageWithParams(Lcom/metamoji/cs/dc/params/CsDeleteDirectMessageParam;)Lcom/metamoji/cs/dc/response/CsDeleteDirectMessageResponse;

    move-result-object p0

    return-object p0

    .line 1808
    :pswitch_1c
    check-cast p0, Lcom/metamoji/cs/dc/params/CsChangePasswordParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeChangePasswordWithParams(Lcom/metamoji/cs/dc/params/CsChangePasswordParam;)Lcom/metamoji/cs/dc/response/CsChangePasswordResponse;

    move-result-object p0

    return-object p0

    .line 1806
    :pswitch_1d
    check-cast p0, Lcom/metamoji/cs/dc/params/CsAgreeEulaParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeAgreeEULAWithParams(Lcom/metamoji/cs/dc/params/CsAgreeEulaParam;)Lcom/metamoji/cs/dc/response/CsAgreeEulaResponse;

    move-result-object p0

    return-object p0

    .line 1804
    :pswitch_1e
    check-cast p0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeUpdateClassBoxInfoWithParams(Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam;)Lcom/metamoji/cs/dc/response/CsUpdateClassBoxResponse;

    move-result-object p0

    return-object p0

    .line 1802
    :pswitch_1f
    check-cast p0, Lcom/metamoji/cs/dc/params/CsJoinClassBoxParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeJoinClassBoxWithParams(Lcom/metamoji/cs/dc/params/CsJoinClassBoxParam;)Lcom/metamoji/cs/dc/response/CsJoinClassBoxResponse;

    move-result-object p0

    return-object p0

    .line 1800
    :pswitch_20
    check-cast p0, Lcom/metamoji/cs/dc/params/CsGetClassCodeParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetClassCodeWithParams(Lcom/metamoji/cs/dc/params/CsGetClassCodeParam;)Lcom/metamoji/cs/dc/response/CsGetClassCodeResponse;

    move-result-object p0

    return-object p0

    .line 1798
    :pswitch_21
    check-cast p0, Lcom/metamoji/cs/dc/params/CsCreateClassBoxParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeCreateClassBoxWithParams(Lcom/metamoji/cs/dc/params/CsCreateClassBoxParam;)Lcom/metamoji/cs/dc/response/CsCreateClassBoxResponse;

    move-result-object p0

    return-object p0

    .line 1796
    :pswitch_22
    check-cast p0, Lcom/metamoji/cs/dc/params/CsGetUserNamesParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetUserNamesWithParams(Lcom/metamoji/cs/dc/params/CsGetUserNamesParam;)Lcom/metamoji/cs/dc/response/CsGetUserNamesResponse;

    move-result-object p0

    return-object p0

    .line 1794
    :pswitch_23
    check-cast p0, Lcom/metamoji/cs/dc/params/CsGetDriveEntryInfoParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetDriveEntryInfoWithParams(Lcom/metamoji/cs/dc/params/CsGetDriveEntryInfoParam;)Lcom/metamoji/cs/dc/response/CsGetDriveEntryInfoResponse;

    move-result-object p0

    return-object p0

    .line 1792
    :pswitch_24
    check-cast p0, Lcom/metamoji/cs/dc/params/CsSetClientFileParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeSetClientFileWithParams(Lcom/metamoji/cs/dc/params/CsSetClientFileParam;)Lcom/metamoji/cs/dc/response/CsSetClientFileResponse;

    move-result-object p0

    return-object p0

    .line 1790
    :pswitch_25
    check-cast p0, Lcom/metamoji/cs/dc/params/CsGetClientFileParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetClientFileWithParams(Lcom/metamoji/cs/dc/params/CsGetClientFileParam;)Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;

    move-result-object p0

    return-object p0

    .line 1788
    :pswitch_26
    check-cast p0, Lcom/metamoji/cs/dc/params/CsSetClientSettingsParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeSetClientSettingsWithParams(Lcom/metamoji/cs/dc/params/CsSetClientSettingsParam;)Lcom/metamoji/cs/dc/response/CsSetClientSettingsResponse;

    move-result-object p0

    return-object p0

    .line 1786
    :pswitch_27
    check-cast p0, Lcom/metamoji/cs/dc/params/CsGetClientSettingsParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetClientSettingsWithParams(Lcom/metamoji/cs/dc/params/CsGetClientSettingsParam;)Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;

    move-result-object p0

    return-object p0

    .line 1784
    :pswitch_28
    check-cast p0, Lcom/metamoji/cs/dc/params/CsLogoutParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeLogoutWithParams(Lcom/metamoji/cs/dc/params/CsLogoutParam;)Lcom/metamoji/cs/dc/response/CsLogoutResponse;

    move-result-object p0

    return-object p0

    .line 1782
    :pswitch_29
    check-cast p0, Lcom/metamoji/cs/dc/params/CsUpdateEntryHiddenParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeUpdateEntryHiddenWithParams(Lcom/metamoji/cs/dc/params/CsUpdateEntryHiddenParam;)Lcom/metamoji/cs/dc/response/CsUpdateEntryHiddenResponse;

    move-result-object p0

    return-object p0

    .line 1780
    :pswitch_2a
    check-cast p0, Lcom/metamoji/cs/dc/params/CsGetUserInfoParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetUserInfoWithParams(Lcom/metamoji/cs/dc/params/CsGetUserInfoParam;)Lcom/metamoji/cs/dc/response/CsGetUserInfoResponse;

    move-result-object p0

    return-object p0

    .line 1778
    :pswitch_2b
    check-cast p0, Lcom/metamoji/cs/dc/params/CsGetPrivateDriveHomeParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetPrivateDriveHomeWithParams(Lcom/metamoji/cs/dc/params/CsGetPrivateDriveHomeParam;)Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;

    move-result-object p0

    return-object p0

    .line 1776
    :pswitch_2c
    check-cast p0, Lcom/metamoji/cs/dc/params/CsGetDriveEntryParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetDriveEntryWithParams(Lcom/metamoji/cs/dc/params/CsGetDriveEntryParam;)Lcom/metamoji/cs/dc/response/CsGetDriveEntryResponse;

    move-result-object p0

    return-object p0

    .line 1774
    :pswitch_2d
    check-cast p0, Lcom/metamoji/cs/dc/params/CsGetDriveHomeParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetDriveHomeWithParams(Lcom/metamoji/cs/dc/params/CsGetDriveHomeParam;)Lcom/metamoji/cs/dc/response/CsGetDriveHomeResponse;

    move-result-object p0

    return-object p0

    .line 1772
    :pswitch_2e
    check-cast p0, Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;

    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetDriveMemberListWithParams(Lcom/metamoji/cs/dc/params/CsGetDriveMemberListParam;)Lcom/metamoji/cs/dc/response/CsGetDriveMemberListResponse;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static executeWithdrawWithParams(Lcom/metamoji/cs/dc/params/CsWithdrawParam;)Lcom/metamoji/cs/dc/response/CsWithdrawResponse;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 568
    :cond_0
    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    .line 569
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsWithdrawParam;->stringify()Ljava/lang/String;

    move-result-object p0

    .line 571
    new-instance v2, Lcom/metamoji/cs/dc/CsCloudService$8;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/cs/dc/CsCloudService$8;-><init>(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)V

    .line 589
    sget-object p0, Lcom/metamoji/cs/dc/CsCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 592
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsWithdrawResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 594
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static getDisconnectLockObject()Ljava/lang/Object;
    .locals 1

    .line 58
    sget-object v0, Lcom/metamoji/cs/dc/CsCloudService;->m_disconnectLockObject:Ljava/lang/Object;

    return-object v0
.end method

.method private static prepareLoginInfo(Ljava/util/Map;)Lcom/metamoji/cs/dc/user/CsLoginInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;"
        }
    .end annotation

    .line 2616
    new-instance v0, Lcom/metamoji/cs/dc/user/CsLoginInfo;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/user/CsLoginInfo;-><init>()V

    .line 2617
    const-string v1, "serverURL"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsLoginInfo;->serverUrl:Ljava/lang/String;

    .line 2618
    const-string v1, "isOnPremise"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/metamoji/cs/dc/user/CsLoginInfo;->isOnPremise:Z

    .line 2619
    const-string v1, "isClassRoom"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/metamoji/cs/dc/user/CsLoginInfo;->isClassRoom:Z

    .line 2620
    const-string v1, "coLoginId"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsLoginInfo;->coLoginId:Ljava/lang/String;

    .line 2621
    const-string v1, "userId"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsLoginInfo;->userId:Ljava/lang/String;

    .line 2622
    const-string v1, "qwd"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/cs/dc/user/CsLoginInfo;->qwd:Ljava/lang/String;

    .line 2623
    const-string v1, "companyName"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/metamoji/cs/dc/user/CsLoginInfo;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method private static prepareLoginResponse(Lcom/metamoji/cs/dc/response/CsLoginResponse;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 128
    iget v0, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->errorCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->bodyMessage:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->bodyMessage:Ljava/util/HashMap;

    .line 130
    const-string v1, "companyId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyId:Ljava/lang/String;

    .line 131
    const-string v1, "loginName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->loginName:Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->restHost:Ljava/lang/String;

    .line 133
    const-string p1, "companyName"

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyName:Ljava/lang/String;

    .line 134
    const-string p1, "companyVersion"

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->companyVersion:I

    .line 135
    iput-boolean p2, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->isOnPremise:Z

    .line 136
    iput-boolean p3, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->isClassRoom:Z

    .line 137
    const-string p1, "serverDeviceId"

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->serverDeviceId:Ljava/lang/String;

    .line 138
    iput-object p4, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->coLoginId:Ljava/lang/String;

    .line 139
    iput-object p5, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->qwd:Ljava/lang/String;

    .line 140
    const-string p1, "uuid"

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->userId:Ljava/lang/String;

    .line 141
    const-string p1, "name"

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->name:Ljava/lang/String;

    .line 142
    const-string p1, "email"

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->email:Ljava/lang/String;

    .line 143
    const-string p1, "maintchkurl"

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 144
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->maintCheckURL:Ljava/lang/String;

    .line 147
    :cond_0
    const-string p1, "serverVersion"

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/metamoji/cs/dc/response/CsLoginResponse;->serverVersion:D

    :cond_1
    return-void
.end method

.method private static putResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 3

    const/16 v0, -0x64

    if-nez p0, :cond_0

    .line 1373
    iput v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    .line 1374
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Network_Error:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorMessage:Ljava/lang/String;

    const/16 p0, 0x1f4

    .line 1375
    iput p0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->httpStatusCode:I

    return-object p1

    .line 1379
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/cs/HttpClientResponseBean;->isSuccessStatusCode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xc8

    .line 1381
    iput v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->httpStatusCode:I

    const/4 v0, 0x0

    .line 1382
    iput v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    goto :goto_0

    .line 1385
    :cond_1
    iget v1, p0, Lcom/metamoji/cs/HttpClientResponseBean;->httpStatusCode:I

    iput v1, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->httpStatusCode:I

    .line 1386
    iput v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    .line 1387
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Network_Error:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorMessage:Ljava/lang/String;

    .line 1390
    :goto_0
    iget-object p0, p0, Lcom/metamoji/cs/HttpClientResponseBean;->body:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_1

    .line 1397
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "{}"

    :cond_3
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1398
    invoke-static {v0}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1403
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->bodyMessage:Ljava/util/HashMap;

    if-eqz p0, :cond_4

    .line 1406
    const-string v0, "data"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1408
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1409
    const-string v1, "errorCode"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1410
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1411
    const-string v2, "name"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorName:Ljava/lang/String;

    .line 1412
    const-string v2, "message"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorMessage:Ljava/lang/String;

    .line 1413
    iput v1, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    const/16 p0, 0x83

    if-ne v1, p0, :cond_4

    .line 1415
    const-string p0, "currentVersion"

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->currentEULAVersion:I

    .line 1416
    const-string p0, "requiredVersion"

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->requiredEULAVersion:I

    :catch_0
    :cond_4
    :goto_1
    return-object p1
.end method


# virtual methods
.method public ExecuteGetServerUrlWithParams(Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;)Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;
    .locals 5

    .line 2468
    new-instance v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;-><init>()V

    .line 2471
    :try_start_0
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v1

    .line 2472
    iget-object p1, p1, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;->coLoginId:Ljava/lang/String;

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->safeURLEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/metamoji/cs/CsCloudServiceContext;->getRootServer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mpsroot/RequestServlet?coLoginId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2474
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 2475
    new-instance p1, Lcom/metamoji/cs/CsHttpClient;

    invoke-direct {p1}, Lcom/metamoji/cs/CsHttpClient;-><init>()V

    .line 2477
    sget-object v3, Lcom/metamoji/cs/CsHttpClientMethod;->GET:Lcom/metamoji/cs/CsHttpClientMethod;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithURL(Ljava/net/URI;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object p1

    .line 2478
    invoke-static {p1, v0}, Lcom/metamoji/cs/dc/CsCloudService;->putResponseDataFromNewBean(Lcom/metamoji/cs/HttpClientResponseBean;Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    .line 2480
    iget p1, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->errorCode:I

    if-nez p1, :cond_3

    .line 2481
    iget-object p1, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->bodyMessage:Ljava/util/HashMap;

    const/16 v2, -0x64

    if-nez p1, :cond_0

    .line 2483
    iput v2, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->errorCode:I

    return-object v0

    .line 2485
    :cond_0
    const-string v3, "serverURL"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->serverUrl:Ljava/lang/String;

    .line 2486
    const-string v3, "isOnPremise"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->isOnPremise:Z

    .line 2490
    const-string v3, "isClassRoom"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/metamoji/cm/CmUtils;->toBool(Ljava/lang/Object;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->isClassRoom:Z

    .line 2492
    const-string v3, "errorCode"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 2496
    iput v3, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->errorCode:I

    .line 2497
    const-string v1, "errorMessage"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->errorMessage:Ljava/lang/String;

    return-object v0

    .line 2499
    :cond_1
    iget-object p1, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->serverUrl:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->serverUrl:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 2501
    iget-object p1, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->serverUrl:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/metamoji/cs/CsCloudServiceContext;->setRestHost(Ljava/lang/String;)V

    return-object v0

    .line 2505
    :cond_2
    iput v2, v0, Lcom/metamoji/cs/dc/response/CsGetServerUrlResponse;->errorCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p1

    .line 2511
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method
