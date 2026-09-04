.class public Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;
.super Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;
.source "LibraryURLConnectionForGetAllPages.java"


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;-><init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;)V

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

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 69
    const-string p1, "[GetAllPages] Not SuccessStatusCode..."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, v1, v0, v1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;->getAllPagesResponce(Ljava/util/List;ILjava/lang/String;)V

    return-void

    .line 73
    :cond_0
    const-string v2, "error"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    const-string v2, "[GetAllPages] Request FAILED!!"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 75
    const-string v2, "errorMessage"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 76
    invoke-virtual {p0, v1, v0, p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;->getAllPagesResponce(Ljava/util/List;ILjava/lang/String;)V

    return-void

    .line 80
    :cond_1
    const-string v0, "contents"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x2

    .line 85
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {v2}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 87
    const-string v3, "[GetAllPages]responce============================================================"

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 89
    const-string p1, "================================================================================="

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    const-string/jumbo p1, "result"

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 101
    :cond_2
    const-string p1, "message"

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 104
    invoke-virtual {p0, v1, v0, p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;->getAllPagesResponce(Ljava/util/List;ILjava/lang/String;)V

    return-void

    .line 109
    :cond_3
    const-string/jumbo v3, "version"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 110
    const-string v4, "1.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 118
    :cond_4
    const-string v1, "pages"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;->parseData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 119
    invoke-virtual {p0, v1, v0, p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;->getAllPagesResponce(Ljava/util/List;ILjava/lang/String;)V

    return-void

    .line 112
    :cond_5
    :goto_0
    invoke-virtual {p0, v1, v0, p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;->getAllPagesResponce(Ljava/util/List;ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 91
    const-string v2, "[GetAllPages] JSON parse FAILED!!"

    invoke-static {p1, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, v1, v0, v1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;->getAllPagesResponce(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method getAllPagesResponce(Ljava/util/List;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;->m_pageView:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;->m_pageView:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->getAllPagesResponce(Ljava/util/List;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected getAllPagesType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method parseData(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    const-string v1, "g_pageStatus"

    const-string/jumbo v2, "type"

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    new-instance v3, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages$1;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages$1;-><init>(Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;)V

    .line 143
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 148
    check-cast v3, Ljava/util/Map;

    .line 150
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 151
    sget-object v5, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_STORE:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v5, Lcom/metamoji/lb/LbConstants$StorePageStatus;->PAGE_DATA_REQUESTING:Lcom/metamoji/lb/LbConstants$StorePageStatus;

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v5, "g_pageId"

    const-string v6, "pageID"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v5, "g_pageTitle"

    const-string v6, "pageTitle"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v5, "g_pageFormat"

    const-string v6, "pageFormat"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v5, "g_pageURL"

    const-string v6, "pageURL"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    .line 132
    :cond_2
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 133
    sget-object v3, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_STORE:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v2, Lcom/metamoji/lb/LbConstants$StorePageStatus;->PAGE_DATA_NOTHING:Lcom/metamoji/lb/LbConstants$StorePageStatus;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 162
    const-string v0, "[GetAllPages] :: parse ERROR."

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected requestUrl()Ljava/lang/String;
    .locals 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/GetAllPages"

    invoke-static {v1}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->storeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;->getAllPagesType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "?pageType=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
