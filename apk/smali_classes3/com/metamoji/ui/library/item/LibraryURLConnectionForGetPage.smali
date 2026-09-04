.class public Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;
.super Lcom/metamoji/ui/library/item/LibraryURLConnectionBase;
.source "LibraryURLConnectionForGetPage.java"


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/library/item/LibraryStorePageView;)V
    .locals 0

    .line 25
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

    .line 61
    const-string p1, "[GetPage] Not SuccessStatusCode..."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, v1, v0, v1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;->getPageResponce(Ljava/util/List;ILjava/lang/String;)V

    return-void

    .line 65
    :cond_0
    const-string v2, "error"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    const-string v2, "[GetPage] Request FAILED!!"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 67
    const-string v2, "errorMessage"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 68
    invoke-virtual {p0, v1, v0, p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;->getPageResponce(Ljava/util/List;ILjava/lang/String;)V

    return-void

    .line 72
    :cond_1
    const-string v0, "contents"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x2

    .line 77
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-static {v2}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 79
    const-string v3, "[GetPage]responce============================================================"

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 81
    const-string p1, "================================================================================="

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    const-string/jumbo p1, "result"

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    :cond_2
    const-string p1, "message"

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {p0, v1, v0, p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;->getPageResponce(Ljava/util/List;ILjava/lang/String;)V

    return-void

    .line 101
    :cond_3
    const-string/jumbo v3, "version"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 102
    const-string v4, "1.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 110
    :cond_4
    const-string v1, "products"

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;->parseData(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 111
    invoke-virtual {p0, v1, v0, p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;->getPageResponce(Ljava/util/List;ILjava/lang/String;)V

    return-void

    .line 104
    :cond_5
    :goto_0
    invoke-virtual {p0, v1, v0, p1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;->getPageResponce(Ljava/util/List;ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 83
    const-string v2, "[GetAllPages] JSON parse FAILED!!"

    invoke-static {p1, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v1, v0, v1}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;->getPageResponce(Ljava/util/List;ILjava/lang/String;)V

    return-void
.end method

.method getPageResponce(Ljava/util/List;ILjava/lang/String;)V
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

    .line 48
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;->m_pageView:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;->m_pageView:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/ui/library/item/LibraryStorePageView;->getPageResponce(Ljava/util/List;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method parseData(Ljava/util/List;)Ljava/util/List;
    .locals 17
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

    .line 120
    const-string v0, "p_creatorName"

    const-string v1, "p_isFree"

    const-string/jumbo v2, "title"

    const-string v3, "p_comment"

    const-string v4, "p_title"

    const-string v5, "entityId"

    const-string v6, "p_id"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 123
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 125
    check-cast v9, Ljava/util/Map;

    .line 128
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 130
    const-string v11, "p_parts"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 131
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "productURL"

    if-eqz v12, :cond_2

    :try_start_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 133
    check-cast v12, Ljava/util/Map;

    .line 136
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 137
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v14, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v15, "imagePath"

    move-object/from16 v16, v5

    const-string/jumbo v5, "thumbnailURL"

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v14, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 141
    invoke-interface {v14, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 145
    invoke-interface {v14, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_1
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v16

    goto :goto_1

    :cond_2
    move-object/from16 v16, v5

    .line 151
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 152
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v5, v6, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v5, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v5, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v11, "p_URL"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 157
    invoke-interface {v5, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_3
    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v5, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v11, "p_creatorId"

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 162
    const-string v12, "p_creatorID"

    invoke-interface {v5, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_4
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_5

    .line 166
    invoke-interface {v5, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_5
    const-string v11, "p_partsArray"

    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v10, "p_market"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-eqz v9, :cond_7

    .line 174
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 176
    check-cast v10, Ljava/util/Map;

    .line 178
    const-string v11, "m_storeID"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_6

    .line 179
    const-string v12, "GooglePlay"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 180
    const-string v11, "m_itemID"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 181
    const-string v11, "p_itemId"

    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 185
    :cond_7
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v5, v16

    goto/16 :goto_0

    :cond_8
    return-object v7

    :catch_0
    move-exception v0

    .line 191
    const-string v1, "[GetPage] :: parse ERROR."

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected requestUrl()Ljava/lang/String;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;->m_pageView:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetPage;->m_pageView:Lcom/metamoji/ui/library/item/LibraryStorePageView;

    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryStorePageView;->m_pageDic:Ljava/util/Map;

    const-string v1, "g_pageURL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 38
    :cond_0
    const-string v0, ""

    return-object v0
.end method
