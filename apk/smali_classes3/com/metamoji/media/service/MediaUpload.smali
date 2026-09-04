.class Lcom/metamoji/media/service/MediaUpload;
.super Lcom/metamoji/media/service/MediaURLConnection;
.source "MediaUpload.java"


# instance fields
.field private _isMediaId:Z

.field private _shareFile:Ljava/lang/String;

.field private _targetId:Ljava/lang/String;

.field private _userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/service/MediaBgTask;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/metamoji/media/service/MediaURLConnection;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    return-void
.end method


# virtual methods
.method public getIsMediaId()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/metamoji/media/service/MediaUpload;->_isMediaId:Z

    return v0
.end method

.method public getShareFile()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/media/service/MediaUpload;->_shareFile:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/media/service/MediaUpload;->_targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/media/service/MediaUpload;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    return-object v0
.end method

.method public sendRequest()Z
    .locals 5

    .line 48
    iget-object v0, p0, Lcom/metamoji/media/service/MediaUpload;->_shareFile:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v1, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/metamoji/media/service/MediaUpload;->_shareFile:Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v1}, Lcom/metamoji/media/MediaUtil;->mimeTypeFromFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v2, "gallery/UploadMedia"

    invoke-static {v2}, Lcom/metamoji/media/MediaUtil;->baseURLForEditIt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    iget-object v3, p0, Lcom/metamoji/media/service/MediaUpload;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v3, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    const-string/jumbo v4, "userId"

    invoke-static {v0, v4, v3}, Lcom/metamoji/media/service/MediaUpload;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v3, p0, Lcom/metamoji/media/service/MediaUpload;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    invoke-static {v3}, Lcom/metamoji/media/MediaUtil;->getLoginPassword(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Ljava/lang/String;

    move-result-object v3

    .line 64
    iget-object v4, p0, Lcom/metamoji/media/service/MediaUpload;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    invoke-static {v4}, Lcom/metamoji/media/MediaUtil;->getPasswordParamName(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-static {v0, v4, v3}, Lcom/metamoji/media/service/MediaUpload;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v3, "productName"

    const-string v4, "Android-Share-G-ClassRoom"

    invoke-static {v0, v3, v4}, Lcom/metamoji/media/service/MediaUpload;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v3, "productVersion"

    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/metamoji/media/service/MediaUpload;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v3, "timeZone"

    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->systemTimeZone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/metamoji/media/service/MediaUpload;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-boolean v3, p0, Lcom/metamoji/media/service/MediaUpload;->_isMediaId:Z

    if-eqz v3, :cond_1

    .line 79
    const-string v3, "clientMediaId"

    goto :goto_0

    .line 78
    :cond_1
    const-string v3, "recordId"

    .line 81
    :goto_0
    iget-object v4, p0, Lcom/metamoji/media/service/MediaUpload;->_targetId:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/metamoji/media/service/MediaUpload;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/metamoji/media/service/MediaUpload;->_shareFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v4, "mediaFile"

    invoke-static {v0, v4, v3, v1}, Lcom/metamoji/media/service/MediaUpload;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/metamoji/media/service/MediaUpload;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    const-string v3, "companyID"

    invoke-static {v0, v3, v1}, Lcom/metamoji/media/service/MediaUpload;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/metamoji/media/service/MediaUpload;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public setIsMediaId(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/metamoji/media/service/MediaUpload;->_isMediaId:Z

    return-void
.end method

.method public setShareFile(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/metamoji/media/service/MediaUpload;->_shareFile:Ljava/lang/String;

    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/metamoji/media/service/MediaUpload;->_targetId:Ljava/lang/String;

    return-void
.end method

.method public setUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/metamoji/media/service/MediaUpload;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    return-void
.end method
