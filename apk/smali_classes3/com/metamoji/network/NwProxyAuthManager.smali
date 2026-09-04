.class public final Lcom/metamoji/network/NwProxyAuthManager;
.super Ljava/lang/Object;
.source "NwProxyAuthManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/network/NwProxyAuthManager$HostPort;,
        Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNwProxyAuthManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NwProxyAuthManager.kt\ncom/metamoji/network/NwProxyAuthManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,336:1\n1#2:337\n221#3,2:338\n221#3,2:340\n*S KotlinDebug\n*F\n+ 1 NwProxyAuthManager.kt\ncom/metamoji/network/NwProxyAuthManager\n*L\n239#1:338,2\n255#1:340,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002&\'B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u0005H\u0007J\u0008\u0010\u0010\u001a\u00020\u000fH\u0002J\u0008\u0010\u0011\u001a\u00020\u000fH\u0002J\u0008\u0010\u0012\u001a\u00020\u000fH\u0007J(\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0018H\u0086@\u00a2\u0006\u0002\u0010\u0019J\u000e\u0010\u001a\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010\u001bJ\u000e\u0010\u001c\u001a\u00020\u000fH\u0086@\u00a2\u0006\u0002\u0010\u001bJ0\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020\u000c2\u0006\u0010%\u001a\u00020\u000cH\u0007R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/metamoji/network/NwProxyAuthManager;",
        "",
        "<init>",
        "()V",
        "driver",
        "Lcom/metamoji/network/INwProxyAuthDriver;",
        "getDriver",
        "()Lcom/metamoji/network/INwProxyAuthDriver;",
        "setDriver",
        "(Lcom/metamoji/network/INwProxyAuthDriver;)V",
        "mEntities",
        "",
        "",
        "Lcom/metamoji/network/NwProxyAuthEntity;",
        "initialize",
        "",
        "load",
        "save",
        "clearProxyAuthInfo",
        "onProxyAuthFailed",
        "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
        "route",
        "Lokhttp3/Route;",
        "dialogOpening",
        "Lkotlin/Function0;",
        "(Lokhttp3/Route;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onProxyAuthSucceeded",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onProxyAuthUnknownStatus",
        "VAL_BASIC_TYPE",
        "handleOnReceivedHttpAuthRequest",
        "view",
        "Landroid/webkit/WebView;",
        "handler",
        "Landroid/webkit/HttpAuthHandler;",
        "host",
        "realm",
        "reqUrl",
        "ProxyCredential",
        "HostPort",
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
.field public static final INSTANCE:Lcom/metamoji/network/NwProxyAuthManager;

.field public static final VAL_BASIC_TYPE:Ljava/lang/String; = "Basic"

.field public static driver:Lcom/metamoji/network/INwProxyAuthDriver;

.field private static final mEntities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/network/NwProxyAuthEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/network/NwProxyAuthManager;

    invoke-direct {v0}, Lcom/metamoji/network/NwProxyAuthManager;-><init>()V

    sput-object v0, Lcom/metamoji/network/NwProxyAuthManager;->INSTANCE:Lcom/metamoji/network/NwProxyAuthManager;

    .line 171
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lcom/metamoji/network/NwProxyAuthManager;->mEntities:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final clearProxyAuthInfo()V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 212
    sget-object v0, Lcom/metamoji/network/NwProxyAuthManager;->mEntities:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 214
    sget-object v0, Lcom/metamoji/network/NwProxyAuthManager;->INSTANCE:Lcom/metamoji/network/NwProxyAuthManager;

    invoke-direct {v0}, Lcom/metamoji/network/NwProxyAuthManager;->save()V

    :cond_0
    return-void
.end method

.method public static final handleOnReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "handler"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "host"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "realm"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "reqUrl"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    sget-object p0, Lcom/metamoji/network/NwProxyAuthManager$HostPort;->Companion:Lcom/metamoji/network/NwProxyAuthManager$HostPort$Companion;

    invoke-virtual {p0, p2}, Lcom/metamoji/network/NwProxyAuthManager$HostPort$Companion;->parse(Ljava/lang/String;)Lcom/metamoji/network/NwProxyAuthManager$HostPort;

    move-result-object p0

    const/4 p3, 0x0

    if-eqz p0, :cond_2

    .line 285
    sget-object p2, Lcom/metamoji/network/NwProxyAuthManager;->mEntities:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/metamoji/network/NwProxyAuthManager$HostPort;->getHostString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/metamoji/network/NwProxyAuthEntity;

    if-eqz p0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/metamoji/network/NwProxyAuthEntity;->getSavedCredential()Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    move-result-object p3

    :cond_0
    if-eqz p3, :cond_1

    .line 288
    invoke-virtual {p3}, Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;->getUsername()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;->getPassword()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 292
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/HttpAuthHandler;->cancel()V

    return-void

    :cond_2
    const/4 p0, 0x2

    .line 300
    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object p4

    .line 302
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    move-object v0, p3

    :cond_3
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/Proxy;

    if-eqz v1, :cond_4

    .line 303
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, p3

    :goto_1
    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_3

    .line 304
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_5

    .line 305
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type java.net.InetSocketAddress"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 306
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 308
    :cond_5
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/SocketAddress;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const/4 v2, 0x0

    .line 312
    invoke-static {v1, p2, v2, p0, p3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 313
    sget-object v2, Lcom/metamoji/network/NwProxyAuthManager;->mEntities:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/network/NwProxyAuthEntity;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/metamoji/network/NwProxyAuthEntity;->getSavedCredential()Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    move-result-object v2

    goto :goto_3

    :cond_6
    move-object v2, p3

    :goto_3
    if-eqz v2, :cond_7

    move-object v0, v2

    goto :goto_4

    .line 319
    :cond_7
    sget-object v2, Lcom/metamoji/network/NwProxyAuthManager;->mEntities:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/network/NwProxyAuthEntity;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/metamoji/network/NwProxyAuthEntity;->getSavedCredential()Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    move-result-object v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    move-object v0, v1

    goto/16 :goto_0

    :cond_9
    :goto_4
    if-eqz v0, :cond_a

    .line 324
    invoke-virtual {v0}, Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;->getUsername()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;->getPassword()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 329
    invoke-static {}, Lcom/metamoji/network/NwLoggerKt;->getNwLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p4

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {p4, p2, p3, p0, p3}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 332
    :cond_a
    invoke-virtual {p1}, Landroid/webkit/HttpAuthHandler;->cancel()V

    return-void
.end method

.method public static final initialize(Lcom/metamoji/network/INwProxyAuthDriver;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "driver"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    sget-object v0, Lcom/metamoji/network/NwProxyAuthManager;->INSTANCE:Lcom/metamoji/network/NwProxyAuthManager;

    invoke-virtual {v0, p0}, Lcom/metamoji/network/NwProxyAuthManager;->setDriver(Lcom/metamoji/network/INwProxyAuthDriver;)V

    .line 176
    invoke-direct {v0}, Lcom/metamoji/network/NwProxyAuthManager;->load()V

    return-void
.end method

.method private final load()V
    .locals 2

    .line 203
    invoke-virtual {p0}, Lcom/metamoji/network/NwProxyAuthManager;->getDriver()Lcom/metamoji/network/INwProxyAuthDriver;

    move-result-object v0

    sget-object v1, Lcom/metamoji/network/NwProxyAuthManager;->mEntities:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/metamoji/network/INwProxyAuthDriver;->loadCredentials(Ljava/util/Map;)V

    return-void
.end method

.method private final save()V
    .locals 2

    .line 207
    invoke-virtual {p0}, Lcom/metamoji/network/NwProxyAuthManager;->getDriver()Lcom/metamoji/network/INwProxyAuthDriver;

    move-result-object v0

    sget-object v1, Lcom/metamoji/network/NwProxyAuthManager;->mEntities:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/metamoji/network/INwProxyAuthDriver;->saveCredentials(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final getDriver()Lcom/metamoji/network/INwProxyAuthDriver;
    .locals 1

    .line 170
    sget-object v0, Lcom/metamoji/network/NwProxyAuthManager;->driver:Lcom/metamoji/network/INwProxyAuthDriver;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "driver"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onProxyAuthFailed(Lokhttp3/Route;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Route;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 225
    invoke-virtual {p1}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "<uav>"

    :cond_1
    if-eqz p1, :cond_2

    .line 226
    invoke-virtual {p1}, Lokhttp3/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 227
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 228
    sget-object v0, Lcom/metamoji/network/NwProxyAuthManager;->mEntities:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/network/NwProxyAuthEntity;

    if-nez v1, :cond_3

    .line 229
    new-instance v1, Lcom/metamoji/network/NwProxyAuthEntity;

    const/4 v2, 0x0

    const-string v3, "Basic"

    invoke-direct {v1, v2, v3}, Lcom/metamoji/network/NwProxyAuthEntity;-><init>(Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_3
    invoke-virtual {v1, p2, p3}, Lcom/metamoji/network/NwProxyAuthEntity;->onProxyAuthFailed(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onProxyAuthSucceeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;

    iget v1, v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;-><init>(Lcom/metamoji/network/NwProxyAuthManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 237
    iget v2, v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget v1, v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;->I$1:I

    iget v1, v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;->I$0:I

    iget-wide v1, v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;->J$0:J

    iget-object v1, v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v1, v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v0, v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 238
    sget-object p1, Lcom/metamoji/lib/utils/UtCompat;->Companion:Lcom/metamoji/lib/utils/UtCompat$Companion;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v4, "currentThread(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/metamoji/lib/utils/UtCompat$Companion;->getCompatThreadId(Ljava/lang/Thread;)J

    move-result-wide v4

    .line 239
    sget-object p1, Lcom/metamoji/network/NwProxyAuthManager;->mEntities:Ljava/util/Map;

    .line 338
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/network/NwProxyAuthEntity;

    invoke-virtual {v7}, Lcom/metamoji/network/NwProxyAuthEntity;->getHeroThread$network()Ljava/lang/Long;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v4

    if-nez v7, :cond_3

    .line 241
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/network/NwProxyAuthEntity;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;->L$0:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;->L$1:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;->L$2:Ljava/lang/Object;

    iput-wide v4, v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;->J$0:J

    const/4 p1, 0x0

    iput p1, v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;->I$0:I

    iput p1, v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;->I$1:I

    iput v3, v0, Lcom/metamoji/network/NwProxyAuthManager$onProxyAuthSucceeded$1;->label:I

    invoke-virtual {v2, v0}, Lcom/metamoji/network/NwProxyAuthEntity;->onProxyAuthSucceeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 242
    sget-object p1, Lcom/metamoji/network/NwProxyAuthManager;->INSTANCE:Lcom/metamoji/network/NwProxyAuthManager;

    invoke-direct {p1}, Lcom/metamoji/network/NwProxyAuthManager;->save()V

    .line 244
    :cond_6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 247
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final onProxyAuthUnknownStatus(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/metamoji/lib/utils/UtCompat;->Companion:Lcom/metamoji/lib/utils/UtCompat$Companion;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "currentThread(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtCompat$Companion;->getCompatThreadId(Ljava/lang/Thread;)J

    move-result-wide v0

    .line 255
    sget-object v2, Lcom/metamoji/network/NwProxyAuthManager;->mEntities:Ljava/util/Map;

    .line 340
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 256
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/network/NwProxyAuthEntity;

    invoke-virtual {v4}, Lcom/metamoji/network/NwProxyAuthEntity;->getHeroThread$network()Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_0

    .line 257
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/network/NwProxyAuthEntity;

    invoke-virtual {v0, p1}, Lcom/metamoji/network/NwProxyAuthEntity;->onProxyAuthUnknownStatus(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_2

    return-object p1

    .line 258
    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 261
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final setDriver(Lcom/metamoji/network/INwProxyAuthDriver;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    sput-object p1, Lcom/metamoji/network/NwProxyAuthManager;->driver:Lcom/metamoji/network/INwProxyAuthDriver;

    return-void
.end method
