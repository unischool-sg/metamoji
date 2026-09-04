.class public final Lcom/metamoji/network/NwHttpClient;
.super Ljava/lang/Object;
.source "NwHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/network/NwHttpClient$DebugX509TrustManager;,
        Lcom/metamoji/network/NwHttpClient$HttpEventListener;,
        Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;,
        Lcom/metamoji/network/NwHttpClient$TransportTimer;,
        Lcom/metamoji/network/NwHttpClient$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u00049:;<B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0013\u001a\u00020\u0014H\u0007J2\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00072\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000bH\u0007J2\u0010\u001b\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00072\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000bH\u0007J\u0008\u0010\u001c\u001a\u00020\u0014H\u0007J\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0007J\u0016\u0010\u001f\u001a\u00020\u00142\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001e0!H\u0002J\u000e\u0010\"\u001a\u00020\u00142\u0006\u0010#\u001a\u00020\u001eJ\u0011\u00100\u001a\u00020\u000f2\u0006\u00101\u001a\u000202H\u0087\u0002J\u0018\u00103\u001a\u0002042\u0006\u00105\u001a\u0002062\u0006\u00101\u001a\u000207H\u0007J\u000c\u00108\u001a\u00020\u0016*\u00020\u0016H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010$\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008%\u0010\u0003\u001a\u0004\u0008&\u0010\u0012R\u001a\u0010\'\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008(\u0010\u0003\u001a\u0004\u0008)\u0010\u0012R\u001a\u0010*\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008+\u0010\u0003\u001a\u0004\u0008,\u0010\u0012R\u001a\u0010-\u001a\u00020\u000f8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008.\u0010\u0003\u001a\u0004\u0008/\u0010\u0012\u00a8\u0006="
    }
    d2 = {
        "Lcom/metamoji/network/NwHttpClient;",
        "",
        "<init>",
        "()V",
        "ENABLE_DEBUG_LOG",
        "",
        "READ_TIMEOUT",
        "",
        "WRITE_TIMEOUT",
        "ALLOW_ORE2_CERT",
        "mDefaultCookieJar",
        "Lcom/metamoji/network/NwCookieJar;",
        "mMotherLock",
        "Ljava/lang/Object;",
        "mMotherClient",
        "Lokhttp3/OkHttpClient;",
        "motherClient",
        "getMotherClient",
        "()Lokhttp3/OkHttpClient;",
        "reset",
        "",
        "customClientBuilder",
        "Lokhttp3/OkHttpClient$Builder;",
        "connectionTimeoutInSec",
        "readTimeoutInSec",
        "writeTimeoutInSec",
        "cookieJar",
        "customClient",
        "clearCookie",
        "host",
        "",
        "debugLog",
        "lazyMessage",
        "Lkotlin/Function0;",
        "errorLog",
        "msg",
        "client",
        "getClient$annotations",
        "getClient",
        "shortTimeoutClient",
        "getShortTimeoutClient$annotations",
        "getShortTimeoutClient",
        "longTimeoutClient",
        "getLongTimeoutClient$annotations",
        "getLongTimeoutClient",
        "mediumTimeoutClient",
        "getMediumTimeoutClient$annotations",
        "getMediumTimeoutClient",
        "get",
        "timeout",
        "Lcom/metamoji/network/NwConnectionTimeout;",
        "executeWithTimeout",
        "Lokhttp3/Response;",
        "call",
        "Lokhttp3/Call;",
        "",
        "trustOre2Cert",
        "ProxyAuthenticator",
        "HttpEventListener",
        "TransportTimer",
        "DebugX509TrustManager",
        "network"
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
.field private static final ALLOW_ORE2_CERT:Z = false

.field public static final ENABLE_DEBUG_LOG:Z = true

.field public static final INSTANCE:Lcom/metamoji/network/NwHttpClient;

.field public static final READ_TIMEOUT:J = 0x3cL

.field public static final WRITE_TIMEOUT:J = 0x3cL

.field private static final mDefaultCookieJar:Lcom/metamoji/network/NwCookieJar;

.field private static mMotherClient:Lokhttp3/OkHttpClient;

.field private static final mMotherLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/network/NwHttpClient;

    invoke-direct {v0}, Lcom/metamoji/network/NwHttpClient;-><init>()V

    sput-object v0, Lcom/metamoji/network/NwHttpClient;->INSTANCE:Lcom/metamoji/network/NwHttpClient;

    .line 51
    new-instance v0, Lcom/metamoji/network/NwCookieJar;

    invoke-direct {v0}, Lcom/metamoji/network/NwCookieJar;-><init>()V

    sput-object v0, Lcom/metamoji/network/NwHttpClient;->mDefaultCookieJar:Lcom/metamoji/network/NwCookieJar;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/network/NwHttpClient;->mMotherLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$debugLog(Lcom/metamoji/network/NwHttpClient;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/metamoji/network/NwHttpClient;->debugLog(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getMMotherClient$p()Lokhttp3/OkHttpClient;
    .locals 1

    .line 43
    sget-object v0, Lcom/metamoji/network/NwHttpClient;->mMotherClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static final synthetic access$getMMotherLock$p()Ljava/lang/Object;
    .locals 1

    .line 43
    sget-object v0, Lcom/metamoji/network/NwHttpClient;->mMotherLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static final synthetic access$setMMotherClient$p(Lokhttp3/OkHttpClient;)V
    .locals 0

    .line 43
    sput-object p0, Lcom/metamoji/network/NwHttpClient;->mMotherClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public static final clearCookie()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 420
    sget-object v0, Lcom/metamoji/network/NwHttpClient;->mDefaultCookieJar:Lcom/metamoji/network/NwCookieJar;

    invoke-virtual {v0}, Lcom/metamoji/network/NwCookieJar;->clearCookies()V

    return-void
.end method

.method public static final clearCookie(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "host"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    sget-object v0, Lcom/metamoji/network/NwHttpClient;->mDefaultCookieJar:Lcom/metamoji/network/NwCookieJar;

    invoke-virtual {v0, p0}, Lcom/metamoji/network/NwCookieJar;->clearCookie(Ljava/lang/String;)V

    return-void
.end method

.method public static final customClient()Lokhttp3/OkHttpClient;
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v7, 0xf

    const/4 v8, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/metamoji/network/NwHttpClient;->customClient$default(JJJLcom/metamoji/network/NwCookieJar;ILjava/lang/Object;)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static final customClient(J)Lokhttp3/OkHttpClient;
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v7, 0xe

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v0, p0

    invoke-static/range {v0 .. v8}, Lcom/metamoji/network/NwHttpClient;->customClient$default(JJJLcom/metamoji/network/NwCookieJar;ILjava/lang/Object;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final customClient(JJ)Lokhttp3/OkHttpClient;
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v8}, Lcom/metamoji/network/NwHttpClient;->customClient$default(JJJLcom/metamoji/network/NwCookieJar;ILjava/lang/Object;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final customClient(JJJ)Lokhttp3/OkHttpClient;
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v8}, Lcom/metamoji/network/NwHttpClient;->customClient$default(JJJLcom/metamoji/network/NwCookieJar;ILjava/lang/Object;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final customClient(JJJLcom/metamoji/network/NwCookieJar;)Lokhttp3/OkHttpClient;
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 102
    invoke-static/range {p0 .. p6}, Lcom/metamoji/network/NwHttpClient;->customClientBuilder(JJJLcom/metamoji/network/NwCookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic customClient$default(JJJLcom/metamoji/network/NwCookieJar;ILjava/lang/Object;)Lokhttp3/OkHttpClient;
    .locals 2

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 101
    sget-object p0, Lcom/metamoji/network/NwConnectionTimeout;->MEDIUM:Lcom/metamoji/network/NwConnectionTimeout;

    invoke-virtual {p0}, Lcom/metamoji/network/NwConnectionTimeout;->getSeconds()J

    move-result-wide p0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const-wide/16 v0, 0x3c

    if-eqz p8, :cond_1

    move-wide p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-wide p4, v0

    :cond_2
    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_3

    const/4 p6, 0x0

    :cond_3
    move-object p8, p6

    move-wide p6, p4

    move-wide p4, p2

    move-wide p2, p0

    .line 98
    invoke-static/range {p2 .. p8}, Lcom/metamoji/network/NwHttpClient;->customClient(JJJLcom/metamoji/network/NwCookieJar;)Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final customClientBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v7, 0xf

    const/4 v8, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Lcom/metamoji/network/NwHttpClient;->customClientBuilder$default(JJJLcom/metamoji/network/NwCookieJar;ILjava/lang/Object;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static final customClientBuilder(J)Lokhttp3/OkHttpClient$Builder;
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v7, 0xe

    const/4 v8, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v0, p0

    invoke-static/range {v0 .. v8}, Lcom/metamoji/network/NwHttpClient;->customClientBuilder$default(JJJLcom/metamoji/network/NwCookieJar;ILjava/lang/Object;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final customClientBuilder(JJ)Lokhttp3/OkHttpClient$Builder;
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v8}, Lcom/metamoji/network/NwHttpClient;->customClientBuilder$default(JJJLcom/metamoji/network/NwCookieJar;ILjava/lang/Object;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final customClientBuilder(JJJ)Lokhttp3/OkHttpClient$Builder;
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v8}, Lcom/metamoji/network/NwHttpClient;->customClientBuilder$default(JJJLcom/metamoji/network/NwCookieJar;ILjava/lang/Object;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static final customClientBuilder(JJJLcom/metamoji/network/NwCookieJar;)Lokhttp3/OkHttpClient$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 88
    sget-object v0, Lcom/metamoji/network/NwHttpClient;->INSTANCE:Lcom/metamoji/network/NwHttpClient;

    invoke-direct {v0}, Lcom/metamoji/network/NwHttpClient;->getMotherClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    if-nez p6, :cond_0

    .line 89
    sget-object p6, Lcom/metamoji/network/NwHttpClient;->mDefaultCookieJar:Lcom/metamoji/network/NwCookieJar;

    :cond_0
    check-cast p6, Lokhttp3/CookieJar;

    invoke-virtual {v0, p6}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p6

    .line 90
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p6, p2, p3, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    .line 91
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p4, p5, p3}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    .line 92
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0, p1, p3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic customClientBuilder$default(JJJLcom/metamoji/network/NwCookieJar;ILjava/lang/Object;)Lokhttp3/OkHttpClient$Builder;
    .locals 2

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 87
    sget-object p0, Lcom/metamoji/network/NwConnectionTimeout;->MEDIUM:Lcom/metamoji/network/NwConnectionTimeout;

    invoke-virtual {p0}, Lcom/metamoji/network/NwConnectionTimeout;->getSeconds()J

    move-result-wide p0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const-wide/16 v0, 0x3c

    if-eqz p8, :cond_1

    move-wide p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-wide p4, v0

    :cond_2
    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_3

    const/4 p6, 0x0

    :cond_3
    move-object p8, p6

    move-wide p6, p4

    move-wide p4, p2

    move-wide p2, p0

    .line 85
    invoke-static/range {p2 .. p8}, Lcom/metamoji/network/NwHttpClient;->customClientBuilder(JJJLcom/metamoji/network/NwCookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method private final debugLog(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 432
    invoke-static {}, Lcom/metamoji/network/NwLoggerKt;->getNwLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[NwHttpClient] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/UtLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static final executeWithTimeout(Lokhttp3/Call;I)Lokhttp3/Response;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "call"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    invoke-static {p0, p1}, Lcom/metamoji/network/NwHttpClientKt;->execute(Lokhttp3/Call;I)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public static final get(Lcom/metamoji/network/NwConnectionTimeout;)Lokhttp3/OkHttpClient;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "timeout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    sget-object v0, Lcom/metamoji/network/NwHttpClient$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/metamoji/network/NwConnectionTimeout;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 495
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getLongTimeoutClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0

    .line 492
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 494
    :cond_1
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getMediumTimeoutClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0

    .line 493
    :cond_2
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getShortTimeoutClient()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final getClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 462
    invoke-static {}, Lcom/metamoji/network/NwHttpClient;->getMediumTimeoutClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getClient$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getLongTimeoutClient()Lokhttp3/OkHttpClient;
    .locals 10

    .line 478
    sget-object v0, Lcom/metamoji/network/NwConnectionTimeout;->LONG:Lcom/metamoji/network/NwConnectionTimeout;

    invoke-virtual {v0}, Lcom/metamoji/network/NwConnectionTimeout;->getSeconds()J

    move-result-wide v1

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-wide/16 v3, 0x3c

    const-wide/16 v5, 0x3c

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/metamoji/network/NwHttpClient;->customClient$default(JJJLcom/metamoji/network/NwCookieJar;ILjava/lang/Object;)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getLongTimeoutClient$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getMediumTimeoutClient()Lokhttp3/OkHttpClient;
    .locals 10

    .line 485
    sget-object v0, Lcom/metamoji/network/NwConnectionTimeout;->MEDIUM:Lcom/metamoji/network/NwConnectionTimeout;

    invoke-virtual {v0}, Lcom/metamoji/network/NwConnectionTimeout;->getSeconds()J

    move-result-wide v1

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-wide/16 v3, 0x3c

    const-wide/16 v5, 0x3c

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/metamoji/network/NwHttpClient;->customClient$default(JJJLcom/metamoji/network/NwCookieJar;ILjava/lang/Object;)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getMediumTimeoutClient$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final getMotherClient()Lokhttp3/OkHttpClient;
    .locals 4

    .line 55
    sget-object v0, Lcom/metamoji/network/NwHttpClient;->mMotherLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/metamoji/network/NwHttpClient;->mMotherClient:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 57
    sget-object v1, Lcom/metamoji/network/NwHttpClient;->INSTANCE:Lcom/metamoji/network/NwHttpClient;

    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 58
    sget-object v3, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->INSTANCE:Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;

    check-cast v3, Lokhttp3/Authenticator;

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 59
    sget-object v3, Lcom/metamoji/network/NwHttpClient$HttpEventListener;->INSTANCE:Lcom/metamoji/network/NwHttpClient$HttpEventListener;

    check-cast v3, Lokhttp3/EventListener;

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->eventListener(Lokhttp3/EventListener;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 61
    invoke-direct {v1, v2}, Lcom/metamoji/network/NwHttpClient;->trustOre2Cert(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 57
    sput-object v1, Lcom/metamoji/network/NwHttpClient;->mMotherClient:Lokhttp3/OkHttpClient;

    .line 64
    :cond_0
    sget-object v1, Lcom/metamoji/network/NwHttpClient;->mMotherClient:Lokhttp3/OkHttpClient;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final getShortTimeoutClient()Lokhttp3/OkHttpClient;
    .locals 10

    .line 470
    sget-object v0, Lcom/metamoji/network/NwConnectionTimeout;->SHORT:Lcom/metamoji/network/NwConnectionTimeout;

    invoke-virtual {v0}, Lcom/metamoji/network/NwConnectionTimeout;->getSeconds()J

    move-result-wide v1

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-wide/16 v3, 0x3c

    const-wide/16 v5, 0x3c

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lcom/metamoji/network/NwHttpClient;->customClient$default(JJJLcom/metamoji/network/NwCookieJar;ILjava/lang/Object;)Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getShortTimeoutClient$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final reset()V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 73
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/metamoji/network/NwHttpClient$reset$1;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/metamoji/network/NwHttpClient$reset$1;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final trustOre2Cert(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 0

    return-object p1
.end method

.method private static final trustOre2Cert$lambda$2(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 2

    .line 540
    sget-object v0, Lcom/metamoji/network/NwHttpClient;->INSTANCE:Lcom/metamoji/network/NwHttpClient;

    new-instance v1, Lcom/metamoji/network/NwHttpClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/network/NwHttpClient$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)V

    invoke-direct {v0, v1}, Lcom/metamoji/network/NwHttpClient;->debugLog(Lkotlin/jvm/functions/Function0;)V

    const/4 p0, 0x1

    return p0
.end method

.method static final trustOre2Cert$lambda$2$lambda$1(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Ljava/lang/String;
    .locals 2

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hostnameVerifier: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final errorLog(Ljava/lang/String;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/metamoji/network/NwLoggerKt;->getNwLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[NwHttpClient] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    return-void
.end method
