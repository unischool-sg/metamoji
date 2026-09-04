.class public Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;
.super Lcom/metamoji/ns/service/NsCollaboURLConnection;
.source "ScCollaboURLConnectionForGetTestingLogList.java"


# instance fields
.field public companyId:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public qwd:Ljava/lang/String;

.field public roomId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/metamoji/ns/service/NsCollaboURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    return-void
.end method


# virtual methods
.method public sendRequest()Z
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;->roomId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;->companyId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;->email:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;->password:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;->qwd:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;->createAuthInfoParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 51
    :cond_1
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    .line 52
    const-string v3, "authInfo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 55
    new-instance v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList$1;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList$1;-><init>(Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;)V

    .line 58
    :try_start_0
    invoke-static {v0}, Lcom/metamoji/cm/CmJson;->createJsonValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v3, v4

    :goto_0
    if-nez v3, :cond_2

    .line 62
    const-string v2, "[ScCollaboURLConnectionForGetTestingLogList] Invalid Parameter... paramDic : {0}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 65
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "application/json"

    invoke-static {v1}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 67
    const-string v1, "param"

    invoke-virtual {v2, v1, v4, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 69
    const-string v0, "/cosmos/GetTestingLogList"

    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;->baseURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetTestingLogList;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0

    :cond_3
    :goto_1
    return v1
.end method
