.class public abstract Lcom/metamoji/ns/service/NsCollaboURLConnection;
.super Ljava/lang/Object;
.source "NsCollaboURLConnection.java"


# static fields
.field private static final TEMP_FOLDER:Ljava/lang/String; = ".nsdownload"


# instance fields
.field protected m_bgTask:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/ns/task/NsCollaboBgTaskBase;",
            ">;"
        }
    .end annotation
.end field

.field protected m_downloadFile:Ljava/io/File;

.field protected m_downloadMode:Z

.field m_httpCall:Lokhttp3/Call;

.field public m_mimeType:Ljava/lang/String;

.field public m_responseData:Lcom/metamoji/df/model/ByteData;

.field public m_responseError:Lcom/metamoji/ns/service/NsCollaboServiceException;

.field public m_responseReasonPhrase:Ljava/lang/String;

.field public m_statusCode:I


# direct methods
.method protected constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_statusCode:I

    const/4 v1, 0x0

    .line 53
    iput-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_responseData:Lcom/metamoji/df/model/ByteData;

    .line 67
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_bgTask:Ljava/lang/ref/WeakReference;

    .line 68
    iput-boolean v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_downloadMode:Z

    return-void
.end method

.method public static baseURLForMMJEditor2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 100
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo$BuildOptions;->DIGITAL_CABINET_URL_BASE()Ljava/lang/String;

    move-result-object v0

    .line 103
    sget-boolean v1, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v1, :cond_0

    .line 104
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->dcServerURL()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_0
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 108
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 110
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeJsonValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 329
    const-string v0, "\""

    if-eqz p0, :cond_0

    .line 331
    :try_start_0
    invoke-static {p0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object p0
.end method


# virtual methods
.method protected addFieldToRequestHeader(Lokhttp3/Request;)V
    .locals 0

    return-void
.end method

.method protected baseURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 76
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo$BuildOptions;->DIGITAL_CABINET_URL_BASE()Ljava/lang/String;

    move-result-object v0

    .line 79
    sget-boolean v1, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v1, :cond_1

    .line 80
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 81
    const-string v1, "DevLobbyServer"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 84
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->dcServerURL()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 91
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected connectionAbort()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_httpCall:Lokhttp3/Call;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 300
    iput-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_httpCall:Lokhttp3/Call;

    .line 302
    :try_start_0
    invoke-interface {v0}, Lokhttp3/Call;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public connectionCancel()V
    .locals 0

    .line 312
    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->connectionAbort()V

    .line 313
    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->connectionDidFinishLoading()V

    return-void
.end method

.method protected connectionDidFinishLoading()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_bgTask:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 322
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 324
    invoke-virtual {v1, v0}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setShowProgress(Z)V

    :cond_2
    return-void
.end method

.method protected createAuthInfoParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 11

    .line 347
    invoke-static {}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getInstance()Lcom/metamoji/ns/NsCollaboDeviceInfo;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->valid()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    goto :goto_1

    .line 355
    :cond_0
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v7

    .line 356
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object v8

    if-eqz p4, :cond_1

    .line 369
    const-string/jumbo p3, "{ \"deviceID\":\"%s\", \"deviceCode\":\"%s\", \"authType\":\"cabinet\", \"userID\":\"%s\", \"qwd\":\"%s\", \"productName\":\"%s\", \"productVersion\":\"%s\", \"locale\":\"%s\", \"companyID\":\"%s\" }"

    goto :goto_0

    .line 372
    :cond_1
    const-string/jumbo p4, "{ \"deviceID\":\"%s\", \"deviceCode\":\"%s\", \"authType\":\"cabinet\", \"userID\":\"%s\", \"userPassword\":\"%s\", \"productName\":\"%s\", \"productVersion\":\"%s\", \"locale\":\"%s\", \"companyID\":\"%s\" }"

    move-object v10, p4

    move-object p4, p3

    move-object p3, v10

    .line 375
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->encodeJsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p4}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->encodeJsonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Android-Share-G-ClassRoom"

    move-object v9, p1

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 376
    const-string p2, "application/json"

    invoke-static {p2}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public downloadFileFromRequest()Ljava/io/File;
    .locals 1

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_downloadMode:Z

    .line 139
    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->sendRequest()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_downloadFile:Ljava/io/File;

    return-object v0
.end method

.method protected getRequest(Ljava/lang/String;)Z
    .locals 1

    .line 180
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 181
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->sendRequest(Lokhttp3/Request;)Z

    move-result p1

    return p1
.end method

.method protected postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z
    .locals 1

    .line 190
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 191
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->sendRequest(Lokhttp3/Request;)Z

    move-result p1

    return p1
.end method

.method public responseJsonFromRequest()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->sendRequest()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_0
    invoke-static {p0}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->parseResponseJson(Lcom/metamoji/ns/service/NsCollaboURLConnection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public responseStringFromRequest()Ljava/lang/String;
    .locals 5

    .line 153
    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->sendRequest()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 160
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_responseData:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v2}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_responseData:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v3}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v0, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 162
    const-string v2, "NsCollaboURLConnection.responseStringFromRequest"

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 163
    new-instance v2, Lcom/metamoji/ns/service/NsCollaboServiceException;

    const-string v3, "responseStringFromRequest"

    const-string v4, "cannot recompose strings."

    invoke-direct {v2, v0, v3, v4, v1}, Lcom/metamoji/ns/service/NsCollaboServiceException;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sendRequest()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected sendRequest(Lokhttp3/Request;)Z
    .locals 9

    .line 210
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_10

    .line 213
    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->connectionAbort()V

    .line 216
    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_bgTask:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 217
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskBase;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    :goto_1
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {v0, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setShowProgress(Z)V

    .line 222
    :cond_2
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->addFieldToRequestHeader(Lokhttp3/Request;)V

    const/4 v0, 0x0

    .line 227
    :try_start_0
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 228
    invoke-virtual {v3, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_httpCall:Lokhttp3/Call;

    .line 229
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 231
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v3

    iput v3, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_statusCode:I

    .line 232
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_3

    .line 234
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_responseReasonPhrase:Ljava/lang/String;

    .line 236
    :cond_3
    const-string v3, "content-type"

    invoke-virtual {p1, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 237
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v1

    :goto_2
    iput-object v3, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_mimeType:Ljava/lang/String;

    .line 238
    iget-object v3, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_httpCall:Lokhttp3/Call;

    if-nez v3, :cond_5

    .line 240
    iput-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_responseData:Lcom/metamoji/df/model/ByteData;

    goto/16 :goto_8

    .line 242
    :cond_5
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 244
    :try_start_2
    iget-boolean v4, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_downloadMode:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-eqz v4, :cond_9

    .line 247
    :try_start_3
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, ".nsdownload"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 249
    const-string v5, "nst"

    invoke-static {v5, v1, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 251
    :try_start_4
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 252
    :try_start_5
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 253
    :try_start_6
    invoke-static {v6, v5}, Lcom/metamoji/cm/CmUtils;->copyStream(Ljava/io/OutputStream;Ljava/io/InputStream;)Z

    .line 254
    iput-object v4, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_downloadFile:Ljava/io/File;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 256
    :try_start_7
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v5, :cond_6

    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    .line 262
    :cond_6
    :try_start_9
    new-instance v4, Lcom/metamoji/df/model/ByteData;

    invoke-direct {v4}, Lcom/metamoji/df/model/ByteData;-><init>()V

    iput-object v4, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_responseData:Lcom/metamoji/df/model/ByteData;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_7

    :catchall_0
    move-exception v4

    move-object v6, v1

    goto :goto_4

    :catchall_1
    move-exception v7

    .line 251
    :try_start_a
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v6

    :try_start_b
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v6

    move-object v8, v6

    move-object v6, v4

    move-object v4, v8

    :goto_4
    if-eqz v5, :cond_7

    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v5

    :try_start_d
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception v4

    goto :goto_6

    :catchall_6
    move-exception v5

    move-object v6, v4

    move-object v4, v5

    goto :goto_6

    :catchall_7
    move-exception v4

    move-object v6, v1

    :goto_6
    if-eqz v6, :cond_8

    .line 259
    :try_start_e
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 261
    :cond_8
    throw v4

    .line 265
    :cond_9
    new-instance v4, Lcom/metamoji/df/model/ByteData;

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/metamoji/df/model/ByteData;-><init>([B)V

    iput-object v4, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_responseData:Lcom/metamoji/df/model/ByteData;

    .line 267
    :goto_7
    monitor-exit v3

    :goto_8
    if-eqz p1, :cond_c

    goto :goto_a

    :catchall_8
    move-exception v4

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :try_start_f
    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :catchall_9
    move-exception v3

    goto :goto_9

    :catchall_a
    move-exception v3

    move-object p1, v1

    .line 271
    :goto_9
    :try_start_10
    iget-object v4, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_httpCall:Lokhttp3/Call;

    if-nez v4, :cond_b

    .line 273
    iput-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_responseData:Lcom/metamoji/df/model/ByteData;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    if-eqz p1, :cond_a

    .line 280
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 282
    :cond_a
    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->connectionAbort()V

    .line 283
    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->connectionDidFinishLoading()V

    return v0

    .line 276
    :cond_b
    :try_start_11
    const-string v1, "NsCollaboURLConnection.sendRequest"

    invoke-static {v3, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 277
    new-instance v1, Lcom/metamoji/ns/service/NsCollaboServiceException;

    const-string v4, "0"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v4, v3}, Lcom/metamoji/ns/service/NsCollaboServiceException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_responseError:Lcom/metamoji/ns/service/NsCollaboServiceException;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    if-eqz p1, :cond_c

    .line 280
    :goto_a
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 282
    :cond_c
    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->connectionAbort()V

    .line 283
    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->connectionDidFinishLoading()V

    .line 287
    iget-object p1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_responseError:Lcom/metamoji/ns/service/NsCollaboServiceException;

    if-nez p1, :cond_e

    .line 291
    iget-object p1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_responseData:Lcom/metamoji/df/model/ByteData;

    if-eqz p1, :cond_d

    goto :goto_b

    :cond_d
    move v2, v0

    :goto_b
    return v2

    .line 288
    :cond_e
    throw p1

    :catchall_b
    move-exception v0

    if-eqz p1, :cond_f

    .line 280
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 282
    :cond_f
    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->connectionAbort()V

    .line 283
    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboURLConnection;->connectionDidFinishLoading()V

    .line 284
    throw v0

    .line 211
    :cond_10
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "NsCollaboURLConnection.sendRequest() ... must be called from sub-thread."

    invoke-direct {p1, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
