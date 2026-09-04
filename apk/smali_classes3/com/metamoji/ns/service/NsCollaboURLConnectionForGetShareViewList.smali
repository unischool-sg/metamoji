.class public Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;
.super Lcom/metamoji/ns/service/NsCollaboURLConnection;
.source "NsCollaboURLConnectionForGetShareViewList.java"


# instance fields
.field public companyId:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public qwd:Ljava/lang/String;

.field public searchCondDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public shareDocListJson:Ljava/lang/String;

.field public sortCondList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/metamoji/ns/service/NsCollaboURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    return-void
.end method


# virtual methods
.method public sendRequest()Z
    .locals 13

    .line 50
    invoke-static {}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getInstance()Lcom/metamoji/ns/NsCollaboDeviceInfo;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->valid()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->email:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->password:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->qwd:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->companyId:Ljava/lang/String;

    if-nez v1, :cond_1

    return v2

    .line 61
    :cond_1
    const-string v1, "/mmjcloud/ShareViewGetList"

    invoke-virtual {p0, v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->baseURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v8

    .line 66
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object v9

    .line 68
    new-instance v3, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v3}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v4, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v3, v4}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v11

    .line 76
    iget-object v3, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->qwd:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string/jumbo v4, "{ \"deviceID\":\"%s\", \"deviceCode\":\"%s\", \"authType\":\"cabinet\", \"userID\":\"%s\", \"userPassword\":\"%s\", \"productName\":\"%s\", \"productVersion\":\"%s\", \"locale\":\"%s\", \"companyID\":\"%s\" }"

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "{ \"deviceID\":\"%s\", \"deviceCode\":\"%s\", \"authType\":\"cabinet\", \"userID\":\"%s\", \"qwd\":\"%s\", \"productName\":\"%s\", \"productVersion\":\"%s\", \"locale\":\"%s\", \"companyID\":\"%s\" }"

    :goto_0
    move-object v12, v4

    if-nez v3, :cond_3

    .line 77
    iget-object v3, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->password:Ljava/lang/String;

    :cond_3
    move-object v6, v3

    .line 78
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->getDeviceCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->email:Ljava/lang/String;

    iget-object v10, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->companyId:Ljava/lang/String;

    const-string v7, "Android-Share-G-ClassRoom"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v3, "application/json"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-static {v0, v4}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 83
    const-string v4, "authInfo"

    const/4 v5, 0x0

    invoke-virtual {v11, v4, v5, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 86
    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->searchCondDic:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 88
    const-string/jumbo v4, "startOpenDate"

    invoke-static {v0, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 89
    iget-object v4, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->searchCondDic:Ljava/util/Map;

    const-string v6, "endOpenDate"

    invoke-static {v4, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 90
    iget-object v6, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->searchCondDic:Ljava/util/Map;

    const-string v7, "includeNotUseOpenDate"

    invoke-static {v6, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_4

    .line 92
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 93
    const-string/jumbo v7, "true"

    goto :goto_1

    .line 95
    :cond_4
    const-string v7, "false"

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    .line 97
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v7, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v4, "{ \"includeNotUseOpenDate\":%s, \"includeUseOpenDate\":true, \"startOpenDate\":%d, \"endOpenDate\":%d, \"includeHidden\":false }"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 100
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v7, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v4, "{ \"includeNotUseOpenDate\":%s, \"includeUseOpenDate\":true, \"startOpenDate\":%d, \"includeHidden\":false }"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    .line 103
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v7, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v4, "{ \"includeNotUseOpenDate\":%s, \"includeUseOpenDate\":true, \"endOpenDate\":%d, \"includeHidden\":false }"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_8

    .line 106
    const-string/jumbo v0, "{ \"includeNotUseOpenDate\":%s, \"includeUseOpenDate\":false, \"includeHidden\":false }"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 109
    :cond_8
    const-string/jumbo v0, "{ \"includeNotUseOpenDate\":true, \"includeUseOpenDate\":true, \"includeHidden\":false }"

    :goto_2
    if-eqz v0, :cond_9

    .line 112
    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-static {v0, v4}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 113
    const-string v4, "narrowCond"

    invoke-virtual {v11, v4, v5, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 118
    :cond_9
    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->sortCondList:Ljava/util/List;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 119
    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->sortCondList:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/metamoji/ns/NsCollaboUtils;->jointString(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "{ \"conditionList\":[ %s ] }"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v0, v2}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 121
    const-string/jumbo v2, "sortCond"

    invoke-virtual {v11, v2, v5, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 125
    :cond_a
    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->shareDocListJson:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 126
    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->shareDocListJson:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v0, v2}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 128
    const-string/jumbo v2, "shareDocList"

    invoke-virtual {v11, v2, v5, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 131
    :cond_b
    invoke-virtual {v11}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForGetShareViewList;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0

    :cond_c
    :goto_3
    return v2
.end method
