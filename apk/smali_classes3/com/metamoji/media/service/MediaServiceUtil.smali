.class final Lcom/metamoji/media/service/MediaServiceUtil;
.super Ljava/lang/Object;
.source "MediaServiceUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSuccessStatusCode(I)Z
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->isSuccessStatusCode(I)Z

    move-result p0

    return p0
.end method

.method public static messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseResponseJson(Lcom/metamoji/media/service/MediaURLConnection;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/media/service/MediaURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {p0}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->parseResponseJson(Lcom/metamoji/ns/service/NsCollaboURLConnection;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
