.class public Lcom/metamoji/cs/CsHttpClient;
.super Ljava/lang/Object;
.source "CsHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cs/CsHttpClient$Companion;,
        Lcom/metamoji/cs/CsHttpClient$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCsHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CsHttpClient.kt\ncom/metamoji/cs/CsHttpClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,313:1\n1#2:314\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 .2\u00020\u0001:\u0001.B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\t\u0008\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0006J\u0016\u0010\t\u001a\u00020\n2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\rH\u0002J*\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\rJ2\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0017\u001a\u00020\u0018J.\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aJ\"\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\rJ*\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0017\u001a\u00020\u0018J \u0010\u001c\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u001eJ.\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020#2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\r2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0002J(\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020#2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aH\u0002J\"\u0010$\u001a\u0004\u0018\u00010\u00112\u000e\u0010\u001f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010 0\u000c2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\"\u0010%\u001a\u0004\u0018\u00010\u00112\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\rJ*\u0010%\u001a\u0004\u0018\u00010\u00112\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0017\u001a\u00020\u0018J \u0010&\u001a\u0004\u0018\u00010\u00112\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u001d\u001a\u00020\u001eJ&\u0010\'\u001a\u0004\u0018\u00010\u00112\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0014\u001a\u00020\u00152\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aJ\u0018\u0010%\u001a\u00020\u00112\u0006\u0010,\u001a\u00020 2\u0006\u0010\u0017\u001a\u00020\u0018H\u0003J\u0006\u0010-\u001a\u00020\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010(\u001a\u00020)8F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+\u00a8\u0006/"
    }
    d2 = {
        "Lcom/metamoji/cs/CsHttpClient;",
        "",
        "timeout",
        "",
        "<init>",
        "(I)V",
        "()V",
        "getTimeout",
        "()I",
        "debugLog",
        "",
        "lazyMessage",
        "Lkotlin/Function0;",
        "",
        "errorLog",
        "msg",
        "sendRequestWithCommand",
        "Lcom/metamoji/cs/HttpClientResponseBean;",
        "contextRoot",
        "command",
        "method",
        "Lcom/metamoji/cs/CsHttpClientMethod;",
        "param",
        "bodyAsFile",
        "",
        "paramDic",
        "Ljava/util/ArrayList;",
        "Lcom/metamoji/cs/NameValuePair;",
        "sendRequestWithMultipartFromData",
        "reqBody",
        "Lokhttp3/RequestBody;",
        "createRequest",
        "Lokhttp3/Request;",
        "m",
        "uri",
        "Ljava/net/URI;",
        "internalSendRequest",
        "sendRequestWithURL",
        "sendRequestWithBody",
        "sendRequestWithParamDic",
        "client",
        "Lokhttp3/OkHttpClient;",
        "getClient",
        "()Lokhttp3/OkHttpClient;",
        "req",
        "clearSession",
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
.field public static final Companion:Lcom/metamoji/cs/CsHttpClient$Companion;

.field private static final DEBUG_LOG_ENABLED:Z

.field private static final DM_APP_VERSION:Ljava/lang/String; = "MMJDmCloudService/2.0"

.field private static final USER_AGENT:Ljava/lang/String; = "MMJCmCloudService/1.0"

.field private static final logger:Lcom/metamoji/lib/utils/UtLog;


# instance fields
.field private final timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/metamoji/cs/CsHttpClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/cs/CsHttpClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/metamoji/cs/CsHttpClient;->Companion:Lcom/metamoji/cs/CsHttpClient$Companion;

    .line 299
    new-instance v2, Lcom/metamoji/lib/utils/UtLog;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const-string v3, "CS"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/metamoji/lib/utils/UtLog;-><init>(Ljava/lang/String;Lcom/metamoji/lib/utils/UtLog;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/metamoji/cs/CsHttpClient;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v0, 0x1

    .line 300
    sput-boolean v0, Lcom/metamoji/cs/CsHttpClient;->DEBUG_LOG_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x7530

    .line 37
    invoke-direct {p0, v0}, Lcom/metamoji/cs/CsHttpClient;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/metamoji/cs/CsHttpClient;->timeout:I

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/metamoji/lib/utils/UtLog;
    .locals 1

    .line 34
    sget-object v0, Lcom/metamoji/cs/CsHttpClient;->logger:Lcom/metamoji/lib/utils/UtLog;

    return-object v0
.end method

.method private final createRequest(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/net/URI;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 123
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0, p2}, Lokhttp3/HttpUrl$Companion;->get(Ljava/net/URI;)Lokhttp3/HttpUrl;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 124
    :cond_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 125
    sget-object v2, Lcom/metamoji/cs/CsHttpClient$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/cs/CsHttpClientMethod;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_9

    const/4 v3, 0x2

    const-string v4, "application/json; charset=utf-8"

    if-eq p1, v3, :cond_5

    const/4 p4, 0x3

    if-eq p1, p4, :cond_2

    const/4 p3, 0x4

    if-ne p1, p3, :cond_1

    .line 148
    invoke-static {v1, v0, v2, v0}, Lokhttp3/Request$Builder;->delete$default(Lokhttp3/Request$Builder;Lokhttp3/RequestBody;ILjava/lang/Object;)Lokhttp3/Request$Builder;

    .line 149
    new-instance p1, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda6;

    invoke-direct {p1, p2}, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda6;-><init>(Lokhttp3/HttpUrl;)V

    invoke-direct {p0, p1}, Lcom/metamoji/cs/CsHttpClient;->debugLog(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 125
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    if-nez p3, :cond_3

    return-object v0

    .line 143
    :cond_3
    sget-object p1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {p1, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v0

    .line 144
    :cond_4
    sget-object p4, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {p4, p3, p1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 145
    new-instance p1, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda5;

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda5;-><init>(Lokhttp3/HttpUrl;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/metamoji/cs/CsHttpClient;->debugLog(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    :cond_5
    if-eqz p4, :cond_6

    .line 133
    invoke-virtual {v1, p4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_6
    if-nez p3, :cond_7

    return-object v0

    .line 136
    :cond_7
    sget-object p1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {p1, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    if-nez p1, :cond_8

    return-object v0

    .line 137
    :cond_8
    sget-object p4, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {p4, p3, p1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 138
    new-instance p1, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda4;

    invoke-direct {p1, p2, p3}, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda4;-><init>(Lokhttp3/HttpUrl;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/metamoji/cs/CsHttpClient;->debugLog(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 128
    :cond_9
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    .line 129
    new-instance p1, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2}, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda3;-><init>(Lokhttp3/HttpUrl;)V

    invoke-direct {p0, p1}, Lcom/metamoji/cs/CsHttpClient;->debugLog(Lkotlin/jvm/functions/Function0;)V

    .line 152
    :goto_0
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object p1

    .line 153
    const-string p2, "User-Agent"

    const-string p3, "MMJCmCloudService/1.0"

    invoke-virtual {v1, p2, p3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 154
    const-string p2, "X-DM-AppVersion"

    const-string p3, "MMJDmCloudService/2.0"

    invoke-virtual {v1, p2, p3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 155
    invoke-virtual {p1}, Lcom/metamoji/cs/CsCloudServiceContext;->getLocale()Ljava/lang/String;

    move-result-object p2

    const-string p3, "getLocale(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "X-DM-Locale"

    invoke-virtual {v1, p3, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 156
    invoke-virtual {p1}, Lcom/metamoji/cs/CsCloudServiceContext;->getProductName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "getProductName(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "X-DM-ProductName"

    invoke-virtual {v1, p3, p2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 157
    invoke-virtual {p1}, Lcom/metamoji/cs/CsCloudServiceContext;->getProductVersion()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getProductVersion(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "X-DM-ProductVersion"

    invoke-virtual {v1, p2, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 159
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private final createRequest(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/net/URI;Ljava/util/ArrayList;)Lokhttp3/Request;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cs/CsHttpClientMethod;",
            "Ljava/net/URI;",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/cs/NameValuePair;",
            ">;)",
            "Lokhttp3/Request;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 167
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0, p2}, Lokhttp3/HttpUrl$Companion;->get(Ljava/net/URI;)Lokhttp3/HttpUrl;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 168
    :cond_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 169
    sget-object v1, Lcom/metamoji/cs/CsHttpClient$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/metamoji/cs/CsHttpClientMethod;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 171
    new-instance p1, Lokhttp3/FormBody$Builder;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 172
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const-string v0, "iterator(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "next(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/metamoji/cs/NameValuePair;

    .line 173
    invoke-virtual {v0}, Lcom/metamoji/cs/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/metamoji/cs/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->addEncoded(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    check-cast p1, Lokhttp3/RequestBody;

    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 182
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object p1

    .line 183
    const-string p3, "User-Agent"

    const-string v0, "MMJCmCloudService/1.0"

    invoke-virtual {p2, p3, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 184
    const-string p3, "X-DM-AppVersion"

    const-string v0, "MMJDmCloudService/2.0"

    invoke-virtual {p2, p3, v0}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 185
    invoke-virtual {p1}, Lcom/metamoji/cs/CsCloudServiceContext;->getLocale()Ljava/lang/String;

    move-result-object p3

    const-string v0, "getLocale(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "X-DM-Locale"

    invoke-virtual {p2, v0, p3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 186
    invoke-virtual {p1}, Lcom/metamoji/cs/CsCloudServiceContext;->getProductName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "getProductName(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "X-DM-ProductName"

    invoke-virtual {p2, v0, p3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p2

    .line 187
    invoke-virtual {p1}, Lcom/metamoji/cs/CsCloudServiceContext;->getProductVersion()Ljava/lang/String;

    move-result-object p1

    const-string p3, "getProductVersion(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "X-DM-ProductVersion"

    invoke-virtual {p2, p3, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 188
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method static final createRequest$lambda$0(Lokhttp3/HttpUrl;)Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S: GET "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final createRequest$lambda$1(Lokhttp3/HttpUrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S: POST json "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final createRequest$lambda$2(Lokhttp3/HttpUrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S: PUT json "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final createRequest$lambda$3(Lokhttp3/HttpUrl;)Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "S: DELETE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    .line 41
    sget-boolean v0, Lcom/metamoji/cs/CsHttpClient;->DEBUG_LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CsHttpClient] "

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

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CsHttpClient] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method private final internalSendRequest(Lkotlin/jvm/functions/Function0;Z)Lcom/metamoji/cs/HttpClientResponseBean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lokhttp3/Request;",
            ">;Z)",
            "Lcom/metamoji/cs/HttpClientResponseBean;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 196
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/Request;

    if-nez p1, :cond_0

    return-object v0

    .line 197
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithURL(Lokhttp3/Request;Z)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 199
    sget-object p2, Lcom/metamoji/cs/CsHttpClient;->logger:Lcom/metamoji/lib/utils/UtLog;

    const/4 v1, 0x2

    invoke-static {p2, p1, v0, v1, v0}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0
.end method

.method static final sendRequestWithBody$lambda$6(Lcom/metamoji/cs/CsHttpClient;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/net/URI;Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 1

    const/4 v0, 0x0

    .line 224
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/metamoji/cs/CsHttpClient;->createRequest(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/net/URI;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method static final sendRequestWithParamDic$lambda$7(Lcom/metamoji/cs/CsHttpClient;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/net/URI;Ljava/util/ArrayList;)Lokhttp3/Request;
    .locals 0

    .line 237
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/cs/CsHttpClient;->createRequest(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/net/URI;Ljava/util/ArrayList;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method private final sendRequestWithURL(Lokhttp3/Request;Z)Lcom/metamoji/cs/HttpClientResponseBean;
    .locals 11

    .line 253
    sget-object v0, Lcom/metamoji/cs/CsHttpClient;->logger:Lcom/metamoji/lib/utils/UtLog;

    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "CsHttpClient.sendRequestWithURL must be called in sub-thread."

    invoke-virtual {v0, v1, v3}, Lcom/metamoji/lib/utils/UtLog;->assert(ZLjava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/metamoji/cs/CsHttpClient;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v3, v1

    check-cast v3, Lokhttp3/Response;

    .line 258
    new-instance v4, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1, v3}, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda0;-><init>(Lokhttp3/Request;Lokhttp3/Response;)V

    invoke-direct {p0, v4}, Lcom/metamoji/cs/CsHttpClient;->debugLog(Lkotlin/jvm/functions/Function0;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_6

    .line 262
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 263
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 265
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    check-cast v5, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    move-object v6, v5

    check-cast v6, Ljava/io/InputStream;

    .line 266
    const-string v7, "mmj.cs.httpclient."

    const-string v8, ".tmp"

    invoke-static {}, Lcom/metamoji/sd/SdUtils;->getTempDir()Ljava/io/File;

    move-result-object v9

    invoke-static {v7, v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 267
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v8, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v8, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v7, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v8, v7

    check-cast v8, Ljava/io/FileOutputStream;

    if-eqz v6, :cond_1

    .line 269
    check-cast v8, Ljava/io/OutputStream;

    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-static {v6, v8, v9, v10, p1}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    .line 270
    iput-boolean v2, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 272
    :cond_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    :try_start_3
    invoke-static {v7, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 273
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 265
    :try_start_4
    invoke-static {v5, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 275
    iget-boolean v2, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v2, :cond_3

    .line 276
    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Ljava/io/File;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 277
    :cond_2
    const-string p2, "not loaded"

    invoke-virtual {v0, p2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 278
    new-instance v2, Lcom/metamoji/cs/HttpClientResponseBean;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/cs/HttpClientResponseBean;-><init>(Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 281
    :cond_3
    :try_start_5
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v2

    iget-object v4, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/io/File;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, p1

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", path="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    .line 282
    new-instance v0, Lcom/metamoji/cs/HttpClientResponseBean;

    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result v2

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Ljava/io/File;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_5
    move-object p2, p1

    :goto_2
    invoke-direct {v0, p1, v2, p2}, Lcom/metamoji/cs/HttpClientResponseBean;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 267
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    move-object p2, v0

    :try_start_7
    invoke-static {v7, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    move-object p1, v0

    .line 265
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    move-object p2, v0

    :try_start_9
    invoke-static {v5, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    .line 285
    :cond_6
    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    if-eqz p2, :cond_7

    check-cast p2, Ljava/io/Closeable;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    move-object v2, p2

    check-cast v2, Lokhttp3/ResponseBody;

    .line 286
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 285
    :try_start_b
    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object p1, v0

    :try_start_c
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    :try_start_d
    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    move-object v2, p1

    .line 288
    :goto_3
    invoke-virtual {v3}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    move-object p2, v3

    move-object v3, v2

    .line 289
    new-instance v2, Lcom/metamoji/cs/HttpClientResponseBean;

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/cs/HttpClientResponseBean;-><init>(Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_6
    move-exception v0

    move-object p1, v0

    :try_start_e
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catchall_7
    move-exception v0

    move-object p2, v0

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method static final sendRequestWithURL$lambda$12$lambda$8(Lokhttp3/Request;Lokhttp3/Response;)Ljava/lang/String;
    .locals 4

    .line 258
    invoke-virtual {p0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "R: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n status="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", message="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final sendRequestWithURL$lambda$5(Lcom/metamoji/cs/CsHttpClient;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/net/URI;Ljava/lang/String;)Lokhttp3/Request;
    .locals 1

    const/4 v0, 0x0

    .line 218
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/metamoji/cs/CsHttpClient;->createRequest(Lcom/metamoji/cs/CsHttpClientMethod;Ljava/net/URI;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized clearSession()V
    .locals 1

    monitor-enter p0

    .line 295
    :try_start_0
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->clearCookie()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getClient()Lokhttp3/OkHttpClient;
    .locals 2

    .line 242
    iget v0, p0, Lcom/metamoji/cs/CsHttpClient;->timeout:I

    const/16 v1, 0x1388

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getShortTimeoutClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getMediumTimeoutClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final getTimeout()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/metamoji/cs/CsHttpClient;->timeout:I

    return v0
.end method

.method public final sendRequestWithBody(Ljava/net/URI;Lcom/metamoji/cs/CsHttpClientMethod;Lokhttp3/RequestBody;)Lcom/metamoji/cs/HttpClientResponseBean;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reqBody"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    new-instance v0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/cs/CsHttpClient;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/net/URI;Lokhttp3/RequestBody;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/metamoji/cs/CsHttpClient;->internalSendRequest(Lkotlin/jvm/functions/Function0;Z)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object p1

    return-object p1
.end method

.method public final sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;
    .locals 1

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;Z)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object p1

    return-object p1
.end method

.method public final sendRequestWithCommand(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;Z)Lcom/metamoji/cs/HttpClientResponseBean;
    .locals 7

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getRestBasePath()Ljava/lang/String;

    move-result-object v2

    const-string v0, "getRestBasePath(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;Z)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object p1

    return-object p1
.end method

.method public final sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;
    .locals 7

    const-string v0, "contextRoot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 60
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;Z)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object p1

    return-object p1
.end method

.method public final sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;Z)Lcom/metamoji/cs/HttpClientResponseBean;
    .locals 3

    const-string v0, "contextRoot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    :try_start_0
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getRestHost()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v1, p3, p4, p5}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithURL(Ljava/net/URI;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;Z)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 68
    sget-object p2, Lcom/metamoji/cs/CsHttpClient;->logger:Lcom/metamoji/lib/utils/UtLog;

    check-cast p1, Ljava/lang/Throwable;

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-static {p2, p1, p4, p3, p4}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-object p4
.end method

.method public final sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/util/ArrayList;)Lcom/metamoji/cs/HttpClientResponseBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/metamoji/cs/CsHttpClientMethod;",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/cs/NameValuePair;",
            ">;)",
            "Lcom/metamoji/cs/HttpClientResponseBean;"
        }
    .end annotation

    const-string v0, "contextRoot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "command"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paramDic"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    :try_start_0
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getRestHost()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, v1, p3, p4}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithParamDic(Ljava/net/URI;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/util/ArrayList;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 87
    sget-object p2, Lcom/metamoji/cs/CsHttpClient;->logger:Lcom/metamoji/lib/utils/UtLog;

    check-cast p1, Ljava/lang/Throwable;

    const/4 p3, 0x2

    const/4 p4, 0x0

    invoke-static {p2, p1, p4, p3, p4}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-object p4
.end method

.method public final sendRequestWithMultipartFromData(Ljava/lang/String;Lcom/metamoji/cs/CsHttpClientMethod;Lokhttp3/RequestBody;)Lcom/metamoji/cs/HttpClientResponseBean;
    .locals 4

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reqBody"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    :try_start_0
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getRestHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getRestBasePath()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, v1, p2, p3}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithBody(Ljava/net/URI;Lcom/metamoji/cs/CsHttpClientMethod;Lokhttp3/RequestBody;)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 113
    sget-object p2, Lcom/metamoji/cs/CsHttpClient;->logger:Lcom/metamoji/lib/utils/UtLog;

    check-cast p1, Ljava/lang/Throwable;

    const/4 p3, 0x2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, p3, v0}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v0
.end method

.method public final sendRequestWithParamDic(Ljava/net/URI;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/util/ArrayList;)Lcom/metamoji/cs/HttpClientResponseBean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lcom/metamoji/cs/CsHttpClientMethod;",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/cs/NameValuePair;",
            ">;)",
            "Lcom/metamoji/cs/HttpClientResponseBean;"
        }
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paramDic"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    new-instance v0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda7;-><init>(Lcom/metamoji/cs/CsHttpClient;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/net/URI;Ljava/util/ArrayList;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/metamoji/cs/CsHttpClient;->internalSendRequest(Lkotlin/jvm/functions/Function0;Z)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object p1

    return-object p1
.end method

.method public final sendRequestWithURL(Ljava/net/URI;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;)Lcom/metamoji/cs/HttpClientResponseBean;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/metamoji/cs/CsHttpClient;->sendRequestWithURL(Ljava/net/URI;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;Z)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object p1

    return-object p1
.end method

.method public final sendRequestWithURL(Ljava/net/URI;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/lang/String;Z)Lcom/metamoji/cs/HttpClientResponseBean;
    .locals 1

    const-string v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/metamoji/cs/CsHttpClient$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/cs/CsHttpClient;Lcom/metamoji/cs/CsHttpClientMethod;Ljava/net/URI;Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Lcom/metamoji/cs/CsHttpClient;->internalSendRequest(Lkotlin/jvm/functions/Function0;Z)Lcom/metamoji/cs/HttpClientResponseBean;

    move-result-object p1

    return-object p1
.end method
