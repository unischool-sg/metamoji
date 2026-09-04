.class final Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SmallLoginDriver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;->onLoginSucceeded(Lcom/metamoji/cs/dc/response/CsLoginResponse;)V
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
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;",
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
    c = "com.metamoji.ui.cabinet.user.SmallLoginDriver$onLoginSucceeded$result$1"
    f = "SmallLoginDriver.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x11f,
        0x121
    }
    m = "invokeSuspend"
    n = {
        "$this$invokeSuspend_u24lambda_u241",
        "$i$a$-run-SmallLoginDriver$onLoginSucceeded$result$1$1",
        "$this$invokeSuspend_u24lambda_u241",
        "st",
        "$i$a$-run-SmallLoginDriver$onLoginSucceeded$result$1$1",
        "$i$a$-also-SmallLoginDriver$onLoginSucceeded$result$1$1$1"
    }
    s = {
        "L$0",
        "I$0",
        "L$0",
        "L$2",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->this$0:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
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

    new-instance p1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->this$0:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    invoke-direct {p1, v0, p2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;-><init>(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 285
    iget v1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->L$1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->I$0:I

    iget-object v4, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 286
    new-instance p1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->this$0:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;

    invoke-direct {p1, v1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater;-><init>(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;)V

    .line 287
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->I$0:I

    iput v4, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->label:I

    invoke-virtual {p1, p0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$CabinetUserUpdater;->updateUserInfoCacheAsync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, p1

    move-object p1, v1

    move v1, v2

    .line 285
    :goto_0
    move-object v5, p1

    check-cast v5, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    .line 288
    sget-object v6, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;->FAILED:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    if-ne v5, v6, :cond_5

    .line 289
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v6

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1$1$1$1;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1$1$1$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->L$1:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->L$2:Ljava/lang/Object;

    iput v1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->I$0:I

    iput v2, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->I$1:I

    iput v3, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$onLoginSucceeded$result$1;->label:I

    invoke-static {v6, v7, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    :goto_1
    return-object v0

    :cond_4
    move-object v0, p1

    :goto_2
    move-object p1, v0

    .line 287
    :cond_5
    check-cast p1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$Status;

    return-object p1
.end method
