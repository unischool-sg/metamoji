.class Lcom/metamoji/media/service/MediaTentativeRegist;
.super Lcom/metamoji/media/service/MediaURLConnection;
.source "MediaTentativeRegist.java"


# instance fields
.field private _date:Ljava/util/Date;

.field private _driveId:Ljava/lang/String;

.field private _isMediaId:Z

.field private _nickname:Ljava/lang/String;

.field private _roomId:Ljava/lang/String;

.field private _shareFile:Ljava/lang/String;

.field private _targetId:Ljava/lang/String;

.field private _title:Ljava/lang/String;

.field private _userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/service/MediaBgTask;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/metamoji/media/service/MediaURLConnection;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_date:Ljava/util/Date;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMediaId()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_isMediaId:Z

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getShareFile()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_shareFile:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_title:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    return-object v0
.end method

.method public sendRequest()Z
    .locals 10

    .line 72
    iget-object v0, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_shareFile:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_shareFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/metamoji/media/MediaUtil;->mimeTypeFromFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 81
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_1
    const-string v3, "gallery/TentativeRegistMedia"

    invoke-static {v3}, Lcom/metamoji/media/MediaUtil;->baseURLForEditIt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    new-instance v5, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v5}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v6, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v5, v6}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v5

    .line 89
    iget-object v6, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_nickname:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 90
    const-string v7, "loginName"

    invoke-static {v5, v7, v6}, Lcom/metamoji/media/service/MediaTentativeRegist;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_2
    iget-object v6, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v6, v6, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 93
    iget-object v6, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v6, v6, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    const-string/jumbo v7, "userId"

    invoke-static {v5, v7, v6}, Lcom/metamoji/media/service/MediaTentativeRegist;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_3
    iget-object v6, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    invoke-static {v6}, Lcom/metamoji/media/MediaUtil;->getLoginPassword(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Ljava/lang/String;

    move-result-object v6

    .line 98
    iget-object v7, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    invoke-static {v7}, Lcom/metamoji/media/MediaUtil;->getPasswordParamName(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_4

    .line 99
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 100
    invoke-static {v5, v7, v6}, Lcom/metamoji/media/service/MediaTentativeRegist;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_4
    iget-object v6, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_roomId:Ljava/lang/String;

    if-eqz v6, :cond_5

    move v1, v4

    goto :goto_0

    .line 107
    :cond_5
    iget-object v4, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_driveId:Ljava/lang/String;

    if-eqz v4, :cond_6

    const/4 v1, 0x2

    .line 110
    :cond_6
    :goto_0
    const-string v4, "ownerType"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, v1}, Lcom/metamoji/media/service/MediaTentativeRegist;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_roomId:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 112
    const-string/jumbo v4, "roomId"

    invoke-static {v5, v4, v1}, Lcom/metamoji/media/service/MediaTentativeRegist;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_7
    iget-object v1, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_driveId:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 115
    const-string v4, "driveId"

    invoke-static {v5, v4, v1}, Lcom/metamoji/media/service/MediaTentativeRegist;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_8
    const-string v1, "productName"

    const-string v4, "Android-Share-G-ClassRoom"

    invoke-static {v5, v1, v4}, Lcom/metamoji/media/service/MediaTentativeRegist;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "productVersion"

    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v1, v4}, Lcom/metamoji/media/service/MediaTentativeRegist;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_date:Ljava/util/Date;

    invoke-static {v1}, Lcom/metamoji/cm/TimeUtils;->date2unixtime(Ljava/util/Date;)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    .line 123
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "media upload time = %.0f"

    invoke-static {v4, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v4, "%.0f"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "createMediaTime"

    invoke-static {v5, v4, v1}, Lcom/metamoji/media/service/MediaTentativeRegist;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string/jumbo v1, "timeZone"

    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->systemTimeZone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v1, v4}, Lcom/metamoji/media/service/MediaTentativeRegist;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "contentType"

    invoke-static {v5, v1, v2}, Lcom/metamoji/media/service/MediaTentativeRegist;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string/jumbo v1, "suffix"

    invoke-static {v5, v1, v0}, Lcom/metamoji/media/service/MediaTentativeRegist;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_title:Ljava/lang/String;

    invoke-static {v5, v0, v1}, Lcom/metamoji/media/service/MediaTentativeRegist;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-boolean v0, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_isMediaId:Z

    if-eqz v0, :cond_9

    .line 137
    const-string v0, "clientMediaId"

    goto :goto_1

    .line 136
    :cond_9
    const-string v0, "recordId"

    .line 139
    :goto_1
    iget-object v1, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_targetId:Ljava/lang/String;

    invoke-static {v5, v0, v1}, Lcom/metamoji/media/service/MediaTentativeRegist;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    const-string v1, "companyID"

    invoke-static {v5, v1, v0}, Lcom/metamoji/media/service/MediaTentativeRegist;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v5}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/metamoji/media/service/MediaTentativeRegist;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0

    :cond_a
    :goto_2
    return v1
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_date:Ljava/util/Date;

    return-void
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_driveId:Ljava/lang/String;

    return-void
.end method

.method public setIsMediaId(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_isMediaId:Z

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_nickname:Ljava/lang/String;

    return-void
.end method

.method public setRoomId(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_roomId:Ljava/lang/String;

    return-void
.end method

.method public setShareFile(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_shareFile:Ljava/lang/String;

    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_targetId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_title:Ljava/lang/String;

    return-void
.end method

.method public setUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/metamoji/media/service/MediaTentativeRegist;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    return-void
.end method
