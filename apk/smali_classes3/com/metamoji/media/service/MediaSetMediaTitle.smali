.class Lcom/metamoji/media/service/MediaSetMediaTitle;
.super Lcom/metamoji/media/service/MediaURLConnection;
.source "MediaSetMediaTitle.java"


# instance fields
.field private _isMediaId:Z

.field private _titles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/service/MediaBgTask;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/metamoji/media/service/MediaURLConnection;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    return-void
.end method


# virtual methods
.method public getTitles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/metamoji/media/service/MediaSetMediaTitle;->_titles:Ljava/util/Map;

    return-object v0
.end method

.method public sendRequest()Z
    .locals 8

    .line 43
    const-string v0, "gallery/SetMediaTitle"

    invoke-static {v0}, Lcom/metamoji/media/MediaUtil;->baseURLForEditIt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v2, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v1, v2}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/metamoji/media/service/MediaSetMediaTitle;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/metamoji/media/service/MediaSetMediaTitle;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->email:Ljava/lang/String;

    const-string v3, "loginName"

    invoke-static {v1, v3, v2}, Lcom/metamoji/media/service/MediaSetMediaTitle;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/metamoji/media/service/MediaSetMediaTitle;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 51
    iget-object v2, p0, Lcom/metamoji/media/service/MediaSetMediaTitle;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    const-string/jumbo v3, "userId"

    invoke-static {v1, v3, v2}, Lcom/metamoji/media/service/MediaSetMediaTitle;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/metamoji/media/service/MediaSetMediaTitle;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    invoke-static {v2}, Lcom/metamoji/media/MediaUtil;->getLoginPassword(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Ljava/lang/String;

    move-result-object v2

    .line 56
    iget-object v3, p0, Lcom/metamoji/media/service/MediaSetMediaTitle;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    invoke-static {v3}, Lcom/metamoji/media/MediaUtil;->getPasswordParamName(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    .line 57
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 58
    invoke-static {v1, v3, v2}, Lcom/metamoji/media/service/MediaSetMediaTitle;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_2
    const-string v2, "productName"

    const-string v3, "Android-Share-G-ClassRoom"

    invoke-static {v1, v2, v3}, Lcom/metamoji/media/service/MediaSetMediaTitle;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "productVersion"

    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/metamoji/media/service/MediaSetMediaTitle;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v2, "timeZone"

    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->systemTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/metamoji/media/service/MediaSetMediaTitle;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-boolean v2, p0, Lcom/metamoji/media/service/MediaSetMediaTitle;->_isMediaId:Z

    if-eqz v2, :cond_3

    .line 71
    const-string v2, "clientMediaId"

    goto :goto_0

    .line 70
    :cond_3
    const-string v2, "recordId"

    .line 74
    :goto_0
    iget-object v3, p0, Lcom/metamoji/media/service/MediaSetMediaTitle;->_titles:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 76
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v6}, Lcom/metamoji/media/service/MediaSetMediaTitle;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "title"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v5}, Lcom/metamoji/media/service/MediaSetMediaTitle;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 86
    :cond_4
    iget-object v2, p0, Lcom/metamoji/media/service/MediaSetMediaTitle;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    const-string v3, "companyID"

    invoke-static {v1, v3, v2}, Lcom/metamoji/media/service/MediaSetMediaTitle;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/service/MediaSetMediaTitle;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0
.end method

.method public setIsMediaId(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/metamoji/media/service/MediaSetMediaTitle;->_isMediaId:Z

    return-void
.end method

.method public setTitles(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/metamoji/media/service/MediaSetMediaTitle;->_titles:Ljava/util/Map;

    return-void
.end method

.method public setUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/metamoji/media/service/MediaSetMediaTitle;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    return-void
.end method
