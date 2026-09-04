.class public Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;
.super Lcom/metamoji/ns/service/NsCollaboURLConnection;
.source "ScCollaboURLConnectionForUpdateDeadlineInfo.java"


# instance fields
.field public companyId:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public endDate:Ljava/util/Date;

.field public endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

.field public password:Ljava/lang/String;

.field public prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

.field public qwd:Ljava/lang/String;

.field public roomId:Ljava/lang/String;

.field public startDate:Ljava/util/Date;

.field public validFlag:I


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/metamoji/ns/service/NsCollaboURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    return-void
.end method


# virtual methods
.method public sendRequest()Z
    .locals 7

    .line 45
    iget-object v0, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->roomId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->validFlag:I

    const v2, 0x8001

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->companyId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->email:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->password:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->qwd:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->createAuthInfoParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 54
    :cond_1
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v2, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v1, v2}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v1

    .line 55
    const-string v2, "authInfo"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 58
    const-string v0, "roomID"

    iget-object v2, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->roomId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 62
    iget v0, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->validFlag:I

    iget-object v2, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iget-object v4, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iget-object v5, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->startDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->endDate:Ljava/util/Date;

    invoke-static {v0, v2, v4, v5, v6}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForCreateRoom;->mode2ParamStrWithValidFlag(ILcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 63
    iget-object v2, p0, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->companyId:Ljava/lang/String;

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "{ \"companyID\":\"%s\"%s }"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v2, "application/json"

    invoke-static {v2}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v0, v2}, Lokhttp3/RequestBody;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 65
    const-string v2, "roomInfo"

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 67
    const-string v0, "cosmos/UpdateRoomInfo"

    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->baseURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {v1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/forSchool/service/ScCollaboURLConnectionForUpdateDeadlineInfo;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    return v1
.end method
