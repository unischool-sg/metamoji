.class public Lcom/metamoji/sd/cs/SdHttpClient;
.super Ljava/lang/Object;
.source "SdHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/sd/cs/SdHttpClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSdHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SdHttpClient.kt\ncom/metamoji/sd/cs/SdHttpClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,339:1\n1#2:340\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 ;2\u00020\u0001:\u0001;B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\u0006\u001a\u00020\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\nH\u0002J.\u0010.\u001a\u0004\u0018\u00010+2\u0006\u0010/\u001a\u00020\n2\u0006\u00100\u001a\u00020\n2\u0014\u00101\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u000102J0\u00103\u001a\u0004\u0018\u00010+2\u0006\u0010/\u001a\u00020\n2\u0006\u00100\u001a\u00020\n2\u0014\u00101\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u000102H\u0002J\n\u00104\u001a\u0004\u0018\u00010+H\u0002J>\u00105\u001a\u00020\u000e2\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\n2\u0006\u00100\u001a\u00020\n2\u0014\u00101\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0001\u0018\u0001022\u0006\u0010\u0019\u001a\u00020\u0013H\u0004J\u0008\u00109\u001a\u000207H\u0002J\u0006\u0010:\u001a\u00020\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0019\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R$\u0010$\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u000e8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008%\u0010 \"\u0004\u0008&\u0010\"R$\u0010\'\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u000e8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008(\u0010 \"\u0004\u0008)\u0010\"R\u0013\u0010*\u001a\u0004\u0018\u00010+8F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-\u00a8\u0006<"
    }
    d2 = {
        "Lcom/metamoji/sd/cs/SdHttpClient;",
        "",
        "m_context",
        "Lcom/metamoji/sd/cs/SdCloudServiceContext;",
        "<init>",
        "(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V",
        "debugLog",
        "",
        "lazyMessage",
        "Lkotlin/Function0;",
        "",
        "errorLog",
        "msg",
        "mNocache",
        "",
        "mConnectionKeepAlive",
        "mResponseBodyFile",
        "Ljava/io/File;",
        "mHttpStatusCode",
        "",
        "mResponseMimeType",
        "mLoaded",
        "mIsCancel",
        "mCall",
        "Lokhttp3/Call;",
        "timeout",
        "getTimeout",
        "()I",
        "setTimeout",
        "(I)V",
        "discardCookie",
        "getDiscardCookie",
        "()Z",
        "setDiscardCookie",
        "(Z)V",
        "value",
        "noCache",
        "getNoCache",
        "setNoCache",
        "connectionKeepAlive",
        "getConnectionKeepAlive",
        "setConnectionKeepAlive",
        "maintenanceText",
        "Lcom/metamoji/sd/cs/HttpClientResponse;",
        "getMaintenanceText",
        "()Lcom/metamoji/sd/cs/HttpClientResponse;",
        "sendRequestWithCommand",
        "command",
        "method",
        "params",
        "",
        "sendRequestWithCommandCore",
        "getMaintenanceTextCore",
        "sendRequest",
        "request",
        "Lokhttp3/Request$Builder;",
        "url",
        "createRequest",
        "cancel",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/metamoji/sd/cs/SdHttpClient$Companion;

.field private static final DEBUG_LOG_ENABLED:Z

.field private static final USER_AGENT:Ljava/lang/String; = "MMJSdCloudService/1.0"

.field private static final mCustomCookieStore:Lcom/metamoji/network/NwCookieJar;

.field private static mDevice:Ljava/lang/String;


# instance fields
.field private discardCookie:Z

.field private mCall:Lokhttp3/Call;

.field private mConnectionKeepAlive:Z

.field private mHttpStatusCode:I

.field private mIsCancel:Z

.field private mLoaded:Z

.field private mNocache:Z

.field private mResponseBodyFile:Ljava/io/File;

.field private mResponseMimeType:Ljava/lang/String;

.field private final m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

.field private timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/metamoji/sd/cs/SdHttpClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/sd/cs/SdHttpClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/sd/cs/SdHttpClient;->Companion:Lcom/metamoji/sd/cs/SdHttpClient$Companion;

    const/4 v0, 0x1

    .line 310
    sput-boolean v0, Lcom/metamoji/sd/cs/SdHttpClient;->DEBUG_LOG_ENABLED:Z

    .line 313
    new-instance v0, Lcom/metamoji/network/NwCookieJar;

    invoke-direct {v0}, Lcom/metamoji/network/NwCookieJar;-><init>()V

    sput-object v0, Lcom/metamoji/sd/cs/SdHttpClient;->mCustomCookieStore:Lcom/metamoji/network/NwCookieJar;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V
    .locals 1

    const-string v0, "m_context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/metamoji/sd/cs/SdHttpClient;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    return-void
.end method

.method public static final synthetic access$getMCustomCookieStore$cp()Lcom/metamoji/network/NwCookieJar;
    .locals 1

    .line 34
    sget-object v0, Lcom/metamoji/sd/cs/SdHttpClient;->mCustomCookieStore:Lcom/metamoji/network/NwCookieJar;

    return-object v0
.end method

.method public static final clearCookie(Lokhttp3/HttpUrl;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/sd/cs/SdHttpClient;->Companion:Lcom/metamoji/sd/cs/SdHttpClient$Companion;

    invoke-virtual {v0, p0}, Lcom/metamoji/sd/cs/SdHttpClient$Companion;->clearCookie(Lokhttp3/HttpUrl;)V

    return-void
.end method

.method public static final clearCookies()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/metamoji/sd/cs/SdHttpClient;->Companion:Lcom/metamoji/sd/cs/SdHttpClient$Companion;

    invoke-virtual {v0}, Lcom/metamoji/sd/cs/SdHttpClient$Companion;->clearCookies()V

    return-void
.end method

.method private final createRequest()Lokhttp3/Request$Builder;
    .locals 5

    .line 283
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 284
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v1

    .line 285
    sget-object v2, Lcom/metamoji/sd/cs/SdHttpClient;->mDevice:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 286
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Android"

    filled-new-array {v2, v4, v3}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s;%s;%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    :cond_0
    const-string v3, "User-Agent"

    const-string v4, "MMJSdCloudService/1.0"

    invoke-virtual {v0, v3, v4}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 289
    invoke-virtual {v1}, Lcom/metamoji/cs/CsCloudServiceContext;->getLocale()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getLocale(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "X-DM-Locale"

    invoke-virtual {v0, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 290
    invoke-virtual {v1}, Lcom/metamoji/cs/CsCloudServiceContext;->getProductName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getProductName(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "X-DM-ProductName"

    invoke-virtual {v0, v4, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 291
    invoke-virtual {v1}, Lcom/metamoji/cs/CsCloudServiceContext;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getProductVersion(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "X-DM-ProductVersion"

    invoke-virtual {v0, v3, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 292
    const-string v1, "X-DM-Device"

    invoke-virtual {v0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    return-object v0
.end method

.method private final debugLog(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    sget-boolean v0, Lcom/metamoji/sd/cs/SdHttpClient;->DEBUG_LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SdHttpClient] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final errorLog(Ljava/lang/String;)V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[SdHttpClient] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method private final getMaintenanceTextCore()Lcom/metamoji/sd/cs/HttpClientResponse;
    .locals 9

    const-string v1, "getMaintenanceTextCore() exception ... \n "

    const/4 v2, 0x0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sd/cs/SdHttpClient;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-virtual {v0}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getMaintenanceText()Ljava/lang/String;

    move-result-object v5

    .line 136
    move-object v0, v5

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/sd/cs/SdHttpClient;->createRequest()Lokhttp3/Request$Builder;

    move-result-object v4

    .line 143
    const-string v6, "get"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    move-object v3, p0

    :try_start_1
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/sd/cs/SdHttpClient;->sendRequest(Lokhttp3/Request$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    iget v4, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mHttpStatusCode:I

    const/16 v5, 0xc8

    if-gt v5, v4, :cond_1

    const/16 v5, 0x12c

    if-ge v4, v5, :cond_1

    .line 146
    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    const-string v5, "responseBody"

    iget-object v6, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mResponseBodyFile:Ljava/io/File;

    invoke-static {v6}, Lcom/metamoji/sd/SdUtils;->readFileAsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_1
    move-object v4, v0

    check-cast v4, Ljava/util/Map;

    const-string v5, "responseMimeType"

    iget-object v6, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mResponseMimeType:Ljava/lang/String;

    if-nez v6, :cond_2

    const-string v6, ""

    :cond_2
    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v4, Lcom/metamoji/sd/cs/HttpClientResponse;

    iget v5, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mHttpStatusCode:I

    check-cast v0, Ljava/util/Map;

    iget-boolean v6, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mIsCancel:Z

    invoke-direct {v4, v5, v0, v6}, Lcom/metamoji/sd/cs/HttpClientResponse;-><init>(ILjava/util/Map;Z)V

    goto :goto_0

    .line 151
    :cond_3
    new-instance v0, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Lcom/metamoji/sd/cs/SdHttpClient;->debugLog(Lkotlin/jvm/functions/Function0;)V

    .line 152
    new-instance v4, Lcom/metamoji/sd/cs/HttpClientResponse;

    iget v0, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mHttpStatusCode:I

    iget-boolean v5, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mIsCancel:Z

    invoke-direct {v4, v0, v2, v5}, Lcom/metamoji/sd/cs/HttpClientResponse;-><init>(ILjava/util/Map;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    :goto_0
    iget-object v0, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mResponseBodyFile:Ljava/io/File;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    return-object v4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_5
    :goto_1
    move-object v3, p0

    iget-object v0, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mResponseBodyFile:Ljava/io/File;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6
    return-object v2

    :catchall_0
    move-exception v0

    move-object v3, p0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v3, p0

    .line 155
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/sd/cs/SdHttpClient;->errorLog(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    iget-object v0, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mResponseBodyFile:Ljava/io/File;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_7
    return-object v2

    :catchall_1
    move-exception v0

    :goto_3
    iget-object v1, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mResponseBodyFile:Ljava/io/File;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_8
    throw v0
.end method

.method static final getMaintenanceTextCore$lambda$2()Ljava/lang/String;
    .locals 1

    .line 151
    const-string/jumbo v0, "sendRequestWithCommand() body not loaded."

    return-object v0
.end method

.method static final sendRequest$lambda$10(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;
    .locals 3

    .line 246
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "R: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\n status="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", message="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final sendRequest$lambda$3(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S: POST "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\njson="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final sendRequest$lambda$4(Ljava/lang/String;Lokhttp3/MediaType;)Ljava/lang/String;
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S: PUT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\nfile type=("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final sendRequest$lambda$5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S: PUT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\njson="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final sendRequest$lambda$6(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S: GET "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final sendRequest$lambda$7(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S: DELETE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final sendRequestWithCommandCore(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sd/cs/HttpClientResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/sd/cs/HttpClientResponse;"
        }
    .end annotation

    const-string/jumbo v1, "sendRequestWithCommand() parsing json error\n"

    const/4 v2, 0x0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/metamoji/sd/cs/SdHttpClient;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-virtual {v0}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getHomeDir()Ljava/lang/String;

    move-result-object v0

    .line 85
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    .line 89
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-direct {p0}, Lcom/metamoji/sd/cs/SdHttpClient;->createRequest()Lokhttp3/Request$Builder;

    move-result-object v4

    .line 92
    iget-boolean p1, p0, Lcom/metamoji/sd/cs/SdHttpClient;->mNocache:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz p1, :cond_1

    .line 93
    :try_start_1
    sget-object p1, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    invoke-virtual {v4, p1}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto/16 :goto_7

    .line 97
    :cond_1
    :goto_0
    :try_start_2
    iget v8, p0, Lcom/metamoji/sd/cs/SdHttpClient;->timeout:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object v3, p0

    move-object v6, p2

    move-object v7, p3

    :try_start_3
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/sd/cs/SdHttpClient;->sendRequest(Lokhttp3/Request$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 98
    iget-object p1, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mResponseBodyFile:Ljava/io/File;

    if-eqz p1, :cond_5

    .line 99
    iget-object p1, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mResponseMimeType:Ljava/lang/String;

    .line 100
    const-string p2, "application/json"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz p2, :cond_2

    .line 101
    :try_start_4
    new-instance p1, Lorg/json/JSONObject;

    iget-object p2, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mResponseBodyFile:Ljava/io/File;

    invoke-static {p2}, Lcom/metamoji/sd/SdUtils;->readFileAsString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-static {p1}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 103
    :try_start_5
    iget-object p2, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mResponseBodyFile:Ljava/io/File;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p2, v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object p2, v0

    move-object p1, v2

    .line 105
    :goto_1
    :try_start_6
    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/metamoji/sd/cs/SdHttpClient;->errorLog(Ljava/lang/String;)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    .line 107
    :cond_2
    const-string/jumbo p2, "text/html"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 108
    iget-object p1, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mResponseBodyFile:Ljava/io/File;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 109
    new-instance p1, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda7;-><init>()V

    invoke-direct {p0, p1}, Lcom/metamoji/sd/cs/SdHttpClient;->debugLog(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    .line 112
    :cond_3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    .line 113
    const-string p2, "responseBodyFile"

    iget-object p3, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mResponseBodyFile:Ljava/io/File;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string p2, "responseMimeType"

    iget-object p3, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mResponseMimeType:Ljava/lang/String;

    if-nez p3, :cond_4

    const-string p3, ""

    :cond_4
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance p2, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda8;-><init>(Lcom/metamoji/sd/cs/SdHttpClient;)V

    invoke-direct {p0, p2}, Lcom/metamoji/sd/cs/SdHttpClient;->debugLog(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_5
    :goto_2
    move-object p1, v2

    .line 123
    :goto_3
    new-instance p2, Lcom/metamoji/sd/cs/HttpClientResponse;

    if-eqz p1, :cond_6

    iget p3, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mHttpStatusCode:I

    goto :goto_4

    :cond_6
    const/4 p3, 0x0

    :goto_4
    iget-boolean v0, v3, Lcom/metamoji/sd/cs/SdHttpClient;->mIsCancel:Z

    invoke-direct {p2, p3, p1, v0}, Lcom/metamoji/sd/cs/HttpClientResponse;-><init>(ILjava/util/Map;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    return-object p2

    :catch_3
    move-exception v0

    goto :goto_6

    :cond_7
    :goto_5
    move-object v3, p0

    return-object v2

    :catch_4
    move-exception v0

    move-object v3, p0

    :goto_6
    move-object p1, v0

    .line 125
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "sendRequestWithCommand() exception ... \n "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/sd/cs/SdHttpClient;->errorLog(Ljava/lang/String;)V

    return-object v2
.end method

.method static final sendRequestWithCommandCore$lambda$0()Ljava/lang/String;
    .locals 1

    .line 109
    const-string v0, "received html body ... it\'s something wrong."

    return-object v0
.end method

.method static final sendRequestWithCommandCore$lambda$1(Lcom/metamoji/sd/cs/SdHttpClient;)Ljava/lang/String;
    .locals 2

    .line 116
    iget-object p0, p0, Lcom/metamoji/sd/cs/SdHttpClient;->mResponseMimeType:Ljava/lang/String;

    if-nez p0, :cond_0

    .line 117
    const-string/jumbo p0, "unknown type"

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendRequestWithCommand() received file ... \n "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 301
    monitor-enter p0

    .line 302
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/sd/cs/SdHttpClient;->mIsCancel:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lcom/metamoji/sd/cs/SdHttpClient;->mIsCancel:Z

    .line 304
    iget-object v0, p0, Lcom/metamoji/sd/cs/SdHttpClient;->mCall:Lokhttp3/Call;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 306
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getConnectionKeepAlive()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/metamoji/sd/cs/SdHttpClient;->mConnectionKeepAlive:Z

    return v0
.end method

.method public final getDiscardCookie()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/metamoji/sd/cs/SdHttpClient;->discardCookie:Z

    return v0
.end method

.method public final getMaintenanceText()Lcom/metamoji/sd/cs/HttpClientResponse;
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/metamoji/sd/cs/SdHttpClient;->getMaintenanceTextCore()Lcom/metamoji/sd/cs/HttpClientResponse;

    move-result-object v0

    return-object v0
.end method

.method public final getNoCache()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/metamoji/sd/cs/SdHttpClient;->mNocache:Z

    return v0
.end method

.method public final getTimeout()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/metamoji/sd/cs/SdHttpClient;->timeout:I

    return v0
.end method

.method protected final sendRequest(Lokhttp3/Request$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request$Builder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;I)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "request"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "url"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "method"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    const/4 v5, 0x0

    .line 170
    iput-boolean v5, v1, Lcom/metamoji/sd/cs/SdHttpClient;->mLoaded:Z

    .line 171
    iput v5, v1, Lcom/metamoji/sd/cs/SdHttpClient;->mHttpStatusCode:I

    const/4 v6, 0x0

    .line 172
    iput-object v6, v1, Lcom/metamoji/sd/cs/SdHttpClient;->mResponseMimeType:Ljava/lang/String;

    .line 173
    iput-object v6, v1, Lcom/metamoji/sd/cs/SdHttpClient;->mResponseBodyFile:Ljava/io/File;

    .line 174
    iput-object v6, v1, Lcom/metamoji/sd/cs/SdHttpClient;->mCall:Lokhttp3/Call;

    .line 178
    :try_start_0
    sget-object v7, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v7, v2}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v7

    if-nez v7, :cond_0

    return v5

    .line 179
    :cond_0
    invoke-virtual {v0, v7}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 181
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    const-string v9, "getDefault(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "toLowerCase(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x1

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_8

    :sswitch_0
    const-string v9, "post"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_8

    :cond_1
    if-nez v4, :cond_2

    return v5

    .line 186
    :cond_2
    sget-object v8, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v9, "application/json; charset=utf-8"

    invoke-virtual {v8, v9}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v8

    if-nez v8, :cond_3

    return v5

    .line 188
    :cond_3
    const-string v9, "requestBody"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object v4, v6

    :goto_0
    if-nez v4, :cond_5

    return v5

    .line 189
    :cond_5
    sget-object v9, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v9, v4, v8}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v8

    invoke-virtual {v0, v8}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 190
    new-instance v8, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda1;

    invoke-direct {v8, v2, v4}, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v8}, Lcom/metamoji/sd/cs/SdHttpClient;->debugLog(Lkotlin/jvm/functions/Function0;)V

    goto/16 :goto_3

    .line 181
    :sswitch_1
    const-string v9, "put"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_8

    :cond_6
    if-nez v4, :cond_7

    return v5

    .line 196
    :cond_7
    const-string v8, "requestBodyFile"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    if-eqz v8, :cond_a

    .line 198
    sget-object v9, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v11, "contentType"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v11, v4, Ljava/lang/String;

    if-eqz v11, :cond_8

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_8
    move-object v4, v6

    :goto_1
    if-nez v4, :cond_9

    .line 199
    const-string v4, "application/octet\uff0dstream"

    :cond_9
    invoke-virtual {v9, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    .line 200
    sget-object v9, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v9, v8, v4}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v8

    invoke-virtual {v0, v8}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 201
    new-instance v8, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda2;

    invoke-direct {v8, v2, v4}, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Lokhttp3/MediaType;)V

    invoke-direct {v1, v8}, Lcom/metamoji/sd/cs/SdHttpClient;->debugLog(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 203
    :cond_a
    sget-object v8, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v9, "application/json; charset=utf-8"

    invoke-virtual {v8, v9}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v8

    .line 204
    const-string v9, "requestBody"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v9, v4, Ljava/lang/String;

    if-eqz v9, :cond_b

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_b
    move-object v4, v6

    :goto_2
    if-nez v4, :cond_c

    return v5

    .line 205
    :cond_c
    sget-object v9, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v9, v4, v8}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v8

    invoke-virtual {v0, v8}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 206
    new-instance v8, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda3;

    invoke-direct {v8, v2, v4}, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v8}, Lcom/metamoji/sd/cs/SdHttpClient;->debugLog(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 181
    :sswitch_2
    const-string v4, "get"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_8

    .line 210
    :cond_d
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    .line 211
    new-instance v4, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2}, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lcom/metamoji/sd/cs/SdHttpClient;->debugLog(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    .line 181
    :sswitch_3
    const-string v4, "delete"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_8

    .line 214
    :cond_e
    invoke-static {v0, v6, v10, v6}, Lokhttp3/Request$Builder;->delete$default(Lokhttp3/Request$Builder;Lokhttp3/RequestBody;ILjava/lang/Object;)Lokhttp3/Request$Builder;

    .line 215
    new-instance v4, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda5;

    invoke-direct {v4, v2}, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lcom/metamoji/sd/cs/SdHttpClient;->debugLog(Lkotlin/jvm/functions/Function0;)V

    .line 223
    :goto_3
    iget-boolean v4, v1, Lcom/metamoji/sd/cs/SdHttpClient;->discardCookie:Z

    if-eqz v4, :cond_f

    .line 225
    sget-object v4, Lcom/metamoji/sd/cs/SdHttpClient;->Companion:Lcom/metamoji/sd/cs/SdHttpClient$Companion;

    invoke-virtual {v4, v7}, Lcom/metamoji/sd/cs/SdHttpClient$Companion;->clearCookie(Lokhttp3/HttpUrl;)V

    .line 228
    :cond_f
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :try_start_1
    iget-boolean v4, v1, Lcom/metamoji/sd/cs/SdHttpClient;->mIsCancel:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    if-eqz v4, :cond_10

    .line 230
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v5

    .line 232
    :cond_10
    :try_start_3
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    .line 228
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 238
    :try_start_5
    sget-object v4, Lcom/metamoji/network/NwConnectionTimeout;->LONG:Lcom/metamoji/network/NwConnectionTimeout;

    invoke-virtual {v4}, Lcom/metamoji/network/NwConnectionTimeout;->getSeconds()J

    move-result-wide v11

    sget-object v17, Lcom/metamoji/sd/cs/SdHttpClient;->mCustomCookieStore:Lcom/metamoji/network/NwCookieJar;

    const-wide/16 v13, 0x3c

    const-wide/16 v15, 0x3c

    invoke-static/range {v11 .. v17}, Lcom/metamoji/network/NwHttpClient;->customClient(JJJLcom/metamoji/network/NwCookieJar;)Lokhttp3/OkHttpClient;

    move-result-object v4

    .line 239
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v4, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 240
    iput-object v0, v1, Lcom/metamoji/sd/cs/SdHttpClient;->mCall:Lokhttp3/Call;

    move/from16 v4, p5

    .line 244
    invoke-static {v0, v4}, Lcom/metamoji/network/NwHttpClientKt;->execute(Lokhttp3/Call;I)Lokhttp3/Response;

    move-result-object v4

    .line 246
    new-instance v7, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda6;

    invoke-direct {v7, v3, v2, v4}, Lcom/metamoji/sd/cs/SdHttpClient$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Response;)V

    invoke-direct {v1, v7}, Lcom/metamoji/sd/cs/SdHttpClient;->debugLog(Lkotlin/jvm/functions/Function0;)V

    .line 248
    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 249
    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v0

    iput v0, v1, Lcom/metamoji/sd/cs/SdHttpClient;->mHttpStatusCode:I

    .line 250
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_13

    move-object v3, v0

    check-cast v3, Ljava/io/Closeable;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    :try_start_6
    move-object v0, v3

    check-cast v0, Lokhttp3/ResponseBody;

    .line 251
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 252
    invoke-virtual {v4}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_12

    .line 253
    :cond_11
    const-string v4, ""

    .line 251
    :cond_12
    iput-object v4, v1, Lcom/metamoji/sd/cs/SdHttpClient;->mResponseMimeType:Ljava/lang/String;

    .line 254
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    move-object v0, v4

    check-cast v0, Ljava/io/InputStream;

    .line 255
    const-string v7, "mmj.sd.httpclient."

    const-string v8, ".tmp"

    invoke-static {}, Lcom/metamoji/sd/SdUtils;->getTempDir()Ljava/io/File;

    move-result-object v9

    invoke-static {v7, v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 256
    :try_start_8
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v8, Ljava/io/Closeable;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    move-object v9, v8

    check-cast v9, Ljava/io/FileOutputStream;

    .line 257
    check-cast v9, Ljava/io/OutputStream;

    const/4 v11, 0x2

    invoke-static {v0, v9, v5, v11, v6}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    .line 258
    iput-boolean v10, v1, Lcom/metamoji/sd/cs/SdHttpClient;->mLoaded:Z

    .line 259
    iput-object v7, v1, Lcom/metamoji/sd/cs/SdHttpClient;->mResponseBodyFile:Ljava/io/File;

    .line 260
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 256
    :try_start_a
    invoke-static {v8, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 261
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 254
    :try_start_b
    invoke-static {v4, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 262
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 250
    :try_start_c
    invoke-static {v3, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v5, v0

    .line 256
    :try_start_d
    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_e
    invoke-static {v8, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v0

    move-object v5, v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v5, v0

    move-object v7, v6

    .line 254
    :goto_4
    :try_start_f
    throw v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_10
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :catchall_5
    move-exception v0

    move-object v4, v0

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object v4, v0

    move-object v7, v6

    .line 250
    :goto_5
    :try_start_11
    throw v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :catchall_7
    move-exception v0

    :try_start_12
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_7

    :cond_13
    move-object v7, v6

    .line 265
    :goto_6
    :try_start_13
    iput-object v6, v1, Lcom/metamoji/sd/cs/SdHttpClient;->mCall:Lokhttp3/Call;

    .line 266
    iget-boolean v0, v1, Lcom/metamoji/sd/cs/SdHttpClient;->mLoaded:Z

    if-nez v0, :cond_15

    if-eqz v7, :cond_15

    .line 267
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_9

    :catchall_9
    move-exception v0

    move-object v7, v6

    .line 265
    :goto_7
    iput-object v6, v1, Lcom/metamoji/sd/cs/SdHttpClient;->mCall:Lokhttp3/Call;

    .line 266
    iget-boolean v3, v1, Lcom/metamoji/sd/cs/SdHttpClient;->mLoaded:Z

    if-nez v3, :cond_14

    .line 267
    move-object v3, v7

    check-cast v3, Ljava/io/File;

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 270
    :cond_14
    throw v0

    :catchall_a
    move-exception v0

    .line 228
    monitor-exit p0

    throw v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    :goto_8
    return v5

    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exception "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/metamoji/sd/cs/SdHttpClient;->errorLog(Ljava/lang/String;)V

    .line 276
    :cond_15
    :goto_9
    iget-boolean v0, v1, Lcom/metamoji/sd/cs/SdHttpClient;->mLoaded:Z

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x4f997a55 -> :sswitch_3
        0x18f56 -> :sswitch_2
        0x1b30f -> :sswitch_1
        0x3498a0 -> :sswitch_0
    .end sparse-switch
.end method

.method public final sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sd/cs/HttpClientResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/sd/cs/HttpClientResponse;"
        }
    .end annotation

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/sd/cs/SdHttpClient;->sendRequestWithCommandCore(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sd/cs/HttpClientResponse;

    move-result-object p1

    return-object p1
.end method

.method public final setConnectionKeepAlive(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/metamoji/sd/cs/SdHttpClient;->mConnectionKeepAlive:Z

    return-void
.end method

.method public final setDiscardCookie(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/metamoji/sd/cs/SdHttpClient;->discardCookie:Z

    return-void
.end method

.method public final setNoCache(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/metamoji/sd/cs/SdHttpClient;->mNocache:Z

    return-void
.end method

.method public final setTimeout(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/metamoji/sd/cs/SdHttpClient;->timeout:I

    return-void
.end method
