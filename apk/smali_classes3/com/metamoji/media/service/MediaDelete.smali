.class Lcom/metamoji/media/service/MediaDelete;
.super Lcom/metamoji/media/service/MediaURLConnection;
.source "MediaDelete.java"


# instance fields
.field private _isMediaId:Z

.field private _targetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/service/MediaBgTask;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/metamoji/media/service/MediaURLConnection;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    return-void
.end method


# virtual methods
.method public getIsMediaId()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/metamoji/media/service/MediaDelete;->_isMediaId:Z

    return v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/metamoji/media/service/MediaDelete;->_targetIds:Ljava/util/List;

    return-object v0
.end method

.method public getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/media/service/MediaDelete;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    return-object v0
.end method

.method public sendRequest()Z
    .locals 7

    .line 44
    iget-object v0, p0, Lcom/metamoji/media/service/MediaDelete;->_targetIds:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 49
    :cond_0
    const-string v0, "gallery/DeleteMediaFile"

    invoke-static {v0}, Lcom/metamoji/media/MediaUtil;->baseURLForEditIt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v3, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v3}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    .line 54
    iget-object v3, p0, Lcom/metamoji/media/service/MediaDelete;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v3, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    const-string/jumbo v4, "userId"

    invoke-static {v2, v4, v3}, Lcom/metamoji/media/service/MediaDelete;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v3, p0, Lcom/metamoji/media/service/MediaDelete;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    invoke-static {v3}, Lcom/metamoji/media/MediaUtil;->getLoginPassword(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Ljava/lang/String;

    move-result-object v3

    .line 58
    iget-object v4, p0, Lcom/metamoji/media/service/MediaDelete;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    invoke-static {v4}, Lcom/metamoji/media/MediaUtil;->getPasswordParamName(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_1

    .line 60
    invoke-static {v2, v4, v3}, Lcom/metamoji/media/service/MediaDelete;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_1
    const-string v3, "productName"

    const-string v4, "Android-Share-G-ClassRoom"

    invoke-static {v2, v3, v4}, Lcom/metamoji/media/service/MediaDelete;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v3, "productVersion"

    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/metamoji/media/service/MediaDelete;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v3, "timeZone"

    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->systemTimeZone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/metamoji/media/service/MediaDelete;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-boolean v3, p0, Lcom/metamoji/media/service/MediaDelete;->_isMediaId:Z

    if-eqz v3, :cond_2

    .line 75
    const-string v3, "clientMediaId"

    goto :goto_0

    .line 74
    :cond_2
    const-string v3, "recordId"

    .line 79
    :goto_0
    iget-object v4, p0, Lcom/metamoji/media/service/MediaDelete;->_targetIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 81
    invoke-static {v2, v6, v5}, Lcom/metamoji/media/service/MediaDelete;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    :cond_3
    iget-object v1, p0, Lcom/metamoji/media/service/MediaDelete;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v1, v1, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    const-string v3, "companyID"

    invoke-static {v2, v3, v1}, Lcom/metamoji/media/service/MediaDelete;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/service/MediaDelete;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public setIsMediaId(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/metamoji/media/service/MediaDelete;->_isMediaId:Z

    return-void
.end method

.method public setTargetIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/metamoji/media/service/MediaDelete;->_targetIds:Ljava/util/List;

    return-void
.end method

.method public setUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/metamoji/media/service/MediaDelete;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    return-void
.end method
