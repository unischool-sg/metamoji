.class public Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;
.super Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;
.source "LibraryURLConnectionForLogin.java"


# instance fields
.field m_nextRequest:Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;-><init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;)V

    .line 31
    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;->m_nextRequest:Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

    return-void
.end method


# virtual methods
.method protected connectionDidFinishLoading(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 77
    const-string p1, "[Login] Not SuccessStatusCode..."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v2, v1, v0}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;->loginResponce(ZILjava/lang/String;)V

    return-void

    .line 81
    :cond_0
    const-string v3, "error"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 82
    const-string v0, "[Login] Request FAILED!!"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 83
    const-string v0, "errorMessage"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 84
    invoke-virtual {p0, v2, v1, p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;->loginResponce(ZILjava/lang/String;)V

    return-void

    .line 88
    :cond_1
    const-string v3, "contents"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 93
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-static {v3}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 95
    const-string v4, "[Login]responce============================================================"

    invoke-static {v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 96
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 97
    const-string p1, "================================================================================="

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const-string/jumbo p1, "result"

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 109
    :goto_0
    const-string v0, "message"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez p1, :cond_3

    const/4 v2, 0x1

    .line 110
    :cond_3
    invoke-virtual {p0, v2, p1, v0}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;->loginResponce(ZILjava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 99
    const-string v3, "[Login] JSON parse FAILED!!"

    invoke-static {p1, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v2, v1, v0}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;->loginResponce(ZILjava/lang/String;)V

    return-void
.end method

.method protected createCall(Ljava/lang/String;)Lokhttp3/Call;
    .locals 3

    .line 50
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 53
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 54
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 55
    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    return-object p1
.end method

.method loginResponce(ZILjava/lang/String;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;->m_pageView:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;->m_pageView:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionForLogin;->m_nextRequest:Lcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->loginResponce(ZLcom/metamoji/ui/library/item/LibraryStorePageView$NextRequest;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected requestUrl()Ljava/lang/String;
    .locals 1

    .line 40
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->loginURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
