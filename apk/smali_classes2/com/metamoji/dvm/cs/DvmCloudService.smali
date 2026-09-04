.class public Lcom/metamoji/dvm/cs/DvmCloudService;
.super Ljava/lang/Object;
.source "DvmCloudService.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final m_client:Lcom/metamoji/cs/CsHttpClient;

.field private static final m_pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/metamoji/dvm/cs/DvmCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    .line 38
    new-instance v0, Lcom/metamoji/cs/CsHttpClient;

    invoke-direct {v0}, Lcom/metamoji/cs/CsHttpClient;-><init>()V

    sput-object v0, Lcom/metamoji/dvm/cs/DvmCloudService;->m_client:Lcom/metamoji/cs/CsHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$executeDistributeMultipleNotesWithParams$0(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Lcom/metamoji/dvm/cs/DvmDistributeClassResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    const-string v0, "application/octet-stream"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 78
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v2, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 79
    invoke-virtual {v1, v2}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v1

    const-string v2, "authInfo"

    .line 80
    invoke-virtual {v1, v2, p0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p0

    const-string v1, "convertParam"

    .line 81
    invoke-virtual {p0, v1, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 83
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0}, Lokhttp3/RequestBody;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p2

    const-string v0, "fileEntity"

    invoke-virtual {p0, v0, p1, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 85
    :cond_0
    invoke-virtual {p0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p0

    .line 87
    new-instance p1, Ljava/net/URI;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->restHost:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "convert/DistributeClass"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 88
    sget-object p2, Lcom/metamoji/dvm/cs/DvmCloudService;->m_client:Lcom/metamoji/cs/CsHttpClient;

    sget-object p3, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    invoke-virtual {p2, p1, p3, p0}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithBody(Ljava/net/URI;Lcom/metamoji/cs/CsHttpClientMethod;Lokhttp3/RequestBody;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object p0

    .line 89
    invoke-static {p0}, Lcom/metamoji/dvm/cs/DvmCloudService;->prepareResultDictionaryWithResponse(Lcom/metamoji/cs/HttpClientResponseBean;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 91
    new-instance p1, Lcom/metamoji/dvm/cs/DvmDistributeClassResult;

    invoke-direct {p1}, Lcom/metamoji/dvm/cs/DvmDistributeClassResult;-><init>()V

    .line 92
    const-string p2, "responseCode"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p2

    iput p2, p1, Lcom/metamoji/dvm/cs/DvmDistributeClassResult;->responseCode:I

    .line 93
    const-string p2, "errorCode"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p2

    iput p2, p1, Lcom/metamoji/dvm/cs/DvmDistributeClassResult;->errorCode:I

    .line 94
    const-string p2, "errorMessage"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, p1, Lcom/metamoji/dvm/cs/DvmDistributeClassResult;->errorMessage:Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$executeGetDistributeStatusWithParams$1(Lcom/metamoji/cs/dc/user/CsDCUserInfo;Ljava/lang/String;)Lcom/metamoji/dvm/cs/DvmGetDistributeStatusResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/net/URI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->restHost:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "convert/GetDistributeStatus"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 127
    sget-object p0, Lcom/metamoji/dvm/cs/DvmCloudService;->m_client:Lcom/metamoji/cs/CsHttpClient;

    sget-object v1, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    invoke-virtual {p0, v0, v1, p1}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithURL(Ljava/net/URI;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object p0

    .line 128
    invoke-static {p0}, Lcom/metamoji/dvm/cs/DvmCloudService;->prepareResultDictionaryWithResponse(Lcom/metamoji/cs/HttpClientResponseBean;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 130
    new-instance p1, Lcom/metamoji/dvm/cs/DvmGetDistributeStatusResult;

    invoke-direct {p1}, Lcom/metamoji/dvm/cs/DvmGetDistributeStatusResult;-><init>()V

    .line 131
    const-string v0, "responseCode"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p1, Lcom/metamoji/dvm/cs/DvmGetDistributeStatusResult;->responseCode:I

    .line 132
    const-string v0, "errorCode"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    iput v0, p1, Lcom/metamoji/dvm/cs/DvmGetDistributeStatusResult;->errorCode:I

    .line 133
    const-string v0, "errorMessage"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/dvm/cs/DvmGetDistributeStatusResult;->errorMessage:Ljava/lang/String;

    .line 134
    const-string v0, "statusList"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    iput-object p0, p1, Lcom/metamoji/dvm/cs/DvmGetDistributeStatusResult;->statusList:Ljava/util/List;

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$executePostCrashLogsWithParams$2(Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;)Lcom/metamoji/dvm/cs/DvmPostCrashLogsResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v0

    .line 284
    const-string v1, "application/octet-stream"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 286
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 287
    invoke-virtual {v2, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    const-string v3, "userId"

    .line 288
    invoke-virtual {p0}, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    const-string v3, "companyId"

    .line 289
    invoke-virtual {p0}, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;->getCompanyId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    const-string v3, "deviceName"

    .line 290
    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    const-string v3, "productName"

    .line 291
    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    const-string v3, "productVersion"

    .line 292
    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getProductVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    const-string v3, "locale"

    .line 293
    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    const-string v3, "timezone"

    .line 294
    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getTimeZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    .line 295
    invoke-virtual {p0}, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    const-string v3, "keyword"

    invoke-virtual {p0}, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;->getKeyword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;->isManual()Z

    move-result v3

    const-string v4, "uploadMethod"

    if-eqz v3, :cond_1

    .line 299
    const-string v3, "Manual"

    invoke-virtual {v2, v4, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    .line 301
    :cond_1
    const-string v3, "Auto"

    invoke-virtual {v2, v4, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 303
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;->getLogFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;->getLogFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v1}, Lokhttp3/RequestBody;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p0

    const-string v1, "fileEntity"

    invoke-virtual {v2, v1, v3, p0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 304
    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p0

    .line 306
    new-instance v1, Ljava/net/URI;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getRootServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "crashlogs/upload"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 307
    sget-object v0, Lcom/metamoji/dvm/cs/DvmCloudService;->m_client:Lcom/metamoji/cs/CsHttpClient;

    sget-object v2, Lcom/metamoji/cs/CsHttpClientMethod;->POST:Lcom/metamoji/cs/CsHttpClientMethod;

    invoke-virtual {v0, v1, v2, p0}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithBody(Ljava/net/URI;Lcom/metamoji/cs/CsHttpClientMethod;Lokhttp3/RequestBody;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object p0

    .line 308
    invoke-static {p0}, Lcom/metamoji/dvm/cs/DvmCloudService;->prepareResultDictionaryWithResponse(Lcom/metamoji/cs/HttpClientResponseBean;)Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 310
    const-string v1, "errorCode"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v1

    .line 311
    const-string v2, "errorMessage"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 312
    const-string v3, "result"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_2

    .line 316
    const-string v0, "logId"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 317
    const-string v3, "requestDate"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object p0, v0

    .line 319
    :goto_1
    new-instance v3, Lcom/metamoji/dvm/cs/DvmPostCrashLogsResult;

    invoke-direct {v3, v0, p0, v1, v2}, Lcom/metamoji/dvm/cs/DvmPostCrashLogsResult;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v3

    :cond_3
    return-object v0
.end method

.method private static prepareAuthInfoWithUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cs/dc/user/CsDCUserInfo;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    const-string v1, "authType"

    const-string v2, "cabinet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 173
    const-string v1, "companyLoginName"

    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->coLoginId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 176
    const-string v1, "companyId"

    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 179
    const-string v1, "loginName"

    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 182
    const-string v1, "userId"

    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 185
    const-string v1, "password"

    iget-object v2, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_4
    iget-object v1, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 188
    const-string v1, "qwd"

    iget-object p0, p0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_5
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object p0

    .line 191
    const-string v1, "productName"

    invoke-virtual {p0}, Lcom/metamoji/cs/CsCloudServiceContext;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v1, "productVersion"

    invoke-virtual {p0}, Lcom/metamoji/cs/CsCloudServiceContext;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "locale"

    invoke-virtual {p0}, Lcom/metamoji/cs/CsCloudServiceContext;->getLocale()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static prepareConvertParam(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/cs/DvmDistributeClassParams;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;

    .line 202
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 203
    iget-object v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->title:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 204
    const-string v4, "title"

    iget-object v5, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->title:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    iget-object v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->date:Ljava/util/Date;

    if-eqz v4, :cond_1

    .line 206
    iget-object v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->date:Ljava/util/Date;

    invoke-static {v4}, Lcom/metamoji/ns/NsShareViewCommand;->convertDateFromDate(Ljava/util/Date;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "openDate"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 211
    iget-object v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->driveId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 212
    iget-object v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->driveId:Ljava/lang/String;

    goto :goto_1

    .line 215
    :cond_2
    invoke-static {}, Lcom/metamoji/dvm/DvmUtil;->getPrivateDrive()Ljava/lang/String;

    move-result-object v4

    .line 217
    :goto_1
    const-string v5, "orgDriveId"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->docId:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 220
    const-string v4, "orgDocumentId"

    iget-object v5, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->docId:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_3
    iget-object v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->secureRoom:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 224
    const-string v4, "secureRoom"

    iget-object v5, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->secureRoom:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_4
    iget-object v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->secureRoomPassword:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 227
    const-string v4, "secureRoomPassword"

    iget-object v5, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->secureRoomPassword:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_5
    iget v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->validFlag:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "validFlag"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->startTime:Ljava/util/Date;

    if-eqz v4, :cond_6

    .line 232
    iget-object v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->startTime:Ljava/util/Date;

    invoke-static {v4}, Lcom/metamoji/ns/NsShareViewCommand;->convertDateFromDate(Ljava/util/Date;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "startTime"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_6
    iget-object v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->endTime:Ljava/util/Date;

    if-eqz v4, :cond_7

    .line 235
    iget-object v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->endTime:Ljava/util/Date;

    invoke-static {v4}, Lcom/metamoji/ns/NsShareViewCommand;->convertDateFromDate(Ljava/util/Date;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "endTime"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_7
    iget v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->beforeMode2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "beforeMode2"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->testingMode2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "testingMode2"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->afterMode2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "afterMode2"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->reportMode2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "reportMode2"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->endReportMode2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "endReportMode2"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->remandMode2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "remandMode2"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->lockMode2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "lockMode2"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->settingList:Ljava/util/List;

    if-eqz v4, :cond_8

    .line 246
    const-string v4, "settingList"

    iget-object v5, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->settingList:Ljava/util/List;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_8
    iget-object v4, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->driveInfoList:Ljava/util/List;

    if-eqz v4, :cond_9

    .line 249
    const-string v4, "driveInfoList"

    iget-object v2, v2, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->driveInfoList:Ljava/util/List;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_9
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 254
    :cond_a
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 255
    const-string v1, "fileSetList"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {p0}, Lcom/metamoji/dvm/cs/DvmCloudService;->prepareJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static prepareJsonString(Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 263
    :try_start_0
    invoke-static {p0}, Lcom/metamoji/cm/CmJson;->createJsonFromMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 265
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static prepareResultDictionaryWithResponse(Lcom/metamoji/cs/HttpClientResponseBean;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cs/HttpClientResponseBean;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 152
    iget-object v1, p0, Lcom/metamoji/cs/HttpClientResponseBean;->body:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/cs/HttpClientResponseBean;->body:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    iget-object p0, p0, Lcom/metamoji/cs/HttpClientResponseBean;->body:Ljava/lang/String;

    .line 159
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-static {v1}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public executeDistributeClassWithParams(Lcom/metamoji/dvm/cs/DvmDistributeClassParams;)Lcom/metamoji/dvm/cs/DvmDistributeClassResult;
    .locals 1

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0, v0}, Lcom/metamoji/dvm/cs/DvmCloudService;->executeDistributeMultipleNotesWithParams(Ljava/util/List;)Lcom/metamoji/dvm/cs/DvmDistributeClassResult;

    move-result-object p1

    return-object p1
.end method

.method public executeDistributeMultipleNotesWithParams(Ljava/util/List;)Lcom/metamoji/dvm/cs/DvmDistributeClassResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/dvm/cs/DvmDistributeClassParams;",
            ">;)",
            "Lcom/metamoji/dvm/cs/DvmDistributeClassResult;"
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/metamoji/dvm/cs/DvmCloudService;->prepareAuthInfoWithUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/dvm/cs/DvmCloudService;->prepareJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {p1}, Lcom/metamoji/dvm/cs/DvmCloudService;->prepareConvertParam(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2

    const/4 v3, 0x0

    .line 61
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;

    .line 62
    iget-object v3, p1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->driveId:Ljava/lang/String;

    iget-object p1, p1, Lcom/metamoji/dvm/cs/DvmDistributeClassParams;->docId:Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/metamoji/dvm/DvmUtil;->makeDocumentArchiveFile(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 63
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;->getArchiveFile()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithArchiveFile;->getArchiveFile()Ljava/io/File;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    move-object p1, v5

    .line 71
    :goto_1
    new-instance v3, Lcom/metamoji/dvm/cs/DvmCloudService$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v2, p1, v0}, Lcom/metamoji/dvm/cs/DvmCloudService$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V

    .line 101
    sget-object p1, Lcom/metamoji/dvm/cs/DvmCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 104
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dvm/cs/DvmDistributeClassResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 106
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v5
.end method

.method public executeGetDistributeStatusWithParams(Lcom/metamoji/dvm/cs/DvmGetDistributeStatusParams;)Lcom/metamoji/dvm/cs/DvmGetDistributeStatusResult;
    .locals 4

    .line 114
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 119
    const-string v2, "authInfo"

    invoke-static {v0}, Lcom/metamoji/dvm/cs/DvmCloudService;->prepareAuthInfoWithUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget v2, p1, Lcom/metamoji/dvm/cs/DvmGetDistributeStatusParams;->offset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "offset"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget p1, p1, Lcom/metamoji/dvm/cs/DvmGetDistributeStatusParams;->limit:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "limit"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {v1}, Lcom/metamoji/dvm/cs/DvmCloudService;->prepareJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 124
    new-instance v1, Lcom/metamoji/dvm/cs/DvmCloudService$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lcom/metamoji/dvm/cs/DvmCloudService$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/cs/dc/user/CsDCUserInfo;Ljava/lang/String;)V

    .line 141
    sget-object p1, Lcom/metamoji/dvm/cs/DvmCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 144
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dvm/cs/DvmGetDistributeStatusResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 146
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public executePostCrashLogsWithParams(Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;)Lcom/metamoji/dvm/cs/DvmPostCrashLogsResult;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 281
    :cond_0
    new-instance v1, Lcom/metamoji/dvm/cs/DvmCloudService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/metamoji/dvm/cs/DvmCloudService$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/dvm/cs/DvmPostCrashLogsParams;)V

    .line 325
    sget-object p1, Lcom/metamoji/dvm/cs/DvmCloudService;->m_pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 328
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dvm/cs/DvmPostCrashLogsResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 330
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method
