.class final Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NwHttpClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.metamoji.network.NwHttpClient$ProxyAuthenticator$authenticate$2"
    f = "NwHttpClient.kt"
    i = {}
    l = {
        0xc5
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $paused:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $route:Lokhttp3/Route;

.field label:I


# direct methods
.method constructor <init>(Lokhttp3/Route;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Route;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2;->$route:Lokhttp3/Route;

    iput-object p2, p0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2;->$paused:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0(Lkotlin/jvm/internal/Ref$BooleanRef;)Lkotlin/Unit;
    .locals 1

    .line 198
    sget-object v0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->INSTANCE:Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;

    invoke-static {v0}, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;->access$pauseTimers(Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator;)V

    const/4 v0, 0x1

    .line 199
    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 200
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2;

    iget-object v0, p0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2;->$route:Lokhttp3/Route;

    iget-object v1, p0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2;->$paused:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1, v0, v1, p2}, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2;-><init>(Lokhttp3/Route;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/network/NwProxyAuthManager$ProxyCredential;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 196
    iget v1, p0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 197
    sget-object p1, Lcom/metamoji/network/NwProxyAuthManager;->INSTANCE:Lcom/metamoji/network/NwProxyAuthManager;

    iget-object v1, p0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2;->$route:Lokhttp3/Route;

    iget-object v3, p0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2;->$paused:Lkotlin/jvm/internal/Ref$BooleanRef;

    new-instance v4, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/metamoji/network/NwHttpClient$ProxyAuthenticator$authenticate$2;->label:I

    invoke-virtual {p1, v1, v4, v3}, Lcom/metamoji/network/NwProxyAuthManager;->onProxyAuthFailed(Lokhttp3/Route;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    return-object p1
.end method
