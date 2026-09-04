.class final Lcom/metamoji/network/NwHttpClient$HttpEventListener;
.super Lokhttp3/EventListener;
.source "NwHttpClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/network/NwHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HttpEventListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J\u0016\u0010\t\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0002J*\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J2\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/metamoji/network/NwHttpClient$HttpEventListener;",
        "Lokhttp3/EventListener;",
        "<init>",
        "()V",
        "succeeded",
        "",
        "lazyMessage",
        "Lkotlin/Function0;",
        "",
        "failed",
        "connectEnd",
        "call",
        "Lokhttp3/Call;",
        "inetSocketAddress",
        "Ljava/net/InetSocketAddress;",
        "proxy",
        "Ljava/net/Proxy;",
        "protocol",
        "Lokhttp3/Protocol;",
        "connectFailed",
        "ioe",
        "Ljava/io/IOException;",
        "callEnd",
        "callFailed",
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
.field public static final INSTANCE:Lcom/metamoji/network/NwHttpClient$HttpEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/network/NwHttpClient$HttpEventListener;

    invoke-direct {v0}, Lcom/metamoji/network/NwHttpClient$HttpEventListener;-><init>()V

    sput-object v0, Lcom/metamoji/network/NwHttpClient$HttpEventListener;->INSTANCE:Lcom/metamoji/network/NwHttpClient$HttpEventListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    return-void
.end method

.method static final callEnd$lambda$2()Ljava/lang/String;
    .locals 1

    .line 260
    const-string v0, "ProxyAuth: call end"

    return-object v0
.end method

.method static final callFailed$lambda$3()Ljava/lang/String;
    .locals 1

    .line 267
    const-string v0, "ProxyAuth: call failed"

    return-object v0
.end method

.method static final connectEnd$lambda$0()Ljava/lang/String;
    .locals 1

    .line 246
    const-string v0, "ProxyAuth: connection end"

    return-object v0
.end method

.method static final connectFailed$lambda$1()Ljava/lang/String;
    .locals 1

    .line 253
    const-string v0, "ProxyAuth: connection failed"

    return-object v0
.end method

.method private final failed(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 234
    sget-object v0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->INSTANCE:Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;

    invoke-virtual {v0}, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->getProxyAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lcom/metamoji/network/NwHttpClient;->INSTANCE:Lcom/metamoji/network/NwHttpClient;

    invoke-static {v0, p1}, Lcom/metamoji/network/NwHttpClient;->access$debugLog(Lcom/metamoji/network/NwHttpClient;Lkotlin/jvm/functions/Function0;)V

    .line 236
    new-instance p1, Lcom/metamoji/network/NwHttpClient$HttpEventListener$failed$1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/metamoji/network/NwHttpClient$HttpEventListener$failed$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final succeeded(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 224
    sget-object v0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->INSTANCE:Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;

    invoke-virtual {v0}, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->getProxyAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lcom/metamoji/network/NwHttpClient;->INSTANCE:Lcom/metamoji/network/NwHttpClient;

    invoke-static {v0, p1}, Lcom/metamoji/network/NwHttpClient;->access$debugLog(Lcom/metamoji/network/NwHttpClient;Lkotlin/jvm/functions/Function0;)V

    .line 226
    new-instance p1, Lcom/metamoji/network/NwHttpClient$HttpEventListener$succeeded$1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/metamoji/network/NwHttpClient$HttpEventListener$succeeded$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public callEnd(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    new-instance p1, Lcom/metamoji/network/NwHttpClient$HttpEventListener$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/metamoji/network/NwHttpClient$HttpEventListener$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, p1}, Lcom/metamoji/network/NwHttpClient$HttpEventListener;->succeeded(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioe"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    new-instance p1, Lcom/metamoji/network/NwHttpClient$HttpEventListener$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/metamoji/network/NwHttpClient$HttpEventListener$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1}, Lcom/metamoji/network/NwHttpClient$HttpEventListener;->failed(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 0

    const-string p4, "call"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inetSocketAddress"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proxy"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    new-instance p1, Lcom/metamoji/network/NwHttpClient$HttpEventListener$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/metamoji/network/NwHttpClient$HttpEventListener$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1}, Lcom/metamoji/network/NwHttpClient$HttpEventListener;->succeeded(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 0

    const-string p4, "call"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inetSocketAddress"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proxy"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioe"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    new-instance p1, Lcom/metamoji/network/NwHttpClient$HttpEventListener$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/metamoji/network/NwHttpClient$HttpEventListener$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, p1}, Lcom/metamoji/network/NwHttpClient$HttpEventListener;->failed(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
