.class final Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AmvExoTranscoder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/video/transcoder/AmvExoTranscoder;->progressWatch()V
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
    c = "com.metamoji.video.transcoder.AmvExoTranscoder$progressWatch$1"
    f = "AmvExoTranscoder.kt"
    i = {
        0x0
    }
    l = {
        0x29
    }
    m = "invokeSuspend"
    n = {
        "progressHolder"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/metamoji/video/transcoder/AmvExoTranscoder;


# direct methods
.method constructor <init>(Lcom/metamoji/video/transcoder/AmvExoTranscoder;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/video/transcoder/AmvExoTranscoder;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;->this$0:Lcom/metamoji/video/transcoder/AmvExoTranscoder;

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

    new-instance p1, Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;

    iget-object v0, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;->this$0:Lcom/metamoji/video/transcoder/AmvExoTranscoder;

    invoke-direct {p1, v0, p2}, Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;-><init>(Lcom/metamoji/video/transcoder/AmvExoTranscoder;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 37
    iget v1, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/transformer/ProgressHolder;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 38
    new-instance p1, Landroidx/media3/transformer/ProgressHolder;

    invoke-direct {p1}, Landroidx/media3/transformer/ProgressHolder;-><init>()V

    move-object v1, p1

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;->this$0:Lcom/metamoji/video/transcoder/AmvExoTranscoder;

    invoke-virtual {p1}, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->getProgressListener()Lcom/metamoji/lib/utils/FuncyListener2;

    move-result-object p1

    iget-object v3, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;->this$0:Lcom/metamoji/video/transcoder/AmvExoTranscoder;

    iget v4, v1, Landroidx/media3/transformer/ProgressHolder;->progress:I

    int-to-float v4, v4

    const/16 v5, 0x64

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/metamoji/lib/utils/FuncyListener2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;->label:I

    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 42
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/metamoji/video/transcoder/AmvExoTranscoder$progressWatch$1;->this$0:Lcom/metamoji/video/transcoder/AmvExoTranscoder;

    invoke-static {p1}, Lcom/metamoji/video/transcoder/AmvExoTranscoder;->access$getTransformer$p(Lcom/metamoji/video/transcoder/AmvExoTranscoder;)Landroidx/media3/transformer/Transformer;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/media3/transformer/Transformer;->getProgress(Landroidx/media3/transformer/ProgressHolder;)I

    move-result p1

    if-nez p1, :cond_2

    .line 43
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
