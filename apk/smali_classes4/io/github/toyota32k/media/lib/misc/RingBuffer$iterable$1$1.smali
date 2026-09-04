.class final Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "RingBuffer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/toyota32k/media/lib/misc/RingBuffer;->getIterable()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-TT;>;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlin/sequences/SequenceScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.github.toyota32k.media.lib.misc.RingBuffer$iterable$1$1"
    f = "RingBuffer.kt"
    i = {
        0x0
    }
    l = {
        0x2b
    }
    m = "invokeSuspend"
    n = {
        "$this$iterator"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lio/github/toyota32k/media/lib/misc/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/github/toyota32k/media/lib/misc/RingBuffer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/github/toyota32k/media/lib/misc/RingBuffer;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/github/toyota32k/media/lib/misc/RingBuffer<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;->this$0:Lio/github/toyota32k/media/lib/misc/RingBuffer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;

    iget-object v1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;->this$0:Lio/github/toyota32k/media/lib/misc/RingBuffer;

    invoke-direct {v0, v1, p2}, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;-><init>(Lio/github/toyota32k/media/lib/misc/RingBuffer;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/sequences/SequenceScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;->invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/sequences/SequenceScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/SequenceScope<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 41
    iget v1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;->I$1:I

    iget v3, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;->I$0:I

    iget-object v4, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/sequences/SequenceScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/sequences/SequenceScope;

    .line 42
    iget-object v1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;->this$0:Lio/github/toyota32k/media/lib/misc/RingBuffer;

    invoke-virtual {v1}, Lio/github/toyota32k/media/lib/misc/RingBuffer;->getCount()I

    move-result v1

    const/4 v3, 0x0

    move-object v4, p1

    :goto_0
    if-ge v3, v1, :cond_3

    add-int/lit8 p1, v3, 0x1

    .line 43
    iget-object v5, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;->this$0:Lio/github/toyota32k/media/lib/misc/RingBuffer;

    invoke-virtual {v5, v3}, Lio/github/toyota32k/media/lib/misc/RingBuffer;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v4, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;->L$0:Ljava/lang/Object;

    iput p1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;->I$0:I

    iput v1, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;->I$1:I

    iput v2, p0, Lio/github/toyota32k/media/lib/misc/RingBuffer$iterable$1$1;->label:I

    invoke-virtual {v4, v3, v5}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    :cond_2
    move v3, p1

    goto :goto_0

    .line 45
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
