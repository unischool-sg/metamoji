.class final Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AmvAmpTranscoder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->await()V
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
    c = "com.metamoji.video.transcoder.AmvAmpTranscoder$await$1"
    f = "AmvAmpTranscoder.kt"
    i = {}
    l = {
        0x1d
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/metamoji/video/transcoder/AmvAmpTranscoder;


# direct methods
.method constructor <init>(Lcom/metamoji/video/transcoder/AmvAmpTranscoder;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/video/transcoder/AmvAmpTranscoder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;->this$0:Lcom/metamoji/video/transcoder/AmvAmpTranscoder;

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

    new-instance p1, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;

    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;->this$0:Lcom/metamoji/video/transcoder/AmvAmpTranscoder;

    invoke-direct {p1, v0, p2}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;-><init>(Lcom/metamoji/video/transcoder/AmvAmpTranscoder;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 28
    iget v1, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    iget-object p1, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;->this$0:Lcom/metamoji/video/transcoder/AmvAmpTranscoder;

    invoke-static {p1}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->access$getAwaiter$p(Lcom/metamoji/video/transcoder/AmvAmpTranscoder;)Lio/github/toyota32k/media/lib/converter/IAwaiter;

    move-result-object p1

    if-eqz p1, :cond_3

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;->label:I

    invoke-interface {p1, v1}, Lio/github/toyota32k/media/lib/converter/IAwaiter;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Lio/github/toyota32k/media/lib/converter/ConvertResult;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 30
    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/converter/ConvertResult;->getSucceeded()Z

    move-result v0

    if-ne v0, v2, :cond_4

    .line 31
    iget-object p1, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;->this$0:Lcom/metamoji/video/transcoder/AmvAmpTranscoder;

    invoke-virtual {p1}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;->this$0:Lcom/metamoji/video/transcoder/AmvAmpTranscoder;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/lib/utils/FuncyListener2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    goto :goto_3

    :cond_4
    if-nez p1, :cond_5

    .line 34
    iget-object p1, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;->this$0:Lcom/metamoji/video/transcoder/AmvAmpTranscoder;

    invoke-virtual {p1}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->getError()Lcom/metamoji/video/AmvError;

    move-result-object p1

    const-string v0, "fatal error"

    invoke-virtual {p1, v0}, Lcom/metamoji/video/AmvError;->setError(Ljava/lang/String;)V

    goto :goto_2

    .line 35
    :cond_5
    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/converter/ConvertResult;->getCancelled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;->this$0:Lcom/metamoji/video/transcoder/AmvAmpTranscoder;

    invoke-virtual {p1}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->getError()Lcom/metamoji/video/AmvError;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/video/AmvError;->reset()V

    goto :goto_2

    .line 36
    :cond_6
    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/converter/ConvertResult;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;->this$0:Lcom/metamoji/video/transcoder/AmvAmpTranscoder;

    invoke-virtual {v0}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->getError()Lcom/metamoji/video/AmvError;

    move-result-object v0

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/converter/ConvertResult;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/metamoji/video/AmvError;->setError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 37
    :cond_7
    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/converter/ConvertResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;->this$0:Lcom/metamoji/video/transcoder/AmvAmpTranscoder;

    invoke-virtual {v0}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->getError()Lcom/metamoji/video/AmvError;

    move-result-object v0

    invoke-virtual {p1}, Lio/github/toyota32k/media/lib/converter/ConvertResult;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/metamoji/video/AmvError;->setError(Ljava/lang/String;)V

    .line 39
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;->this$0:Lcom/metamoji/video/transcoder/AmvAmpTranscoder;

    invoke-virtual {p1}, Lcom/metamoji/video/transcoder/AmvAmpTranscoder;->getCompletionListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvAmpTranscoder$await$1;->this$0:Lcom/metamoji/video/transcoder/AmvAmpTranscoder;

    const/4 v1, 0x0

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/lib/utils/FuncyListener2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    .line 41
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
