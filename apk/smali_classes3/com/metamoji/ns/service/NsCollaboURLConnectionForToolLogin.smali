.class public Lcom/metamoji/ns/service/NsCollaboURLConnectionForToolLogin;
.super Lcom/metamoji/ns/service/NsCollaboURLConnection;
.source "NsCollaboURLConnectionForToolLogin.java"


# instance fields
.field public companyId:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public qwd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/metamoji/ns/service/NsCollaboURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    return-void
.end method


# virtual methods
.method public sendRequest()Z
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForToolLogin;->email:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForToolLogin;->password:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForToolLogin;->qwd:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForToolLogin;->companyId:Ljava/lang/String;

    if-nez v0, :cond_1

    return v1

    .line 50
    :cond_1
    const-string v0, "mmjeditor2/CosmosToolLogin"

    invoke-static {v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForToolLogin;->baseURLForMMJEditor2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 54
    const-string v2, "email"

    iget-object v3, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForToolLogin;->email:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 56
    iget-object v2, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForToolLogin;->qwd:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 57
    const-string v2, "password"

    iget-object v3, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForToolLogin;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 59
    :cond_2
    const-string v3, "qwd"

    invoke-virtual {v1, v3, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 63
    :goto_0
    const-string v2, "companyID"

    iget-object v3, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForToolLogin;->companyId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 65
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/nt/NtLocaleUtils;->localeStringFromLocale(Lcom/metamoji/nt/NtLocale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "locale"

    invoke-virtual {v1, v3, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 66
    const-string/jumbo v2, "timezone"

    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->systemTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 68
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForToolLogin;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0

    :cond_3
    :goto_1
    return v1
.end method
