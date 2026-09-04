.class public Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;
.super Lcom/metamoji/ns/service/NsCollaboURLConnection;
.source "ScCollaboURLConnectionForGetScoreList.java"


# instance fields
.field public companyId:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public needLog:Z

.field public password:Ljava/lang/String;

.field public qwd:Ljava/lang/String;

.field public roomIdList:Ljava/util/List;
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

    .line 35
    invoke-direct {p0, p1}, Lcom/metamoji/ns/service/NsCollaboURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    const/4 p1, 0x0

    .line 30
    iput-boolean p1, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->needLog:Z

    return-void
.end method


# virtual methods
.method public sendRequest()Z
    .locals 5

    .line 44
    iget-object v0, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->roomIdList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->companyId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->email:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->password:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->qwd:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->createAuthInfoParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 53
    :cond_1
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    .line 54
    const-string v3, "authInfo"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 57
    new-instance v0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList$1;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList$1;-><init>(Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;)V

    .line 61
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

    .line 65
    const-string v2, "[ScCollaboURLConnectionForGetScoreList] Invalid Parameter... paramDic : {0}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 68
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, "application/json"

    invoke-static {v1}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 70
    const-string v1, "param"

    invoke-virtual {v2, v1, v4, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 72
    const-string v0, "/cosmos/GetScoreList"

    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->baseURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForGetScoreList;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0

    :cond_3
    :goto_1
    return v1
.end method
