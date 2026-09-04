.class final Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GoogleLoginDriver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/li/driver/GoogleLoginDriver;->tryGoogleLogin(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/metamoji/cs/dc/response/CsLoginResponse;",
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
        "Lcom/metamoji/cs/dc/response/CsLoginResponse;",
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
    c = "com.metamoji.li.driver.GoogleLoginDriver$tryGoogleLogin$2"
    f = "GoogleLoginDriver.kt"
    i = {
        0x0
    }
    l = {
        0x28
    }
    m = "invokeSuspend"
    n = {
        "response"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $googleId:Ljava/lang/String;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/li/driver/GoogleLoginDriver;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/metamoji/li/driver/GoogleLoginDriver;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/metamoji/li/driver/GoogleLoginDriver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;->$googleId:Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;->this$0:Lcom/metamoji/li/driver/GoogleLoginDriver;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance p1, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;

    iget-object v0, p0, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;->$googleId:Ljava/lang/String;

    iget-object v1, p0, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;->this$0:Lcom/metamoji/li/driver/GoogleLoginDriver;

    invoke-direct {p1, v0, v1, p2}, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;-><init>(Ljava/lang/String;Lcom/metamoji/li/driver/GoogleLoginDriver;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/metamoji/cs/dc/response/CsLoginResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 27
    iget v1, p0, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 28
    iget-object p1, p0, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;->$googleId:Ljava/lang/String;

    invoke-static {p1}, Lcom/metamoji/cs/dc/CsCloudService;->executeGetLoginInfoWithGoogleId(Ljava/lang/String;)Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;

    move-result-object p1

    .line 30
    iget v1, p1, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->errorCode:I

    const/4 v3, 0x0

    const-string v4, ")"

    if-eqz v1, :cond_2

    .line 31
    sget-object v0, Lcom/metamoji/li/driver/GoogleLoginDriver;->Companion:Lcom/metamoji/li/driver/GoogleLoginDriver$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/driver/GoogleLoginDriver$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    iget v1, p1, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->errorCode:I

    iget-object v2, p0, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;->$googleId:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;->this$0:Lcom/metamoji/li/driver/GoogleLoginDriver;

    check-cast p1, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-virtual {v0, p1}, Lcom/metamoji/li/driver/GoogleLoginDriver;->setError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-object v3

    .line 35
    :cond_2
    iget-object v1, p1, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_3

    .line 36
    sget-object p1, Lcom/metamoji/li/driver/GoogleLoginDriver;->Companion:Lcom/metamoji/li/driver/GoogleLoginDriver$Companion;

    invoke-virtual {p1}, Lcom/metamoji/li/driver/GoogleLoginDriver$Companion;->getLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;->$googleId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "empty list ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/lib/utils/UtLog;->error(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;->this$0:Lcom/metamoji/li/driver/GoogleLoginDriver;

    sget-object v0, Lcom/metamoji/li/driver/NullResponse;->Companion:Lcom/metamoji/li/driver/NullResponse$Companion;

    invoke-virtual {v0}, Lcom/metamoji/li/driver/NullResponse$Companion;->getInstance()Lcom/metamoji/li/driver/NullResponse;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    invoke-virtual {p1, v0}, Lcom/metamoji/li/driver/GoogleLoginDriver;->setError(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V

    return-object v3

    .line 40
    :cond_3
    iget-object v1, p0, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;->this$0:Lcom/metamoji/li/driver/GoogleLoginDriver;

    iget-object v3, p1, Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;->list:Ljava/util/List;

    const-string v4, "list"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/metamoji/li/driver/GoogleLoginDriver$tryGoogleLogin$2;->label:I

    invoke-static {v1, v3, v4}, Lcom/metamoji/li/driver/GoogleLoginDriver;->access$selectAndLoginSchool(Lcom/metamoji/li/driver/GoogleLoginDriver;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 27
    :cond_4
    :goto_0
    check-cast p1, Lcom/metamoji/cs/dc/response/CsLoginResponse;

    return-object p1
.end method
