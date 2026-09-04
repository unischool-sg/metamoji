.class final Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;
.super Ljava/lang/Object;
.source "NwHttpClient.kt"

# interfaces
.implements Lokhttp3/Authenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/network/NwHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProxyAuthenticator"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0011\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0010H\u0086\u0002J\u0011\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0010H\u0086\u0002J\u0008\u0010\u0017\u001a\u00020\u0014H\u0002J\u0008\u0010\u0018\u001a\u00020\u0014H\u0002J\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001f\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!\u00a8\u0006\""
    }
    d2 = {
        "Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;",
        "Lokhttp3/Authenticator;",
        "<init>",
        "()V",
        "credential",
        "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
        "getCredential",
        "()Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
        "setCredential",
        "(Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;)V",
        "PROXY_AUTH_HEADER",
        "",
        "mProxyAuthEnabled",
        "",
        "transportTimers",
        "",
        "Lcom/metamoji/network/NwHttpClient$TransportTimer;",
        "mBusy",
        "",
        "plusAssign",
        "",
        "t",
        "minusAssign",
        "pauseTimers",
        "resumeTimers",
        "authenticate",
        "Lokhttp3/Request;",
        "route",
        "Lokhttp3/Route;",
        "response",
        "Lokhttp3/Response;",
        "proxyAuthEnabled",
        "getProxyAuthEnabled",
        "()Z",
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
.field public static final INSTANCE:Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;

.field private static final PROXY_AUTH_HEADER:Ljava/lang/String; = "Proxy-Authorization"

.field private static credential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

.field private static mBusy:I

.field private static mProxyAuthEnabled:Z

.field private static transportTimers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/network/NwHttpClient$TransportTimer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;

    invoke-direct {v0}, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;-><init>()V

    sput-object v0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->INSTANCE:Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->transportTimers:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$pauseTimers(Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->pauseTimers()V

    return-void
.end method

.method static final authenticate$lambda$4()Ljava/lang/String;
    .locals 1

    .line 193
    const-string v0, "ProxyAuth: authenticate"

    return-object v0
.end method

.method private final pauseTimers()V
    .locals 3

    .line 164
    sget-object v0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->transportTimers:Ljava/util/List;

    monitor-enter v0

    .line 165
    :try_start_0
    sget v1, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->mBusy:I

    if-nez v1, :cond_0

    .line 166
    sget-object v1, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->transportTimers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/network/NwHttpClient$TransportTimer;

    .line 167
    invoke-virtual {v2}, Lcom/metamoji/network/NwHttpClient$TransportTimer;->pause()V

    goto :goto_0

    .line 170
    :cond_0
    sget v1, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->mBusy:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->mBusy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final resumeTimers()V
    .locals 3

    .line 177
    sget-object v0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->transportTimers:Ljava/util/List;

    monitor-enter v0

    .line 178
    :try_start_0
    sget v1, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->mBusy:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->mBusy:I

    if-nez v1, :cond_0

    .line 180
    sget-object v1, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->transportTimers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/network/NwHttpClient$TransportTimer;

    .line 181
    invoke-virtual {v2}, Lcom/metamoji/network/NwHttpClient$TransportTimer;->start()V

    goto :goto_0

    .line 184
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 192
    sput-boolean v0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->mProxyAuthEnabled:Z

    .line 193
    sget-object v1, Lcom/metamoji/network/NwHttpClient;->INSTANCE:Lcom/metamoji/network/NwHttpClient;

    new-instance v2, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v2}, Lcom/metamoji/network/NwHttpClient;->access$debugLog(Lcom/metamoji/network/NwHttpClient;Lkotlin/jvm/functions/Function0;)V

    .line 194
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 196
    :try_start_1
    new-instance v2, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v3}, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2;-><init>(Lokhttp3/Route;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v2, v0, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    sput-object p1, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->credential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    if-eqz p1, :cond_2

    .line 202
    invoke-virtual {p1}, Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;->getBasic()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p2

    const-string v0, "Proxy-Authorization"

    invoke-virtual {p2, v0, p1}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :try_start_2
    iget-boolean p2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p2, :cond_1

    .line 206
    invoke-direct {p0}, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->resumeTimers()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 203
    :cond_1
    monitor-exit p0

    return-object p1

    .line 205
    :cond_2
    :goto_0
    :try_start_3
    iget-boolean p1, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_3

    .line 206
    invoke-direct {p0}, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->resumeTimers()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    :cond_3
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    .line 205
    :try_start_4
    iget-boolean p2, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p2, :cond_4

    .line 206
    invoke-direct {p0}, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->resumeTimers()V

    :cond_4
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final getCredential()Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;
    .locals 1

    .line 131
    sget-object v0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->credential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    return-object v0
.end method

.method public final getProxyAuthEnabled()Z
    .locals 1

    .line 212
    sget-boolean v0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->mProxyAuthEnabled:Z

    return v0
.end method

.method public final minusAssign(Lcom/metamoji/network/NwHttpClient$TransportTimer;)V
    .locals 2

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->transportTimers:Ljava/util/List;

    monitor-enter v0

    .line 155
    :try_start_0
    sget-object v1, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->transportTimers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {p1}, Lcom/metamoji/network/NwHttpClient$TransportTimer;->pause()V

    .line 157
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final plusAssign(Lcom/metamoji/network/NwHttpClient$TransportTimer;)V
    .locals 2

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->transportTimers:Ljava/util/List;

    monitor-enter v0

    .line 143
    :try_start_0
    sget-object v1, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->transportTimers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    sget v1, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->mBusy:I

    if-nez v1, :cond_0

    .line 145
    invoke-virtual {p1}, Lcom/metamoji/network/NwHttpClient$TransportTimer;->start()V

    .line 147
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final setCredential(Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;)V
    .locals 0

    .line 131
    sput-object p1, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->credential:Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;

    return-void
.end method
