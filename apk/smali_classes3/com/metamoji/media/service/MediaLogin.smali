.class Lcom/metamoji/media/service/MediaLogin;
.super Lcom/metamoji/media/service/MediaURLConnection;
.source "MediaLogin.java"


# instance fields
.field private _userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/service/MediaBgTask;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/metamoji/media/service/MediaURLConnection;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    return-void
.end method


# virtual methods
.method public sendRequest()Z
    .locals 4

    .line 31
    const-string v0, "gallery/LoginMedia"

    invoke-static {v0}, Lcom/metamoji/media/MediaUtil;->baseURLForEditIt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v2, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v1, v2}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/metamoji/media/service/MediaLogin;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    const-string/jumbo v3, "userId"

    invoke-static {v1, v3, v2}, Lcom/metamoji/media/service/MediaLogin;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lcom/metamoji/media/service/MediaLogin;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    invoke-static {v2}, Lcom/metamoji/media/MediaUtil;->getLoginPassword(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Ljava/lang/String;

    move-result-object v2

    .line 40
    iget-object v3, p0, Lcom/metamoji/media/service/MediaLogin;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    invoke-static {v3}, Lcom/metamoji/media/MediaUtil;->getPasswordParamName(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-static {v1, v3, v2}, Lcom/metamoji/media/service/MediaLogin;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, "productName"

    const-string v3, "Android-Share-G-ClassRoom"

    invoke-static {v1, v2, v3}, Lcom/metamoji/media/service/MediaLogin;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v2, "productVersion"

    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/metamoji/media/service/MediaLogin;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v2, "timeZone"

    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->systemTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/metamoji/media/service/MediaLogin;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/metamoji/media/service/MediaLogin;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v2, v2, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    const-string v3, "companyID"

    invoke-static {v1, v3, v2}, Lcom/metamoji/media/service/MediaLogin;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/media/service/MediaLogin;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0
.end method

.method public setUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/metamoji/media/service/MediaLogin;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    return-void
.end method
