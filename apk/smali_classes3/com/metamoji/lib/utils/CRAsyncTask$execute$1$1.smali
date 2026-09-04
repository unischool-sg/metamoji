.class final Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CRAsyncTask.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/lib/utils/CRAsyncTask;->execute([Ljava/lang/Object;)Lcom/metamoji/lib/utils/CRAsyncTask;
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
    c = "com.metamoji.lib.utils.CRAsyncTask$execute$1$1"
    f = "CRAsyncTask.kt"
    i = {
        0x0
    }
    l = {
        0x4e
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
.field final synthetic $params:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/lib/utils/CRAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/lib/utils/CRAsyncTask<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/metamoji/lib/utils/CRAsyncTask;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/lib/utils/CRAsyncTask<",
            "TParams;TProgress;TResult;>;[TParams;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;->this$0:Lcom/metamoji/lib/utils/CRAsyncTask;

    iput-object p2, p0, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;->$params:[Ljava/lang/Object;

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

    new-instance p1, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;

    iget-object v0, p0, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;->this$0:Lcom/metamoji/lib/utils/CRAsyncTask;

    iget-object v1, p0, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;->$params:[Ljava/lang/Object;

    invoke-direct {p1, v0, v1, p2}, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;-><init>(Lcom/metamoji/lib/utils/CRAsyncTask;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 75
    iget v1, p0, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 77
    :try_start_1
    iget-object p1, p0, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;->this$0:Lcom/metamoji/lib/utils/CRAsyncTask;

    iget-object v1, p0, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;->$params:[Ljava/lang/Object;

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/lib/utils/CRAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 78
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1$1;

    iget-object v5, p0, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;->this$0:Lcom/metamoji/lib/utils/CRAsyncTask;

    invoke-direct {v4, v5, p1, v3}, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1$1;-><init>(Lcom/metamoji/lib/utils/CRAsyncTask;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/SpillingKt;->nullOutSpilledVariable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;->label:I

    invoke-static {v1, v4, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 97
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;->this$0:Lcom/metamoji/lib/utils/CRAsyncTask;

    sget-object v0, Lcom/metamoji/lib/utils/CRAsyncTask$Status;->FINISHED:Lcom/metamoji/lib/utils/CRAsyncTask$Status;

    invoke-static {p1, v0}, Lcom/metamoji/lib/utils/CRAsyncTask;->access$setStatus(Lcom/metamoji/lib/utils/CRAsyncTask;Lcom/metamoji/lib/utils/CRAsyncTask$Status;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 87
    :try_start_2
    nop

    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 88
    :cond_3
    sget-object v0, Lcom/metamoji/lib/utils/UtLog;->Companion:Lcom/metamoji/lib/utils/UtLog$Companion;

    invoke-virtual {v0}, Lcom/metamoji/lib/utils/UtLog$Companion;->getLibLogger()Lcom/metamoji/lib/utils/UtLog;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v3, v1, v3}, Lcom/metamoji/lib/utils/UtLog;->stackTrace$default(Lcom/metamoji/lib/utils/UtLog;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 93
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;->this$0:Lcom/metamoji/lib/utils/CRAsyncTask;

    invoke-static {p1}, Lcom/metamoji/lib/utils/CRAsyncTask;->access$getMainScope(Lcom/metamoji/lib/utils/CRAsyncTask;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    new-instance p1, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1$2;

    iget-object v0, p0, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;->this$0:Lcom/metamoji/lib/utils/CRAsyncTask;

    invoke-direct {p1, v0, v3}, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1$2;-><init>(Lcom/metamoji/lib/utils/CRAsyncTask;Lkotlin/coroutines/Continuation;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function2;

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 99
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 97
    iget-object v0, p0, Lcom/metamoji/lib/utils/CRAsyncTask$execute$1$1;->this$0:Lcom/metamoji/lib/utils/CRAsyncTask;

    sget-object v1, Lcom/metamoji/lib/utils/CRAsyncTask$Status;->FINISHED:Lcom/metamoji/lib/utils/CRAsyncTask$Status;

    invoke-static {v0, v1}, Lcom/metamoji/lib/utils/CRAsyncTask;->access$setStatus(Lcom/metamoji/lib/utils/CRAsyncTask;Lcom/metamoji/lib/utils/CRAsyncTask$Status;)V

    throw p1
.end method
