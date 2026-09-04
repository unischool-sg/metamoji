.class public Lcom/metamoji/rc/RcTentativeRegistURLConnection;
.super Lcom/metamoji/rc/RcRemoteConverterURLConnection;
.source "RcTentativeRegistURLConnection.java"


# instance fields
.field private _password:Ljava/lang/String;

.field private _userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/metamoji/rc/RcRemoteConverterURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->_password:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->_userId:Ljava/lang/String;

    return-object v0
.end method

.method public sendRequest()Z
    .locals 6

    .line 39
    iget-object v0, p0, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->_userId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->_password:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->TENTATIVE_REGIST_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->baseURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->systemTimeZone()Ljava/lang/String;

    move-result-object v2

    .line 49
    new-instance v3, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v3}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v4, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v3, v4}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 51
    sget-object v4, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->TENTATIVE_REGIST_PARAM_USER_ID:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->_userId:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v4, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->TENTATIVE_REGIST_PARAM_PASSWORD:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->_password:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sget-object v4, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->TENTATIVE_REGIST_PARAM_PRODUCT_NAME:Ljava/lang/String;

    const-string v5, "Android-Share-G-ClassRoom"

    invoke-static {v3, v4, v5}, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v4, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->TENTATIVE_REGIST_PARAM_PRODUCT_VERSION:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v1, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->TENTATIVE_REGIST_PARAM_TIME_ZONE:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v3}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->_password:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/metamoji/rc/RcTentativeRegistURLConnection;->_userId:Ljava/lang/String;

    return-void
.end method
