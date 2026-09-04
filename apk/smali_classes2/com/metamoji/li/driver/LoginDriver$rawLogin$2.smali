.class final Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LoginDriver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/li/driver/LoginDriver;->rawLogin(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "com.metamoji.li.driver.LoginDriver$rawLogin$2"
    f = "LoginDriver.kt"
    i = {
        0x2
    }
    l = {
        0x6a,
        0x6d,
        0x74
    }
    m = "invokeSuspend"
    n = {
        "result"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/li/driver/LoginDriver;


# direct methods
.method constructor <init>(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/li/driver/LoginDriver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;->this$0:Lcom/metamoji/li/driver/LoginDriver;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method static final invokeSuspend$lambda$0()Lcom/metamoji/li/driver/LoginError;
    .locals 2

    .line 107
    new-instance v0, Lcom/metamoji/li/driver/LoginError;

    const-string v1, "fatal error"

    invoke-direct {v0, v1}, Lcom/metamoji/li/driver/LoginError;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance p1, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;

    iget-object v0, p0, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;->this$0:Lcom/metamoji/li/driver/LoginDriver;

    invoke-direct {p1, v0, p2}, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;-><init>(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 105
    iget v1, p0, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 106
    iget-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;->this$0:Lcom/metamoji/li/driver/LoginDriver;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v5, p0, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;->label:I

    invoke-virtual {p1, v1}, Lcom/metamoji/li/driver/LoginDriver;->beforeLoginProc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    .line 107
    iget-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;->this$0:Lcom/metamoji/li/driver/LoginDriver;

    new-instance v1, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v1}, Lcom/metamoji/li/driver/LoginDriver;->access$setErrorIfNot(Lcom/metamoji/li/driver/LoginDriver;Lkotlin/jvm/functions/Function0;)V

    .line 109
    :cond_5
    iget-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;->this$0:Lcom/metamoji/li/driver/LoginDriver;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;->label:I

    invoke-virtual {p1, v1}, Lcom/metamoji/li/driver/LoginDriver;->loginProc(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto :goto_2

    .line 105
    :cond_6
    :goto_1
    check-cast p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    if-nez p1, :cond_7

    goto :goto_5

    .line 113
    :cond_7
    iget v1, p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;->errorCode:I

    if-nez v1, :cond_b

    instance-of v1, p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    if-nez v1, :cond_8

    goto :goto_4

    .line 116
    :cond_8
    iget-object v1, p0, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;->this$0:Lcom/metamoji/li/driver/LoginDriver;

    move-object v3, p1

    check-cast v3, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;->label:I

    invoke-virtual {v1, v3, v6}, Lcom/metamoji/li/driver/LoginDriver;->afterLoginProc(Lcom/metamoji/cs/dc/response/CsLoginResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    :goto_2
    return-object v0

    :cond_9
    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_a

    .line 119
    new-instance p1, Lcom/metamoji/cs/dc/params/CsLogoutParam;

    invoke-direct {p1}, Lcom/metamoji/cs/dc/params/CsLogoutParam;-><init>()V

    .line 120
    check-cast p1, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;

    invoke-static {p1}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    goto :goto_5

    :cond_a
    move v4, v5

    goto :goto_5

    .line 114
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/metamoji/li/driver/LoginDriver$rawLogin$2;->this$0:Lcom/metamoji/li/driver/LoginDriver;

    invoke-virtual {v0, p1}, Lcom/metamoji/li/driver/LoginDriver;->setError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    .line 124
    :goto_5
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
