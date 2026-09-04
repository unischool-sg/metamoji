.class public Lcom/metamoji/ns/service/NsCollaboServiceUtil;
.super Ljava/lang/Object;
.source "NsCollaboServiceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSuccessStatusCode(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-gt v0, p0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;
    .locals 4

    .line 91
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 92
    instance-of v1, p0, Lcom/metamoji/ns/service/NsCollaboServiceException;

    if-eqz v1, :cond_0

    .line 93
    check-cast p0, Lcom/metamoji/ns/service/NsCollaboServiceException;

    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboServiceException;->getResponseCode()I

    move-result v1

    .line 94
    invoke-virtual {p0}, Lcom/metamoji/ns/service/NsCollaboServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 92
    const-string p0, "0"

    :goto_0
    const/16 v2, 0x190

    .line 98
    invoke-static {v1, v2}, Lcom/metamoji/ns/service/NsCollaboServiceException;->checkResponseCode(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    invoke-static {p0}, Lcom/metamoji/ns/service/NsCollaboServiceException;->errorCode(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xdd

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 105
    sget p1, Lcom/metamoji/noteanytime/R$string;->Error_Lobby_221:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 112
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s\n%s(%d:%s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 115
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s\n(%d:%s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseResponseJson(Lcom/metamoji/ns/service/NsCollaboURLConnection;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ns/service/NsCollaboURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 37
    iget v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_statusCode:I

    .line 40
    invoke-static {v0}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->isSuccessStatusCode(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 42
    :try_start_0
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_responseData:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v5}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_responseData:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v6}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v6

    const-string v7, "UTF-8"

    invoke-direct {v4, v5, v2, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 43
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-static {v5}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    :try_start_1
    const-string v6, "[MMJNsCollaboServiceUtil]Response JSON=\n%s"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p0, v3

    goto :goto_1

    :catch_0
    move-object v3, v5

    :catch_1
    if-eqz v1, :cond_0

    .line 50
    const-string p0, "invalid response json."

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnection;->m_responseReasonPhrase:Ljava/lang/String;

    .line 51
    :goto_0
    const-string v1, "0"

    move-object v5, v3

    move-object v3, v1

    move v1, v2

    :goto_1
    if-eqz v1, :cond_1

    return-object v5

    :cond_1
    if-eqz v5, :cond_5

    .line 61
    const-string p0, "errorCode"

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 64
    :cond_2
    const-string/jumbo p0, "statusCode"

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 65
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    move-object v3, p0

    if-eqz v2, :cond_4

    .line 71
    const-string p0, "message"

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 73
    :cond_4
    const-string p0, "errorMessage"

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 76
    :cond_5
    :goto_2
    new-instance v1, Lcom/metamoji/ns/service/NsCollaboServiceException;

    invoke-direct {v1, v0, v3, p0}, Lcom/metamoji/ns/service/NsCollaboServiceException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1
.end method
