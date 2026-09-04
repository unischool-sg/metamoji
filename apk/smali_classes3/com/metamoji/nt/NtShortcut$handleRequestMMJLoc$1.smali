.class final Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "NtShortcut.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtShortcut;->handleRequestMMJLoc(Ljava/lang/String;Lcom/metamoji/cm/SharedReference;)V
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.metamoji.nt.NtShortcut$handleRequestMMJLoc$1"
    f = "NtShortcut.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x5c
    }
    m = "invokeSuspend"
    n = {
        "r2",
        "result",
        "request3",
        "$i$a$-use-NtShortcut$handleRequestMMJLoc$1$1"
    }
    s = {
        "L$1",
        "L$2",
        "L$3",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $request2:Lcom/metamoji/cm/SharedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/nt/INtRequestUri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $uri:Ljava/lang/String;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/nt/NtShortcut;


# direct methods
.method constructor <init>(Lcom/metamoji/cm/SharedReference;Ljava/lang/String;Lcom/metamoji/nt/NtShortcut;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/SharedReference<",
            "Lcom/metamoji/nt/INtRequestUri;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/metamoji/nt/NtShortcut;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->$request2:Lcom/metamoji/cm/SharedReference;

    iput-object p2, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->$uri:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->this$0:Lcom/metamoji/nt/NtShortcut;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;

    iget-object v0, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->$request2:Lcom/metamoji/cm/SharedReference;

    iget-object v1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->$uri:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->this$0:Lcom/metamoji/nt/NtShortcut;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;-><init>(Lcom/metamoji/cm/SharedReference;Ljava/lang/String;Lcom/metamoji/nt/NtShortcut;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 84
    iget v1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->L$3:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/cm/SharedReference;

    iget-object v0, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;

    iget-object v0, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/metamoji/cm/SharedReference;

    iget-object v0, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 85
    iget-object p1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->$request2:Lcom/metamoji/cm/SharedReference;

    check-cast p1, Ljava/io/Closeable;

    iget-object v1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->$uri:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->this$0:Lcom/metamoji/nt/NtShortcut;

    :try_start_1
    move-object v5, p1

    check-cast v5, Lcom/metamoji/cm/SharedReference;

    .line 87
    invoke-static {v1}, Lcom/metamoji/dvm/DvmUtil;->reverseLink(Ljava/lang/String;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 88
    invoke-virtual {v1}, Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;->succeeded()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 91
    :cond_2
    invoke-virtual {v5}, Lcom/metamoji/cm/SharedReference;->newRef()Lcom/metamoji/cm/SharedReference;

    move-result-object v6

    .line 92
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v7

    check-cast v7, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;

    invoke-direct {v8, v6, v4, v1, v3}, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1$1$1;-><init>(Lcom/metamoji/cm/SharedReference;Lcom/metamoji/nt/NtShortcut;Lcom/metamoji/dvm/fw/result/DvmDMResultWithReverseLink;Lkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    iput-object p1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->L$0:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->L$1:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->L$2:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->L$3:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->I$0:I

    iput v2, p0, Lcom/metamoji/nt/NtShortcut$handleRequestMMJLoc$1;->label:I

    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    .line 89
    :cond_3
    :goto_0
    invoke-static {v4}, Lcom/metamoji/nt/NtShortcut;->access$showInvalidUrlMessage(Lcom/metamoji/nt/NtShortcut;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    move-object v0, p1

    .line 113
    :goto_1
    :try_start_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 114
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception v0

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    .line 85
    :goto_2
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
